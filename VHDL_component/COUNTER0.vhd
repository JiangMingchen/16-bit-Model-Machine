LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY COUNTER0 IS
PORT(
 CLK,CLR:IN STD_LOGIC;
 T0,T1,T2,T3,T4,T5,T6,T7:OUT STD_LOGIC
 );
END COUNTER0;
ARCHITECTURE A OF COUNTER0 IS
SIGNAL TEMP:STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
 T0<=TEMP(0);
 T1<=TEMP(1);
 T2<=TEMP(2); 
 T3<=TEMP(3);
 T4<=TEMP(4);
 T5<=TEMP(5);
 T6<=TEMP(6);
 T7<=TEMP(7);
 PROCESS(CLK,CLR)
 BEGIN
 IF(CLR='0') THEN
 TEMP(0)<='1';
 TEMP(1)<='0';
 TEMP(2)<='0';
 TEMP(3)<='0';
 TEMP(4)<='0';
 TEMP(5)<='0';
 TEMP(6)<='0';
 TEMP(7)<='0';
 ELSIF(CLK'EVENT AND CLK='1') THEN
 TEMP(0)<=TEMP(7);
 TEMP(1)<=TEMP(0);
 TEMP(2)<=TEMP(1);
 TEMP(3)<=TEMP(2);
 TEMP(4)<=TEMP(3);
 TEMP(5)<=TEMP(4);
 TEMP(6)<=TEMP(5);
 TEMP(7)<=TEMP(6);
 END IF;
 END PROCESS;
END A; 