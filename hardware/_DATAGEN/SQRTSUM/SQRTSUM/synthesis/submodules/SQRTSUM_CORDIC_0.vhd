-- ------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 16.0
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2016 Altera Corporation.  All rights reserved.
-- Your use of  Altera  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Altera Program License Subscription Agreement,
-- Altera  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Altera and sold by
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from SQRTSUM_CORDIC_0
-- VHDL created on Sun Apr 22 19:30:11 2018


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity SQRTSUM_CORDIC_0 is
    port (
        x : in std_logic_vector(11 downto 0);  -- sfix12
        y : in std_logic_vector(11 downto 0);  -- sfix12
        q : out std_logic_vector(17 downto 0);  -- sfix18_en15
        r : out std_logic_vector(17 downto 0);  -- ufix18_en5
        clk : in std_logic;
        areset : in std_logic
    );
end SQRTSUM_CORDIC_0;

architecture normal of SQRTSUM_CORDIC_0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal constantZero_uid6_vecTranslateTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1E_1_uid23_vecTranslateTest_a : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid23_vecTranslateTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid23_vecTranslateTest_o : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid23_vecTranslateTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_vecTranslateTest_a : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_vecTranslateTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_vecTranslateTest_o : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_vecTranslateTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q : STD_LOGIC_VECTOR (2 downto 0);
    signal xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xip1E_7CostZeroPaddingA_uid133_vecTranslateTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal cstZeroOutFormat_uid356_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constPiP2uE_uid357_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal constPiP2u_uid365_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constPi_uid366_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constantZeroOutFormat_uid367_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constantZeroOutFormatP2u_uid368_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist0_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist4_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist10_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist14_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist18_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist22_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist23_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist26_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist27_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist30_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist31_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist34_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist35_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concSignVector_uid337_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_2NA_uid39_vecTranslateTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_2NA_uid42_vecTranslateTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal constPio2P2u_mergedSignalTM_uid360_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yNotZero_uid15_vecTranslateTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal yNotZero_uid15_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_vecTranslateTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal xNotZero_uid17_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid327_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid327_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal atanResPostExc_uid363_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid363_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal firstOperand_uid370_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal firstOperand_uid370_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal secondOperand_uid371_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal secondOperand_uid371_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal outResExtended_uid372_vecTranslateTest_a : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid372_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid372_vecTranslateTest_o : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid372_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal signX_uid7_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal signX_uid7_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid8_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal signY_uid8_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xMSB_uid32_vecTranslateTest_in : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid32_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4NA_uid77_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_4NA_uid80_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_8NA_uid155_vecTranslateTest_q : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1E_8NA_uid158_vecTranslateTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_6NA_uid115_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6NA_uid118_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid286_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid286_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid291_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal twoToMiSiYip_uid291_vecTranslateTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal twoToMiSiXip_uid290_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid290_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid252_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid252_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid257_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiYip_uid257_vecTranslateTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal twoToMiSiXip_uid256_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid256_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid218_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid218_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid223_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal twoToMiSiYip_uid223_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal twoToMiSiXip_uid222_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid222_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid184_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid184_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid189_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal twoToMiSiYip_uid189_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal twoToMiSiXip_uid188_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid188_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid146_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid146_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid151_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid151_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiXip_uid150_vecTranslateTest_in : STD_LOGIC_VECTOR (33 downto 0);
    signal twoToMiSiXip_uid150_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid108_vecTranslateTest_in : STD_LOGIC_VECTOR (19 downto 0);
    signal xMSB_uid108_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid119_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid70_vecTranslateTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid70_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_a : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_o : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid81_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal is0_uid338_vecTranslateTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal is0_uid338_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is1_uid344_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal is1_uid344_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is2_uid349_vecTranslateTest_in : STD_LOGIC_VECTOR (5 downto 0);
    signal is2_uid349_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_o : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal concXZeroYZero_uid362_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xip1_18_uid334_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_18_uid334_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal atanResPostRR_uid373_vecTranslateTest_in : STD_LOGIC_VECTOR (19 downto 0);
    signal atanResPostRR_uid373_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal invSignX_uid9_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid9_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concSigns_uid364_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invSignY_uid11_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignY_uid11_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid37_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid37_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_a : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_b : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_o : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_q : STD_LOGIC_VECTOR (32 downto 0);
    signal invSignOfSelectionSignal_uid293_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid293_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_a : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_o : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid259_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid259_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid225_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid225_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_a : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_o : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_q : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid191_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid191_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_o : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid153_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid153_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid113_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid113_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_6_uid125_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_6_uid125_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal invSignOfSelectionSignal_uid75_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid75_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_4_uid87_vecTranslateTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_4_uid87_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal table_l5_uid339_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid340_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid341_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal table_l11_uid345_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l11_uid346_vecTranslateTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal table_l17_uid350_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal yip1_2_uid49_vecTranslateTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1_2_uid49_vecTranslateTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal outMagPreRnd_uid375_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal outMagPreRnd_uid375_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal absXE_uid10_vecTranslateTest_a : STD_LOGIC_VECTOR (13 downto 0);
    signal absXE_uid10_vecTranslateTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal absXE_uid10_vecTranslateTest_o : STD_LOGIC_VECTOR (13 downto 0);
    signal absXE_uid10_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absXE_uid10_vecTranslateTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal absYE_uid12_vecTranslateTest_a : STD_LOGIC_VECTOR (13 downto 0);
    signal absYE_uid12_vecTranslateTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal absYE_uid12_vecTranslateTest_o : STD_LOGIC_VECTOR (13 downto 0);
    signal absYE_uid12_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absYE_uid12_vecTranslateTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2sumAHighB_uid40_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1_8_uid165_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1_8_uid165_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1_16_uid301_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_16_uid301_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_16_uid300_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_16_uid300_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_14_uid267_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_14_uid267_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_14_uid266_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_14_uid266_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_12_uid233_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_12_uid233_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_12_uid232_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_12_uid232_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_10_uid199_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1_10_uid199_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_10_uid198_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_10_uid198_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_8_uid164_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_8_uid164_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_a : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_o : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6sumAHighB_uid116_vecTranslateTest_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid127_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid127_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7NA_uid137_vecTranslateTest_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_a : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_o : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4sumAHighB_uid78_vecTranslateTest_q : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid89_vecTranslateTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xMSB_uid89_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5NA_uid99_vecTranslateTest_q : STD_LOGIC_VECTOR (20 downto 0);
    signal os_uid342_vecTranslateTest_q : STD_LOGIC_VECTOR (21 downto 0);
    signal os_uid347_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid51_vecTranslateTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid51_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3NA_uid61_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal outMagPostRnd_uid378_vecTranslateTest_a : STD_LOGIC_VECTOR (19 downto 0);
    signal outMagPostRnd_uid378_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal outMagPostRnd_uid378_vecTranslateTest_o : STD_LOGIC_VECTOR (19 downto 0);
    signal outMagPostRnd_uid378_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal absX_uid13_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal absX_uid13_vecTranslateTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal absY_uid14_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal absY_uid14_vecTranslateTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1_2_uid48_vecTranslateTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1_2_uid48_vecTranslateTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid167_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal xMSB_uid167_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid172_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal twoToMiSiYip_uid172_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid303_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid303_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid308_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal twoToMiSiYip_uid308_vecTranslateTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal twoToMiSiXip_uid307_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid307_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid269_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid269_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid274_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiYip_uid274_vecTranslateTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal twoToMiSiXip_uid273_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid273_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid235_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid235_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid240_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiYip_uid240_vecTranslateTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal twoToMiSiXip_uid239_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid239_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid201_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid201_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid206_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid206_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal twoToMiSiXip_uid205_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid205_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiXip_uid171_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid171_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_6_uid124_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_6_uid124_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal invSignOfSelectionSignal_uid132_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid132_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid138_vecTranslateTest_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_7sumAHighB_uid138_vecTranslateTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_7sumAHighB_uid138_vecTranslateTest_o : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_7sumAHighB_uid138_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid138_vecTranslateTest_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1_4_uid86_vecTranslateTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_4_uid86_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal invSignOfSelectionSignal_uid94_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid94_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_a : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_o : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid100_vecTranslateTest_q : STD_LOGIC_VECTOR (21 downto 0);
    signal lev1_a0_uid353_vecTranslateTest_a : STD_LOGIC_VECTOR (22 downto 0);
    signal lev1_a0_uid353_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal lev1_a0_uid353_vecTranslateTest_o : STD_LOGIC_VECTOR (22 downto 0);
    signal lev1_a0_uid353_vecTranslateTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal invSignOfSelectionSignal_uid56_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid56_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_a : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_o : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal outMag_uid379_vecTranslateTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal outMag_uid379_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_3NA_uid58_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal invSignOfSelectionSignal_uid174_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid174_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid310_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid310_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_a : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_o : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid276_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid276_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid242_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid242_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_a : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_o : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid208_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid208_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_a : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_o : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal xip1E_7NA_uid134_vecTranslateTest_q : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1E_7sumAHighB_uid135_vecTranslateTest_a : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_7sumAHighB_uid135_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_7sumAHighB_uid135_vecTranslateTest_o : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_7sumAHighB_uid135_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7sumAHighB_uid135_vecTranslateTest_q : STD_LOGIC_VECTOR (35 downto 0);
    signal yip1_7_uid144_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1_7_uid144_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_5NA_uid96_vecTranslateTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_a : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_o : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5sumAHighB_uid97_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_5_uid106_vecTranslateTest_in : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1_5_uid106_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal lev2_a0_uid354_vecTranslateTest_a : STD_LOGIC_VECTOR (23 downto 0);
    signal lev2_a0_uid354_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal lev2_a0_uid354_vecTranslateTest_o : STD_LOGIC_VECTOR (23 downto 0);
    signal lev2_a0_uid354_vecTranslateTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_3_uid68_vecTranslateTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_3_uid68_vecTranslateTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_9_uid182_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1_9_uid182_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1_9_uid181_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_9_uid181_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_17_uid318_vecTranslateTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1_17_uid318_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1_17_uid317_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_17_uid317_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_15_uid284_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_15_uid284_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1_15_uid283_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_15_uid283_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_13_uid250_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_13_uid250_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1_13_uid249_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_13_uid249_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_11_uid216_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1_11_uid216_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_11_uid215_vecTranslateTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_11_uid215_vecTranslateTest_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_7_uid143_vecTranslateTest_in : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1_7_uid143_vecTranslateTest_b : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1_5_uid105_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_5_uid105_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal atanRes_uid355_vecTranslateTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal atanRes_uid355_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_3_uid67_vecTranslateTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1_3_uid67_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid320_vecTranslateTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid320_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid325_vecTranslateTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal twoToMiSiYip_uid325_vecTranslateTest_b : STD_LOGIC_VECTOR (4 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- xMSB_uid303_vecTranslateTest(BITSELECT,302)@8
    xMSB_uid303_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_16_uid301_vecTranslateTest_b);
    xMSB_uid303_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid303_vecTranslateTest_in(22 downto 22));

    -- xMSB_uid269_vecTranslateTest(BITSELECT,268)@7
    xMSB_uid269_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_14_uid267_vecTranslateTest_b);
    xMSB_uid269_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid269_vecTranslateTest_in(24 downto 24));

    -- xMSB_uid235_vecTranslateTest(BITSELECT,234)@6
    xMSB_uid235_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_12_uid233_vecTranslateTest_b);
    xMSB_uid235_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid235_vecTranslateTest_in(26 downto 26));

    -- xMSB_uid201_vecTranslateTest(BITSELECT,200)@5
    xMSB_uid201_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_10_uid199_vecTranslateTest_b);
    xMSB_uid201_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid201_vecTranslateTest_in(28 downto 28));

    -- xMSB_uid167_vecTranslateTest(BITSELECT,166)@4
    xMSB_uid167_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_8_uid165_vecTranslateTest_b);
    xMSB_uid167_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid167_vecTranslateTest_in(30 downto 30));

    -- signX_uid7_vecTranslateTest(BITSELECT,6)@0
    signX_uid7_vecTranslateTest_in <= STD_LOGIC_VECTOR(x);
    signX_uid7_vecTranslateTest_b <= STD_LOGIC_VECTOR(signX_uid7_vecTranslateTest_in(11 downto 11));

    -- invSignX_uid9_vecTranslateTest(LOGICAL,8)@0
    invSignX_uid9_vecTranslateTest_a <= signX_uid7_vecTranslateTest_b;
    invSignX_uid9_vecTranslateTest_q <= not (invSignX_uid9_vecTranslateTest_a);

    -- xIn(GPIN,3)@0

    -- constantZero_uid6_vecTranslateTest(CONSTANT,5)
    constantZero_uid6_vecTranslateTest_q <= "000000000000";

    -- absXE_uid10_vecTranslateTest(ADDSUB,9)@0
    absXE_uid10_vecTranslateTest_s <= invSignX_uid9_vecTranslateTest_q;
    absXE_uid10_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => constantZero_uid6_vecTranslateTest_q(11)) & constantZero_uid6_vecTranslateTest_q));
    absXE_uid10_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => x(11)) & x));
    absXE_uid10_vecTranslateTest_combproc: PROCESS (absXE_uid10_vecTranslateTest_a, absXE_uid10_vecTranslateTest_b, absXE_uid10_vecTranslateTest_s)
    BEGIN
        IF (absXE_uid10_vecTranslateTest_s = "1") THEN
            absXE_uid10_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_vecTranslateTest_a) + SIGNED(absXE_uid10_vecTranslateTest_b));
        ELSE
            absXE_uid10_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_vecTranslateTest_a) - SIGNED(absXE_uid10_vecTranslateTest_b));
        END IF;
    END PROCESS;
    absXE_uid10_vecTranslateTest_q <= absXE_uid10_vecTranslateTest_o(12 downto 0);

    -- absX_uid13_vecTranslateTest(BITSELECT,12)@0
    absX_uid13_vecTranslateTest_in <= absXE_uid10_vecTranslateTest_q(11 downto 0);
    absX_uid13_vecTranslateTest_b <= absX_uid13_vecTranslateTest_in(11 downto 0);

    -- signY_uid8_vecTranslateTest(BITSELECT,7)@0
    signY_uid8_vecTranslateTest_in <= STD_LOGIC_VECTOR(y);
    signY_uid8_vecTranslateTest_b <= STD_LOGIC_VECTOR(signY_uid8_vecTranslateTest_in(11 downto 11));

    -- invSignY_uid11_vecTranslateTest(LOGICAL,10)@0
    invSignY_uid11_vecTranslateTest_a <= signY_uid8_vecTranslateTest_b;
    invSignY_uid11_vecTranslateTest_q <= not (invSignY_uid11_vecTranslateTest_a);

    -- absYE_uid12_vecTranslateTest(ADDSUB,11)@0
    absYE_uid12_vecTranslateTest_s <= invSignY_uid11_vecTranslateTest_q;
    absYE_uid12_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => constantZero_uid6_vecTranslateTest_q(11)) & constantZero_uid6_vecTranslateTest_q));
    absYE_uid12_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => y(11)) & y));
    absYE_uid12_vecTranslateTest_combproc: PROCESS (absYE_uid12_vecTranslateTest_a, absYE_uid12_vecTranslateTest_b, absYE_uid12_vecTranslateTest_s)
    BEGIN
        IF (absYE_uid12_vecTranslateTest_s = "1") THEN
            absYE_uid12_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_vecTranslateTest_a) + SIGNED(absYE_uid12_vecTranslateTest_b));
        ELSE
            absYE_uid12_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_vecTranslateTest_a) - SIGNED(absYE_uid12_vecTranslateTest_b));
        END IF;
    END PROCESS;
    absYE_uid12_vecTranslateTest_q <= absYE_uid12_vecTranslateTest_o(12 downto 0);

    -- absY_uid14_vecTranslateTest(BITSELECT,13)@0
    absY_uid14_vecTranslateTest_in <= absYE_uid12_vecTranslateTest_q(11 downto 0);
    absY_uid14_vecTranslateTest_b <= absY_uid14_vecTranslateTest_in(11 downto 0);

    -- yip1E_1_uid24_vecTranslateTest(SUB,23)@0 + 1
    yip1E_1_uid24_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & absY_uid14_vecTranslateTest_b);
    yip1E_1_uid24_vecTranslateTest_b <= STD_LOGIC_VECTOR("0" & absX_uid13_vecTranslateTest_b);
    yip1E_1_uid24_vecTranslateTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            yip1E_1_uid24_vecTranslateTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            yip1E_1_uid24_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1_uid24_vecTranslateTest_a) - UNSIGNED(yip1E_1_uid24_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_1_uid24_vecTranslateTest_q <= yip1E_1_uid24_vecTranslateTest_o(12 downto 0);

    -- xMSB_uid32_vecTranslateTest(BITSELECT,31)@1
    xMSB_uid32_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_1_uid24_vecTranslateTest_q);
    xMSB_uid32_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid32_vecTranslateTest_in(12 downto 12));

    -- xip1E_1_uid23_vecTranslateTest(ADD,22)@0 + 1
    xip1E_1_uid23_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & absX_uid13_vecTranslateTest_b);
    xip1E_1_uid23_vecTranslateTest_b <= STD_LOGIC_VECTOR("0" & absY_uid14_vecTranslateTest_b);
    xip1E_1_uid23_vecTranslateTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            xip1E_1_uid23_vecTranslateTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            xip1E_1_uid23_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(xip1E_1_uid23_vecTranslateTest_a) + UNSIGNED(xip1E_1_uid23_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_1_uid23_vecTranslateTest_q <= xip1E_1_uid23_vecTranslateTest_o(12 downto 0);

    -- yip1E_2NA_uid42_vecTranslateTest(BITJOIN,41)@1
    yip1E_2NA_uid42_vecTranslateTest_q <= yip1E_1_uid24_vecTranslateTest_q & GND_q;

    -- yip1E_2sumAHighB_uid43_vecTranslateTest(ADDSUB,42)@1
    yip1E_2sumAHighB_uid43_vecTranslateTest_s <= xMSB_uid32_vecTranslateTest_b;
    yip1E_2sumAHighB_uid43_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => yip1E_2NA_uid42_vecTranslateTest_q(13)) & yip1E_2NA_uid42_vecTranslateTest_q));
    yip1E_2sumAHighB_uid43_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_1_uid23_vecTranslateTest_q));
    yip1E_2sumAHighB_uid43_vecTranslateTest_combproc: PROCESS (yip1E_2sumAHighB_uid43_vecTranslateTest_a, yip1E_2sumAHighB_uid43_vecTranslateTest_b, yip1E_2sumAHighB_uid43_vecTranslateTest_s)
    BEGIN
        IF (yip1E_2sumAHighB_uid43_vecTranslateTest_s = "1") THEN
            yip1E_2sumAHighB_uid43_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_vecTranslateTest_a) + SIGNED(yip1E_2sumAHighB_uid43_vecTranslateTest_b));
        ELSE
            yip1E_2sumAHighB_uid43_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_vecTranslateTest_a) - SIGNED(yip1E_2sumAHighB_uid43_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_2sumAHighB_uid43_vecTranslateTest_q <= yip1E_2sumAHighB_uid43_vecTranslateTest_o(14 downto 0);

    -- yip1_2_uid49_vecTranslateTest(BITSELECT,48)@1
    yip1_2_uid49_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_2sumAHighB_uid43_vecTranslateTest_q(13 downto 0));
    yip1_2_uid49_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_2_uid49_vecTranslateTest_in(13 downto 0));

    -- xMSB_uid51_vecTranslateTest(BITSELECT,50)@1
    xMSB_uid51_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_2_uid49_vecTranslateTest_b);
    xMSB_uid51_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid51_vecTranslateTest_in(13 downto 13));

    -- invSignOfSelectionSignal_uid37_vecTranslateTest(LOGICAL,36)@1
    invSignOfSelectionSignal_uid37_vecTranslateTest_a <= xMSB_uid32_vecTranslateTest_b;
    invSignOfSelectionSignal_uid37_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid37_vecTranslateTest_a);

    -- xip1E_2NA_uid39_vecTranslateTest(BITJOIN,38)@1
    xip1E_2NA_uid39_vecTranslateTest_q <= xip1E_1_uid23_vecTranslateTest_q & GND_q;

    -- xip1E_2sumAHighB_uid40_vecTranslateTest(ADDSUB,39)@1
    xip1E_2sumAHighB_uid40_vecTranslateTest_s <= invSignOfSelectionSignal_uid37_vecTranslateTest_q;
    xip1E_2sumAHighB_uid40_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_2NA_uid39_vecTranslateTest_q));
    xip1E_2sumAHighB_uid40_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 13 => yip1E_1_uid24_vecTranslateTest_q(12)) & yip1E_1_uid24_vecTranslateTest_q));
    xip1E_2sumAHighB_uid40_vecTranslateTest_combproc: PROCESS (xip1E_2sumAHighB_uid40_vecTranslateTest_a, xip1E_2sumAHighB_uid40_vecTranslateTest_b, xip1E_2sumAHighB_uid40_vecTranslateTest_s)
    BEGIN
        IF (xip1E_2sumAHighB_uid40_vecTranslateTest_s = "1") THEN
            xip1E_2sumAHighB_uid40_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_vecTranslateTest_a) + SIGNED(xip1E_2sumAHighB_uid40_vecTranslateTest_b));
        ELSE
            xip1E_2sumAHighB_uid40_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_vecTranslateTest_a) - SIGNED(xip1E_2sumAHighB_uid40_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_2sumAHighB_uid40_vecTranslateTest_q <= xip1E_2sumAHighB_uid40_vecTranslateTest_o(15 downto 0);

    -- xip1_2_uid48_vecTranslateTest(BITSELECT,47)@1
    xip1_2_uid48_vecTranslateTest_in <= xip1E_2sumAHighB_uid40_vecTranslateTest_q(13 downto 0);
    xip1_2_uid48_vecTranslateTest_b <= xip1_2_uid48_vecTranslateTest_in(13 downto 0);

    -- xip1E_3CostZeroPaddingA_uid57_vecTranslateTest(CONSTANT,56)
    xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q <= "00";

    -- yip1E_3NA_uid61_vecTranslateTest(BITJOIN,60)@1
    yip1E_3NA_uid61_vecTranslateTest_q <= yip1_2_uid49_vecTranslateTest_b & xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q;

    -- yip1E_3sumAHighB_uid62_vecTranslateTest(ADDSUB,61)@1
    yip1E_3sumAHighB_uid62_vecTranslateTest_s <= xMSB_uid51_vecTranslateTest_b;
    yip1E_3sumAHighB_uid62_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => yip1E_3NA_uid61_vecTranslateTest_q(15)) & yip1E_3NA_uid61_vecTranslateTest_q));
    yip1E_3sumAHighB_uid62_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_2_uid48_vecTranslateTest_b));
    yip1E_3sumAHighB_uid62_vecTranslateTest_combproc: PROCESS (yip1E_3sumAHighB_uid62_vecTranslateTest_a, yip1E_3sumAHighB_uid62_vecTranslateTest_b, yip1E_3sumAHighB_uid62_vecTranslateTest_s)
    BEGIN
        IF (yip1E_3sumAHighB_uid62_vecTranslateTest_s = "1") THEN
            yip1E_3sumAHighB_uid62_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_vecTranslateTest_a) + SIGNED(yip1E_3sumAHighB_uid62_vecTranslateTest_b));
        ELSE
            yip1E_3sumAHighB_uid62_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_vecTranslateTest_a) - SIGNED(yip1E_3sumAHighB_uid62_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_3sumAHighB_uid62_vecTranslateTest_q <= yip1E_3sumAHighB_uid62_vecTranslateTest_o(16 downto 0);

    -- yip1_3_uid68_vecTranslateTest(BITSELECT,67)@1
    yip1_3_uid68_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_3sumAHighB_uid62_vecTranslateTest_q(14 downto 0));
    yip1_3_uid68_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_3_uid68_vecTranslateTest_in(14 downto 0));

    -- redist33(DELAY,413)
    redist33 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_3_uid68_vecTranslateTest_b, xout => redist33_q, clk => clk, aclr => areset );

    -- xMSB_uid70_vecTranslateTest(BITSELECT,69)@2
    xMSB_uid70_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist33_q);
    xMSB_uid70_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid70_vecTranslateTest_in(14 downto 14));

    -- invSignOfSelectionSignal_uid56_vecTranslateTest(LOGICAL,55)@1
    invSignOfSelectionSignal_uid56_vecTranslateTest_a <= xMSB_uid51_vecTranslateTest_b;
    invSignOfSelectionSignal_uid56_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid56_vecTranslateTest_a);

    -- xip1E_3NA_uid58_vecTranslateTest(BITJOIN,57)@1
    xip1E_3NA_uid58_vecTranslateTest_q <= xip1_2_uid48_vecTranslateTest_b & xip1E_3CostZeroPaddingA_uid57_vecTranslateTest_q;

    -- xip1E_3sumAHighB_uid59_vecTranslateTest(ADDSUB,58)@1
    xip1E_3sumAHighB_uid59_vecTranslateTest_s <= invSignOfSelectionSignal_uid56_vecTranslateTest_q;
    xip1E_3sumAHighB_uid59_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_3NA_uid58_vecTranslateTest_q));
    xip1E_3sumAHighB_uid59_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 14 => yip1_2_uid49_vecTranslateTest_b(13)) & yip1_2_uid49_vecTranslateTest_b));
    xip1E_3sumAHighB_uid59_vecTranslateTest_combproc: PROCESS (xip1E_3sumAHighB_uid59_vecTranslateTest_a, xip1E_3sumAHighB_uid59_vecTranslateTest_b, xip1E_3sumAHighB_uid59_vecTranslateTest_s)
    BEGIN
        IF (xip1E_3sumAHighB_uid59_vecTranslateTest_s = "1") THEN
            xip1E_3sumAHighB_uid59_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_vecTranslateTest_a) + SIGNED(xip1E_3sumAHighB_uid59_vecTranslateTest_b));
        ELSE
            xip1E_3sumAHighB_uid59_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_vecTranslateTest_a) - SIGNED(xip1E_3sumAHighB_uid59_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_3sumAHighB_uid59_vecTranslateTest_q <= xip1E_3sumAHighB_uid59_vecTranslateTest_o(17 downto 0);

    -- xip1_3_uid67_vecTranslateTest(BITSELECT,66)@1
    xip1_3_uid67_vecTranslateTest_in <= xip1E_3sumAHighB_uid59_vecTranslateTest_q(15 downto 0);
    xip1_3_uid67_vecTranslateTest_b <= xip1_3_uid67_vecTranslateTest_in(15 downto 0);

    -- redist34(DELAY,414)
    redist34 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_3_uid67_vecTranslateTest_b, xout => redist34_q, clk => clk, aclr => areset );

    -- xip1E_4CostZeroPaddingA_uid76_vecTranslateTest(CONSTANT,75)
    xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q <= "000";

    -- yip1E_4NA_uid80_vecTranslateTest(BITJOIN,79)@2
    yip1E_4NA_uid80_vecTranslateTest_q <= redist33_q & xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q;

    -- yip1E_4sumAHighB_uid81_vecTranslateTest(ADDSUB,80)@2
    yip1E_4sumAHighB_uid81_vecTranslateTest_s <= xMSB_uid70_vecTranslateTest_b;
    yip1E_4sumAHighB_uid81_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => yip1E_4NA_uid80_vecTranslateTest_q(17)) & yip1E_4NA_uid80_vecTranslateTest_q));
    yip1E_4sumAHighB_uid81_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist34_q));
    yip1E_4sumAHighB_uid81_vecTranslateTest_combproc: PROCESS (yip1E_4sumAHighB_uid81_vecTranslateTest_a, yip1E_4sumAHighB_uid81_vecTranslateTest_b, yip1E_4sumAHighB_uid81_vecTranslateTest_s)
    BEGIN
        IF (yip1E_4sumAHighB_uid81_vecTranslateTest_s = "1") THEN
            yip1E_4sumAHighB_uid81_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_vecTranslateTest_a) + SIGNED(yip1E_4sumAHighB_uid81_vecTranslateTest_b));
        ELSE
            yip1E_4sumAHighB_uid81_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_vecTranslateTest_a) - SIGNED(yip1E_4sumAHighB_uid81_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_4sumAHighB_uid81_vecTranslateTest_q <= yip1E_4sumAHighB_uid81_vecTranslateTest_o(18 downto 0);

    -- yip1_4_uid87_vecTranslateTest(BITSELECT,86)@2
    yip1_4_uid87_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_4sumAHighB_uid81_vecTranslateTest_q(16 downto 0));
    yip1_4_uid87_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_4_uid87_vecTranslateTest_in(16 downto 0));

    -- xMSB_uid89_vecTranslateTest(BITSELECT,88)@2
    xMSB_uid89_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_4_uid87_vecTranslateTest_b);
    xMSB_uid89_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid89_vecTranslateTest_in(16 downto 16));

    -- invSignOfSelectionSignal_uid75_vecTranslateTest(LOGICAL,74)@2
    invSignOfSelectionSignal_uid75_vecTranslateTest_a <= xMSB_uid70_vecTranslateTest_b;
    invSignOfSelectionSignal_uid75_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid75_vecTranslateTest_a);

    -- xip1E_4NA_uid77_vecTranslateTest(BITJOIN,76)@2
    xip1E_4NA_uid77_vecTranslateTest_q <= redist34_q & xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q;

    -- xip1E_4sumAHighB_uid78_vecTranslateTest(ADDSUB,77)@2
    xip1E_4sumAHighB_uid78_vecTranslateTest_s <= invSignOfSelectionSignal_uid75_vecTranslateTest_q;
    xip1E_4sumAHighB_uid78_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_4NA_uid77_vecTranslateTest_q));
    xip1E_4sumAHighB_uid78_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 15 => redist33_q(14)) & redist33_q));
    xip1E_4sumAHighB_uid78_vecTranslateTest_combproc: PROCESS (xip1E_4sumAHighB_uid78_vecTranslateTest_a, xip1E_4sumAHighB_uid78_vecTranslateTest_b, xip1E_4sumAHighB_uid78_vecTranslateTest_s)
    BEGIN
        IF (xip1E_4sumAHighB_uid78_vecTranslateTest_s = "1") THEN
            xip1E_4sumAHighB_uid78_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_vecTranslateTest_a) + SIGNED(xip1E_4sumAHighB_uid78_vecTranslateTest_b));
        ELSE
            xip1E_4sumAHighB_uid78_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_vecTranslateTest_a) - SIGNED(xip1E_4sumAHighB_uid78_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_4sumAHighB_uid78_vecTranslateTest_q <= xip1E_4sumAHighB_uid78_vecTranslateTest_o(20 downto 0);

    -- xip1_4_uid86_vecTranslateTest(BITSELECT,85)@2
    xip1_4_uid86_vecTranslateTest_in <= xip1E_4sumAHighB_uid78_vecTranslateTest_q(18 downto 0);
    xip1_4_uid86_vecTranslateTest_b <= xip1_4_uid86_vecTranslateTest_in(18 downto 0);

    -- xip1E_5CostZeroPaddingA_uid95_vecTranslateTest(CONSTANT,94)
    xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q <= "0000";

    -- yip1E_5NA_uid99_vecTranslateTest(BITJOIN,98)@2
    yip1E_5NA_uid99_vecTranslateTest_q <= yip1_4_uid87_vecTranslateTest_b & xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q;

    -- yip1E_5sumAHighB_uid100_vecTranslateTest(ADDSUB,99)@2
    yip1E_5sumAHighB_uid100_vecTranslateTest_s <= xMSB_uid89_vecTranslateTest_b;
    yip1E_5sumAHighB_uid100_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => yip1E_5NA_uid99_vecTranslateTest_q(20)) & yip1E_5NA_uid99_vecTranslateTest_q));
    yip1E_5sumAHighB_uid100_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_4_uid86_vecTranslateTest_b));
    yip1E_5sumAHighB_uid100_vecTranslateTest_combproc: PROCESS (yip1E_5sumAHighB_uid100_vecTranslateTest_a, yip1E_5sumAHighB_uid100_vecTranslateTest_b, yip1E_5sumAHighB_uid100_vecTranslateTest_s)
    BEGIN
        IF (yip1E_5sumAHighB_uid100_vecTranslateTest_s = "1") THEN
            yip1E_5sumAHighB_uid100_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_vecTranslateTest_a) + SIGNED(yip1E_5sumAHighB_uid100_vecTranslateTest_b));
        ELSE
            yip1E_5sumAHighB_uid100_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_vecTranslateTest_a) - SIGNED(yip1E_5sumAHighB_uid100_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_5sumAHighB_uid100_vecTranslateTest_q <= yip1E_5sumAHighB_uid100_vecTranslateTest_o(21 downto 0);

    -- yip1_5_uid106_vecTranslateTest(BITSELECT,105)@2
    yip1_5_uid106_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_5sumAHighB_uid100_vecTranslateTest_q(19 downto 0));
    yip1_5_uid106_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_5_uid106_vecTranslateTest_in(19 downto 0));

    -- redist29(DELAY,409)
    redist29 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_5_uid106_vecTranslateTest_b, xout => redist29_q, clk => clk, aclr => areset );

    -- xMSB_uid108_vecTranslateTest(BITSELECT,107)@3
    xMSB_uid108_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist29_q);
    xMSB_uid108_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid108_vecTranslateTest_in(19 downto 19));

    -- invSignOfSelectionSignal_uid94_vecTranslateTest(LOGICAL,93)@2
    invSignOfSelectionSignal_uid94_vecTranslateTest_a <= xMSB_uid89_vecTranslateTest_b;
    invSignOfSelectionSignal_uid94_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid94_vecTranslateTest_a);

    -- xip1E_5NA_uid96_vecTranslateTest(BITJOIN,95)@2
    xip1E_5NA_uid96_vecTranslateTest_q <= xip1_4_uid86_vecTranslateTest_b & xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q;

    -- xip1E_5sumAHighB_uid97_vecTranslateTest(ADDSUB,96)@2
    xip1E_5sumAHighB_uid97_vecTranslateTest_s <= invSignOfSelectionSignal_uid94_vecTranslateTest_q;
    xip1E_5sumAHighB_uid97_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_5NA_uid96_vecTranslateTest_q));
    xip1E_5sumAHighB_uid97_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 17 => yip1_4_uid87_vecTranslateTest_b(16)) & yip1_4_uid87_vecTranslateTest_b));
    xip1E_5sumAHighB_uid97_vecTranslateTest_combproc: PROCESS (xip1E_5sumAHighB_uid97_vecTranslateTest_a, xip1E_5sumAHighB_uid97_vecTranslateTest_b, xip1E_5sumAHighB_uid97_vecTranslateTest_s)
    BEGIN
        IF (xip1E_5sumAHighB_uid97_vecTranslateTest_s = "1") THEN
            xip1E_5sumAHighB_uid97_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_vecTranslateTest_a) + SIGNED(xip1E_5sumAHighB_uid97_vecTranslateTest_b));
        ELSE
            xip1E_5sumAHighB_uid97_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_vecTranslateTest_a) - SIGNED(xip1E_5sumAHighB_uid97_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_5sumAHighB_uid97_vecTranslateTest_q <= xip1E_5sumAHighB_uid97_vecTranslateTest_o(24 downto 0);

    -- xip1_5_uid105_vecTranslateTest(BITSELECT,104)@2
    xip1_5_uid105_vecTranslateTest_in <= xip1E_5sumAHighB_uid97_vecTranslateTest_q(22 downto 0);
    xip1_5_uid105_vecTranslateTest_b <= xip1_5_uid105_vecTranslateTest_in(22 downto 0);

    -- redist30(DELAY,410)
    redist30 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_5_uid105_vecTranslateTest_b, xout => redist30_q, clk => clk, aclr => areset );

    -- xip1E_6CostZeroPaddingA_uid114_vecTranslateTest(CONSTANT,113)
    xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q <= "00000";

    -- yip1E_6NA_uid118_vecTranslateTest(BITJOIN,117)@3
    yip1E_6NA_uid118_vecTranslateTest_q <= redist29_q & xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q;

    -- yip1E_6sumAHighB_uid119_vecTranslateTest(ADDSUB,118)@3
    yip1E_6sumAHighB_uid119_vecTranslateTest_s <= xMSB_uid108_vecTranslateTest_b;
    yip1E_6sumAHighB_uid119_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1E_6NA_uid118_vecTranslateTest_q(24)) & yip1E_6NA_uid118_vecTranslateTest_q));
    yip1E_6sumAHighB_uid119_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist30_q));
    yip1E_6sumAHighB_uid119_vecTranslateTest_combproc: PROCESS (yip1E_6sumAHighB_uid119_vecTranslateTest_a, yip1E_6sumAHighB_uid119_vecTranslateTest_b, yip1E_6sumAHighB_uid119_vecTranslateTest_s)
    BEGIN
        IF (yip1E_6sumAHighB_uid119_vecTranslateTest_s = "1") THEN
            yip1E_6sumAHighB_uid119_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid119_vecTranslateTest_a) + SIGNED(yip1E_6sumAHighB_uid119_vecTranslateTest_b));
        ELSE
            yip1E_6sumAHighB_uid119_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid119_vecTranslateTest_a) - SIGNED(yip1E_6sumAHighB_uid119_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_6sumAHighB_uid119_vecTranslateTest_q <= yip1E_6sumAHighB_uid119_vecTranslateTest_o(25 downto 0);

    -- yip1_6_uid125_vecTranslateTest(BITSELECT,124)@3
    yip1_6_uid125_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_6sumAHighB_uid119_vecTranslateTest_q(23 downto 0));
    yip1_6_uid125_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_6_uid125_vecTranslateTest_in(23 downto 0));

    -- xMSB_uid127_vecTranslateTest(BITSELECT,126)@3
    xMSB_uid127_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_6_uid125_vecTranslateTest_b);
    xMSB_uid127_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid127_vecTranslateTest_in(23 downto 23));

    -- invSignOfSelectionSignal_uid113_vecTranslateTest(LOGICAL,112)@3
    invSignOfSelectionSignal_uid113_vecTranslateTest_a <= xMSB_uid108_vecTranslateTest_b;
    invSignOfSelectionSignal_uid113_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid113_vecTranslateTest_a);

    -- xip1E_6NA_uid115_vecTranslateTest(BITJOIN,114)@3
    xip1E_6NA_uid115_vecTranslateTest_q <= redist30_q & xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q;

    -- xip1E_6sumAHighB_uid116_vecTranslateTest(ADDSUB,115)@3
    xip1E_6sumAHighB_uid116_vecTranslateTest_s <= invSignOfSelectionSignal_uid113_vecTranslateTest_q;
    xip1E_6sumAHighB_uid116_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_6NA_uid115_vecTranslateTest_q));
    xip1E_6sumAHighB_uid116_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 20 => redist29_q(19)) & redist29_q));
    xip1E_6sumAHighB_uid116_vecTranslateTest_combproc: PROCESS (xip1E_6sumAHighB_uid116_vecTranslateTest_a, xip1E_6sumAHighB_uid116_vecTranslateTest_b, xip1E_6sumAHighB_uid116_vecTranslateTest_s)
    BEGIN
        IF (xip1E_6sumAHighB_uid116_vecTranslateTest_s = "1") THEN
            xip1E_6sumAHighB_uid116_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid116_vecTranslateTest_a) + SIGNED(xip1E_6sumAHighB_uid116_vecTranslateTest_b));
        ELSE
            xip1E_6sumAHighB_uid116_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid116_vecTranslateTest_a) - SIGNED(xip1E_6sumAHighB_uid116_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_6sumAHighB_uid116_vecTranslateTest_q <= xip1E_6sumAHighB_uid116_vecTranslateTest_o(29 downto 0);

    -- xip1_6_uid124_vecTranslateTest(BITSELECT,123)@3
    xip1_6_uid124_vecTranslateTest_in <= xip1E_6sumAHighB_uid116_vecTranslateTest_q(27 downto 0);
    xip1_6_uid124_vecTranslateTest_b <= xip1_6_uid124_vecTranslateTest_in(27 downto 0);

    -- xip1E_7CostZeroPaddingA_uid133_vecTranslateTest(CONSTANT,132)
    xip1E_7CostZeroPaddingA_uid133_vecTranslateTest_q <= "000000";

    -- yip1E_7NA_uid137_vecTranslateTest(BITJOIN,136)@3
    yip1E_7NA_uid137_vecTranslateTest_q <= yip1_6_uid125_vecTranslateTest_b & xip1E_7CostZeroPaddingA_uid133_vecTranslateTest_q;

    -- yip1E_7sumAHighB_uid138_vecTranslateTest(ADDSUB,137)@3
    yip1E_7sumAHighB_uid138_vecTranslateTest_s <= xMSB_uid127_vecTranslateTest_b;
    yip1E_7sumAHighB_uid138_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => yip1E_7NA_uid137_vecTranslateTest_q(29)) & yip1E_7NA_uid137_vecTranslateTest_q));
    yip1E_7sumAHighB_uid138_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_6_uid124_vecTranslateTest_b));
    yip1E_7sumAHighB_uid138_vecTranslateTest_combproc: PROCESS (yip1E_7sumAHighB_uid138_vecTranslateTest_a, yip1E_7sumAHighB_uid138_vecTranslateTest_b, yip1E_7sumAHighB_uid138_vecTranslateTest_s)
    BEGIN
        IF (yip1E_7sumAHighB_uid138_vecTranslateTest_s = "1") THEN
            yip1E_7sumAHighB_uid138_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid138_vecTranslateTest_a) + SIGNED(yip1E_7sumAHighB_uid138_vecTranslateTest_b));
        ELSE
            yip1E_7sumAHighB_uid138_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid138_vecTranslateTest_a) - SIGNED(yip1E_7sumAHighB_uid138_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_7sumAHighB_uid138_vecTranslateTest_q <= yip1E_7sumAHighB_uid138_vecTranslateTest_o(30 downto 0);

    -- yip1_7_uid144_vecTranslateTest(BITSELECT,143)@3
    yip1_7_uid144_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_7sumAHighB_uid138_vecTranslateTest_q(28 downto 0));
    yip1_7_uid144_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_7_uid144_vecTranslateTest_in(28 downto 0));

    -- redist25(DELAY,405)
    redist25 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_7_uid144_vecTranslateTest_b, xout => redist25_q, clk => clk, aclr => areset );

    -- xMSB_uid146_vecTranslateTest(BITSELECT,145)@4
    xMSB_uid146_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist25_q);
    xMSB_uid146_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid146_vecTranslateTest_in(28 downto 28));

    -- invSignOfSelectionSignal_uid153_vecTranslateTest(LOGICAL,152)@4
    invSignOfSelectionSignal_uid153_vecTranslateTest_a <= xMSB_uid146_vecTranslateTest_b;
    invSignOfSelectionSignal_uid153_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid153_vecTranslateTest_a);

    -- twoToMiSiYip_uid151_vecTranslateTest(BITSELECT,150)@4
    twoToMiSiYip_uid151_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist25_q);
    twoToMiSiYip_uid151_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid151_vecTranslateTest_in(28 downto 4));

    -- invSignOfSelectionSignal_uid132_vecTranslateTest(LOGICAL,131)@3
    invSignOfSelectionSignal_uid132_vecTranslateTest_a <= xMSB_uid127_vecTranslateTest_b;
    invSignOfSelectionSignal_uid132_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid132_vecTranslateTest_a);

    -- xip1E_7NA_uid134_vecTranslateTest(BITJOIN,133)@3
    xip1E_7NA_uid134_vecTranslateTest_q <= xip1_6_uid124_vecTranslateTest_b & xip1E_7CostZeroPaddingA_uid133_vecTranslateTest_q;

    -- xip1E_7sumAHighB_uid135_vecTranslateTest(ADDSUB,134)@3
    xip1E_7sumAHighB_uid135_vecTranslateTest_s <= invSignOfSelectionSignal_uid132_vecTranslateTest_q;
    xip1E_7sumAHighB_uid135_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_7NA_uid134_vecTranslateTest_q));
    xip1E_7sumAHighB_uid135_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 24 => yip1_6_uid125_vecTranslateTest_b(23)) & yip1_6_uid125_vecTranslateTest_b));
    xip1E_7sumAHighB_uid135_vecTranslateTest_combproc: PROCESS (xip1E_7sumAHighB_uid135_vecTranslateTest_a, xip1E_7sumAHighB_uid135_vecTranslateTest_b, xip1E_7sumAHighB_uid135_vecTranslateTest_s)
    BEGIN
        IF (xip1E_7sumAHighB_uid135_vecTranslateTest_s = "1") THEN
            xip1E_7sumAHighB_uid135_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid135_vecTranslateTest_a) + SIGNED(xip1E_7sumAHighB_uid135_vecTranslateTest_b));
        ELSE
            xip1E_7sumAHighB_uid135_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid135_vecTranslateTest_a) - SIGNED(xip1E_7sumAHighB_uid135_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_7sumAHighB_uid135_vecTranslateTest_q <= xip1E_7sumAHighB_uid135_vecTranslateTest_o(35 downto 0);

    -- xip1_7_uid143_vecTranslateTest(BITSELECT,142)@3
    xip1_7_uid143_vecTranslateTest_in <= xip1E_7sumAHighB_uid135_vecTranslateTest_q(33 downto 0);
    xip1_7_uid143_vecTranslateTest_b <= xip1_7_uid143_vecTranslateTest_in(33 downto 0);

    -- redist26(DELAY,406)
    redist26 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_7_uid143_vecTranslateTest_b, xout => redist26_q, clk => clk, aclr => areset );

    -- xip1E_8NA_uid155_vecTranslateTest(BITJOIN,154)@4
    xip1E_8NA_uid155_vecTranslateTest_q <= redist26_q & xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q;

    -- xip1E_8sumAHighB_uid156_vecTranslateTest(ADDSUB,155)@4
    xip1E_8sumAHighB_uid156_vecTranslateTest_s <= invSignOfSelectionSignal_uid153_vecTranslateTest_q;
    xip1E_8sumAHighB_uid156_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_8NA_uid155_vecTranslateTest_q));
    xip1E_8sumAHighB_uid156_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 25 => twoToMiSiYip_uid151_vecTranslateTest_b(24)) & twoToMiSiYip_uid151_vecTranslateTest_b));
    xip1E_8sumAHighB_uid156_vecTranslateTest_combproc: PROCESS (xip1E_8sumAHighB_uid156_vecTranslateTest_a, xip1E_8sumAHighB_uid156_vecTranslateTest_b, xip1E_8sumAHighB_uid156_vecTranslateTest_s)
    BEGIN
        IF (xip1E_8sumAHighB_uid156_vecTranslateTest_s = "1") THEN
            xip1E_8sumAHighB_uid156_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid156_vecTranslateTest_a) + SIGNED(xip1E_8sumAHighB_uid156_vecTranslateTest_b));
        ELSE
            xip1E_8sumAHighB_uid156_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid156_vecTranslateTest_a) - SIGNED(xip1E_8sumAHighB_uid156_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_8sumAHighB_uid156_vecTranslateTest_q <= xip1E_8sumAHighB_uid156_vecTranslateTest_o(38 downto 0);

    -- xip1_8_uid164_vecTranslateTest(BITSELECT,163)@4
    xip1_8_uid164_vecTranslateTest_in <= xip1E_8sumAHighB_uid156_vecTranslateTest_q(36 downto 0);
    xip1_8_uid164_vecTranslateTest_b <= xip1_8_uid164_vecTranslateTest_in(36 downto 0);

    -- twoToMiSiXip_uid171_vecTranslateTest(BITSELECT,170)@4
    twoToMiSiXip_uid171_vecTranslateTest_in <= xip1_8_uid164_vecTranslateTest_b;
    twoToMiSiXip_uid171_vecTranslateTest_b <= twoToMiSiXip_uid171_vecTranslateTest_in(36 downto 8);

    -- twoToMiSiXip_uid150_vecTranslateTest(BITSELECT,149)@4
    twoToMiSiXip_uid150_vecTranslateTest_in <= redist26_q;
    twoToMiSiXip_uid150_vecTranslateTest_b <= twoToMiSiXip_uid150_vecTranslateTest_in(33 downto 4);

    -- yip1E_8NA_uid158_vecTranslateTest(BITJOIN,157)@4
    yip1E_8NA_uid158_vecTranslateTest_q <= redist25_q & xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q;

    -- yip1E_8sumAHighB_uid159_vecTranslateTest(ADDSUB,158)@4
    yip1E_8sumAHighB_uid159_vecTranslateTest_s <= xMSB_uid146_vecTranslateTest_b;
    yip1E_8sumAHighB_uid159_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => yip1E_8NA_uid158_vecTranslateTest_q(31)) & yip1E_8NA_uid158_vecTranslateTest_q));
    yip1E_8sumAHighB_uid159_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid150_vecTranslateTest_b));
    yip1E_8sumAHighB_uid159_vecTranslateTest_combproc: PROCESS (yip1E_8sumAHighB_uid159_vecTranslateTest_a, yip1E_8sumAHighB_uid159_vecTranslateTest_b, yip1E_8sumAHighB_uid159_vecTranslateTest_s)
    BEGIN
        IF (yip1E_8sumAHighB_uid159_vecTranslateTest_s = "1") THEN
            yip1E_8sumAHighB_uid159_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid159_vecTranslateTest_a) + SIGNED(yip1E_8sumAHighB_uid159_vecTranslateTest_b));
        ELSE
            yip1E_8sumAHighB_uid159_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid159_vecTranslateTest_a) - SIGNED(yip1E_8sumAHighB_uid159_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_8sumAHighB_uid159_vecTranslateTest_q <= yip1E_8sumAHighB_uid159_vecTranslateTest_o(32 downto 0);

    -- yip1_8_uid165_vecTranslateTest(BITSELECT,164)@4
    yip1_8_uid165_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_8sumAHighB_uid159_vecTranslateTest_q(30 downto 0));
    yip1_8_uid165_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_8_uid165_vecTranslateTest_in(30 downto 0));

    -- yip1E_9_uid176_vecTranslateTest(ADDSUB,175)@4
    yip1E_9_uid176_vecTranslateTest_s <= xMSB_uid167_vecTranslateTest_b;
    yip1E_9_uid176_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 31 => yip1_8_uid165_vecTranslateTest_b(30)) & yip1_8_uid165_vecTranslateTest_b));
    yip1E_9_uid176_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid171_vecTranslateTest_b));
    yip1E_9_uid176_vecTranslateTest_combproc: PROCESS (yip1E_9_uid176_vecTranslateTest_a, yip1E_9_uid176_vecTranslateTest_b, yip1E_9_uid176_vecTranslateTest_s)
    BEGIN
        IF (yip1E_9_uid176_vecTranslateTest_s = "1") THEN
            yip1E_9_uid176_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid176_vecTranslateTest_a) + SIGNED(yip1E_9_uid176_vecTranslateTest_b));
        ELSE
            yip1E_9_uid176_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid176_vecTranslateTest_a) - SIGNED(yip1E_9_uid176_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_9_uid176_vecTranslateTest_q <= yip1E_9_uid176_vecTranslateTest_o(31 downto 0);

    -- yip1_9_uid182_vecTranslateTest(BITSELECT,181)@4
    yip1_9_uid182_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_9_uid176_vecTranslateTest_q(29 downto 0));
    yip1_9_uid182_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_9_uid182_vecTranslateTest_in(29 downto 0));

    -- redist21(DELAY,401)
    redist21 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_9_uid182_vecTranslateTest_b, xout => redist21_q, clk => clk, aclr => areset );

    -- xMSB_uid184_vecTranslateTest(BITSELECT,183)@5
    xMSB_uid184_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist21_q);
    xMSB_uid184_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid184_vecTranslateTest_in(29 downto 29));

    -- invSignOfSelectionSignal_uid191_vecTranslateTest(LOGICAL,190)@5
    invSignOfSelectionSignal_uid191_vecTranslateTest_a <= xMSB_uid184_vecTranslateTest_b;
    invSignOfSelectionSignal_uid191_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid191_vecTranslateTest_a);

    -- twoToMiSiYip_uid189_vecTranslateTest(BITSELECT,188)@5
    twoToMiSiYip_uid189_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist21_q);
    twoToMiSiYip_uid189_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid189_vecTranslateTest_in(29 downto 9));

    -- invSignOfSelectionSignal_uid174_vecTranslateTest(LOGICAL,173)@4
    invSignOfSelectionSignal_uid174_vecTranslateTest_a <= xMSB_uid167_vecTranslateTest_b;
    invSignOfSelectionSignal_uid174_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid174_vecTranslateTest_a);

    -- twoToMiSiYip_uid172_vecTranslateTest(BITSELECT,171)@4
    twoToMiSiYip_uid172_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_8_uid165_vecTranslateTest_b);
    twoToMiSiYip_uid172_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid172_vecTranslateTest_in(30 downto 8));

    -- xip1E_9_uid175_vecTranslateTest(ADDSUB,174)@4
    xip1E_9_uid175_vecTranslateTest_s <= invSignOfSelectionSignal_uid174_vecTranslateTest_q;
    xip1E_9_uid175_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_8_uid164_vecTranslateTest_b));
    xip1E_9_uid175_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 23 => twoToMiSiYip_uid172_vecTranslateTest_b(22)) & twoToMiSiYip_uid172_vecTranslateTest_b));
    xip1E_9_uid175_vecTranslateTest_combproc: PROCESS (xip1E_9_uid175_vecTranslateTest_a, xip1E_9_uid175_vecTranslateTest_b, xip1E_9_uid175_vecTranslateTest_s)
    BEGIN
        IF (xip1E_9_uid175_vecTranslateTest_s = "1") THEN
            xip1E_9_uid175_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid175_vecTranslateTest_a) + SIGNED(xip1E_9_uid175_vecTranslateTest_b));
        ELSE
            xip1E_9_uid175_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid175_vecTranslateTest_a) - SIGNED(xip1E_9_uid175_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_9_uid175_vecTranslateTest_q <= xip1E_9_uid175_vecTranslateTest_o(38 downto 0);

    -- xip1_9_uid181_vecTranslateTest(BITSELECT,180)@4
    xip1_9_uid181_vecTranslateTest_in <= xip1E_9_uid175_vecTranslateTest_q(36 downto 0);
    xip1_9_uid181_vecTranslateTest_b <= xip1_9_uid181_vecTranslateTest_in(36 downto 0);

    -- redist22(DELAY,402)
    redist22 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_9_uid181_vecTranslateTest_b, xout => redist22_q, clk => clk, aclr => areset );

    -- xip1E_10_uid192_vecTranslateTest(ADDSUB,191)@5
    xip1E_10_uid192_vecTranslateTest_s <= invSignOfSelectionSignal_uid191_vecTranslateTest_q;
    xip1E_10_uid192_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist22_q));
    xip1E_10_uid192_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 21 => twoToMiSiYip_uid189_vecTranslateTest_b(20)) & twoToMiSiYip_uid189_vecTranslateTest_b));
    xip1E_10_uid192_vecTranslateTest_combproc: PROCESS (xip1E_10_uid192_vecTranslateTest_a, xip1E_10_uid192_vecTranslateTest_b, xip1E_10_uid192_vecTranslateTest_s)
    BEGIN
        IF (xip1E_10_uid192_vecTranslateTest_s = "1") THEN
            xip1E_10_uid192_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid192_vecTranslateTest_a) + SIGNED(xip1E_10_uid192_vecTranslateTest_b));
        ELSE
            xip1E_10_uid192_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid192_vecTranslateTest_a) - SIGNED(xip1E_10_uid192_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_10_uid192_vecTranslateTest_q <= xip1E_10_uid192_vecTranslateTest_o(38 downto 0);

    -- xip1_10_uid198_vecTranslateTest(BITSELECT,197)@5
    xip1_10_uid198_vecTranslateTest_in <= xip1E_10_uid192_vecTranslateTest_q(36 downto 0);
    xip1_10_uid198_vecTranslateTest_b <= xip1_10_uid198_vecTranslateTest_in(36 downto 0);

    -- twoToMiSiXip_uid205_vecTranslateTest(BITSELECT,204)@5
    twoToMiSiXip_uid205_vecTranslateTest_in <= xip1_10_uid198_vecTranslateTest_b;
    twoToMiSiXip_uid205_vecTranslateTest_b <= twoToMiSiXip_uid205_vecTranslateTest_in(36 downto 10);

    -- twoToMiSiXip_uid188_vecTranslateTest(BITSELECT,187)@5
    twoToMiSiXip_uid188_vecTranslateTest_in <= redist22_q;
    twoToMiSiXip_uid188_vecTranslateTest_b <= twoToMiSiXip_uid188_vecTranslateTest_in(36 downto 9);

    -- yip1E_10_uid193_vecTranslateTest(ADDSUB,192)@5
    yip1E_10_uid193_vecTranslateTest_s <= xMSB_uid184_vecTranslateTest_b;
    yip1E_10_uid193_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => redist21_q(29)) & redist21_q));
    yip1E_10_uid193_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid188_vecTranslateTest_b));
    yip1E_10_uid193_vecTranslateTest_combproc: PROCESS (yip1E_10_uid193_vecTranslateTest_a, yip1E_10_uid193_vecTranslateTest_b, yip1E_10_uid193_vecTranslateTest_s)
    BEGIN
        IF (yip1E_10_uid193_vecTranslateTest_s = "1") THEN
            yip1E_10_uid193_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid193_vecTranslateTest_a) + SIGNED(yip1E_10_uid193_vecTranslateTest_b));
        ELSE
            yip1E_10_uid193_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid193_vecTranslateTest_a) - SIGNED(yip1E_10_uid193_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_10_uid193_vecTranslateTest_q <= yip1E_10_uid193_vecTranslateTest_o(30 downto 0);

    -- yip1_10_uid199_vecTranslateTest(BITSELECT,198)@5
    yip1_10_uid199_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_10_uid193_vecTranslateTest_q(28 downto 0));
    yip1_10_uid199_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_10_uid199_vecTranslateTest_in(28 downto 0));

    -- yip1E_11_uid210_vecTranslateTest(ADDSUB,209)@5
    yip1E_11_uid210_vecTranslateTest_s <= xMSB_uid201_vecTranslateTest_b;
    yip1E_11_uid210_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => yip1_10_uid199_vecTranslateTest_b(28)) & yip1_10_uid199_vecTranslateTest_b));
    yip1E_11_uid210_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid205_vecTranslateTest_b));
    yip1E_11_uid210_vecTranslateTest_combproc: PROCESS (yip1E_11_uid210_vecTranslateTest_a, yip1E_11_uid210_vecTranslateTest_b, yip1E_11_uid210_vecTranslateTest_s)
    BEGIN
        IF (yip1E_11_uid210_vecTranslateTest_s = "1") THEN
            yip1E_11_uid210_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid210_vecTranslateTest_a) + SIGNED(yip1E_11_uid210_vecTranslateTest_b));
        ELSE
            yip1E_11_uid210_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid210_vecTranslateTest_a) - SIGNED(yip1E_11_uid210_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_11_uid210_vecTranslateTest_q <= yip1E_11_uid210_vecTranslateTest_o(29 downto 0);

    -- yip1_11_uid216_vecTranslateTest(BITSELECT,215)@5
    yip1_11_uid216_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_11_uid210_vecTranslateTest_q(27 downto 0));
    yip1_11_uid216_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_11_uid216_vecTranslateTest_in(27 downto 0));

    -- redist17(DELAY,397)
    redist17 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_11_uid216_vecTranslateTest_b, xout => redist17_q, clk => clk, aclr => areset );

    -- xMSB_uid218_vecTranslateTest(BITSELECT,217)@6
    xMSB_uid218_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist17_q);
    xMSB_uid218_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid218_vecTranslateTest_in(27 downto 27));

    -- invSignOfSelectionSignal_uid225_vecTranslateTest(LOGICAL,224)@6
    invSignOfSelectionSignal_uid225_vecTranslateTest_a <= xMSB_uid218_vecTranslateTest_b;
    invSignOfSelectionSignal_uid225_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid225_vecTranslateTest_a);

    -- twoToMiSiYip_uid223_vecTranslateTest(BITSELECT,222)@6
    twoToMiSiYip_uid223_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist17_q);
    twoToMiSiYip_uid223_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid223_vecTranslateTest_in(27 downto 11));

    -- invSignOfSelectionSignal_uid208_vecTranslateTest(LOGICAL,207)@5
    invSignOfSelectionSignal_uid208_vecTranslateTest_a <= xMSB_uid201_vecTranslateTest_b;
    invSignOfSelectionSignal_uid208_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid208_vecTranslateTest_a);

    -- twoToMiSiYip_uid206_vecTranslateTest(BITSELECT,205)@5
    twoToMiSiYip_uid206_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_10_uid199_vecTranslateTest_b);
    twoToMiSiYip_uid206_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid206_vecTranslateTest_in(28 downto 10));

    -- xip1E_11_uid209_vecTranslateTest(ADDSUB,208)@5
    xip1E_11_uid209_vecTranslateTest_s <= invSignOfSelectionSignal_uid208_vecTranslateTest_q;
    xip1E_11_uid209_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_10_uid198_vecTranslateTest_b));
    xip1E_11_uid209_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 19 => twoToMiSiYip_uid206_vecTranslateTest_b(18)) & twoToMiSiYip_uid206_vecTranslateTest_b));
    xip1E_11_uid209_vecTranslateTest_combproc: PROCESS (xip1E_11_uid209_vecTranslateTest_a, xip1E_11_uid209_vecTranslateTest_b, xip1E_11_uid209_vecTranslateTest_s)
    BEGIN
        IF (xip1E_11_uid209_vecTranslateTest_s = "1") THEN
            xip1E_11_uid209_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid209_vecTranslateTest_a) + SIGNED(xip1E_11_uid209_vecTranslateTest_b));
        ELSE
            xip1E_11_uid209_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid209_vecTranslateTest_a) - SIGNED(xip1E_11_uid209_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_11_uid209_vecTranslateTest_q <= xip1E_11_uid209_vecTranslateTest_o(38 downto 0);

    -- xip1_11_uid215_vecTranslateTest(BITSELECT,214)@5
    xip1_11_uid215_vecTranslateTest_in <= xip1E_11_uid209_vecTranslateTest_q(36 downto 0);
    xip1_11_uid215_vecTranslateTest_b <= xip1_11_uid215_vecTranslateTest_in(36 downto 0);

    -- redist18(DELAY,398)
    redist18 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_11_uid215_vecTranslateTest_b, xout => redist18_q, clk => clk, aclr => areset );

    -- xip1E_12_uid226_vecTranslateTest(ADDSUB,225)@6
    xip1E_12_uid226_vecTranslateTest_s <= invSignOfSelectionSignal_uid225_vecTranslateTest_q;
    xip1E_12_uid226_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist18_q));
    xip1E_12_uid226_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 17 => twoToMiSiYip_uid223_vecTranslateTest_b(16)) & twoToMiSiYip_uid223_vecTranslateTest_b));
    xip1E_12_uid226_vecTranslateTest_combproc: PROCESS (xip1E_12_uid226_vecTranslateTest_a, xip1E_12_uid226_vecTranslateTest_b, xip1E_12_uid226_vecTranslateTest_s)
    BEGIN
        IF (xip1E_12_uid226_vecTranslateTest_s = "1") THEN
            xip1E_12_uid226_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid226_vecTranslateTest_a) + SIGNED(xip1E_12_uid226_vecTranslateTest_b));
        ELSE
            xip1E_12_uid226_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid226_vecTranslateTest_a) - SIGNED(xip1E_12_uid226_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_12_uid226_vecTranslateTest_q <= xip1E_12_uid226_vecTranslateTest_o(38 downto 0);

    -- xip1_12_uid232_vecTranslateTest(BITSELECT,231)@6
    xip1_12_uid232_vecTranslateTest_in <= xip1E_12_uid226_vecTranslateTest_q(36 downto 0);
    xip1_12_uid232_vecTranslateTest_b <= xip1_12_uid232_vecTranslateTest_in(36 downto 0);

    -- twoToMiSiXip_uid239_vecTranslateTest(BITSELECT,238)@6
    twoToMiSiXip_uid239_vecTranslateTest_in <= xip1_12_uid232_vecTranslateTest_b;
    twoToMiSiXip_uid239_vecTranslateTest_b <= twoToMiSiXip_uid239_vecTranslateTest_in(36 downto 12);

    -- twoToMiSiXip_uid222_vecTranslateTest(BITSELECT,221)@6
    twoToMiSiXip_uid222_vecTranslateTest_in <= redist18_q;
    twoToMiSiXip_uid222_vecTranslateTest_b <= twoToMiSiXip_uid222_vecTranslateTest_in(36 downto 11);

    -- yip1E_12_uid227_vecTranslateTest(ADDSUB,226)@6
    yip1E_12_uid227_vecTranslateTest_s <= xMSB_uid218_vecTranslateTest_b;
    yip1E_12_uid227_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => redist17_q(27)) & redist17_q));
    yip1E_12_uid227_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid222_vecTranslateTest_b));
    yip1E_12_uid227_vecTranslateTest_combproc: PROCESS (yip1E_12_uid227_vecTranslateTest_a, yip1E_12_uid227_vecTranslateTest_b, yip1E_12_uid227_vecTranslateTest_s)
    BEGIN
        IF (yip1E_12_uid227_vecTranslateTest_s = "1") THEN
            yip1E_12_uid227_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid227_vecTranslateTest_a) + SIGNED(yip1E_12_uid227_vecTranslateTest_b));
        ELSE
            yip1E_12_uid227_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid227_vecTranslateTest_a) - SIGNED(yip1E_12_uid227_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_12_uid227_vecTranslateTest_q <= yip1E_12_uid227_vecTranslateTest_o(28 downto 0);

    -- yip1_12_uid233_vecTranslateTest(BITSELECT,232)@6
    yip1_12_uid233_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_12_uid227_vecTranslateTest_q(26 downto 0));
    yip1_12_uid233_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_12_uid233_vecTranslateTest_in(26 downto 0));

    -- yip1E_13_uid244_vecTranslateTest(ADDSUB,243)@6
    yip1E_13_uid244_vecTranslateTest_s <= xMSB_uid235_vecTranslateTest_b;
    yip1E_13_uid244_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => yip1_12_uid233_vecTranslateTest_b(26)) & yip1_12_uid233_vecTranslateTest_b));
    yip1E_13_uid244_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid239_vecTranslateTest_b));
    yip1E_13_uid244_vecTranslateTest_combproc: PROCESS (yip1E_13_uid244_vecTranslateTest_a, yip1E_13_uid244_vecTranslateTest_b, yip1E_13_uid244_vecTranslateTest_s)
    BEGIN
        IF (yip1E_13_uid244_vecTranslateTest_s = "1") THEN
            yip1E_13_uid244_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid244_vecTranslateTest_a) + SIGNED(yip1E_13_uid244_vecTranslateTest_b));
        ELSE
            yip1E_13_uid244_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid244_vecTranslateTest_a) - SIGNED(yip1E_13_uid244_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_13_uid244_vecTranslateTest_q <= yip1E_13_uid244_vecTranslateTest_o(27 downto 0);

    -- yip1_13_uid250_vecTranslateTest(BITSELECT,249)@6
    yip1_13_uid250_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_13_uid244_vecTranslateTest_q(25 downto 0));
    yip1_13_uid250_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_13_uid250_vecTranslateTest_in(25 downto 0));

    -- redist13(DELAY,393)
    redist13 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_13_uid250_vecTranslateTest_b, xout => redist13_q, clk => clk, aclr => areset );

    -- xMSB_uid252_vecTranslateTest(BITSELECT,251)@7
    xMSB_uid252_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist13_q);
    xMSB_uid252_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid252_vecTranslateTest_in(25 downto 25));

    -- invSignOfSelectionSignal_uid259_vecTranslateTest(LOGICAL,258)@7
    invSignOfSelectionSignal_uid259_vecTranslateTest_a <= xMSB_uid252_vecTranslateTest_b;
    invSignOfSelectionSignal_uid259_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid259_vecTranslateTest_a);

    -- twoToMiSiYip_uid257_vecTranslateTest(BITSELECT,256)@7
    twoToMiSiYip_uid257_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist13_q);
    twoToMiSiYip_uid257_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid257_vecTranslateTest_in(25 downto 13));

    -- invSignOfSelectionSignal_uid242_vecTranslateTest(LOGICAL,241)@6
    invSignOfSelectionSignal_uid242_vecTranslateTest_a <= xMSB_uid235_vecTranslateTest_b;
    invSignOfSelectionSignal_uid242_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid242_vecTranslateTest_a);

    -- twoToMiSiYip_uid240_vecTranslateTest(BITSELECT,239)@6
    twoToMiSiYip_uid240_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_12_uid233_vecTranslateTest_b);
    twoToMiSiYip_uid240_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid240_vecTranslateTest_in(26 downto 12));

    -- xip1E_13_uid243_vecTranslateTest(ADDSUB,242)@6
    xip1E_13_uid243_vecTranslateTest_s <= invSignOfSelectionSignal_uid242_vecTranslateTest_q;
    xip1E_13_uid243_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_12_uid232_vecTranslateTest_b));
    xip1E_13_uid243_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 15 => twoToMiSiYip_uid240_vecTranslateTest_b(14)) & twoToMiSiYip_uid240_vecTranslateTest_b));
    xip1E_13_uid243_vecTranslateTest_combproc: PROCESS (xip1E_13_uid243_vecTranslateTest_a, xip1E_13_uid243_vecTranslateTest_b, xip1E_13_uid243_vecTranslateTest_s)
    BEGIN
        IF (xip1E_13_uid243_vecTranslateTest_s = "1") THEN
            xip1E_13_uid243_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid243_vecTranslateTest_a) + SIGNED(xip1E_13_uid243_vecTranslateTest_b));
        ELSE
            xip1E_13_uid243_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid243_vecTranslateTest_a) - SIGNED(xip1E_13_uid243_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_13_uid243_vecTranslateTest_q <= xip1E_13_uid243_vecTranslateTest_o(38 downto 0);

    -- xip1_13_uid249_vecTranslateTest(BITSELECT,248)@6
    xip1_13_uid249_vecTranslateTest_in <= xip1E_13_uid243_vecTranslateTest_q(36 downto 0);
    xip1_13_uid249_vecTranslateTest_b <= xip1_13_uid249_vecTranslateTest_in(36 downto 0);

    -- redist14(DELAY,394)
    redist14 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_13_uid249_vecTranslateTest_b, xout => redist14_q, clk => clk, aclr => areset );

    -- xip1E_14_uid260_vecTranslateTest(ADDSUB,259)@7
    xip1E_14_uid260_vecTranslateTest_s <= invSignOfSelectionSignal_uid259_vecTranslateTest_q;
    xip1E_14_uid260_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist14_q));
    xip1E_14_uid260_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 13 => twoToMiSiYip_uid257_vecTranslateTest_b(12)) & twoToMiSiYip_uid257_vecTranslateTest_b));
    xip1E_14_uid260_vecTranslateTest_combproc: PROCESS (xip1E_14_uid260_vecTranslateTest_a, xip1E_14_uid260_vecTranslateTest_b, xip1E_14_uid260_vecTranslateTest_s)
    BEGIN
        IF (xip1E_14_uid260_vecTranslateTest_s = "1") THEN
            xip1E_14_uid260_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid260_vecTranslateTest_a) + SIGNED(xip1E_14_uid260_vecTranslateTest_b));
        ELSE
            xip1E_14_uid260_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid260_vecTranslateTest_a) - SIGNED(xip1E_14_uid260_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_14_uid260_vecTranslateTest_q <= xip1E_14_uid260_vecTranslateTest_o(38 downto 0);

    -- xip1_14_uid266_vecTranslateTest(BITSELECT,265)@7
    xip1_14_uid266_vecTranslateTest_in <= xip1E_14_uid260_vecTranslateTest_q(36 downto 0);
    xip1_14_uid266_vecTranslateTest_b <= xip1_14_uid266_vecTranslateTest_in(36 downto 0);

    -- twoToMiSiXip_uid273_vecTranslateTest(BITSELECT,272)@7
    twoToMiSiXip_uid273_vecTranslateTest_in <= xip1_14_uid266_vecTranslateTest_b;
    twoToMiSiXip_uid273_vecTranslateTest_b <= twoToMiSiXip_uid273_vecTranslateTest_in(36 downto 14);

    -- twoToMiSiXip_uid256_vecTranslateTest(BITSELECT,255)@7
    twoToMiSiXip_uid256_vecTranslateTest_in <= redist14_q;
    twoToMiSiXip_uid256_vecTranslateTest_b <= twoToMiSiXip_uid256_vecTranslateTest_in(36 downto 13);

    -- yip1E_14_uid261_vecTranslateTest(ADDSUB,260)@7
    yip1E_14_uid261_vecTranslateTest_s <= xMSB_uid252_vecTranslateTest_b;
    yip1E_14_uid261_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => redist13_q(25)) & redist13_q));
    yip1E_14_uid261_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid256_vecTranslateTest_b));
    yip1E_14_uid261_vecTranslateTest_combproc: PROCESS (yip1E_14_uid261_vecTranslateTest_a, yip1E_14_uid261_vecTranslateTest_b, yip1E_14_uid261_vecTranslateTest_s)
    BEGIN
        IF (yip1E_14_uid261_vecTranslateTest_s = "1") THEN
            yip1E_14_uid261_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid261_vecTranslateTest_a) + SIGNED(yip1E_14_uid261_vecTranslateTest_b));
        ELSE
            yip1E_14_uid261_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid261_vecTranslateTest_a) - SIGNED(yip1E_14_uid261_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_14_uid261_vecTranslateTest_q <= yip1E_14_uid261_vecTranslateTest_o(26 downto 0);

    -- yip1_14_uid267_vecTranslateTest(BITSELECT,266)@7
    yip1_14_uid267_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_14_uid261_vecTranslateTest_q(24 downto 0));
    yip1_14_uid267_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_14_uid267_vecTranslateTest_in(24 downto 0));

    -- yip1E_15_uid278_vecTranslateTest(ADDSUB,277)@7
    yip1E_15_uid278_vecTranslateTest_s <= xMSB_uid269_vecTranslateTest_b;
    yip1E_15_uid278_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1_14_uid267_vecTranslateTest_b(24)) & yip1_14_uid267_vecTranslateTest_b));
    yip1E_15_uid278_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid273_vecTranslateTest_b));
    yip1E_15_uid278_vecTranslateTest_combproc: PROCESS (yip1E_15_uid278_vecTranslateTest_a, yip1E_15_uid278_vecTranslateTest_b, yip1E_15_uid278_vecTranslateTest_s)
    BEGIN
        IF (yip1E_15_uid278_vecTranslateTest_s = "1") THEN
            yip1E_15_uid278_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid278_vecTranslateTest_a) + SIGNED(yip1E_15_uid278_vecTranslateTest_b));
        ELSE
            yip1E_15_uid278_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid278_vecTranslateTest_a) - SIGNED(yip1E_15_uid278_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_15_uid278_vecTranslateTest_q <= yip1E_15_uid278_vecTranslateTest_o(25 downto 0);

    -- yip1_15_uid284_vecTranslateTest(BITSELECT,283)@7
    yip1_15_uid284_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_15_uid278_vecTranslateTest_q(23 downto 0));
    yip1_15_uid284_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_15_uid284_vecTranslateTest_in(23 downto 0));

    -- redist9(DELAY,389)
    redist9 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_15_uid284_vecTranslateTest_b, xout => redist9_q, clk => clk, aclr => areset );

    -- xMSB_uid286_vecTranslateTest(BITSELECT,285)@8
    xMSB_uid286_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist9_q);
    xMSB_uid286_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid286_vecTranslateTest_in(23 downto 23));

    -- invSignOfSelectionSignal_uid293_vecTranslateTest(LOGICAL,292)@8
    invSignOfSelectionSignal_uid293_vecTranslateTest_a <= xMSB_uid286_vecTranslateTest_b;
    invSignOfSelectionSignal_uid293_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid293_vecTranslateTest_a);

    -- twoToMiSiYip_uid291_vecTranslateTest(BITSELECT,290)@8
    twoToMiSiYip_uid291_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist9_q);
    twoToMiSiYip_uid291_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid291_vecTranslateTest_in(23 downto 15));

    -- invSignOfSelectionSignal_uid276_vecTranslateTest(LOGICAL,275)@7
    invSignOfSelectionSignal_uid276_vecTranslateTest_a <= xMSB_uid269_vecTranslateTest_b;
    invSignOfSelectionSignal_uid276_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid276_vecTranslateTest_a);

    -- twoToMiSiYip_uid274_vecTranslateTest(BITSELECT,273)@7
    twoToMiSiYip_uid274_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_14_uid267_vecTranslateTest_b);
    twoToMiSiYip_uid274_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid274_vecTranslateTest_in(24 downto 14));

    -- xip1E_15_uid277_vecTranslateTest(ADDSUB,276)@7
    xip1E_15_uid277_vecTranslateTest_s <= invSignOfSelectionSignal_uid276_vecTranslateTest_q;
    xip1E_15_uid277_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_14_uid266_vecTranslateTest_b));
    xip1E_15_uid277_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 11 => twoToMiSiYip_uid274_vecTranslateTest_b(10)) & twoToMiSiYip_uid274_vecTranslateTest_b));
    xip1E_15_uid277_vecTranslateTest_combproc: PROCESS (xip1E_15_uid277_vecTranslateTest_a, xip1E_15_uid277_vecTranslateTest_b, xip1E_15_uid277_vecTranslateTest_s)
    BEGIN
        IF (xip1E_15_uid277_vecTranslateTest_s = "1") THEN
            xip1E_15_uid277_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid277_vecTranslateTest_a) + SIGNED(xip1E_15_uid277_vecTranslateTest_b));
        ELSE
            xip1E_15_uid277_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid277_vecTranslateTest_a) - SIGNED(xip1E_15_uid277_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_15_uid277_vecTranslateTest_q <= xip1E_15_uid277_vecTranslateTest_o(38 downto 0);

    -- xip1_15_uid283_vecTranslateTest(BITSELECT,282)@7
    xip1_15_uid283_vecTranslateTest_in <= xip1E_15_uid277_vecTranslateTest_q(36 downto 0);
    xip1_15_uid283_vecTranslateTest_b <= xip1_15_uid283_vecTranslateTest_in(36 downto 0);

    -- redist10(DELAY,390)
    redist10 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_15_uid283_vecTranslateTest_b, xout => redist10_q, clk => clk, aclr => areset );

    -- xip1E_16_uid294_vecTranslateTest(ADDSUB,293)@8
    xip1E_16_uid294_vecTranslateTest_s <= invSignOfSelectionSignal_uid293_vecTranslateTest_q;
    xip1E_16_uid294_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist10_q));
    xip1E_16_uid294_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 9 => twoToMiSiYip_uid291_vecTranslateTest_b(8)) & twoToMiSiYip_uid291_vecTranslateTest_b));
    xip1E_16_uid294_vecTranslateTest_combproc: PROCESS (xip1E_16_uid294_vecTranslateTest_a, xip1E_16_uid294_vecTranslateTest_b, xip1E_16_uid294_vecTranslateTest_s)
    BEGIN
        IF (xip1E_16_uid294_vecTranslateTest_s = "1") THEN
            xip1E_16_uid294_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid294_vecTranslateTest_a) + SIGNED(xip1E_16_uid294_vecTranslateTest_b));
        ELSE
            xip1E_16_uid294_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid294_vecTranslateTest_a) - SIGNED(xip1E_16_uid294_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_16_uid294_vecTranslateTest_q <= xip1E_16_uid294_vecTranslateTest_o(38 downto 0);

    -- xip1_16_uid300_vecTranslateTest(BITSELECT,299)@8
    xip1_16_uid300_vecTranslateTest_in <= xip1E_16_uid294_vecTranslateTest_q(36 downto 0);
    xip1_16_uid300_vecTranslateTest_b <= xip1_16_uid300_vecTranslateTest_in(36 downto 0);

    -- twoToMiSiXip_uid307_vecTranslateTest(BITSELECT,306)@8
    twoToMiSiXip_uid307_vecTranslateTest_in <= xip1_16_uid300_vecTranslateTest_b;
    twoToMiSiXip_uid307_vecTranslateTest_b <= twoToMiSiXip_uid307_vecTranslateTest_in(36 downto 16);

    -- twoToMiSiXip_uid290_vecTranslateTest(BITSELECT,289)@8
    twoToMiSiXip_uid290_vecTranslateTest_in <= redist10_q;
    twoToMiSiXip_uid290_vecTranslateTest_b <= twoToMiSiXip_uid290_vecTranslateTest_in(36 downto 15);

    -- yip1E_16_uid295_vecTranslateTest(ADDSUB,294)@8
    yip1E_16_uid295_vecTranslateTest_s <= xMSB_uid286_vecTranslateTest_b;
    yip1E_16_uid295_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => redist9_q(23)) & redist9_q));
    yip1E_16_uid295_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid290_vecTranslateTest_b));
    yip1E_16_uid295_vecTranslateTest_combproc: PROCESS (yip1E_16_uid295_vecTranslateTest_a, yip1E_16_uid295_vecTranslateTest_b, yip1E_16_uid295_vecTranslateTest_s)
    BEGIN
        IF (yip1E_16_uid295_vecTranslateTest_s = "1") THEN
            yip1E_16_uid295_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid295_vecTranslateTest_a) + SIGNED(yip1E_16_uid295_vecTranslateTest_b));
        ELSE
            yip1E_16_uid295_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid295_vecTranslateTest_a) - SIGNED(yip1E_16_uid295_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_16_uid295_vecTranslateTest_q <= yip1E_16_uid295_vecTranslateTest_o(24 downto 0);

    -- yip1_16_uid301_vecTranslateTest(BITSELECT,300)@8
    yip1_16_uid301_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_16_uid295_vecTranslateTest_q(22 downto 0));
    yip1_16_uid301_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_16_uid301_vecTranslateTest_in(22 downto 0));

    -- yip1E_17_uid312_vecTranslateTest(ADDSUB,311)@8
    yip1E_17_uid312_vecTranslateTest_s <= xMSB_uid303_vecTranslateTest_b;
    yip1E_17_uid312_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 23 => yip1_16_uid301_vecTranslateTest_b(22)) & yip1_16_uid301_vecTranslateTest_b));
    yip1E_17_uid312_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid307_vecTranslateTest_b));
    yip1E_17_uid312_vecTranslateTest_combproc: PROCESS (yip1E_17_uid312_vecTranslateTest_a, yip1E_17_uid312_vecTranslateTest_b, yip1E_17_uid312_vecTranslateTest_s)
    BEGIN
        IF (yip1E_17_uid312_vecTranslateTest_s = "1") THEN
            yip1E_17_uid312_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid312_vecTranslateTest_a) + SIGNED(yip1E_17_uid312_vecTranslateTest_b));
        ELSE
            yip1E_17_uid312_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid312_vecTranslateTest_a) - SIGNED(yip1E_17_uid312_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_17_uid312_vecTranslateTest_q <= yip1E_17_uid312_vecTranslateTest_o(23 downto 0);

    -- yip1_17_uid318_vecTranslateTest(BITSELECT,317)@8
    yip1_17_uid318_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_17_uid312_vecTranslateTest_q(21 downto 0));
    yip1_17_uid318_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_17_uid318_vecTranslateTest_in(21 downto 0));

    -- xMSB_uid320_vecTranslateTest(BITSELECT,319)@8
    xMSB_uid320_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_17_uid318_vecTranslateTest_b);
    xMSB_uid320_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid320_vecTranslateTest_in(21 downto 21));

    -- redist5(DELAY,385)
    redist5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid320_vecTranslateTest_b, xout => redist5_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid327_vecTranslateTest(LOGICAL,326)@9
    invSignOfSelectionSignal_uid327_vecTranslateTest_a <= redist5_q;
    invSignOfSelectionSignal_uid327_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid327_vecTranslateTest_a);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- twoToMiSiYip_uid325_vecTranslateTest(BITSELECT,324)@8
    twoToMiSiYip_uid325_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_17_uid318_vecTranslateTest_b);
    twoToMiSiYip_uid325_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid325_vecTranslateTest_in(21 downto 17));

    -- redist4(DELAY,384)
    redist4 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => twoToMiSiYip_uid325_vecTranslateTest_b, xout => redist4_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid310_vecTranslateTest(LOGICAL,309)@8
    invSignOfSelectionSignal_uid310_vecTranslateTest_a <= xMSB_uid303_vecTranslateTest_b;
    invSignOfSelectionSignal_uid310_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid310_vecTranslateTest_a);

    -- twoToMiSiYip_uid308_vecTranslateTest(BITSELECT,307)@8
    twoToMiSiYip_uid308_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_16_uid301_vecTranslateTest_b);
    twoToMiSiYip_uid308_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid308_vecTranslateTest_in(22 downto 16));

    -- xip1E_17_uid311_vecTranslateTest(ADDSUB,310)@8
    xip1E_17_uid311_vecTranslateTest_s <= invSignOfSelectionSignal_uid310_vecTranslateTest_q;
    xip1E_17_uid311_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_16_uid300_vecTranslateTest_b));
    xip1E_17_uid311_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 7 => twoToMiSiYip_uid308_vecTranslateTest_b(6)) & twoToMiSiYip_uid308_vecTranslateTest_b));
    xip1E_17_uid311_vecTranslateTest_combproc: PROCESS (xip1E_17_uid311_vecTranslateTest_a, xip1E_17_uid311_vecTranslateTest_b, xip1E_17_uid311_vecTranslateTest_s)
    BEGIN
        IF (xip1E_17_uid311_vecTranslateTest_s = "1") THEN
            xip1E_17_uid311_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_17_uid311_vecTranslateTest_a) + SIGNED(xip1E_17_uid311_vecTranslateTest_b));
        ELSE
            xip1E_17_uid311_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_17_uid311_vecTranslateTest_a) - SIGNED(xip1E_17_uid311_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_17_uid311_vecTranslateTest_q <= xip1E_17_uid311_vecTranslateTest_o(38 downto 0);

    -- xip1_17_uid317_vecTranslateTest(BITSELECT,316)@8
    xip1_17_uid317_vecTranslateTest_in <= xip1E_17_uid311_vecTranslateTest_q(36 downto 0);
    xip1_17_uid317_vecTranslateTest_b <= xip1_17_uid317_vecTranslateTest_in(36 downto 0);

    -- redist6(DELAY,386)
    redist6 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_17_uid317_vecTranslateTest_b, xout => redist6_q, clk => clk, aclr => areset );

    -- xip1E_18_uid328_vecTranslateTest(ADDSUB,327)@9
    xip1E_18_uid328_vecTranslateTest_s <= invSignOfSelectionSignal_uid327_vecTranslateTest_q;
    xip1E_18_uid328_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist6_q));
    xip1E_18_uid328_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 5 => redist4_q(4)) & redist4_q));
    xip1E_18_uid328_vecTranslateTest_combproc: PROCESS (xip1E_18_uid328_vecTranslateTest_a, xip1E_18_uid328_vecTranslateTest_b, xip1E_18_uid328_vecTranslateTest_s)
    BEGIN
        IF (xip1E_18_uid328_vecTranslateTest_s = "1") THEN
            xip1E_18_uid328_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_18_uid328_vecTranslateTest_a) + SIGNED(xip1E_18_uid328_vecTranslateTest_b));
        ELSE
            xip1E_18_uid328_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_18_uid328_vecTranslateTest_a) - SIGNED(xip1E_18_uid328_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_18_uid328_vecTranslateTest_q <= xip1E_18_uid328_vecTranslateTest_o(38 downto 0);

    -- xip1_18_uid334_vecTranslateTest(BITSELECT,333)@9
    xip1_18_uid334_vecTranslateTest_in <= xip1E_18_uid328_vecTranslateTest_q(36 downto 0);
    xip1_18_uid334_vecTranslateTest_b <= xip1_18_uid334_vecTranslateTest_in(36 downto 0);

    -- outMagPreRnd_uid375_vecTranslateTest(BITSELECT,374)@9
    outMagPreRnd_uid375_vecTranslateTest_in <= xip1_18_uid334_vecTranslateTest_b;
    outMagPreRnd_uid375_vecTranslateTest_b <= outMagPreRnd_uid375_vecTranslateTest_in(36 downto 18);

    -- outMagPostRnd_uid378_vecTranslateTest(ADD,377)@9
    outMagPostRnd_uid378_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & outMagPreRnd_uid375_vecTranslateTest_b);
    outMagPostRnd_uid378_vecTranslateTest_b <= STD_LOGIC_VECTOR("0000000000000000000" & VCC_q);
    outMagPostRnd_uid378_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(outMagPostRnd_uid378_vecTranslateTest_a) + UNSIGNED(outMagPostRnd_uid378_vecTranslateTest_b));
    outMagPostRnd_uid378_vecTranslateTest_q <= outMagPostRnd_uid378_vecTranslateTest_o(19 downto 0);

    -- outMag_uid379_vecTranslateTest(BITSELECT,378)@9
    outMag_uid379_vecTranslateTest_in <= outMagPostRnd_uid378_vecTranslateTest_q(18 downto 0);
    outMag_uid379_vecTranslateTest_b <= outMag_uid379_vecTranslateTest_in(18 downto 1);

    -- redist0(DELAY,380)
    redist0 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => outMag_uid379_vecTranslateTest_b, xout => redist0_q, clk => clk, aclr => areset );

    -- constPi_uid366_vecTranslateTest(CONSTANT,365)
    constPi_uid366_vecTranslateTest_q <= "1100100100001111111";

    -- constPiP2uE_uid357_vecTranslateTest(CONSTANT,356)
    constPiP2uE_uid357_vecTranslateTest_q <= "110010010001000001";

    -- constPio2P2u_mergedSignalTM_uid360_vecTranslateTest(BITJOIN,359)@10
    constPio2P2u_mergedSignalTM_uid360_vecTranslateTest_q <= GND_q & constPiP2uE_uid357_vecTranslateTest_q;

    -- cstZeroOutFormat_uid356_vecTranslateTest(CONSTANT,355)
    cstZeroOutFormat_uid356_vecTranslateTest_q <= "0000000000000000010";

    -- redist36(DELAY,416)
    redist36 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid32_vecTranslateTest_b, xout => redist36_q, clk => clk, aclr => areset );

    -- redist35(DELAY,415)
    redist35 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid51_vecTranslateTest_b, xout => redist35_q, clk => clk, aclr => areset );

    -- redist32(DELAY,412)
    redist32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid70_vecTranslateTest_b, xout => redist32_q, clk => clk, aclr => areset );

    -- redist31(DELAY,411)
    redist31 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid89_vecTranslateTest_b, xout => redist31_q, clk => clk, aclr => areset );

    -- redist28(DELAY,408)
    redist28 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid108_vecTranslateTest_b, xout => redist28_q, clk => clk, aclr => areset );

    -- redist27(DELAY,407)
    redist27 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid127_vecTranslateTest_b, xout => redist27_q, clk => clk, aclr => areset );

    -- redist24(DELAY,404)
    redist24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid146_vecTranslateTest_b, xout => redist24_q, clk => clk, aclr => areset );

    -- redist23(DELAY,403)
    redist23 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid167_vecTranslateTest_b, xout => redist23_q, clk => clk, aclr => areset );

    -- redist20(DELAY,400)
    redist20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid184_vecTranslateTest_b, xout => redist20_q, clk => clk, aclr => areset );

    -- redist19(DELAY,399)
    redist19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid201_vecTranslateTest_b, xout => redist19_q, clk => clk, aclr => areset );

    -- redist16(DELAY,396)
    redist16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid218_vecTranslateTest_b, xout => redist16_q, clk => clk, aclr => areset );

    -- redist15(DELAY,395)
    redist15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid235_vecTranslateTest_b, xout => redist15_q, clk => clk, aclr => areset );

    -- redist12(DELAY,392)
    redist12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid252_vecTranslateTest_b, xout => redist12_q, clk => clk, aclr => areset );

    -- redist11(DELAY,391)
    redist11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid269_vecTranslateTest_b, xout => redist11_q, clk => clk, aclr => areset );

    -- redist8(DELAY,388)
    redist8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid286_vecTranslateTest_b, xout => redist8_q, clk => clk, aclr => areset );

    -- redist7(DELAY,387)
    redist7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid303_vecTranslateTest_b, xout => redist7_q, clk => clk, aclr => areset );

    -- concSignVector_uid337_vecTranslateTest(BITJOIN,336)@9
    concSignVector_uid337_vecTranslateTest_q <= GND_q & redist36_q & redist35_q & redist32_q & redist31_q & redist28_q & redist27_q & redist24_q & redist23_q & redist20_q & redist19_q & redist16_q & redist15_q & redist12_q & redist11_q & redist8_q & redist7_q & redist5_q;

    -- is2_uid349_vecTranslateTest(BITSELECT,348)@9
    is2_uid349_vecTranslateTest_in <= concSignVector_uid337_vecTranslateTest_q(5 downto 0);
    is2_uid349_vecTranslateTest_b <= is2_uid349_vecTranslateTest_in(5 downto 0);

    -- table_l17_uid350_vecTranslateTest(LOOKUP,349)@9
    table_l17_uid350_vecTranslateTest_combproc: PROCESS (is2_uid349_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is2_uid349_vecTranslateTest_b) IS
            WHEN "000000" => table_l17_uid350_vecTranslateTest_q <= "0111111000";
            WHEN "000001" => table_l17_uid350_vecTranslateTest_q <= "0111101000";
            WHEN "000010" => table_l17_uid350_vecTranslateTest_q <= "0111011000";
            WHEN "000011" => table_l17_uid350_vecTranslateTest_q <= "0111001000";
            WHEN "000100" => table_l17_uid350_vecTranslateTest_q <= "0110111000";
            WHEN "000101" => table_l17_uid350_vecTranslateTest_q <= "0110101000";
            WHEN "000110" => table_l17_uid350_vecTranslateTest_q <= "0110011000";
            WHEN "000111" => table_l17_uid350_vecTranslateTest_q <= "0110001000";
            WHEN "001000" => table_l17_uid350_vecTranslateTest_q <= "0101111000";
            WHEN "001001" => table_l17_uid350_vecTranslateTest_q <= "0101101000";
            WHEN "001010" => table_l17_uid350_vecTranslateTest_q <= "0101011000";
            WHEN "001011" => table_l17_uid350_vecTranslateTest_q <= "0101001000";
            WHEN "001100" => table_l17_uid350_vecTranslateTest_q <= "0100111000";
            WHEN "001101" => table_l17_uid350_vecTranslateTest_q <= "0100101000";
            WHEN "001110" => table_l17_uid350_vecTranslateTest_q <= "0100011000";
            WHEN "001111" => table_l17_uid350_vecTranslateTest_q <= "0100001000";
            WHEN "010000" => table_l17_uid350_vecTranslateTest_q <= "0011111000";
            WHEN "010001" => table_l17_uid350_vecTranslateTest_q <= "0011101000";
            WHEN "010010" => table_l17_uid350_vecTranslateTest_q <= "0011011000";
            WHEN "010011" => table_l17_uid350_vecTranslateTest_q <= "0011001000";
            WHEN "010100" => table_l17_uid350_vecTranslateTest_q <= "0010111000";
            WHEN "010101" => table_l17_uid350_vecTranslateTest_q <= "0010101000";
            WHEN "010110" => table_l17_uid350_vecTranslateTest_q <= "0010011000";
            WHEN "010111" => table_l17_uid350_vecTranslateTest_q <= "0010001000";
            WHEN "011000" => table_l17_uid350_vecTranslateTest_q <= "0001111000";
            WHEN "011001" => table_l17_uid350_vecTranslateTest_q <= "0001101000";
            WHEN "011010" => table_l17_uid350_vecTranslateTest_q <= "0001011000";
            WHEN "011011" => table_l17_uid350_vecTranslateTest_q <= "0001001000";
            WHEN "011100" => table_l17_uid350_vecTranslateTest_q <= "0000111000";
            WHEN "011101" => table_l17_uid350_vecTranslateTest_q <= "0000101000";
            WHEN "011110" => table_l17_uid350_vecTranslateTest_q <= "0000011000";
            WHEN "011111" => table_l17_uid350_vecTranslateTest_q <= "0000001000";
            WHEN "100000" => table_l17_uid350_vecTranslateTest_q <= "1111111000";
            WHEN "100001" => table_l17_uid350_vecTranslateTest_q <= "1111101000";
            WHEN "100010" => table_l17_uid350_vecTranslateTest_q <= "1111011000";
            WHEN "100011" => table_l17_uid350_vecTranslateTest_q <= "1111001000";
            WHEN "100100" => table_l17_uid350_vecTranslateTest_q <= "1110111000";
            WHEN "100101" => table_l17_uid350_vecTranslateTest_q <= "1110101000";
            WHEN "100110" => table_l17_uid350_vecTranslateTest_q <= "1110011000";
            WHEN "100111" => table_l17_uid350_vecTranslateTest_q <= "1110001000";
            WHEN "101000" => table_l17_uid350_vecTranslateTest_q <= "1101111000";
            WHEN "101001" => table_l17_uid350_vecTranslateTest_q <= "1101101000";
            WHEN "101010" => table_l17_uid350_vecTranslateTest_q <= "1101011000";
            WHEN "101011" => table_l17_uid350_vecTranslateTest_q <= "1101001000";
            WHEN "101100" => table_l17_uid350_vecTranslateTest_q <= "1100111000";
            WHEN "101101" => table_l17_uid350_vecTranslateTest_q <= "1100101000";
            WHEN "101110" => table_l17_uid350_vecTranslateTest_q <= "1100011000";
            WHEN "101111" => table_l17_uid350_vecTranslateTest_q <= "1100001000";
            WHEN "110000" => table_l17_uid350_vecTranslateTest_q <= "1011111000";
            WHEN "110001" => table_l17_uid350_vecTranslateTest_q <= "1011101000";
            WHEN "110010" => table_l17_uid350_vecTranslateTest_q <= "1011011000";
            WHEN "110011" => table_l17_uid350_vecTranslateTest_q <= "1011001000";
            WHEN "110100" => table_l17_uid350_vecTranslateTest_q <= "1010111000";
            WHEN "110101" => table_l17_uid350_vecTranslateTest_q <= "1010101000";
            WHEN "110110" => table_l17_uid350_vecTranslateTest_q <= "1010011000";
            WHEN "110111" => table_l17_uid350_vecTranslateTest_q <= "1010001000";
            WHEN "111000" => table_l17_uid350_vecTranslateTest_q <= "1001111000";
            WHEN "111001" => table_l17_uid350_vecTranslateTest_q <= "1001101000";
            WHEN "111010" => table_l17_uid350_vecTranslateTest_q <= "1001011000";
            WHEN "111011" => table_l17_uid350_vecTranslateTest_q <= "1001001000";
            WHEN "111100" => table_l17_uid350_vecTranslateTest_q <= "1000111000";
            WHEN "111101" => table_l17_uid350_vecTranslateTest_q <= "1000101000";
            WHEN "111110" => table_l17_uid350_vecTranslateTest_q <= "1000011000";
            WHEN "111111" => table_l17_uid350_vecTranslateTest_q <= "1000001000";
            WHEN OTHERS => -- unreachable
                           table_l17_uid350_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- is1_uid344_vecTranslateTest(BITSELECT,343)@9
    is1_uid344_vecTranslateTest_in <= concSignVector_uid337_vecTranslateTest_q(11 downto 0);
    is1_uid344_vecTranslateTest_b <= is1_uid344_vecTranslateTest_in(11 downto 6);

    -- table_l11_uid346_vecTranslateTest(LOOKUP,345)@9
    table_l11_uid346_vecTranslateTest_combproc: PROCESS (is1_uid344_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid344_vecTranslateTest_b) IS
            WHEN "000000" => table_l11_uid346_vecTranslateTest_q <= "011111";
            WHEN "000001" => table_l11_uid346_vecTranslateTest_q <= "011110";
            WHEN "000010" => table_l11_uid346_vecTranslateTest_q <= "011101";
            WHEN "000011" => table_l11_uid346_vecTranslateTest_q <= "011100";
            WHEN "000100" => table_l11_uid346_vecTranslateTest_q <= "011011";
            WHEN "000101" => table_l11_uid346_vecTranslateTest_q <= "011010";
            WHEN "000110" => table_l11_uid346_vecTranslateTest_q <= "011001";
            WHEN "000111" => table_l11_uid346_vecTranslateTest_q <= "011000";
            WHEN "001000" => table_l11_uid346_vecTranslateTest_q <= "010111";
            WHEN "001001" => table_l11_uid346_vecTranslateTest_q <= "010110";
            WHEN "001010" => table_l11_uid346_vecTranslateTest_q <= "010101";
            WHEN "001011" => table_l11_uid346_vecTranslateTest_q <= "010100";
            WHEN "001100" => table_l11_uid346_vecTranslateTest_q <= "010011";
            WHEN "001101" => table_l11_uid346_vecTranslateTest_q <= "010010";
            WHEN "001110" => table_l11_uid346_vecTranslateTest_q <= "010001";
            WHEN "001111" => table_l11_uid346_vecTranslateTest_q <= "010000";
            WHEN "010000" => table_l11_uid346_vecTranslateTest_q <= "001111";
            WHEN "010001" => table_l11_uid346_vecTranslateTest_q <= "001110";
            WHEN "010010" => table_l11_uid346_vecTranslateTest_q <= "001101";
            WHEN "010011" => table_l11_uid346_vecTranslateTest_q <= "001100";
            WHEN "010100" => table_l11_uid346_vecTranslateTest_q <= "001011";
            WHEN "010101" => table_l11_uid346_vecTranslateTest_q <= "001010";
            WHEN "010110" => table_l11_uid346_vecTranslateTest_q <= "001001";
            WHEN "010111" => table_l11_uid346_vecTranslateTest_q <= "001000";
            WHEN "011000" => table_l11_uid346_vecTranslateTest_q <= "000111";
            WHEN "011001" => table_l11_uid346_vecTranslateTest_q <= "000110";
            WHEN "011010" => table_l11_uid346_vecTranslateTest_q <= "000101";
            WHEN "011011" => table_l11_uid346_vecTranslateTest_q <= "000100";
            WHEN "011100" => table_l11_uid346_vecTranslateTest_q <= "000011";
            WHEN "011101" => table_l11_uid346_vecTranslateTest_q <= "000010";
            WHEN "011110" => table_l11_uid346_vecTranslateTest_q <= "000001";
            WHEN "011111" => table_l11_uid346_vecTranslateTest_q <= "000000";
            WHEN "100000" => table_l11_uid346_vecTranslateTest_q <= "111111";
            WHEN "100001" => table_l11_uid346_vecTranslateTest_q <= "111110";
            WHEN "100010" => table_l11_uid346_vecTranslateTest_q <= "111101";
            WHEN "100011" => table_l11_uid346_vecTranslateTest_q <= "111100";
            WHEN "100100" => table_l11_uid346_vecTranslateTest_q <= "111011";
            WHEN "100101" => table_l11_uid346_vecTranslateTest_q <= "111010";
            WHEN "100110" => table_l11_uid346_vecTranslateTest_q <= "111001";
            WHEN "100111" => table_l11_uid346_vecTranslateTest_q <= "111000";
            WHEN "101000" => table_l11_uid346_vecTranslateTest_q <= "110111";
            WHEN "101001" => table_l11_uid346_vecTranslateTest_q <= "110110";
            WHEN "101010" => table_l11_uid346_vecTranslateTest_q <= "110101";
            WHEN "101011" => table_l11_uid346_vecTranslateTest_q <= "110100";
            WHEN "101100" => table_l11_uid346_vecTranslateTest_q <= "110011";
            WHEN "101101" => table_l11_uid346_vecTranslateTest_q <= "110010";
            WHEN "101110" => table_l11_uid346_vecTranslateTest_q <= "110001";
            WHEN "101111" => table_l11_uid346_vecTranslateTest_q <= "110000";
            WHEN "110000" => table_l11_uid346_vecTranslateTest_q <= "101111";
            WHEN "110001" => table_l11_uid346_vecTranslateTest_q <= "101110";
            WHEN "110010" => table_l11_uid346_vecTranslateTest_q <= "101101";
            WHEN "110011" => table_l11_uid346_vecTranslateTest_q <= "101100";
            WHEN "110100" => table_l11_uid346_vecTranslateTest_q <= "101011";
            WHEN "110101" => table_l11_uid346_vecTranslateTest_q <= "101010";
            WHEN "110110" => table_l11_uid346_vecTranslateTest_q <= "101001";
            WHEN "110111" => table_l11_uid346_vecTranslateTest_q <= "101000";
            WHEN "111000" => table_l11_uid346_vecTranslateTest_q <= "100111";
            WHEN "111001" => table_l11_uid346_vecTranslateTest_q <= "100110";
            WHEN "111010" => table_l11_uid346_vecTranslateTest_q <= "100101";
            WHEN "111011" => table_l11_uid346_vecTranslateTest_q <= "100100";
            WHEN "111100" => table_l11_uid346_vecTranslateTest_q <= "100011";
            WHEN "111101" => table_l11_uid346_vecTranslateTest_q <= "100010";
            WHEN "111110" => table_l11_uid346_vecTranslateTest_q <= "100001";
            WHEN "111111" => table_l11_uid346_vecTranslateTest_q <= "100000";
            WHEN OTHERS => -- unreachable
                           table_l11_uid346_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l11_uid345_vecTranslateTest(LOOKUP,344)@9
    table_l11_uid345_vecTranslateTest_combproc: PROCESS (is1_uid344_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid344_vecTranslateTest_b) IS
            WHEN "000000" => table_l11_uid345_vecTranslateTest_q <= "0111111110";
            WHEN "000001" => table_l11_uid345_vecTranslateTest_q <= "0111111110";
            WHEN "000010" => table_l11_uid345_vecTranslateTest_q <= "0111111110";
            WHEN "000011" => table_l11_uid345_vecTranslateTest_q <= "0111111110";
            WHEN "000100" => table_l11_uid345_vecTranslateTest_q <= "0111111110";
            WHEN "000101" => table_l11_uid345_vecTranslateTest_q <= "0111111110";
            WHEN "000110" => table_l11_uid345_vecTranslateTest_q <= "0111111110";
            WHEN "000111" => table_l11_uid345_vecTranslateTest_q <= "0111111110";
            WHEN "001000" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "001001" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "001010" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "001011" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "001100" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "001101" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "001110" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "001111" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "010000" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "010001" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "010010" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "010011" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "010100" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "010101" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "010110" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "010111" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "011000" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "011001" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "011010" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "011011" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "011100" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "011101" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "011110" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "011111" => table_l11_uid345_vecTranslateTest_q <= "0111111111";
            WHEN "100000" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "100001" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "100010" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "100011" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "100100" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "100101" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "100110" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "100111" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "101000" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "101001" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "101010" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "101011" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "101100" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "101101" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "101110" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "101111" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "110000" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "110001" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "110010" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "110011" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "110100" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "110101" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "110110" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "110111" => table_l11_uid345_vecTranslateTest_q <= "1000000001";
            WHEN "111000" => table_l11_uid345_vecTranslateTest_q <= "1000000010";
            WHEN "111001" => table_l11_uid345_vecTranslateTest_q <= "1000000010";
            WHEN "111010" => table_l11_uid345_vecTranslateTest_q <= "1000000010";
            WHEN "111011" => table_l11_uid345_vecTranslateTest_q <= "1000000010";
            WHEN "111100" => table_l11_uid345_vecTranslateTest_q <= "1000000010";
            WHEN "111101" => table_l11_uid345_vecTranslateTest_q <= "1000000010";
            WHEN "111110" => table_l11_uid345_vecTranslateTest_q <= "1000000010";
            WHEN "111111" => table_l11_uid345_vecTranslateTest_q <= "1000000010";
            WHEN OTHERS => -- unreachable
                           table_l11_uid345_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid347_vecTranslateTest(BITJOIN,346)@9
    os_uid347_vecTranslateTest_q <= table_l11_uid346_vecTranslateTest_q & table_l11_uid345_vecTranslateTest_q;

    -- is0_uid338_vecTranslateTest(BITSELECT,337)@9
    is0_uid338_vecTranslateTest_in <= concSignVector_uid337_vecTranslateTest_q;
    is0_uid338_vecTranslateTest_b <= is0_uid338_vecTranslateTest_in(17 downto 12);

    -- table_l5_uid341_vecTranslateTest(LOOKUP,340)@9
    table_l5_uid341_vecTranslateTest_combproc: PROCESS (is0_uid338_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid338_vecTranslateTest_b) IS
            WHEN "000000" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "000001" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "000010" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "000011" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "000100" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "000101" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "000110" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "000111" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "001000" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "001001" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "001010" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "001011" => table_l5_uid341_vecTranslateTest_q <= "01";
            WHEN "001100" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "001101" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "001110" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "001111" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "010000" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "010001" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "010010" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "010011" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "010100" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "010101" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "010110" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "010111" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "011000" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "011001" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "011010" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "011011" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "011100" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "011101" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "011110" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "011111" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "100000" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "100001" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "100010" => table_l5_uid341_vecTranslateTest_q <= "00";
            WHEN "100011" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "100100" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "100101" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "100110" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "100111" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "101000" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "101001" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "101010" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "101011" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "101100" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "101101" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "101110" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "101111" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "110000" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "110001" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "110010" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "110011" => table_l5_uid341_vecTranslateTest_q <= "11";
            WHEN "110100" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "110101" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "110110" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "110111" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "111000" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "111001" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "111010" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "111011" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "111100" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "111101" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "111110" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN "111111" => table_l5_uid341_vecTranslateTest_q <= "10";
            WHEN OTHERS => -- unreachable
                           table_l5_uid341_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid340_vecTranslateTest(LOOKUP,339)@9
    table_l5_uid340_vecTranslateTest_combproc: PROCESS (is0_uid338_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid338_vecTranslateTest_b) IS
            WHEN "000000" => table_l5_uid340_vecTranslateTest_q <= "1011011001";
            WHEN "000001" => table_l5_uid340_vecTranslateTest_q <= "1010011001";
            WHEN "000010" => table_l5_uid340_vecTranslateTest_q <= "1001011001";
            WHEN "000011" => table_l5_uid340_vecTranslateTest_q <= "1000011001";
            WHEN "000100" => table_l5_uid340_vecTranslateTest_q <= "0111011010";
            WHEN "000101" => table_l5_uid340_vecTranslateTest_q <= "0110011010";
            WHEN "000110" => table_l5_uid340_vecTranslateTest_q <= "0101011010";
            WHEN "000111" => table_l5_uid340_vecTranslateTest_q <= "0100011010";
            WHEN "001000" => table_l5_uid340_vecTranslateTest_q <= "0011100011";
            WHEN "001001" => table_l5_uid340_vecTranslateTest_q <= "0010100011";
            WHEN "001010" => table_l5_uid340_vecTranslateTest_q <= "0001100011";
            WHEN "001011" => table_l5_uid340_vecTranslateTest_q <= "0000100011";
            WHEN "001100" => table_l5_uid340_vecTranslateTest_q <= "1111100100";
            WHEN "001101" => table_l5_uid340_vecTranslateTest_q <= "1110100100";
            WHEN "001110" => table_l5_uid340_vecTranslateTest_q <= "1101100100";
            WHEN "001111" => table_l5_uid340_vecTranslateTest_q <= "1100100100";
            WHEN "010000" => table_l5_uid340_vecTranslateTest_q <= "1100100011";
            WHEN "010001" => table_l5_uid340_vecTranslateTest_q <= "1011100011";
            WHEN "010010" => table_l5_uid340_vecTranslateTest_q <= "1010100011";
            WHEN "010011" => table_l5_uid340_vecTranslateTest_q <= "1001100011";
            WHEN "010100" => table_l5_uid340_vecTranslateTest_q <= "1000100100";
            WHEN "010101" => table_l5_uid340_vecTranslateTest_q <= "0111100100";
            WHEN "010110" => table_l5_uid340_vecTranslateTest_q <= "0110100101";
            WHEN "010111" => table_l5_uid340_vecTranslateTest_q <= "0101100101";
            WHEN "011000" => table_l5_uid340_vecTranslateTest_q <= "0100101101";
            WHEN "011001" => table_l5_uid340_vecTranslateTest_q <= "0011101101";
            WHEN "011010" => table_l5_uid340_vecTranslateTest_q <= "0010101110";
            WHEN "011011" => table_l5_uid340_vecTranslateTest_q <= "0001101110";
            WHEN "011100" => table_l5_uid340_vecTranslateTest_q <= "0000101111";
            WHEN "011101" => table_l5_uid340_vecTranslateTest_q <= "1111101111";
            WHEN "011110" => table_l5_uid340_vecTranslateTest_q <= "1110101111";
            WHEN "011111" => table_l5_uid340_vecTranslateTest_q <= "1101101111";
            WHEN "100000" => table_l5_uid340_vecTranslateTest_q <= "0010010000";
            WHEN "100001" => table_l5_uid340_vecTranslateTest_q <= "0001010000";
            WHEN "100010" => table_l5_uid340_vecTranslateTest_q <= "0000010000";
            WHEN "100011" => table_l5_uid340_vecTranslateTest_q <= "1111010000";
            WHEN "100100" => table_l5_uid340_vecTranslateTest_q <= "1110010001";
            WHEN "100101" => table_l5_uid340_vecTranslateTest_q <= "1101010001";
            WHEN "100110" => table_l5_uid340_vecTranslateTest_q <= "1100010010";
            WHEN "100111" => table_l5_uid340_vecTranslateTest_q <= "1011010010";
            WHEN "101000" => table_l5_uid340_vecTranslateTest_q <= "1010011010";
            WHEN "101001" => table_l5_uid340_vecTranslateTest_q <= "1001011010";
            WHEN "101010" => table_l5_uid340_vecTranslateTest_q <= "1000011011";
            WHEN "101011" => table_l5_uid340_vecTranslateTest_q <= "0111011011";
            WHEN "101100" => table_l5_uid340_vecTranslateTest_q <= "0110011100";
            WHEN "101101" => table_l5_uid340_vecTranslateTest_q <= "0101011100";
            WHEN "101110" => table_l5_uid340_vecTranslateTest_q <= "0100011100";
            WHEN "101111" => table_l5_uid340_vecTranslateTest_q <= "0011011100";
            WHEN "110000" => table_l5_uid340_vecTranslateTest_q <= "0011011011";
            WHEN "110001" => table_l5_uid340_vecTranslateTest_q <= "0010011011";
            WHEN "110010" => table_l5_uid340_vecTranslateTest_q <= "0001011011";
            WHEN "110011" => table_l5_uid340_vecTranslateTest_q <= "0000011011";
            WHEN "110100" => table_l5_uid340_vecTranslateTest_q <= "1111011100";
            WHEN "110101" => table_l5_uid340_vecTranslateTest_q <= "1110011100";
            WHEN "110110" => table_l5_uid340_vecTranslateTest_q <= "1101011100";
            WHEN "110111" => table_l5_uid340_vecTranslateTest_q <= "1100011100";
            WHEN "111000" => table_l5_uid340_vecTranslateTest_q <= "1011100101";
            WHEN "111001" => table_l5_uid340_vecTranslateTest_q <= "1010100101";
            WHEN "111010" => table_l5_uid340_vecTranslateTest_q <= "1001100101";
            WHEN "111011" => table_l5_uid340_vecTranslateTest_q <= "1000100101";
            WHEN "111100" => table_l5_uid340_vecTranslateTest_q <= "0111100110";
            WHEN "111101" => table_l5_uid340_vecTranslateTest_q <= "0110100110";
            WHEN "111110" => table_l5_uid340_vecTranslateTest_q <= "0101100110";
            WHEN "111111" => table_l5_uid340_vecTranslateTest_q <= "0100100110";
            WHEN OTHERS => -- unreachable
                           table_l5_uid340_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid339_vecTranslateTest(LOOKUP,338)@9
    table_l5_uid339_vecTranslateTest_combproc: PROCESS (is0_uid338_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid338_vecTranslateTest_b) IS
            WHEN "000000" => table_l5_uid339_vecTranslateTest_q <= "0010010010";
            WHEN "000001" => table_l5_uid339_vecTranslateTest_q <= "0010100111";
            WHEN "000010" => table_l5_uid339_vecTranslateTest_q <= "0100111100";
            WHEN "000011" => table_l5_uid339_vecTranslateTest_q <= "0101010010";
            WHEN "000100" => table_l5_uid339_vecTranslateTest_q <= "0111011011";
            WHEN "000101" => table_l5_uid339_vecTranslateTest_q <= "0111110000";
            WHEN "000110" => table_l5_uid339_vecTranslateTest_q <= "1010000101";
            WHEN "000111" => table_l5_uid339_vecTranslateTest_q <= "1010011010";
            WHEN "001000" => table_l5_uid339_vecTranslateTest_q <= "0110110101";
            WHEN "001001" => table_l5_uid339_vecTranslateTest_q <= "0111001010";
            WHEN "001010" => table_l5_uid339_vecTranslateTest_q <= "1001011111";
            WHEN "001011" => table_l5_uid339_vecTranslateTest_q <= "1001110100";
            WHEN "001100" => table_l5_uid339_vecTranslateTest_q <= "1011111101";
            WHEN "001101" => table_l5_uid339_vecTranslateTest_q <= "1100010011";
            WHEN "001110" => table_l5_uid339_vecTranslateTest_q <= "1110100111";
            WHEN "001111" => table_l5_uid339_vecTranslateTest_q <= "1110111101";
            WHEN "010000" => table_l5_uid339_vecTranslateTest_q <= "1001011111";
            WHEN "010001" => table_l5_uid339_vecTranslateTest_q <= "1001110100";
            WHEN "010010" => table_l5_uid339_vecTranslateTest_q <= "1100001001";
            WHEN "010011" => table_l5_uid339_vecTranslateTest_q <= "1100011110";
            WHEN "010100" => table_l5_uid339_vecTranslateTest_q <= "1110100111";
            WHEN "010101" => table_l5_uid339_vecTranslateTest_q <= "1110111101";
            WHEN "010110" => table_l5_uid339_vecTranslateTest_q <= "0001010001";
            WHEN "010111" => table_l5_uid339_vecTranslateTest_q <= "0001100111";
            WHEN "011000" => table_l5_uid339_vecTranslateTest_q <= "1110000001";
            WHEN "011001" => table_l5_uid339_vecTranslateTest_q <= "1110010110";
            WHEN "011010" => table_l5_uid339_vecTranslateTest_q <= "0000101011";
            WHEN "011011" => table_l5_uid339_vecTranslateTest_q <= "0001000001";
            WHEN "011100" => table_l5_uid339_vecTranslateTest_q <= "0011001010";
            WHEN "011101" => table_l5_uid339_vecTranslateTest_q <= "0011011111";
            WHEN "011110" => table_l5_uid339_vecTranslateTest_q <= "0101110100";
            WHEN "011111" => table_l5_uid339_vecTranslateTest_q <= "0110001001";
            WHEN "100000" => table_l5_uid339_vecTranslateTest_q <= "1010010111";
            WHEN "100001" => table_l5_uid339_vecTranslateTest_q <= "1010101100";
            WHEN "100010" => table_l5_uid339_vecTranslateTest_q <= "1101000001";
            WHEN "100011" => table_l5_uid339_vecTranslateTest_q <= "1101010110";
            WHEN "100100" => table_l5_uid339_vecTranslateTest_q <= "1111011111";
            WHEN "100101" => table_l5_uid339_vecTranslateTest_q <= "1111110101";
            WHEN "100110" => table_l5_uid339_vecTranslateTest_q <= "0010001010";
            WHEN "100111" => table_l5_uid339_vecTranslateTest_q <= "0010011111";
            WHEN "101000" => table_l5_uid339_vecTranslateTest_q <= "1110111001";
            WHEN "101001" => table_l5_uid339_vecTranslateTest_q <= "1111001111";
            WHEN "101010" => table_l5_uid339_vecTranslateTest_q <= "0001100011";
            WHEN "101011" => table_l5_uid339_vecTranslateTest_q <= "0001111001";
            WHEN "101100" => table_l5_uid339_vecTranslateTest_q <= "0100000010";
            WHEN "101101" => table_l5_uid339_vecTranslateTest_q <= "0100010111";
            WHEN "101110" => table_l5_uid339_vecTranslateTest_q <= "0110101100";
            WHEN "101111" => table_l5_uid339_vecTranslateTest_q <= "0111000001";
            WHEN "110000" => table_l5_uid339_vecTranslateTest_q <= "0001100011";
            WHEN "110001" => table_l5_uid339_vecTranslateTest_q <= "0001111001";
            WHEN "110010" => table_l5_uid339_vecTranslateTest_q <= "0100001101";
            WHEN "110011" => table_l5_uid339_vecTranslateTest_q <= "0100100011";
            WHEN "110100" => table_l5_uid339_vecTranslateTest_q <= "0110101100";
            WHEN "110101" => table_l5_uid339_vecTranslateTest_q <= "0111000001";
            WHEN "110110" => table_l5_uid339_vecTranslateTest_q <= "1001010110";
            WHEN "110111" => table_l5_uid339_vecTranslateTest_q <= "1001101011";
            WHEN "111000" => table_l5_uid339_vecTranslateTest_q <= "0110000110";
            WHEN "111001" => table_l5_uid339_vecTranslateTest_q <= "0110011011";
            WHEN "111010" => table_l5_uid339_vecTranslateTest_q <= "1000110000";
            WHEN "111011" => table_l5_uid339_vecTranslateTest_q <= "1001000101";
            WHEN "111100" => table_l5_uid339_vecTranslateTest_q <= "1011001110";
            WHEN "111101" => table_l5_uid339_vecTranslateTest_q <= "1011100100";
            WHEN "111110" => table_l5_uid339_vecTranslateTest_q <= "1101111001";
            WHEN "111111" => table_l5_uid339_vecTranslateTest_q <= "1110001110";
            WHEN OTHERS => -- unreachable
                           table_l5_uid339_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid342_vecTranslateTest(BITJOIN,341)@9
    os_uid342_vecTranslateTest_q <= table_l5_uid341_vecTranslateTest_q & table_l5_uid340_vecTranslateTest_q & table_l5_uid339_vecTranslateTest_q;

    -- lev1_a0_uid353_vecTranslateTest(ADD,352)@9
    lev1_a0_uid353_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => os_uid342_vecTranslateTest_q(21)) & os_uid342_vecTranslateTest_q));
    lev1_a0_uid353_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 16 => os_uid347_vecTranslateTest_q(15)) & os_uid347_vecTranslateTest_q));
    lev1_a0_uid353_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0_uid353_vecTranslateTest_a) + SIGNED(lev1_a0_uid353_vecTranslateTest_b));
    lev1_a0_uid353_vecTranslateTest_q <= lev1_a0_uid353_vecTranslateTest_o(22 downto 0);

    -- lev2_a0_uid354_vecTranslateTest(ADD,353)@9
    lev2_a0_uid354_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => lev1_a0_uid353_vecTranslateTest_q(22)) & lev1_a0_uid353_vecTranslateTest_q));
    lev2_a0_uid354_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 10 => table_l17_uid350_vecTranslateTest_q(9)) & table_l17_uid350_vecTranslateTest_q));
    lev2_a0_uid354_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid354_vecTranslateTest_a) + SIGNED(lev2_a0_uid354_vecTranslateTest_b));
    lev2_a0_uid354_vecTranslateTest_q <= lev2_a0_uid354_vecTranslateTest_o(23 downto 0);

    -- atanRes_uid355_vecTranslateTest(BITSELECT,354)@9
    atanRes_uid355_vecTranslateTest_in <= lev2_a0_uid354_vecTranslateTest_q(21 downto 0);
    atanRes_uid355_vecTranslateTest_b <= atanRes_uid355_vecTranslateTest_in(21 downto 3);

    -- redist3(DELAY,383)
    redist3 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => atanRes_uid355_vecTranslateTest_b, xout => redist3_q, clk => clk, aclr => areset );

    -- xNotZero_uid17_vecTranslateTest(LOGICAL,16)@0
    xNotZero_uid17_vecTranslateTest_a <= STD_LOGIC_VECTOR(x);
    xNotZero_uid17_vecTranslateTest_q <= "1" WHEN xNotZero_uid17_vecTranslateTest_a /= "000000000000" ELSE "0";

    -- xZero_uid18_vecTranslateTest(LOGICAL,17)@0
    xZero_uid18_vecTranslateTest_a <= xNotZero_uid17_vecTranslateTest_q;
    xZero_uid18_vecTranslateTest_q <= not (xZero_uid18_vecTranslateTest_a);

    -- yNotZero_uid15_vecTranslateTest(LOGICAL,14)@0
    yNotZero_uid15_vecTranslateTest_a <= STD_LOGIC_VECTOR(y);
    yNotZero_uid15_vecTranslateTest_q <= "1" WHEN yNotZero_uid15_vecTranslateTest_a /= "000000000000" ELSE "0";

    -- yZero_uid16_vecTranslateTest(LOGICAL,15)@0
    yZero_uid16_vecTranslateTest_a <= yNotZero_uid15_vecTranslateTest_q;
    yZero_uid16_vecTranslateTest_q <= not (yZero_uid16_vecTranslateTest_a);

    -- concXZeroYZero_uid362_vecTranslateTest(BITJOIN,361)@0
    concXZeroYZero_uid362_vecTranslateTest_q <= xZero_uid18_vecTranslateTest_q & yZero_uid16_vecTranslateTest_q;

    -- redist2(DELAY,382)
    redist2 : dspba_delay
    GENERIC MAP ( width => 2, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => concXZeroYZero_uid362_vecTranslateTest_q, xout => redist2_q, clk => clk, aclr => areset );

    -- atanResPostExc_uid363_vecTranslateTest(MUX,362)@10
    atanResPostExc_uid363_vecTranslateTest_s <= redist2_q;
    atanResPostExc_uid363_vecTranslateTest_combproc: PROCESS (atanResPostExc_uid363_vecTranslateTest_s, redist3_q, cstZeroOutFormat_uid356_vecTranslateTest_q, constPio2P2u_mergedSignalTM_uid360_vecTranslateTest_q)
    BEGIN
        CASE (atanResPostExc_uid363_vecTranslateTest_s) IS
            WHEN "00" => atanResPostExc_uid363_vecTranslateTest_q <= redist3_q;
            WHEN "01" => atanResPostExc_uid363_vecTranslateTest_q <= cstZeroOutFormat_uid356_vecTranslateTest_q;
            WHEN "10" => atanResPostExc_uid363_vecTranslateTest_q <= constPio2P2u_mergedSignalTM_uid360_vecTranslateTest_q;
            WHEN "11" => atanResPostExc_uid363_vecTranslateTest_q <= cstZeroOutFormat_uid356_vecTranslateTest_q;
            WHEN OTHERS => atanResPostExc_uid363_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constantZeroOutFormat_uid367_vecTranslateTest(CONSTANT,366)
    constantZeroOutFormat_uid367_vecTranslateTest_q <= "0000000000000000000";

    -- concSigns_uid364_vecTranslateTest(BITJOIN,363)@0
    concSigns_uid364_vecTranslateTest_q <= signX_uid7_vecTranslateTest_b & signY_uid8_vecTranslateTest_b;

    -- redist1(DELAY,381)
    redist1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => concSigns_uid364_vecTranslateTest_q, xout => redist1_q, clk => clk, aclr => areset );

    -- secondOperand_uid371_vecTranslateTest(MUX,370)@10
    secondOperand_uid371_vecTranslateTest_s <= redist1_q;
    secondOperand_uid371_vecTranslateTest_combproc: PROCESS (secondOperand_uid371_vecTranslateTest_s, constantZeroOutFormat_uid367_vecTranslateTest_q, atanResPostExc_uid363_vecTranslateTest_q, constPi_uid366_vecTranslateTest_q)
    BEGIN
        CASE (secondOperand_uid371_vecTranslateTest_s) IS
            WHEN "00" => secondOperand_uid371_vecTranslateTest_q <= constantZeroOutFormat_uid367_vecTranslateTest_q;
            WHEN "01" => secondOperand_uid371_vecTranslateTest_q <= atanResPostExc_uid363_vecTranslateTest_q;
            WHEN "10" => secondOperand_uid371_vecTranslateTest_q <= atanResPostExc_uid363_vecTranslateTest_q;
            WHEN "11" => secondOperand_uid371_vecTranslateTest_q <= constPi_uid366_vecTranslateTest_q;
            WHEN OTHERS => secondOperand_uid371_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constPiP2u_uid365_vecTranslateTest(CONSTANT,364)
    constPiP2u_uid365_vecTranslateTest_q <= "1100100100010000010";

    -- constantZeroOutFormatP2u_uid368_vecTranslateTest(CONSTANT,367)
    constantZeroOutFormatP2u_uid368_vecTranslateTest_q <= "0000000000000000100";

    -- firstOperand_uid370_vecTranslateTest(MUX,369)@10
    firstOperand_uid370_vecTranslateTest_s <= redist1_q;
    firstOperand_uid370_vecTranslateTest_combproc: PROCESS (firstOperand_uid370_vecTranslateTest_s, atanResPostExc_uid363_vecTranslateTest_q, constantZeroOutFormatP2u_uid368_vecTranslateTest_q, constPiP2u_uid365_vecTranslateTest_q)
    BEGIN
        CASE (firstOperand_uid370_vecTranslateTest_s) IS
            WHEN "00" => firstOperand_uid370_vecTranslateTest_q <= atanResPostExc_uid363_vecTranslateTest_q;
            WHEN "01" => firstOperand_uid370_vecTranslateTest_q <= constantZeroOutFormatP2u_uid368_vecTranslateTest_q;
            WHEN "10" => firstOperand_uid370_vecTranslateTest_q <= constPiP2u_uid365_vecTranslateTest_q;
            WHEN "11" => firstOperand_uid370_vecTranslateTest_q <= atanResPostExc_uid363_vecTranslateTest_q;
            WHEN OTHERS => firstOperand_uid370_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outResExtended_uid372_vecTranslateTest(SUB,371)@10
    outResExtended_uid372_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & firstOperand_uid370_vecTranslateTest_q);
    outResExtended_uid372_vecTranslateTest_b <= STD_LOGIC_VECTOR("0" & secondOperand_uid371_vecTranslateTest_q);
    outResExtended_uid372_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(outResExtended_uid372_vecTranslateTest_a) - UNSIGNED(outResExtended_uid372_vecTranslateTest_b));
    outResExtended_uid372_vecTranslateTest_q <= outResExtended_uid372_vecTranslateTest_o(19 downto 0);

    -- atanResPostRR_uid373_vecTranslateTest(BITSELECT,372)@10
    atanResPostRR_uid373_vecTranslateTest_in <= STD_LOGIC_VECTOR(outResExtended_uid372_vecTranslateTest_q);
    atanResPostRR_uid373_vecTranslateTest_b <= STD_LOGIC_VECTOR(atanResPostRR_uid373_vecTranslateTest_in(19 downto 2));

    -- xOut(GPOUT,4)@10
    q <= atanResPostRR_uid373_vecTranslateTest_b;
    r <= redist0_q;

END normal;
