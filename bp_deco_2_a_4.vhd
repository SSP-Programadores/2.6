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

   -- bucle para enable = 0, enable = 1
   process
   begin
      e_bp <= '1';
      i_bp <= "00";
      wait for 50 ns;
      i_bp <= "01";
      wait for 50 ns;
      i_bp <= "10";
      wait for 50 ns;
      i_bp <= "11";
      wait for 50 ns;
      e_bp <= '0';
      i_bp <= "00";
      wait for 50 ns;
      i_bp <= "01";
      wait for 50 ns;
      i_bp <= "10";
      wait for 50 ns;
      i_bp <= "11";
      wait;
   end process;
            

end architecture bp_deco_2_4; 

