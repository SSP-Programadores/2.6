-- decodificador 2:4
library IEEE;
use IEEE.std_logic_1164.all;

entity deco_2_a_4 is
   port ( d   : out std_logic_vector (3 downto 0);
          i   : in  std_logic_vector (1 downto 0);
          e   : in  std_logic );
end entity deco_2_a_4;

architecture arch_deco of deco_2_a_4 is
begin
   process (e, i)
   begin
      if (e = '1') and (i = "00") then
         d <= "0001";
      elsif (e = '1') and (i = "01") then
         d <= "0010";
      elsif (e = '1') and (i = "10") then
         d <= "0100";
      elsif (e = '1') and (i = "11") then
         d <= "1000";
      else
         d <= "0000";
      end if;
   end process;
end architecture arch_deco; 
