library ieee;
use ieee.std_logic_1164.all;

Entity mux2a1 is
PORT(
	A: IN std_logic_vector(3 downto 0);
	B: IN std_logic_vector(3 downto 0);
	sel: IN std_logic;
	Q: OUT std_logic_vector(3 downto 0));

end mux2a1;
Architecture sol of mux2a1 is
Begin

with sel select

	Q<= A when '0',
	B when others;

end sol;