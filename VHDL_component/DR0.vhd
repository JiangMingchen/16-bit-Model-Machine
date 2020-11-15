LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY DR0 IS
PORT(
 DDATA_IN:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
 IDR:IN STD_LOGIC;
 EDR:IN STD_LOGIC;
 CLK:IN STD_LOGIC;
 DDATA_OUT:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
 );
END DR0;
ARCHITECTURE A OF DR0 IS
SIGNAL REGQ:STD_LOGIC_VECTOR(15 DOWNTO 0):="ZZZZZZZZZZZZZZZZ";
BEGIN
 PROCESS(CLK,IDR,EDR)
 BEGIN
 IF(CLK'EVENT AND CLK='1') THEN
 IF(IDR='1') THEN
 REGQ<=DDATA_IN;
 END IF;
 END IF;
 END PROCESS;
DDATA_OUT<=REGQ WHEN EDR='1' ELSE "ZZZZZZZZZZZZZZZZ";
END A;