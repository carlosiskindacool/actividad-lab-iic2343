library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
    Port ( clock    : in  std_logic;                        -- Señal del clock (reducido).
           clear    : in  std_logic;                        -- Señal de reset.
           dataout  : out std_logic_vector (7 downto 0));   -- Señales de salida de datos.
end PC;

architecture Behavioral of PC is

component Reg 
    Port ( clock    : in  std_logic;                        -- Señal del clock (reducido).
           clear    : in  std_logic;                        -- Señal de reset.
           load     : in  std_logic;                        -- Señal de carga.
           datain   : in  std_logic_vector (7 downto 0);    -- Señales de entrada de datos.
           dataout  : out std_logic_vector (7 downto 0));   -- Señales de salida de datos.
end Reg;

component Adder8 
    Port ( a  : in  std_logic_vector (7 downto 0);
           b  : in  std_logic_vector (7 downto 0);
           ci : in  std_logic;
           s  : out std_logic_vector (7 downto 0);
           co : out std_logic);
end Adder8;


signal add_out : std_logic_vector(7 downto 0);
signal reg_out : std_logic_vector(7 downto 0) := (others => '0'); -- Señales de salida del registro. Parte en 0.


begin

inst_Adder: Adder8 port map(
        a      => dataout,
        b      => '0',
        ci     => '1',
        s      => add_out,
        co     => '0'
    );

inst_Reg: Reg port map(
	clock 	=> clock,
	clear 	=> clear,
	load 	=> '1',
	datain 	=> add_out,
	dataout => reg_out
    );

        
dataout <= reg_out;
            
end Behavioral;