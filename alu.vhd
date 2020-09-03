-- ALU : Arithmetic and Logical Unit --

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ALU is
    port(
        AIn, BIn : in std_logic_vector(31 downto 0);
        ALUPlus, ALUMinus : in std_logic;
        ALUOut : out std_logic_vector(31 downto 0)
    );
end ALU;

architecture RTL of ALU is
signal mul : std_logic_veCtor(63 downto 0);


begin

    mul <= Ain * Bin;
    ALUOut <= mul(31 downto 0) when (ALUPlus = '1' and ALUMinus = '1') else
              AIn + BIn when (ALUPlus = '1' and ALUMinus = '0') else
              AIn - BIn when (ALUPlus = '0' and ALUMinus = '1') else
              (others => '0');

end RTL;