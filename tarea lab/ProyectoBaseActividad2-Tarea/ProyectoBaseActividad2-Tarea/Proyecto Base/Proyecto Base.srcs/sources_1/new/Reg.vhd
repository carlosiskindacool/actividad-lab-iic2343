library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg is
    Port ( clock    : in  std_logic;                        -- Señal del clock (reducido).
           clear    : in  std_logic;                        -- Señal de reset.
           load     : in  std_logic;                        -- Señal de carga.
           datain   : in  std_logic_vector (7 downto 0);    -- Señales de entrada de datos.
           dataout  : out std_logic_vector (7 downto 0));   -- Señales de salida de datos.
end Reg;

architecture Behavioral of Reg is

signal reg : std_logic_vector(7 downto 0) := (others => '0'); -- Señales del registro. Parten en 0.

begin

dataout <= reg;
            
end Behavioral;
