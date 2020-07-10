-------------------------------------------------------
-- Auto-generated module template: DE10_LITE_Default
--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
 
entity Chattering is
	port (
	-- CLOCK
		clk 		: in std_logic;
		reset		: in std_logic;
		sw_in 	: in std_logic;
		sw_out	: out std_logic
    );
end Chattering;
 
architecture RTL of Chattering is
signal counter : std_logic_vector(15 downto 0);
signal iclk : std_logic;
begin

	process(clk,reset)
	begin
		if(reset = '0') then
			counter <= (others => '0');
		elsif (clk'event and clk = '1') then
			counter <= counter + 1;
		end if;
	end process;
	
	iclk <= counter(15);
	
	
	process(iclk)
	begin
		if(iclk'event and iclk ='1') then
			sw_out <= sw_in;
		end if;
	end process;

end RTL;