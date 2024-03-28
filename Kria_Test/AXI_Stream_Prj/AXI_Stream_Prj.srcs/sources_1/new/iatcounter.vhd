library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iatcounter is
    generic (
        NUMBER_OF_CHANNELS  :  integer  :=  2;
        DATA_WIDTH          :  integer  :=  16
    );
    port (
        clk         :  in  std_logic;
        enable      :  in  std_logic;
        stop_flags  :  in  std_logic_vector(NUMBER_OF_CHANNELS-1 downto 0);
        max_count   :  in  unsigned(DATA_WIDTH - 1 downto 0);
        ready       :  out std_logic;
        data        :  out std_logic_vector(DATA_WIDTH - 1 downto 0) 
    );
end iatcounter;

architecture behavior of iatcounter is
    type state_type is (INC, INC_REP, RES, RES_REP);
    signal LAST_STATE    :  state_type;
    signal count         :  unsigned(DATA_WIDTH-NUMBER_OF_CHANNELS-1 downto 0);
    signal channel_mask  :  std_logic_vector(NUMBER_OF_CHANNELS-1 downto 0);
    signal data_loc      :  std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ready_loc     :  std_logic;
    
    -- make the channel field
    function make_channel_mask(flags : std_logic_vector(NUMBER_OF_CHANNELS-1 downto 0)) return std_logic_vector is
        variable ret : std_logic_vector(NUMBER_OF_CHANNELS-1 downto 0);
    begin
        for ii in NUMBER_OF_CHANNELS-1 downto 0 loop
            if (flags(ii)='0') then
                ret(ii) := '0';
            else
                ret(ii) := '1';
            end if;
        end loop;
        return ret;
    end function;

begin
    
    data  <=  channel_mask & std_logic_vector(count);
    ready <=  ready_loc;
    
    prUpdateOutputs : process (clk, enable, stop_flags)
    begin
        if (enable = '1') then
            channel_mask  <=  make_channel_mask(stop_flags);
            count         <=  to_unsigned(0,DATA_WIDTH-NUMBER_OF_CHANNELS);
            ready_loc     <=  '0';
            LAST_STATE    <=  RES;        
        else
            if rising_edge(clk) then
                channel_mask <= make_channel_mask(stop_flags);   
                case (LAST_STATE) is
                when (INC) =>
                    count <= count + 1;
                    if (unsigned(stop_flags)/=0 or count=MAX_COUNT-1) then
                        ready_loc <= '1';
                        LAST_STATE <= INC_REP;
                    else
                        ready_loc <= '0';
                        LAST_STATE <= INC;
                    end if;
                when (INC_REP) =>
                    count <= to_unsigned(1,DATA_WIDTH-NUMBER_OF_CHANNELS);
                    if (unsigned(stop_flags)/=0) then
                        ready_loc <= '1';
                        LAST_STATE <= RES_REP;
                    else
                        ready_loc <= '0';
                        LAST_STATE <= RES;
                    end if;
                when (RES) =>
                    count <= count+1;
                    if (unsigned(stop_flags)/=0) then
                        ready_loc <= '1';
                        LAST_STATE <= INC_REP;
                    else
                        ready_loc <= '0';
                        LAST_STATE <= INC;
                    end if;
                when (RES_REP) =>
                    count <= to_unsigned(1,DATA_WIDTH-NUMBER_OF_CHANNELS);
                    if (unsigned(stop_flags)/=0) then
                        ready_loc <= '1';
                        LAST_STATE <= RES_REP;
                    else
                        ready_loc <= '0';
                        LAST_STATE <= RES;
                    end if;
                when others =>
                    count <= to_unsigned(0,DATA_WIDTH-NUMBER_OF_CHANNELS);
                    ready_loc <= '0';
                    LAST_STATE <= RES;
                end case;    
            end if; -- rising_edge(clk)
        end if; -- enable
    end process;

end behavior;
