library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg is
    Port ( clock    : in  std_logic;                        -- Se�al del clock (reducido).
           clear    : in  std_logic;                        -- Se�al de reset.
           load     : in  std_logic;                        -- Se�al de carga.
           datain   : in  std_logic_vector (7 downto 0);    -- Se�ales de entrada de datos.
           dataout  : out std_logic_vector (7 downto 0));   -- Se�ales de salida de datos.
end Reg;

architecture Behavioral of Reg is

signal reg : std_logic_vector(7 downto 0) := (others => '0'); -- Se�ales del registro. Parten en 0.

begin

dataout <= reg;
            
end Behavioral;
