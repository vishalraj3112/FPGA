----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:48:58 01/29/2018 
-- Design Name: 
-- Module Name:    multiplier - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplier is
    Port ( a0 : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           b0 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           p0 : out  STD_LOGIC;
           p1 : out  STD_LOGIC;
           p2 : out  STD_LOGIC;
           p3 : out  STD_LOGIC);
end multiplier;

architecture Behavioral of multiplier is
signal c1:std_logic;


begin
p0 <=a0 AND b0;
p1 <=(a1 AND b0) XOR (a0 AND b1);
c1 <=(a1 AND b0) AND (a0 AND b1);
p2 <=(a1 AND b1) XOR (c1);
p3 <=(a1 AND b1) AND (c1);


end Behavioral;

