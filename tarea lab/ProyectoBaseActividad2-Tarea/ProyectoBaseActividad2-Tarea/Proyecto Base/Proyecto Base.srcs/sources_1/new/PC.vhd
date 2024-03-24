library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
    Port ( clock    : in  std_logic;                        -- Señal del clock (reducido).
           clear    : in  std_logic;                        -- Señal de reset.
           dataout  : out std_logic_vector (7 downto 0));   -- Señales de salida de datos.
end PC;

architecture Behavioral of PC is

signal reg_out : std_logic_vector(7 downto 0) := (others => '0'); -- Señales de salida del registro. Parte en 0.

begin
        
dataout <= reg_out;
            
end Behavioral;