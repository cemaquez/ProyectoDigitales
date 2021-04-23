LIBRARY IEEE;
USE ieee.std_logic_1164.all;
ENTITY puertaOr IS

PORT (x : IN std_logic;
             y: IN std_logic;
z: OUT std_logic);

END puertaOr;

ARCHITECTURE solve OF puertaOr IS
BEGIN

z <= x or y;

END solve;