-- detector.vhdl
-- detector takes an asychronous input and makes it synchronous:
-- following a rising edge of INPUT,
-- OUTPUT will be high for the next clock cycle

library ieee;
use ieee.std_logic_1164.all;

entity detector is
    port (
        clk         :  in  std_logic;
        input       :  in  std_logic;
        output      :  out std_logic
    );
end detector;

architecture behavior of detector is
    signal input_prev  :  std_logic;
    
begin

    prDetectClk  : process (clk, input)
    begin
        if rising_edge(clk) then
            output <= (not input_prev) and input;
            input_prev <= input;
        end if;        
    end process;

end behavior;