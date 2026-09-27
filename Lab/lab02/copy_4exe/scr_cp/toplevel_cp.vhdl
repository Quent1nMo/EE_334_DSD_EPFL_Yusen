--=============================================================================
-- @file toplevel_cp.vhdl
--=============================================================================
-- Standard library
library ieee;
-- Standard packages
use ieee.std_logic_1164.all;

--=============================================================================
--
-- toplevel
--
-- @brief This file specifies the toplevel for the RGB LED lab (lab 2)
--
--=============================================================================
entity toplevel_cp is
  port (
    CLKxCI : in std_logic;
    RSTxRI : in std_logic;

    PushRedxSI   : in std_logic;
    PushGreenxSI : in std_logic;
    PushBluexSI  : in std_logic;

    LedRedxSO   : out std_logic;
    LedGreenxSO : out std_logic;
    LedBluexSO  : out std_logic
  );
end toplevel_cp;


architecture rtl_cp of toplevel_cp is

  component pwm_cp
    port (
      CLKxCI : in std_logic;
      RSTxRI : in std_logic;

      PushxSI : in std_logic;
      LedxSO  : out std_logic
    );
  end component;

begin

  -- TODO: instantiate the pwm module for each color

end rtl_cp;
