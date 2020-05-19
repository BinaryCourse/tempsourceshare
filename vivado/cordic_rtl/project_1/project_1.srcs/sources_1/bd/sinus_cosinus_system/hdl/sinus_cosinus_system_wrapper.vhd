--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
--Date        : Tue May 19 18:05:59 2020
--Host        : dream running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target sinus_cosinus_system_wrapper.bd
--Design      : sinus_cosinus_system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sinus_cosinus_system_wrapper is
  port (
    aclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din_tready : out STD_LOGIC;
    din_tvalid : in STD_LOGIC;
    dout_cosinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_sinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_tvalid : out STD_LOGIC
  );
end sinus_cosinus_system_wrapper;

architecture STRUCTURE of sinus_cosinus_system_wrapper is
  component sinus_cosinus_system is
  port (
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din_tready : out STD_LOGIC;
    din_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    dout_tvalid : out STD_LOGIC;
    dout_sinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_cosinus : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component sinus_cosinus_system;
begin
sinus_cosinus_system_i: component sinus_cosinus_system
     port map (
      aclk => aclk,
      din(15 downto 0) => din(15 downto 0),
      din_tready => din_tready,
      din_tvalid => din_tvalid,
      dout_cosinus(15 downto 0) => dout_cosinus(15 downto 0),
      dout_sinus(15 downto 0) => dout_sinus(15 downto 0),
      dout_tvalid => dout_tvalid
    );
end STRUCTURE;
