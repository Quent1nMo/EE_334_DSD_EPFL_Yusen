--=============================================================================
-- @file pwm_cp.vhdl
--=============================================================================
-- Standard library
library ieee;
-- Standard packages
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--=============================================================================
--
-- pwm
--
-- @brief PWM circuit for the RGB LED lab (lab 2)
--
--=============================================================================
entity pwm_cp is
  port (
    CLKxCI : in std_logic;
    RSTxRI : in std_logic;

    PushxSI : in std_logic;
    LedxSO  : out std_logic
  );
end pwm_cp;


architecture rtl_cp of pwm_cp is
-- TODO: define the needed signals
-- N: next state (register input), P: present state (register output).
signal PushxSN, PushxSP : std_logic;
signal EDGExS, PWMxS : std_logic;
signal ThrCNTxDN, ThrCNTxDP : unsigned(18-1 downto 0);
signal CNTxDN, CNTxDP : unsigned(18-1 downto 0);

begin

  -- TODO: Edge detection
  -- Rising-edge detection: a held button increments the threshold only once.
  PushxSN <= PushxSI; -- input push botton
  EDGExS <= PushxSI and not PushxSP; -- detect rising edge of push button


  -- TODO: Threshold generation
  -- Threshold adder and multiplexer. Overflow wraps after eight presses.
  p_threshold: process(all)
  begin
    ThrCNTxDN <= ThrCNTxDP; -- default value
    if EDGExs = '1' then
      ThrCNTxDN <= ThrCNTxDP + to_unsigned(32768, ThrCNTxDP'length); -- increment threshold
    end if;
  end process p_threshold;


  -- TODO: PWM pulse
  -- Free-running PWM counter and comparator.
  CNTxDN <= CNTxDP + 1;
  PWMxS <= '1' when ThrCNTxDP < CNTxDP else '0'; -- compare counter with threshold

  
  --Registers with active-high asynchronous reset.
  -- All arithmetic and selection logic is defined outside this process.
    p_registers: process(CLKxCI, RSTxRI)
    begin
      if RSTxRI = '1' then
        PushxSP <= '0';
        ThrCNTxDP <= (others => '0');
        CNTxDP <= (others => '0');
      elsif rising_edge(CLKxCI) then
        PushxSP <= PushxSN;
        ThrCNTxDP <= ThrCNTXDN;
        CNTxDP <= CNTxDN;
      end if;
    end process p_registers;

    
  LedxSO <= PWMxS; -- assign to output

end rtl_cp;
