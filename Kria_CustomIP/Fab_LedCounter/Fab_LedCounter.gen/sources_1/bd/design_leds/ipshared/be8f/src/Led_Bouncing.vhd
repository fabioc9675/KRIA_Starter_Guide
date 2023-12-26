----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Fabian Castano
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Led_Bouncing is
    Port ( CLK: in  std_logic;
           PUL: in  std_logic;
           LED: out std_logic);
end Led_Bouncing;

architecture Behavioral of Led_Bouncing is
    type     state_type is (GO_UP, GO_DOWN, L_WAIT);
    signal   state, next_state      : state_type;
    signal   counter, counter_rel   : integer range 0 to 200000 := 0;
    signal   counter_comp           : integer range 0 to 1000 := 0;
    constant MAX_COUNT              : integer := 1000;  -- 1 s at 200 MHz clock
    constant MAX_REL_COUNT          : integer := 200000;     -- 1 ms at 200 MHz clock
    
begin
    
    Bouncing_Process: process(CLK, PUL)
    begin
        
        if PUL = '0' then
            state <= GO_UP; 
            counter_rel <= 0;
            counter <= 0;
        end if;
        
        if rising_edge(CLK) then
            if counter = MAX_REL_COUNT - 1 then
                counter <= 0;
                
                if state = GO_UP then
                    counter_rel <= counter_rel + 1;              
                    -- Restarting counter
                    if counter_rel = MAX_COUNT - 1 then
                        -- counter_rel <= 0;
                        state <= GO_DOWN;
                    end if;
                elsif state = GO_DOWN then
                    counter_rel <= counter_rel - 1;              
                    -- Restarting counter
                    if counter_rel = 0 then
                        -- counter_rel <= 0;
                        state <= L_WAIT;
                    end if;
                end if;
            else 
                counter <= counter + 1;
            end if;
        end if;
        
        -- Creation of on and off states
        counter_comp <= counter / 200;
        if not(state = L_WAIT) then
            if counter_comp < counter_rel then
                LED <= '1';
            else
                LED <= '0';
            end if;  
        else
            LED <= '0';
        end if;
        
    end process;
    
end Behavioral;
