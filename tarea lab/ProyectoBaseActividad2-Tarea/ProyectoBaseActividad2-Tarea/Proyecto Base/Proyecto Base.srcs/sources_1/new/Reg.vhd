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

component FDD is
    Port (
        D : in STD_LOGIC;
        C : in STD_LOGIC;
        Q : out STD_LOGIC);
    end component;

signal reg : std_logic_vector(7 downto 0) := (others => '0'); -- Señales del registro. Parten en 0.

signal cout : std_logic_vector(7 downto 0);

signal loadout : std_logic_vector(7 downto 0);
signal clearout : std_logic_vector(7 downto 0);

signal load_int_0 : std_logic;
signal clear_int_0 : std_logic;

signal load_int_1 : std_logic;
signal clear_int_1 : std_logic;

signal load_int_2 : std_logic;
signal clear_int_2 : std_logic;

signal load_int_3 : std_logic;
signal clear_int_3 : std_logic;

signal load_int_4 : std_logic;
signal clear_int_4 : std_logic;

signal load_int_5 : std_logic;
signal clear_int_5 : std_logic;

signal load_int_6 : std_logic;
signal clear_int_6 : std_logic;

signal load_int_7 : std_logic;
signal clear_int_7 : std_logic;



begin

FFD0: FFD port map (
	D => clear_int_0,
	C => cout(0),
	Q => reg(0),
  );

-- completar con señales internas load_int_X

FFD1: FFD port map (
    D => clear_int_1,
    C => cout(1),
    Q => reg(1)
);

FFD2: FFD port map (
    D => clear_int_2,
    C => cout(2),
    Q => reg(2)
);

FFD3: FFD port map (
    D => clear_int_3,
    C => cout(3),
    Q => reg(3)
);

FFD4: FFD port map (
    D => clear_int_4,
    C => cout(4),
    Q => reg(4)
);

FFD5: FFD port map (
    D => clear_int_5,
    C => cout(5),
    Q => reg(5)
);

FFD6: FFD port map (
    D => clear_int_6,
    C => cout(6),
    Q => reg(6)
);

FFD7: FFD port map (
    D => clear_int_7,
    C => cout(7),
    Q => reg(7)
);

with loadout(0) select
load_int_0 <= datain(0)  when "1",
                 reg(0)  when others;

clear_int_0 <= not clearout(0) and load_int_0;

with loadout(1) select
    load_int_1 <= datain(1) when "1",
                     reg(1) when others;

clear_int_1 <= not clearout(1) and load_int_1;

with loadout(2) select
    load_int_2 <= datain(2) when "1",
                     reg(2) when others;

clear_int_2 <= not clearout(2) and load_int_2;

with loadout(3) select
    load_int_3 <= datain(3) when "1",
                     reg(3) when others;

clear_int_3 <= not clearout(3) and load_int_3;

with loadout(4) select
    load_int_4 <= datain(4) when "1",
                     reg(4) when others;

clear_int_4 <= not clearout(4) and load_int_4;

with loadout(5) select
    load_int_5 <= datain(5) when "1",
                     reg(5) when others;

clear_int_5 <= not clearout(5) and load_int_5;

with loadout(6) select
    load_int_6 <= datain(6) when "1",
                     reg(6) when others;

clear_int_6 <= not clearout(6) and load_int_6;

with loadout(7) select
    load_int_7 <= datain(7) when "1",
                     reg(7) when others;

clear_int_7 <= not clearout(7) and load_int_7;

-- with loadout select
--     load_int <= datain when "11111111",
--                    reg when others; 

-- clear_int <= not clearout and load_int


dataout <= reg;
cout <= clock;
loadout <= load;
            
end Behavioral;
