-- banco de pruebas del decodificador 2:4
library IEEE;
use IEEE.std_logic_1164.all;

entity bp_deco_2_4 is
end entity bp_deco_2_4;

architecture bp_deco_2_4 of bp_deco_2_4 is
   signal i_bp : std_logic_vector (1 downto 0);
   signal d_bp : std_logic_vector (3 downto 0);
   signal e_bp    : std_logic;

   component deco_2_a_4 is
      port ( d   : out std_logic_vector (3 downto 0);
          i   : in  std_logic_vector (1 downto 0);
          e   : in  std_logic );
   end component deco_2_a_4;

begin
   uut: component deco_2_a_4 port map
         (i => i_bp, d => d_bp, e => e_bp);

   for indice in 0 to 1 generate
      e_bp <= indice after 5 ns;
      i_bp <= "00" after 5 ns;
      i_bp <= "01" after 5 ns;
      i_bp <= "10" after 5 ns;
      i_bp <= "11" after 5 ns;
   end generate;         

end architecture bp_deco_2_4; 

