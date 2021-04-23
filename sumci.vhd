--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity sumci is
	generic ( n: integer :=4);--<------- nbits
	port(
		X,Y: in std_logic_vector(n-1 downto 0);
		ci: in std_logic;
		S: out std_logic_vector(n downto 0));
end sumci;

--Architecture
architecture solve of sumci is
	-- Signals,Constants,Variables,Components
	signal f: std_logic_vector(n-1 downto 0);
	begin
		f<=(OTHERS=>'0');
		s<=('0'&x)+('1'&y)+(f&ci);--Without the sign bit
		--s<='0'&(x+y);--with sign bit
end solve;