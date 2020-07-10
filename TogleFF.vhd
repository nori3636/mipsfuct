-------------------------------------------------------
-- Auto-generated module template: DE10_LITE_Default
--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
 
entity TogleFF is
	port (
		reset : in std_logic;
		Tin	: in std_logic;
		Tout	: out std_logic
    );
end TogleFF;
 
architecture RTL of TogleFF is
signal tmp : std_logic;
begin
-- T-FF
	process(Tin, reset)
	begin
		if (reset = '0') then
			tmp <= '0';
		elsif (Tin'event and Tin = '0') then
			tmp <= not tmp;
		end if;
	end process;

	Tout <= tmp;

end RTL;