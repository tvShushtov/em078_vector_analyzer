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

-- VHDL created from ATAN2_CORDIC_0
-- VHDL created on Sat Apr 28 12:57:49 2018


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

entity ATAN2_CORDIC_0 is
    port (
        x : in std_logic_vector(11 downto 0);  -- sfix12
        y : in std_logic_vector(11 downto 0);  -- sfix12
        q : out std_logic_vector(17 downto 0);  -- sfix18_en15
        clk : in std_logic;
        areset : in std_logic
    );
end ATAN2_CORDIC_0;

architecture normal of ATAN2_CORDIC_0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal constantZero_uid6_atan2Test_q : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1E_1_uid23_atan2Test_a : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid23_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid23_atan2Test_o : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid23_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_atan2Test_a : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_atan2Test_o : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_3CostZeroPaddingA_uid57_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xip1E_4CostZeroPaddingA_uid76_atan2Test_q : STD_LOGIC_VECTOR (2 downto 0);
    signal xip1E_5CostZeroPaddingA_uid95_atan2Test_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xip1E_6CostZeroPaddingA_uid114_atan2Test_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xip1E_7CostZeroPaddingA_uid133_atan2Test_q : STD_LOGIC_VECTOR (5 downto 0);
    signal cstZeroOutFormat_uid356_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constPiP2uE_uid357_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal constPiP2u_uid365_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constPi_uid366_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constantZeroOutFormat_uid367_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constantZeroOutFormatP2u_uid368_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist0_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist7_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist11_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist15_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist19_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist23_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist27_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist28_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist31_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concSignVector_uid337_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_2NA_uid39_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_2NA_uid42_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal constPio2P2u_mergedSignalTM_uid360_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yNotZero_uid15_atan2Test_a : STD_LOGIC_VECTOR (11 downto 0);
    signal yNotZero_uid15_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_atan2Test_a : STD_LOGIC_VECTOR (11 downto 0);
    signal xNotZero_uid17_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal atanResPostExc_uid363_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid363_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal firstOperand_uid370_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal firstOperand_uid370_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal secondOperand_uid371_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal secondOperand_uid371_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal outResExtended_uid372_atan2Test_a : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid372_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid372_atan2Test_o : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid372_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal signX_uid7_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal signX_uid7_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid8_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal signY_uid8_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xMSB_uid32_atan2Test_in : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid32_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4NA_uid77_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_4NA_uid80_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_8NA_uid155_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1E_8NA_uid158_atan2Test_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_6NA_uid115_atan2Test_q : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6NA_uid118_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid286_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid286_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid291_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal twoToMiSiYip_uid291_atan2Test_b : STD_LOGIC_VECTOR (8 downto 0);
    signal twoToMiSiXip_uid290_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid290_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid252_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid252_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid257_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiYip_uid257_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal twoToMiSiXip_uid256_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid256_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid218_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid218_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid223_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal twoToMiSiYip_uid223_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal twoToMiSiXip_uid222_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid222_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid184_atan2Test_in : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid184_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid189_atan2Test_in : STD_LOGIC_VECTOR (29 downto 0);
    signal twoToMiSiYip_uid189_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal twoToMiSiXip_uid188_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid188_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid146_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid146_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid151_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid151_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiXip_uid150_atan2Test_in : STD_LOGIC_VECTOR (33 downto 0);
    signal twoToMiSiXip_uid150_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid108_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal xMSB_uid108_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid119_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid70_atan2Test_in : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid70_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_a : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_o : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal is0_uid338_atan2Test_in : STD_LOGIC_VECTOR (17 downto 0);
    signal is0_uid338_atan2Test_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is1_uid344_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal is1_uid344_atan2Test_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is2_uid349_atan2Test_in : STD_LOGIC_VECTOR (5 downto 0);
    signal is2_uid349_atan2Test_b : STD_LOGIC_VECTOR (5 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_a : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_o : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_q : STD_LOGIC_VECTOR (14 downto 0);
    signal concXZeroYZero_uid362_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostRR_uid373_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal atanResPostRR_uid373_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal invSignX_uid9_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid9_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concSigns_uid364_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invSignY_uid11_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignY_uid11_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid37_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid37_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_a : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_b : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_o : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_q : STD_LOGIC_VECTOR (32 downto 0);
    signal invSignOfSelectionSignal_uid293_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid293_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid295_atan2Test_a : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_16_uid295_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_16_uid295_atan2Test_o : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_16_uid295_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid295_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_16_uid294_atan2Test_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_16_uid294_atan2Test_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_16_uid294_atan2Test_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_16_uid294_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_16_uid294_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid259_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid259_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid261_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_14_uid261_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_14_uid261_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_14_uid261_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid261_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_14_uid260_atan2Test_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_14_uid260_atan2Test_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_14_uid260_atan2Test_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_14_uid260_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid260_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid225_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid225_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid227_atan2Test_a : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_12_uid227_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_12_uid227_atan2Test_o : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_12_uid227_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid227_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_12_uid226_atan2Test_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_12_uid226_atan2Test_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_12_uid226_atan2Test_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_12_uid226_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid226_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid191_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid191_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid193_atan2Test_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_10_uid193_atan2Test_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_10_uid193_atan2Test_o : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_10_uid193_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid193_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_10_uid192_atan2Test_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_10_uid192_atan2Test_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_10_uid192_atan2Test_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_10_uid192_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid192_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid153_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid153_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid113_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid113_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_6_uid125_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_6_uid125_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal invSignOfSelectionSignal_uid75_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid75_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_4_uid87_atan2Test_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_4_uid87_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal table_l5_uid339_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid340_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid341_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal table_l11_uid345_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l11_uid346_atan2Test_q : STD_LOGIC_VECTOR (5 downto 0);
    signal table_l17_uid350_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal yip1_2_uid49_atan2Test_in : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1_2_uid49_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal absXE_uid10_atan2Test_a : STD_LOGIC_VECTOR (13 downto 0);
    signal absXE_uid10_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal absXE_uid10_atan2Test_o : STD_LOGIC_VECTOR (13 downto 0);
    signal absXE_uid10_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absXE_uid10_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal absYE_uid12_atan2Test_a : STD_LOGIC_VECTOR (13 downto 0);
    signal absYE_uid12_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal absYE_uid12_atan2Test_o : STD_LOGIC_VECTOR (13 downto 0);
    signal absYE_uid12_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absYE_uid12_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_a : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_o : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1_8_uid165_atan2Test_in : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1_8_uid165_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1_16_uid301_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_16_uid301_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_16_uid300_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_16_uid300_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_14_uid267_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_14_uid267_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_14_uid266_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_14_uid266_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_12_uid233_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_12_uid233_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_12_uid232_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_12_uid232_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_10_uid199_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1_10_uid199_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_10_uid198_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_10_uid198_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_8_uid164_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_8_uid164_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_a : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_o : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid127_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid127_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7NA_uid137_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_a : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_o : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_q : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid89_atan2Test_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xMSB_uid89_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5NA_uid99_atan2Test_q : STD_LOGIC_VECTOR (20 downto 0);
    signal os_uid342_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal os_uid347_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid51_atan2Test_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid51_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3NA_uid61_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal absX_uid13_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal absX_uid13_atan2Test_b : STD_LOGIC_VECTOR (11 downto 0);
    signal absY_uid14_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal absY_uid14_atan2Test_b : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1_2_uid48_atan2Test_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1_2_uid48_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid167_atan2Test_in : STD_LOGIC_VECTOR (30 downto 0);
    signal xMSB_uid167_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid172_atan2Test_in : STD_LOGIC_VECTOR (30 downto 0);
    signal twoToMiSiYip_uid172_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid303_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid303_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid307_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid307_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid269_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid269_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid274_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiYip_uid274_atan2Test_b : STD_LOGIC_VECTOR (10 downto 0);
    signal twoToMiSiXip_uid273_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid273_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid235_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid235_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid240_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiYip_uid240_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal twoToMiSiXip_uid239_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid239_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid201_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid201_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid206_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid206_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal twoToMiSiXip_uid205_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid205_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiXip_uid171_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal twoToMiSiXip_uid171_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_6_uid124_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_6_uid124_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal invSignOfSelectionSignal_uid132_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid132_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_o : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1_4_uid86_atan2Test_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_4_uid86_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal invSignOfSelectionSignal_uid94_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid94_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_a : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_o : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal lev1_a0_uid353_atan2Test_a : STD_LOGIC_VECTOR (22 downto 0);
    signal lev1_a0_uid353_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal lev1_a0_uid353_atan2Test_o : STD_LOGIC_VECTOR (22 downto 0);
    signal lev1_a0_uid353_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal invSignOfSelectionSignal_uid56_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid56_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_a : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_o : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_3NA_uid58_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal invSignOfSelectionSignal_uid174_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid174_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid176_atan2Test_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_9_uid176_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_9_uid176_atan2Test_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_9_uid176_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid176_atan2Test_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_9_uid175_atan2Test_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_9_uid175_atan2Test_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_9_uid175_atan2Test_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_9_uid175_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid175_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal yip1E_17_uid312_atan2Test_a : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_17_uid312_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_17_uid312_atan2Test_o : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_17_uid312_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_17_uid312_atan2Test_q : STD_LOGIC_VECTOR (23 downto 0);
    signal invSignOfSelectionSignal_uid276_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid276_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid278_atan2Test_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_15_uid278_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_15_uid278_atan2Test_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_15_uid278_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid278_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_15_uid277_atan2Test_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_15_uid277_atan2Test_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_15_uid277_atan2Test_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_15_uid277_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_15_uid277_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid242_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid242_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid244_atan2Test_a : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_13_uid244_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_13_uid244_atan2Test_o : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_13_uid244_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid244_atan2Test_q : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_13_uid243_atan2Test_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_13_uid243_atan2Test_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_13_uid243_atan2Test_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_13_uid243_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid243_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid208_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid208_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid210_atan2Test_a : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_11_uid210_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_11_uid210_atan2Test_o : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_11_uid210_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid210_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_11_uid209_atan2Test_a : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_11_uid209_atan2Test_b : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_11_uid209_atan2Test_o : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_11_uid209_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid209_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal xip1E_7NA_uid134_atan2Test_q : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_a : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_o : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_q : STD_LOGIC_VECTOR (35 downto 0);
    signal yip1_7_uid144_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1_7_uid144_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_5NA_uid96_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_a : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_o : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_5_uid106_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1_5_uid106_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal lev2_a0_uid354_atan2Test_a : STD_LOGIC_VECTOR (23 downto 0);
    signal lev2_a0_uid354_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal lev2_a0_uid354_atan2Test_o : STD_LOGIC_VECTOR (23 downto 0);
    signal lev2_a0_uid354_atan2Test_q : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_a : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_o : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_3_uid68_atan2Test_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_3_uid68_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_9_uid182_atan2Test_in : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1_9_uid182_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1_9_uid181_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_9_uid181_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_17_uid318_atan2Test_in : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1_17_uid318_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1_15_uid284_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_15_uid284_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1_15_uid283_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_15_uid283_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_13_uid250_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_13_uid250_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1_13_uid249_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_13_uid249_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_11_uid216_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1_11_uid216_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_11_uid215_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_11_uid215_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_7_uid143_atan2Test_in : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1_7_uid143_atan2Test_b : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1_5_uid105_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_5_uid105_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal atanRes_uid355_atan2Test_in : STD_LOGIC_VECTOR (21 downto 0);
    signal atanRes_uid355_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_3_uid67_atan2Test_in : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1_3_uid67_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid320_atan2Test_in : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid320_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- constPi_uid366_atan2Test(CONSTANT,365)
    constPi_uid366_atan2Test_q <= "1100100100001111111";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- constPiP2uE_uid357_atan2Test(CONSTANT,356)
    constPiP2uE_uid357_atan2Test_q <= "110010010001000001";

    -- constPio2P2u_mergedSignalTM_uid360_atan2Test(BITJOIN,359)@10
    constPio2P2u_mergedSignalTM_uid360_atan2Test_q <= GND_q & constPiP2uE_uid357_atan2Test_q;

    -- cstZeroOutFormat_uid356_atan2Test(CONSTANT,355)
    cstZeroOutFormat_uid356_atan2Test_q <= "0000000000000000010";

    -- signX_uid7_atan2Test(BITSELECT,6)@0
    signX_uid7_atan2Test_in <= STD_LOGIC_VECTOR(x);
    signX_uid7_atan2Test_b <= STD_LOGIC_VECTOR(signX_uid7_atan2Test_in(11 downto 11));

    -- invSignX_uid9_atan2Test(LOGICAL,8)@0
    invSignX_uid9_atan2Test_a <= signX_uid7_atan2Test_b;
    invSignX_uid9_atan2Test_q <= not (invSignX_uid9_atan2Test_a);

    -- xIn(GPIN,3)@0

    -- constantZero_uid6_atan2Test(CONSTANT,5)
    constantZero_uid6_atan2Test_q <= "000000000000";

    -- absXE_uid10_atan2Test(ADDSUB,9)@0
    absXE_uid10_atan2Test_s <= invSignX_uid9_atan2Test_q;
    absXE_uid10_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => constantZero_uid6_atan2Test_q(11)) & constantZero_uid6_atan2Test_q));
    absXE_uid10_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => x(11)) & x));
    absXE_uid10_atan2Test_combproc: PROCESS (absXE_uid10_atan2Test_a, absXE_uid10_atan2Test_b, absXE_uid10_atan2Test_s)
    BEGIN
        IF (absXE_uid10_atan2Test_s = "1") THEN
            absXE_uid10_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_atan2Test_a) + SIGNED(absXE_uid10_atan2Test_b));
        ELSE
            absXE_uid10_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_atan2Test_a) - SIGNED(absXE_uid10_atan2Test_b));
        END IF;
    END PROCESS;
    absXE_uid10_atan2Test_q <= absXE_uid10_atan2Test_o(12 downto 0);

    -- absX_uid13_atan2Test(BITSELECT,12)@0
    absX_uid13_atan2Test_in <= absXE_uid10_atan2Test_q(11 downto 0);
    absX_uid13_atan2Test_b <= absX_uid13_atan2Test_in(11 downto 0);

    -- signY_uid8_atan2Test(BITSELECT,7)@0
    signY_uid8_atan2Test_in <= STD_LOGIC_VECTOR(y);
    signY_uid8_atan2Test_b <= STD_LOGIC_VECTOR(signY_uid8_atan2Test_in(11 downto 11));

    -- invSignY_uid11_atan2Test(LOGICAL,10)@0
    invSignY_uid11_atan2Test_a <= signY_uid8_atan2Test_b;
    invSignY_uid11_atan2Test_q <= not (invSignY_uid11_atan2Test_a);

    -- absYE_uid12_atan2Test(ADDSUB,11)@0
    absYE_uid12_atan2Test_s <= invSignY_uid11_atan2Test_q;
    absYE_uid12_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => constantZero_uid6_atan2Test_q(11)) & constantZero_uid6_atan2Test_q));
    absYE_uid12_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => y(11)) & y));
    absYE_uid12_atan2Test_combproc: PROCESS (absYE_uid12_atan2Test_a, absYE_uid12_atan2Test_b, absYE_uid12_atan2Test_s)
    BEGIN
        IF (absYE_uid12_atan2Test_s = "1") THEN
            absYE_uid12_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_atan2Test_a) + SIGNED(absYE_uid12_atan2Test_b));
        ELSE
            absYE_uid12_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_atan2Test_a) - SIGNED(absYE_uid12_atan2Test_b));
        END IF;
    END PROCESS;
    absYE_uid12_atan2Test_q <= absYE_uid12_atan2Test_o(12 downto 0);

    -- absY_uid14_atan2Test(BITSELECT,13)@0
    absY_uid14_atan2Test_in <= absYE_uid12_atan2Test_q(11 downto 0);
    absY_uid14_atan2Test_b <= absY_uid14_atan2Test_in(11 downto 0);

    -- yip1E_1_uid24_atan2Test(SUB,23)@0 + 1
    yip1E_1_uid24_atan2Test_a <= STD_LOGIC_VECTOR("0" & absY_uid14_atan2Test_b);
    yip1E_1_uid24_atan2Test_b <= STD_LOGIC_VECTOR("0" & absX_uid13_atan2Test_b);
    yip1E_1_uid24_atan2Test_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            yip1E_1_uid24_atan2Test_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            yip1E_1_uid24_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1_uid24_atan2Test_a) - UNSIGNED(yip1E_1_uid24_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_1_uid24_atan2Test_q <= yip1E_1_uid24_atan2Test_o(12 downto 0);

    -- xMSB_uid32_atan2Test(BITSELECT,31)@1
    xMSB_uid32_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_1_uid24_atan2Test_q);
    xMSB_uid32_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid32_atan2Test_in(12 downto 12));

    -- redist33(DELAY,407)
    redist33 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid32_atan2Test_b, xout => redist33_q, clk => clk, aclr => areset );

    -- xip1E_1_uid23_atan2Test(ADD,22)@0 + 1
    xip1E_1_uid23_atan2Test_a <= STD_LOGIC_VECTOR("0" & absX_uid13_atan2Test_b);
    xip1E_1_uid23_atan2Test_b <= STD_LOGIC_VECTOR("0" & absY_uid14_atan2Test_b);
    xip1E_1_uid23_atan2Test_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            xip1E_1_uid23_atan2Test_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            xip1E_1_uid23_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(xip1E_1_uid23_atan2Test_a) + UNSIGNED(xip1E_1_uid23_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_1_uid23_atan2Test_q <= xip1E_1_uid23_atan2Test_o(12 downto 0);

    -- yip1E_2NA_uid42_atan2Test(BITJOIN,41)@1
    yip1E_2NA_uid42_atan2Test_q <= yip1E_1_uid24_atan2Test_q & GND_q;

    -- yip1E_2sumAHighB_uid43_atan2Test(ADDSUB,42)@1
    yip1E_2sumAHighB_uid43_atan2Test_s <= xMSB_uid32_atan2Test_b;
    yip1E_2sumAHighB_uid43_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => yip1E_2NA_uid42_atan2Test_q(13)) & yip1E_2NA_uid42_atan2Test_q));
    yip1E_2sumAHighB_uid43_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_1_uid23_atan2Test_q));
    yip1E_2sumAHighB_uid43_atan2Test_combproc: PROCESS (yip1E_2sumAHighB_uid43_atan2Test_a, yip1E_2sumAHighB_uid43_atan2Test_b, yip1E_2sumAHighB_uid43_atan2Test_s)
    BEGIN
        IF (yip1E_2sumAHighB_uid43_atan2Test_s = "1") THEN
            yip1E_2sumAHighB_uid43_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_atan2Test_a) + SIGNED(yip1E_2sumAHighB_uid43_atan2Test_b));
        ELSE
            yip1E_2sumAHighB_uid43_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_atan2Test_a) - SIGNED(yip1E_2sumAHighB_uid43_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_2sumAHighB_uid43_atan2Test_q <= yip1E_2sumAHighB_uid43_atan2Test_o(14 downto 0);

    -- yip1_2_uid49_atan2Test(BITSELECT,48)@1
    yip1_2_uid49_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_2sumAHighB_uid43_atan2Test_q(13 downto 0));
    yip1_2_uid49_atan2Test_b <= STD_LOGIC_VECTOR(yip1_2_uid49_atan2Test_in(13 downto 0));

    -- xMSB_uid51_atan2Test(BITSELECT,50)@1
    xMSB_uid51_atan2Test_in <= STD_LOGIC_VECTOR(yip1_2_uid49_atan2Test_b);
    xMSB_uid51_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid51_atan2Test_in(13 downto 13));

    -- redist32(DELAY,406)
    redist32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid51_atan2Test_b, xout => redist32_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid37_atan2Test(LOGICAL,36)@1
    invSignOfSelectionSignal_uid37_atan2Test_a <= xMSB_uid32_atan2Test_b;
    invSignOfSelectionSignal_uid37_atan2Test_q <= not (invSignOfSelectionSignal_uid37_atan2Test_a);

    -- xip1E_2NA_uid39_atan2Test(BITJOIN,38)@1
    xip1E_2NA_uid39_atan2Test_q <= xip1E_1_uid23_atan2Test_q & GND_q;

    -- xip1E_2sumAHighB_uid40_atan2Test(ADDSUB,39)@1
    xip1E_2sumAHighB_uid40_atan2Test_s <= invSignOfSelectionSignal_uid37_atan2Test_q;
    xip1E_2sumAHighB_uid40_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_2NA_uid39_atan2Test_q));
    xip1E_2sumAHighB_uid40_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 13 => yip1E_1_uid24_atan2Test_q(12)) & yip1E_1_uid24_atan2Test_q));
    xip1E_2sumAHighB_uid40_atan2Test_combproc: PROCESS (xip1E_2sumAHighB_uid40_atan2Test_a, xip1E_2sumAHighB_uid40_atan2Test_b, xip1E_2sumAHighB_uid40_atan2Test_s)
    BEGIN
        IF (xip1E_2sumAHighB_uid40_atan2Test_s = "1") THEN
            xip1E_2sumAHighB_uid40_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_atan2Test_a) + SIGNED(xip1E_2sumAHighB_uid40_atan2Test_b));
        ELSE
            xip1E_2sumAHighB_uid40_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_atan2Test_a) - SIGNED(xip1E_2sumAHighB_uid40_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_2sumAHighB_uid40_atan2Test_q <= xip1E_2sumAHighB_uid40_atan2Test_o(15 downto 0);

    -- xip1_2_uid48_atan2Test(BITSELECT,47)@1
    xip1_2_uid48_atan2Test_in <= xip1E_2sumAHighB_uid40_atan2Test_q(13 downto 0);
    xip1_2_uid48_atan2Test_b <= xip1_2_uid48_atan2Test_in(13 downto 0);

    -- xip1E_3CostZeroPaddingA_uid57_atan2Test(CONSTANT,56)
    xip1E_3CostZeroPaddingA_uid57_atan2Test_q <= "00";

    -- yip1E_3NA_uid61_atan2Test(BITJOIN,60)@1
    yip1E_3NA_uid61_atan2Test_q <= yip1_2_uid49_atan2Test_b & xip1E_3CostZeroPaddingA_uid57_atan2Test_q;

    -- yip1E_3sumAHighB_uid62_atan2Test(ADDSUB,61)@1
    yip1E_3sumAHighB_uid62_atan2Test_s <= xMSB_uid51_atan2Test_b;
    yip1E_3sumAHighB_uid62_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => yip1E_3NA_uid61_atan2Test_q(15)) & yip1E_3NA_uid61_atan2Test_q));
    yip1E_3sumAHighB_uid62_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_2_uid48_atan2Test_b));
    yip1E_3sumAHighB_uid62_atan2Test_combproc: PROCESS (yip1E_3sumAHighB_uid62_atan2Test_a, yip1E_3sumAHighB_uid62_atan2Test_b, yip1E_3sumAHighB_uid62_atan2Test_s)
    BEGIN
        IF (yip1E_3sumAHighB_uid62_atan2Test_s = "1") THEN
            yip1E_3sumAHighB_uid62_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_atan2Test_a) + SIGNED(yip1E_3sumAHighB_uid62_atan2Test_b));
        ELSE
            yip1E_3sumAHighB_uid62_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_atan2Test_a) - SIGNED(yip1E_3sumAHighB_uid62_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_3sumAHighB_uid62_atan2Test_q <= yip1E_3sumAHighB_uid62_atan2Test_o(16 downto 0);

    -- yip1_3_uid68_atan2Test(BITSELECT,67)@1
    yip1_3_uid68_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_3sumAHighB_uid62_atan2Test_q(14 downto 0));
    yip1_3_uid68_atan2Test_b <= STD_LOGIC_VECTOR(yip1_3_uid68_atan2Test_in(14 downto 0));

    -- redist30(DELAY,404)
    redist30 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_3_uid68_atan2Test_b, xout => redist30_q, clk => clk, aclr => areset );

    -- xMSB_uid70_atan2Test(BITSELECT,69)@2
    xMSB_uid70_atan2Test_in <= STD_LOGIC_VECTOR(redist30_q);
    xMSB_uid70_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid70_atan2Test_in(14 downto 14));

    -- redist29(DELAY,403)
    redist29 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid70_atan2Test_b, xout => redist29_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid56_atan2Test(LOGICAL,55)@1
    invSignOfSelectionSignal_uid56_atan2Test_a <= xMSB_uid51_atan2Test_b;
    invSignOfSelectionSignal_uid56_atan2Test_q <= not (invSignOfSelectionSignal_uid56_atan2Test_a);

    -- xip1E_3NA_uid58_atan2Test(BITJOIN,57)@1
    xip1E_3NA_uid58_atan2Test_q <= xip1_2_uid48_atan2Test_b & xip1E_3CostZeroPaddingA_uid57_atan2Test_q;

    -- xip1E_3sumAHighB_uid59_atan2Test(ADDSUB,58)@1
    xip1E_3sumAHighB_uid59_atan2Test_s <= invSignOfSelectionSignal_uid56_atan2Test_q;
    xip1E_3sumAHighB_uid59_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_3NA_uid58_atan2Test_q));
    xip1E_3sumAHighB_uid59_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 14 => yip1_2_uid49_atan2Test_b(13)) & yip1_2_uid49_atan2Test_b));
    xip1E_3sumAHighB_uid59_atan2Test_combproc: PROCESS (xip1E_3sumAHighB_uid59_atan2Test_a, xip1E_3sumAHighB_uid59_atan2Test_b, xip1E_3sumAHighB_uid59_atan2Test_s)
    BEGIN
        IF (xip1E_3sumAHighB_uid59_atan2Test_s = "1") THEN
            xip1E_3sumAHighB_uid59_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_atan2Test_a) + SIGNED(xip1E_3sumAHighB_uid59_atan2Test_b));
        ELSE
            xip1E_3sumAHighB_uid59_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_atan2Test_a) - SIGNED(xip1E_3sumAHighB_uid59_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_3sumAHighB_uid59_atan2Test_q <= xip1E_3sumAHighB_uid59_atan2Test_o(17 downto 0);

    -- xip1_3_uid67_atan2Test(BITSELECT,66)@1
    xip1_3_uid67_atan2Test_in <= xip1E_3sumAHighB_uid59_atan2Test_q(15 downto 0);
    xip1_3_uid67_atan2Test_b <= xip1_3_uid67_atan2Test_in(15 downto 0);

    -- redist31(DELAY,405)
    redist31 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_3_uid67_atan2Test_b, xout => redist31_q, clk => clk, aclr => areset );

    -- xip1E_4CostZeroPaddingA_uid76_atan2Test(CONSTANT,75)
    xip1E_4CostZeroPaddingA_uid76_atan2Test_q <= "000";

    -- yip1E_4NA_uid80_atan2Test(BITJOIN,79)@2
    yip1E_4NA_uid80_atan2Test_q <= redist30_q & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- yip1E_4sumAHighB_uid81_atan2Test(ADDSUB,80)@2
    yip1E_4sumAHighB_uid81_atan2Test_s <= xMSB_uid70_atan2Test_b;
    yip1E_4sumAHighB_uid81_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => yip1E_4NA_uid80_atan2Test_q(17)) & yip1E_4NA_uid80_atan2Test_q));
    yip1E_4sumAHighB_uid81_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist31_q));
    yip1E_4sumAHighB_uid81_atan2Test_combproc: PROCESS (yip1E_4sumAHighB_uid81_atan2Test_a, yip1E_4sumAHighB_uid81_atan2Test_b, yip1E_4sumAHighB_uid81_atan2Test_s)
    BEGIN
        IF (yip1E_4sumAHighB_uid81_atan2Test_s = "1") THEN
            yip1E_4sumAHighB_uid81_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_atan2Test_a) + SIGNED(yip1E_4sumAHighB_uid81_atan2Test_b));
        ELSE
            yip1E_4sumAHighB_uid81_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_atan2Test_a) - SIGNED(yip1E_4sumAHighB_uid81_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_4sumAHighB_uid81_atan2Test_q <= yip1E_4sumAHighB_uid81_atan2Test_o(18 downto 0);

    -- yip1_4_uid87_atan2Test(BITSELECT,86)@2
    yip1_4_uid87_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_4sumAHighB_uid81_atan2Test_q(16 downto 0));
    yip1_4_uid87_atan2Test_b <= STD_LOGIC_VECTOR(yip1_4_uid87_atan2Test_in(16 downto 0));

    -- xMSB_uid89_atan2Test(BITSELECT,88)@2
    xMSB_uid89_atan2Test_in <= STD_LOGIC_VECTOR(yip1_4_uid87_atan2Test_b);
    xMSB_uid89_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid89_atan2Test_in(16 downto 16));

    -- redist28(DELAY,402)
    redist28 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid89_atan2Test_b, xout => redist28_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid75_atan2Test(LOGICAL,74)@2
    invSignOfSelectionSignal_uid75_atan2Test_a <= xMSB_uid70_atan2Test_b;
    invSignOfSelectionSignal_uid75_atan2Test_q <= not (invSignOfSelectionSignal_uid75_atan2Test_a);

    -- xip1E_4NA_uid77_atan2Test(BITJOIN,76)@2
    xip1E_4NA_uid77_atan2Test_q <= redist31_q & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- xip1E_4sumAHighB_uid78_atan2Test(ADDSUB,77)@2
    xip1E_4sumAHighB_uid78_atan2Test_s <= invSignOfSelectionSignal_uid75_atan2Test_q;
    xip1E_4sumAHighB_uid78_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_4NA_uid77_atan2Test_q));
    xip1E_4sumAHighB_uid78_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 15 => redist30_q(14)) & redist30_q));
    xip1E_4sumAHighB_uid78_atan2Test_combproc: PROCESS (xip1E_4sumAHighB_uid78_atan2Test_a, xip1E_4sumAHighB_uid78_atan2Test_b, xip1E_4sumAHighB_uid78_atan2Test_s)
    BEGIN
        IF (xip1E_4sumAHighB_uid78_atan2Test_s = "1") THEN
            xip1E_4sumAHighB_uid78_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_atan2Test_a) + SIGNED(xip1E_4sumAHighB_uid78_atan2Test_b));
        ELSE
            xip1E_4sumAHighB_uid78_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_atan2Test_a) - SIGNED(xip1E_4sumAHighB_uid78_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_4sumAHighB_uid78_atan2Test_q <= xip1E_4sumAHighB_uid78_atan2Test_o(20 downto 0);

    -- xip1_4_uid86_atan2Test(BITSELECT,85)@2
    xip1_4_uid86_atan2Test_in <= xip1E_4sumAHighB_uid78_atan2Test_q(18 downto 0);
    xip1_4_uid86_atan2Test_b <= xip1_4_uid86_atan2Test_in(18 downto 0);

    -- xip1E_5CostZeroPaddingA_uid95_atan2Test(CONSTANT,94)
    xip1E_5CostZeroPaddingA_uid95_atan2Test_q <= "0000";

    -- yip1E_5NA_uid99_atan2Test(BITJOIN,98)@2
    yip1E_5NA_uid99_atan2Test_q <= yip1_4_uid87_atan2Test_b & xip1E_5CostZeroPaddingA_uid95_atan2Test_q;

    -- yip1E_5sumAHighB_uid100_atan2Test(ADDSUB,99)@2
    yip1E_5sumAHighB_uid100_atan2Test_s <= xMSB_uid89_atan2Test_b;
    yip1E_5sumAHighB_uid100_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => yip1E_5NA_uid99_atan2Test_q(20)) & yip1E_5NA_uid99_atan2Test_q));
    yip1E_5sumAHighB_uid100_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_4_uid86_atan2Test_b));
    yip1E_5sumAHighB_uid100_atan2Test_combproc: PROCESS (yip1E_5sumAHighB_uid100_atan2Test_a, yip1E_5sumAHighB_uid100_atan2Test_b, yip1E_5sumAHighB_uid100_atan2Test_s)
    BEGIN
        IF (yip1E_5sumAHighB_uid100_atan2Test_s = "1") THEN
            yip1E_5sumAHighB_uid100_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_atan2Test_a) + SIGNED(yip1E_5sumAHighB_uid100_atan2Test_b));
        ELSE
            yip1E_5sumAHighB_uid100_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_atan2Test_a) - SIGNED(yip1E_5sumAHighB_uid100_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_5sumAHighB_uid100_atan2Test_q <= yip1E_5sumAHighB_uid100_atan2Test_o(21 downto 0);

    -- yip1_5_uid106_atan2Test(BITSELECT,105)@2
    yip1_5_uid106_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_5sumAHighB_uid100_atan2Test_q(19 downto 0));
    yip1_5_uid106_atan2Test_b <= STD_LOGIC_VECTOR(yip1_5_uid106_atan2Test_in(19 downto 0));

    -- redist26(DELAY,400)
    redist26 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_5_uid106_atan2Test_b, xout => redist26_q, clk => clk, aclr => areset );

    -- xMSB_uid108_atan2Test(BITSELECT,107)@3
    xMSB_uid108_atan2Test_in <= STD_LOGIC_VECTOR(redist26_q);
    xMSB_uid108_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid108_atan2Test_in(19 downto 19));

    -- redist25(DELAY,399)
    redist25 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid108_atan2Test_b, xout => redist25_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid94_atan2Test(LOGICAL,93)@2
    invSignOfSelectionSignal_uid94_atan2Test_a <= xMSB_uid89_atan2Test_b;
    invSignOfSelectionSignal_uid94_atan2Test_q <= not (invSignOfSelectionSignal_uid94_atan2Test_a);

    -- xip1E_5NA_uid96_atan2Test(BITJOIN,95)@2
    xip1E_5NA_uid96_atan2Test_q <= xip1_4_uid86_atan2Test_b & xip1E_5CostZeroPaddingA_uid95_atan2Test_q;

    -- xip1E_5sumAHighB_uid97_atan2Test(ADDSUB,96)@2
    xip1E_5sumAHighB_uid97_atan2Test_s <= invSignOfSelectionSignal_uid94_atan2Test_q;
    xip1E_5sumAHighB_uid97_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_5NA_uid96_atan2Test_q));
    xip1E_5sumAHighB_uid97_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 17 => yip1_4_uid87_atan2Test_b(16)) & yip1_4_uid87_atan2Test_b));
    xip1E_5sumAHighB_uid97_atan2Test_combproc: PROCESS (xip1E_5sumAHighB_uid97_atan2Test_a, xip1E_5sumAHighB_uid97_atan2Test_b, xip1E_5sumAHighB_uid97_atan2Test_s)
    BEGIN
        IF (xip1E_5sumAHighB_uid97_atan2Test_s = "1") THEN
            xip1E_5sumAHighB_uid97_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_atan2Test_a) + SIGNED(xip1E_5sumAHighB_uid97_atan2Test_b));
        ELSE
            xip1E_5sumAHighB_uid97_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_atan2Test_a) - SIGNED(xip1E_5sumAHighB_uid97_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_5sumAHighB_uid97_atan2Test_q <= xip1E_5sumAHighB_uid97_atan2Test_o(24 downto 0);

    -- xip1_5_uid105_atan2Test(BITSELECT,104)@2
    xip1_5_uid105_atan2Test_in <= xip1E_5sumAHighB_uid97_atan2Test_q(22 downto 0);
    xip1_5_uid105_atan2Test_b <= xip1_5_uid105_atan2Test_in(22 downto 0);

    -- redist27(DELAY,401)
    redist27 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_5_uid105_atan2Test_b, xout => redist27_q, clk => clk, aclr => areset );

    -- xip1E_6CostZeroPaddingA_uid114_atan2Test(CONSTANT,113)
    xip1E_6CostZeroPaddingA_uid114_atan2Test_q <= "00000";

    -- yip1E_6NA_uid118_atan2Test(BITJOIN,117)@3
    yip1E_6NA_uid118_atan2Test_q <= redist26_q & xip1E_6CostZeroPaddingA_uid114_atan2Test_q;

    -- yip1E_6sumAHighB_uid119_atan2Test(ADDSUB,118)@3
    yip1E_6sumAHighB_uid119_atan2Test_s <= xMSB_uid108_atan2Test_b;
    yip1E_6sumAHighB_uid119_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1E_6NA_uid118_atan2Test_q(24)) & yip1E_6NA_uid118_atan2Test_q));
    yip1E_6sumAHighB_uid119_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist27_q));
    yip1E_6sumAHighB_uid119_atan2Test_combproc: PROCESS (yip1E_6sumAHighB_uid119_atan2Test_a, yip1E_6sumAHighB_uid119_atan2Test_b, yip1E_6sumAHighB_uid119_atan2Test_s)
    BEGIN
        IF (yip1E_6sumAHighB_uid119_atan2Test_s = "1") THEN
            yip1E_6sumAHighB_uid119_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid119_atan2Test_a) + SIGNED(yip1E_6sumAHighB_uid119_atan2Test_b));
        ELSE
            yip1E_6sumAHighB_uid119_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid119_atan2Test_a) - SIGNED(yip1E_6sumAHighB_uid119_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_6sumAHighB_uid119_atan2Test_q <= yip1E_6sumAHighB_uid119_atan2Test_o(25 downto 0);

    -- yip1_6_uid125_atan2Test(BITSELECT,124)@3
    yip1_6_uid125_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_6sumAHighB_uid119_atan2Test_q(23 downto 0));
    yip1_6_uid125_atan2Test_b <= STD_LOGIC_VECTOR(yip1_6_uid125_atan2Test_in(23 downto 0));

    -- xMSB_uid127_atan2Test(BITSELECT,126)@3
    xMSB_uid127_atan2Test_in <= STD_LOGIC_VECTOR(yip1_6_uid125_atan2Test_b);
    xMSB_uid127_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid127_atan2Test_in(23 downto 23));

    -- redist24(DELAY,398)
    redist24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid127_atan2Test_b, xout => redist24_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid113_atan2Test(LOGICAL,112)@3
    invSignOfSelectionSignal_uid113_atan2Test_a <= xMSB_uid108_atan2Test_b;
    invSignOfSelectionSignal_uid113_atan2Test_q <= not (invSignOfSelectionSignal_uid113_atan2Test_a);

    -- xip1E_6NA_uid115_atan2Test(BITJOIN,114)@3
    xip1E_6NA_uid115_atan2Test_q <= redist27_q & xip1E_6CostZeroPaddingA_uid114_atan2Test_q;

    -- xip1E_6sumAHighB_uid116_atan2Test(ADDSUB,115)@3
    xip1E_6sumAHighB_uid116_atan2Test_s <= invSignOfSelectionSignal_uid113_atan2Test_q;
    xip1E_6sumAHighB_uid116_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_6NA_uid115_atan2Test_q));
    xip1E_6sumAHighB_uid116_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 20 => redist26_q(19)) & redist26_q));
    xip1E_6sumAHighB_uid116_atan2Test_combproc: PROCESS (xip1E_6sumAHighB_uid116_atan2Test_a, xip1E_6sumAHighB_uid116_atan2Test_b, xip1E_6sumAHighB_uid116_atan2Test_s)
    BEGIN
        IF (xip1E_6sumAHighB_uid116_atan2Test_s = "1") THEN
            xip1E_6sumAHighB_uid116_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid116_atan2Test_a) + SIGNED(xip1E_6sumAHighB_uid116_atan2Test_b));
        ELSE
            xip1E_6sumAHighB_uid116_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid116_atan2Test_a) - SIGNED(xip1E_6sumAHighB_uid116_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_6sumAHighB_uid116_atan2Test_q <= xip1E_6sumAHighB_uid116_atan2Test_o(29 downto 0);

    -- xip1_6_uid124_atan2Test(BITSELECT,123)@3
    xip1_6_uid124_atan2Test_in <= xip1E_6sumAHighB_uid116_atan2Test_q(27 downto 0);
    xip1_6_uid124_atan2Test_b <= xip1_6_uid124_atan2Test_in(27 downto 0);

    -- xip1E_7CostZeroPaddingA_uid133_atan2Test(CONSTANT,132)
    xip1E_7CostZeroPaddingA_uid133_atan2Test_q <= "000000";

    -- yip1E_7NA_uid137_atan2Test(BITJOIN,136)@3
    yip1E_7NA_uid137_atan2Test_q <= yip1_6_uid125_atan2Test_b & xip1E_7CostZeroPaddingA_uid133_atan2Test_q;

    -- yip1E_7sumAHighB_uid138_atan2Test(ADDSUB,137)@3
    yip1E_7sumAHighB_uid138_atan2Test_s <= xMSB_uid127_atan2Test_b;
    yip1E_7sumAHighB_uid138_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => yip1E_7NA_uid137_atan2Test_q(29)) & yip1E_7NA_uid137_atan2Test_q));
    yip1E_7sumAHighB_uid138_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_6_uid124_atan2Test_b));
    yip1E_7sumAHighB_uid138_atan2Test_combproc: PROCESS (yip1E_7sumAHighB_uid138_atan2Test_a, yip1E_7sumAHighB_uid138_atan2Test_b, yip1E_7sumAHighB_uid138_atan2Test_s)
    BEGIN
        IF (yip1E_7sumAHighB_uid138_atan2Test_s = "1") THEN
            yip1E_7sumAHighB_uid138_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid138_atan2Test_a) + SIGNED(yip1E_7sumAHighB_uid138_atan2Test_b));
        ELSE
            yip1E_7sumAHighB_uid138_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid138_atan2Test_a) - SIGNED(yip1E_7sumAHighB_uid138_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_7sumAHighB_uid138_atan2Test_q <= yip1E_7sumAHighB_uid138_atan2Test_o(30 downto 0);

    -- yip1_7_uid144_atan2Test(BITSELECT,143)@3
    yip1_7_uid144_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_7sumAHighB_uid138_atan2Test_q(28 downto 0));
    yip1_7_uid144_atan2Test_b <= STD_LOGIC_VECTOR(yip1_7_uid144_atan2Test_in(28 downto 0));

    -- redist22(DELAY,396)
    redist22 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_7_uid144_atan2Test_b, xout => redist22_q, clk => clk, aclr => areset );

    -- xMSB_uid146_atan2Test(BITSELECT,145)@4
    xMSB_uid146_atan2Test_in <= STD_LOGIC_VECTOR(redist22_q);
    xMSB_uid146_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid146_atan2Test_in(28 downto 28));

    -- redist21(DELAY,395)
    redist21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid146_atan2Test_b, xout => redist21_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid132_atan2Test(LOGICAL,131)@3
    invSignOfSelectionSignal_uid132_atan2Test_a <= xMSB_uid127_atan2Test_b;
    invSignOfSelectionSignal_uid132_atan2Test_q <= not (invSignOfSelectionSignal_uid132_atan2Test_a);

    -- xip1E_7NA_uid134_atan2Test(BITJOIN,133)@3
    xip1E_7NA_uid134_atan2Test_q <= xip1_6_uid124_atan2Test_b & xip1E_7CostZeroPaddingA_uid133_atan2Test_q;

    -- xip1E_7sumAHighB_uid135_atan2Test(ADDSUB,134)@3
    xip1E_7sumAHighB_uid135_atan2Test_s <= invSignOfSelectionSignal_uid132_atan2Test_q;
    xip1E_7sumAHighB_uid135_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_7NA_uid134_atan2Test_q));
    xip1E_7sumAHighB_uid135_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 24 => yip1_6_uid125_atan2Test_b(23)) & yip1_6_uid125_atan2Test_b));
    xip1E_7sumAHighB_uid135_atan2Test_combproc: PROCESS (xip1E_7sumAHighB_uid135_atan2Test_a, xip1E_7sumAHighB_uid135_atan2Test_b, xip1E_7sumAHighB_uid135_atan2Test_s)
    BEGIN
        IF (xip1E_7sumAHighB_uid135_atan2Test_s = "1") THEN
            xip1E_7sumAHighB_uid135_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid135_atan2Test_a) + SIGNED(xip1E_7sumAHighB_uid135_atan2Test_b));
        ELSE
            xip1E_7sumAHighB_uid135_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid135_atan2Test_a) - SIGNED(xip1E_7sumAHighB_uid135_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_7sumAHighB_uid135_atan2Test_q <= xip1E_7sumAHighB_uid135_atan2Test_o(35 downto 0);

    -- xip1_7_uid143_atan2Test(BITSELECT,142)@3
    xip1_7_uid143_atan2Test_in <= xip1E_7sumAHighB_uid135_atan2Test_q(33 downto 0);
    xip1_7_uid143_atan2Test_b <= xip1_7_uid143_atan2Test_in(33 downto 0);

    -- redist23(DELAY,397)
    redist23 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_7_uid143_atan2Test_b, xout => redist23_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid150_atan2Test(BITSELECT,149)@4
    twoToMiSiXip_uid150_atan2Test_in <= redist23_q;
    twoToMiSiXip_uid150_atan2Test_b <= twoToMiSiXip_uid150_atan2Test_in(33 downto 4);

    -- yip1E_8NA_uid158_atan2Test(BITJOIN,157)@4
    yip1E_8NA_uid158_atan2Test_q <= redist22_q & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- yip1E_8sumAHighB_uid159_atan2Test(ADDSUB,158)@4
    yip1E_8sumAHighB_uid159_atan2Test_s <= xMSB_uid146_atan2Test_b;
    yip1E_8sumAHighB_uid159_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => yip1E_8NA_uid158_atan2Test_q(31)) & yip1E_8NA_uid158_atan2Test_q));
    yip1E_8sumAHighB_uid159_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid150_atan2Test_b));
    yip1E_8sumAHighB_uid159_atan2Test_combproc: PROCESS (yip1E_8sumAHighB_uid159_atan2Test_a, yip1E_8sumAHighB_uid159_atan2Test_b, yip1E_8sumAHighB_uid159_atan2Test_s)
    BEGIN
        IF (yip1E_8sumAHighB_uid159_atan2Test_s = "1") THEN
            yip1E_8sumAHighB_uid159_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid159_atan2Test_a) + SIGNED(yip1E_8sumAHighB_uid159_atan2Test_b));
        ELSE
            yip1E_8sumAHighB_uid159_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid159_atan2Test_a) - SIGNED(yip1E_8sumAHighB_uid159_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_8sumAHighB_uid159_atan2Test_q <= yip1E_8sumAHighB_uid159_atan2Test_o(32 downto 0);

    -- yip1_8_uid165_atan2Test(BITSELECT,164)@4
    yip1_8_uid165_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_8sumAHighB_uid159_atan2Test_q(30 downto 0));
    yip1_8_uid165_atan2Test_b <= STD_LOGIC_VECTOR(yip1_8_uid165_atan2Test_in(30 downto 0));

    -- xMSB_uid167_atan2Test(BITSELECT,166)@4
    xMSB_uid167_atan2Test_in <= STD_LOGIC_VECTOR(yip1_8_uid165_atan2Test_b);
    xMSB_uid167_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid167_atan2Test_in(30 downto 30));

    -- redist20(DELAY,394)
    redist20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid167_atan2Test_b, xout => redist20_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid153_atan2Test(LOGICAL,152)@4
    invSignOfSelectionSignal_uid153_atan2Test_a <= xMSB_uid146_atan2Test_b;
    invSignOfSelectionSignal_uid153_atan2Test_q <= not (invSignOfSelectionSignal_uid153_atan2Test_a);

    -- twoToMiSiYip_uid151_atan2Test(BITSELECT,150)@4
    twoToMiSiYip_uid151_atan2Test_in <= STD_LOGIC_VECTOR(redist22_q);
    twoToMiSiYip_uid151_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid151_atan2Test_in(28 downto 4));

    -- xip1E_8NA_uid155_atan2Test(BITJOIN,154)@4
    xip1E_8NA_uid155_atan2Test_q <= redist23_q & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- xip1E_8sumAHighB_uid156_atan2Test(ADDSUB,155)@4
    xip1E_8sumAHighB_uid156_atan2Test_s <= invSignOfSelectionSignal_uid153_atan2Test_q;
    xip1E_8sumAHighB_uid156_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_8NA_uid155_atan2Test_q));
    xip1E_8sumAHighB_uid156_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 25 => twoToMiSiYip_uid151_atan2Test_b(24)) & twoToMiSiYip_uid151_atan2Test_b));
    xip1E_8sumAHighB_uid156_atan2Test_combproc: PROCESS (xip1E_8sumAHighB_uid156_atan2Test_a, xip1E_8sumAHighB_uid156_atan2Test_b, xip1E_8sumAHighB_uid156_atan2Test_s)
    BEGIN
        IF (xip1E_8sumAHighB_uid156_atan2Test_s = "1") THEN
            xip1E_8sumAHighB_uid156_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid156_atan2Test_a) + SIGNED(xip1E_8sumAHighB_uid156_atan2Test_b));
        ELSE
            xip1E_8sumAHighB_uid156_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid156_atan2Test_a) - SIGNED(xip1E_8sumAHighB_uid156_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_8sumAHighB_uid156_atan2Test_q <= xip1E_8sumAHighB_uid156_atan2Test_o(38 downto 0);

    -- xip1_8_uid164_atan2Test(BITSELECT,163)@4
    xip1_8_uid164_atan2Test_in <= xip1E_8sumAHighB_uid156_atan2Test_q(36 downto 0);
    xip1_8_uid164_atan2Test_b <= xip1_8_uid164_atan2Test_in(36 downto 0);

    -- twoToMiSiXip_uid171_atan2Test(BITSELECT,170)@4
    twoToMiSiXip_uid171_atan2Test_in <= xip1_8_uid164_atan2Test_b;
    twoToMiSiXip_uid171_atan2Test_b <= twoToMiSiXip_uid171_atan2Test_in(36 downto 8);

    -- yip1E_9_uid176_atan2Test(ADDSUB,175)@4
    yip1E_9_uid176_atan2Test_s <= xMSB_uid167_atan2Test_b;
    yip1E_9_uid176_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 31 => yip1_8_uid165_atan2Test_b(30)) & yip1_8_uid165_atan2Test_b));
    yip1E_9_uid176_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid171_atan2Test_b));
    yip1E_9_uid176_atan2Test_combproc: PROCESS (yip1E_9_uid176_atan2Test_a, yip1E_9_uid176_atan2Test_b, yip1E_9_uid176_atan2Test_s)
    BEGIN
        IF (yip1E_9_uid176_atan2Test_s = "1") THEN
            yip1E_9_uid176_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid176_atan2Test_a) + SIGNED(yip1E_9_uid176_atan2Test_b));
        ELSE
            yip1E_9_uid176_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid176_atan2Test_a) - SIGNED(yip1E_9_uid176_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_9_uid176_atan2Test_q <= yip1E_9_uid176_atan2Test_o(31 downto 0);

    -- yip1_9_uid182_atan2Test(BITSELECT,181)@4
    yip1_9_uid182_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_9_uid176_atan2Test_q(29 downto 0));
    yip1_9_uid182_atan2Test_b <= STD_LOGIC_VECTOR(yip1_9_uid182_atan2Test_in(29 downto 0));

    -- redist18(DELAY,392)
    redist18 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_9_uid182_atan2Test_b, xout => redist18_q, clk => clk, aclr => areset );

    -- xMSB_uid184_atan2Test(BITSELECT,183)@5
    xMSB_uid184_atan2Test_in <= STD_LOGIC_VECTOR(redist18_q);
    xMSB_uid184_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid184_atan2Test_in(29 downto 29));

    -- redist17(DELAY,391)
    redist17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid184_atan2Test_b, xout => redist17_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid174_atan2Test(LOGICAL,173)@4
    invSignOfSelectionSignal_uid174_atan2Test_a <= xMSB_uid167_atan2Test_b;
    invSignOfSelectionSignal_uid174_atan2Test_q <= not (invSignOfSelectionSignal_uid174_atan2Test_a);

    -- twoToMiSiYip_uid172_atan2Test(BITSELECT,171)@4
    twoToMiSiYip_uid172_atan2Test_in <= STD_LOGIC_VECTOR(yip1_8_uid165_atan2Test_b);
    twoToMiSiYip_uid172_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid172_atan2Test_in(30 downto 8));

    -- xip1E_9_uid175_atan2Test(ADDSUB,174)@4
    xip1E_9_uid175_atan2Test_s <= invSignOfSelectionSignal_uid174_atan2Test_q;
    xip1E_9_uid175_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_8_uid164_atan2Test_b));
    xip1E_9_uid175_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 23 => twoToMiSiYip_uid172_atan2Test_b(22)) & twoToMiSiYip_uid172_atan2Test_b));
    xip1E_9_uid175_atan2Test_combproc: PROCESS (xip1E_9_uid175_atan2Test_a, xip1E_9_uid175_atan2Test_b, xip1E_9_uid175_atan2Test_s)
    BEGIN
        IF (xip1E_9_uid175_atan2Test_s = "1") THEN
            xip1E_9_uid175_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid175_atan2Test_a) + SIGNED(xip1E_9_uid175_atan2Test_b));
        ELSE
            xip1E_9_uid175_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid175_atan2Test_a) - SIGNED(xip1E_9_uid175_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_9_uid175_atan2Test_q <= xip1E_9_uid175_atan2Test_o(38 downto 0);

    -- xip1_9_uid181_atan2Test(BITSELECT,180)@4
    xip1_9_uid181_atan2Test_in <= xip1E_9_uid175_atan2Test_q(36 downto 0);
    xip1_9_uid181_atan2Test_b <= xip1_9_uid181_atan2Test_in(36 downto 0);

    -- redist19(DELAY,393)
    redist19 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_9_uid181_atan2Test_b, xout => redist19_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid188_atan2Test(BITSELECT,187)@5
    twoToMiSiXip_uid188_atan2Test_in <= redist19_q;
    twoToMiSiXip_uid188_atan2Test_b <= twoToMiSiXip_uid188_atan2Test_in(36 downto 9);

    -- yip1E_10_uid193_atan2Test(ADDSUB,192)@5
    yip1E_10_uid193_atan2Test_s <= xMSB_uid184_atan2Test_b;
    yip1E_10_uid193_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => redist18_q(29)) & redist18_q));
    yip1E_10_uid193_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid188_atan2Test_b));
    yip1E_10_uid193_atan2Test_combproc: PROCESS (yip1E_10_uid193_atan2Test_a, yip1E_10_uid193_atan2Test_b, yip1E_10_uid193_atan2Test_s)
    BEGIN
        IF (yip1E_10_uid193_atan2Test_s = "1") THEN
            yip1E_10_uid193_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid193_atan2Test_a) + SIGNED(yip1E_10_uid193_atan2Test_b));
        ELSE
            yip1E_10_uid193_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid193_atan2Test_a) - SIGNED(yip1E_10_uid193_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_10_uid193_atan2Test_q <= yip1E_10_uid193_atan2Test_o(30 downto 0);

    -- yip1_10_uid199_atan2Test(BITSELECT,198)@5
    yip1_10_uid199_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_10_uid193_atan2Test_q(28 downto 0));
    yip1_10_uid199_atan2Test_b <= STD_LOGIC_VECTOR(yip1_10_uid199_atan2Test_in(28 downto 0));

    -- xMSB_uid201_atan2Test(BITSELECT,200)@5
    xMSB_uid201_atan2Test_in <= STD_LOGIC_VECTOR(yip1_10_uid199_atan2Test_b);
    xMSB_uid201_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid201_atan2Test_in(28 downto 28));

    -- redist16(DELAY,390)
    redist16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid201_atan2Test_b, xout => redist16_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid191_atan2Test(LOGICAL,190)@5
    invSignOfSelectionSignal_uid191_atan2Test_a <= xMSB_uid184_atan2Test_b;
    invSignOfSelectionSignal_uid191_atan2Test_q <= not (invSignOfSelectionSignal_uid191_atan2Test_a);

    -- twoToMiSiYip_uid189_atan2Test(BITSELECT,188)@5
    twoToMiSiYip_uid189_atan2Test_in <= STD_LOGIC_VECTOR(redist18_q);
    twoToMiSiYip_uid189_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid189_atan2Test_in(29 downto 9));

    -- xip1E_10_uid192_atan2Test(ADDSUB,191)@5
    xip1E_10_uid192_atan2Test_s <= invSignOfSelectionSignal_uid191_atan2Test_q;
    xip1E_10_uid192_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist19_q));
    xip1E_10_uid192_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 21 => twoToMiSiYip_uid189_atan2Test_b(20)) & twoToMiSiYip_uid189_atan2Test_b));
    xip1E_10_uid192_atan2Test_combproc: PROCESS (xip1E_10_uid192_atan2Test_a, xip1E_10_uid192_atan2Test_b, xip1E_10_uid192_atan2Test_s)
    BEGIN
        IF (xip1E_10_uid192_atan2Test_s = "1") THEN
            xip1E_10_uid192_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid192_atan2Test_a) + SIGNED(xip1E_10_uid192_atan2Test_b));
        ELSE
            xip1E_10_uid192_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid192_atan2Test_a) - SIGNED(xip1E_10_uid192_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_10_uid192_atan2Test_q <= xip1E_10_uid192_atan2Test_o(38 downto 0);

    -- xip1_10_uid198_atan2Test(BITSELECT,197)@5
    xip1_10_uid198_atan2Test_in <= xip1E_10_uid192_atan2Test_q(36 downto 0);
    xip1_10_uid198_atan2Test_b <= xip1_10_uid198_atan2Test_in(36 downto 0);

    -- twoToMiSiXip_uid205_atan2Test(BITSELECT,204)@5
    twoToMiSiXip_uid205_atan2Test_in <= xip1_10_uid198_atan2Test_b;
    twoToMiSiXip_uid205_atan2Test_b <= twoToMiSiXip_uid205_atan2Test_in(36 downto 10);

    -- yip1E_11_uid210_atan2Test(ADDSUB,209)@5
    yip1E_11_uid210_atan2Test_s <= xMSB_uid201_atan2Test_b;
    yip1E_11_uid210_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => yip1_10_uid199_atan2Test_b(28)) & yip1_10_uid199_atan2Test_b));
    yip1E_11_uid210_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid205_atan2Test_b));
    yip1E_11_uid210_atan2Test_combproc: PROCESS (yip1E_11_uid210_atan2Test_a, yip1E_11_uid210_atan2Test_b, yip1E_11_uid210_atan2Test_s)
    BEGIN
        IF (yip1E_11_uid210_atan2Test_s = "1") THEN
            yip1E_11_uid210_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid210_atan2Test_a) + SIGNED(yip1E_11_uid210_atan2Test_b));
        ELSE
            yip1E_11_uid210_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid210_atan2Test_a) - SIGNED(yip1E_11_uid210_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_11_uid210_atan2Test_q <= yip1E_11_uid210_atan2Test_o(29 downto 0);

    -- yip1_11_uid216_atan2Test(BITSELECT,215)@5
    yip1_11_uid216_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_11_uid210_atan2Test_q(27 downto 0));
    yip1_11_uid216_atan2Test_b <= STD_LOGIC_VECTOR(yip1_11_uid216_atan2Test_in(27 downto 0));

    -- redist14(DELAY,388)
    redist14 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_11_uid216_atan2Test_b, xout => redist14_q, clk => clk, aclr => areset );

    -- xMSB_uid218_atan2Test(BITSELECT,217)@6
    xMSB_uid218_atan2Test_in <= STD_LOGIC_VECTOR(redist14_q);
    xMSB_uid218_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid218_atan2Test_in(27 downto 27));

    -- redist13(DELAY,387)
    redist13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid218_atan2Test_b, xout => redist13_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid208_atan2Test(LOGICAL,207)@5
    invSignOfSelectionSignal_uid208_atan2Test_a <= xMSB_uid201_atan2Test_b;
    invSignOfSelectionSignal_uid208_atan2Test_q <= not (invSignOfSelectionSignal_uid208_atan2Test_a);

    -- twoToMiSiYip_uid206_atan2Test(BITSELECT,205)@5
    twoToMiSiYip_uid206_atan2Test_in <= STD_LOGIC_VECTOR(yip1_10_uid199_atan2Test_b);
    twoToMiSiYip_uid206_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid206_atan2Test_in(28 downto 10));

    -- xip1E_11_uid209_atan2Test(ADDSUB,208)@5
    xip1E_11_uid209_atan2Test_s <= invSignOfSelectionSignal_uid208_atan2Test_q;
    xip1E_11_uid209_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_10_uid198_atan2Test_b));
    xip1E_11_uid209_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 19 => twoToMiSiYip_uid206_atan2Test_b(18)) & twoToMiSiYip_uid206_atan2Test_b));
    xip1E_11_uid209_atan2Test_combproc: PROCESS (xip1E_11_uid209_atan2Test_a, xip1E_11_uid209_atan2Test_b, xip1E_11_uid209_atan2Test_s)
    BEGIN
        IF (xip1E_11_uid209_atan2Test_s = "1") THEN
            xip1E_11_uid209_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid209_atan2Test_a) + SIGNED(xip1E_11_uid209_atan2Test_b));
        ELSE
            xip1E_11_uid209_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid209_atan2Test_a) - SIGNED(xip1E_11_uid209_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_11_uid209_atan2Test_q <= xip1E_11_uid209_atan2Test_o(38 downto 0);

    -- xip1_11_uid215_atan2Test(BITSELECT,214)@5
    xip1_11_uid215_atan2Test_in <= xip1E_11_uid209_atan2Test_q(36 downto 0);
    xip1_11_uid215_atan2Test_b <= xip1_11_uid215_atan2Test_in(36 downto 0);

    -- redist15(DELAY,389)
    redist15 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_11_uid215_atan2Test_b, xout => redist15_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid222_atan2Test(BITSELECT,221)@6
    twoToMiSiXip_uid222_atan2Test_in <= redist15_q;
    twoToMiSiXip_uid222_atan2Test_b <= twoToMiSiXip_uid222_atan2Test_in(36 downto 11);

    -- yip1E_12_uid227_atan2Test(ADDSUB,226)@6
    yip1E_12_uid227_atan2Test_s <= xMSB_uid218_atan2Test_b;
    yip1E_12_uid227_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => redist14_q(27)) & redist14_q));
    yip1E_12_uid227_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid222_atan2Test_b));
    yip1E_12_uid227_atan2Test_combproc: PROCESS (yip1E_12_uid227_atan2Test_a, yip1E_12_uid227_atan2Test_b, yip1E_12_uid227_atan2Test_s)
    BEGIN
        IF (yip1E_12_uid227_atan2Test_s = "1") THEN
            yip1E_12_uid227_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid227_atan2Test_a) + SIGNED(yip1E_12_uid227_atan2Test_b));
        ELSE
            yip1E_12_uid227_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid227_atan2Test_a) - SIGNED(yip1E_12_uid227_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_12_uid227_atan2Test_q <= yip1E_12_uid227_atan2Test_o(28 downto 0);

    -- yip1_12_uid233_atan2Test(BITSELECT,232)@6
    yip1_12_uid233_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_12_uid227_atan2Test_q(26 downto 0));
    yip1_12_uid233_atan2Test_b <= STD_LOGIC_VECTOR(yip1_12_uid233_atan2Test_in(26 downto 0));

    -- xMSB_uid235_atan2Test(BITSELECT,234)@6
    xMSB_uid235_atan2Test_in <= STD_LOGIC_VECTOR(yip1_12_uid233_atan2Test_b);
    xMSB_uid235_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid235_atan2Test_in(26 downto 26));

    -- redist12(DELAY,386)
    redist12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid235_atan2Test_b, xout => redist12_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid225_atan2Test(LOGICAL,224)@6
    invSignOfSelectionSignal_uid225_atan2Test_a <= xMSB_uid218_atan2Test_b;
    invSignOfSelectionSignal_uid225_atan2Test_q <= not (invSignOfSelectionSignal_uid225_atan2Test_a);

    -- twoToMiSiYip_uid223_atan2Test(BITSELECT,222)@6
    twoToMiSiYip_uid223_atan2Test_in <= STD_LOGIC_VECTOR(redist14_q);
    twoToMiSiYip_uid223_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid223_atan2Test_in(27 downto 11));

    -- xip1E_12_uid226_atan2Test(ADDSUB,225)@6
    xip1E_12_uid226_atan2Test_s <= invSignOfSelectionSignal_uid225_atan2Test_q;
    xip1E_12_uid226_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist15_q));
    xip1E_12_uid226_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 17 => twoToMiSiYip_uid223_atan2Test_b(16)) & twoToMiSiYip_uid223_atan2Test_b));
    xip1E_12_uid226_atan2Test_combproc: PROCESS (xip1E_12_uid226_atan2Test_a, xip1E_12_uid226_atan2Test_b, xip1E_12_uid226_atan2Test_s)
    BEGIN
        IF (xip1E_12_uid226_atan2Test_s = "1") THEN
            xip1E_12_uid226_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid226_atan2Test_a) + SIGNED(xip1E_12_uid226_atan2Test_b));
        ELSE
            xip1E_12_uid226_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid226_atan2Test_a) - SIGNED(xip1E_12_uid226_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_12_uid226_atan2Test_q <= xip1E_12_uid226_atan2Test_o(38 downto 0);

    -- xip1_12_uid232_atan2Test(BITSELECT,231)@6
    xip1_12_uid232_atan2Test_in <= xip1E_12_uid226_atan2Test_q(36 downto 0);
    xip1_12_uid232_atan2Test_b <= xip1_12_uid232_atan2Test_in(36 downto 0);

    -- twoToMiSiXip_uid239_atan2Test(BITSELECT,238)@6
    twoToMiSiXip_uid239_atan2Test_in <= xip1_12_uid232_atan2Test_b;
    twoToMiSiXip_uid239_atan2Test_b <= twoToMiSiXip_uid239_atan2Test_in(36 downto 12);

    -- yip1E_13_uid244_atan2Test(ADDSUB,243)@6
    yip1E_13_uid244_atan2Test_s <= xMSB_uid235_atan2Test_b;
    yip1E_13_uid244_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => yip1_12_uid233_atan2Test_b(26)) & yip1_12_uid233_atan2Test_b));
    yip1E_13_uid244_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid239_atan2Test_b));
    yip1E_13_uid244_atan2Test_combproc: PROCESS (yip1E_13_uid244_atan2Test_a, yip1E_13_uid244_atan2Test_b, yip1E_13_uid244_atan2Test_s)
    BEGIN
        IF (yip1E_13_uid244_atan2Test_s = "1") THEN
            yip1E_13_uid244_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid244_atan2Test_a) + SIGNED(yip1E_13_uid244_atan2Test_b));
        ELSE
            yip1E_13_uid244_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid244_atan2Test_a) - SIGNED(yip1E_13_uid244_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_13_uid244_atan2Test_q <= yip1E_13_uid244_atan2Test_o(27 downto 0);

    -- yip1_13_uid250_atan2Test(BITSELECT,249)@6
    yip1_13_uid250_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_13_uid244_atan2Test_q(25 downto 0));
    yip1_13_uid250_atan2Test_b <= STD_LOGIC_VECTOR(yip1_13_uid250_atan2Test_in(25 downto 0));

    -- redist10(DELAY,384)
    redist10 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_13_uid250_atan2Test_b, xout => redist10_q, clk => clk, aclr => areset );

    -- xMSB_uid252_atan2Test(BITSELECT,251)@7
    xMSB_uid252_atan2Test_in <= STD_LOGIC_VECTOR(redist10_q);
    xMSB_uid252_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid252_atan2Test_in(25 downto 25));

    -- redist9(DELAY,383)
    redist9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid252_atan2Test_b, xout => redist9_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid242_atan2Test(LOGICAL,241)@6
    invSignOfSelectionSignal_uid242_atan2Test_a <= xMSB_uid235_atan2Test_b;
    invSignOfSelectionSignal_uid242_atan2Test_q <= not (invSignOfSelectionSignal_uid242_atan2Test_a);

    -- twoToMiSiYip_uid240_atan2Test(BITSELECT,239)@6
    twoToMiSiYip_uid240_atan2Test_in <= STD_LOGIC_VECTOR(yip1_12_uid233_atan2Test_b);
    twoToMiSiYip_uid240_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid240_atan2Test_in(26 downto 12));

    -- xip1E_13_uid243_atan2Test(ADDSUB,242)@6
    xip1E_13_uid243_atan2Test_s <= invSignOfSelectionSignal_uid242_atan2Test_q;
    xip1E_13_uid243_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_12_uid232_atan2Test_b));
    xip1E_13_uid243_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 15 => twoToMiSiYip_uid240_atan2Test_b(14)) & twoToMiSiYip_uid240_atan2Test_b));
    xip1E_13_uid243_atan2Test_combproc: PROCESS (xip1E_13_uid243_atan2Test_a, xip1E_13_uid243_atan2Test_b, xip1E_13_uid243_atan2Test_s)
    BEGIN
        IF (xip1E_13_uid243_atan2Test_s = "1") THEN
            xip1E_13_uid243_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid243_atan2Test_a) + SIGNED(xip1E_13_uid243_atan2Test_b));
        ELSE
            xip1E_13_uid243_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid243_atan2Test_a) - SIGNED(xip1E_13_uid243_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_13_uid243_atan2Test_q <= xip1E_13_uid243_atan2Test_o(38 downto 0);

    -- xip1_13_uid249_atan2Test(BITSELECT,248)@6
    xip1_13_uid249_atan2Test_in <= xip1E_13_uid243_atan2Test_q(36 downto 0);
    xip1_13_uid249_atan2Test_b <= xip1_13_uid249_atan2Test_in(36 downto 0);

    -- redist11(DELAY,385)
    redist11 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_13_uid249_atan2Test_b, xout => redist11_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid256_atan2Test(BITSELECT,255)@7
    twoToMiSiXip_uid256_atan2Test_in <= redist11_q;
    twoToMiSiXip_uid256_atan2Test_b <= twoToMiSiXip_uid256_atan2Test_in(36 downto 13);

    -- yip1E_14_uid261_atan2Test(ADDSUB,260)@7
    yip1E_14_uid261_atan2Test_s <= xMSB_uid252_atan2Test_b;
    yip1E_14_uid261_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => redist10_q(25)) & redist10_q));
    yip1E_14_uid261_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid256_atan2Test_b));
    yip1E_14_uid261_atan2Test_combproc: PROCESS (yip1E_14_uid261_atan2Test_a, yip1E_14_uid261_atan2Test_b, yip1E_14_uid261_atan2Test_s)
    BEGIN
        IF (yip1E_14_uid261_atan2Test_s = "1") THEN
            yip1E_14_uid261_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid261_atan2Test_a) + SIGNED(yip1E_14_uid261_atan2Test_b));
        ELSE
            yip1E_14_uid261_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid261_atan2Test_a) - SIGNED(yip1E_14_uid261_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_14_uid261_atan2Test_q <= yip1E_14_uid261_atan2Test_o(26 downto 0);

    -- yip1_14_uid267_atan2Test(BITSELECT,266)@7
    yip1_14_uid267_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_14_uid261_atan2Test_q(24 downto 0));
    yip1_14_uid267_atan2Test_b <= STD_LOGIC_VECTOR(yip1_14_uid267_atan2Test_in(24 downto 0));

    -- xMSB_uid269_atan2Test(BITSELECT,268)@7
    xMSB_uid269_atan2Test_in <= STD_LOGIC_VECTOR(yip1_14_uid267_atan2Test_b);
    xMSB_uid269_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid269_atan2Test_in(24 downto 24));

    -- redist8(DELAY,382)
    redist8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid269_atan2Test_b, xout => redist8_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid259_atan2Test(LOGICAL,258)@7
    invSignOfSelectionSignal_uid259_atan2Test_a <= xMSB_uid252_atan2Test_b;
    invSignOfSelectionSignal_uid259_atan2Test_q <= not (invSignOfSelectionSignal_uid259_atan2Test_a);

    -- twoToMiSiYip_uid257_atan2Test(BITSELECT,256)@7
    twoToMiSiYip_uid257_atan2Test_in <= STD_LOGIC_VECTOR(redist10_q);
    twoToMiSiYip_uid257_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid257_atan2Test_in(25 downto 13));

    -- xip1E_14_uid260_atan2Test(ADDSUB,259)@7
    xip1E_14_uid260_atan2Test_s <= invSignOfSelectionSignal_uid259_atan2Test_q;
    xip1E_14_uid260_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist11_q));
    xip1E_14_uid260_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 13 => twoToMiSiYip_uid257_atan2Test_b(12)) & twoToMiSiYip_uid257_atan2Test_b));
    xip1E_14_uid260_atan2Test_combproc: PROCESS (xip1E_14_uid260_atan2Test_a, xip1E_14_uid260_atan2Test_b, xip1E_14_uid260_atan2Test_s)
    BEGIN
        IF (xip1E_14_uid260_atan2Test_s = "1") THEN
            xip1E_14_uid260_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid260_atan2Test_a) + SIGNED(xip1E_14_uid260_atan2Test_b));
        ELSE
            xip1E_14_uid260_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid260_atan2Test_a) - SIGNED(xip1E_14_uid260_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_14_uid260_atan2Test_q <= xip1E_14_uid260_atan2Test_o(38 downto 0);

    -- xip1_14_uid266_atan2Test(BITSELECT,265)@7
    xip1_14_uid266_atan2Test_in <= xip1E_14_uid260_atan2Test_q(36 downto 0);
    xip1_14_uid266_atan2Test_b <= xip1_14_uid266_atan2Test_in(36 downto 0);

    -- twoToMiSiXip_uid273_atan2Test(BITSELECT,272)@7
    twoToMiSiXip_uid273_atan2Test_in <= xip1_14_uid266_atan2Test_b;
    twoToMiSiXip_uid273_atan2Test_b <= twoToMiSiXip_uid273_atan2Test_in(36 downto 14);

    -- yip1E_15_uid278_atan2Test(ADDSUB,277)@7
    yip1E_15_uid278_atan2Test_s <= xMSB_uid269_atan2Test_b;
    yip1E_15_uid278_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1_14_uid267_atan2Test_b(24)) & yip1_14_uid267_atan2Test_b));
    yip1E_15_uid278_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid273_atan2Test_b));
    yip1E_15_uid278_atan2Test_combproc: PROCESS (yip1E_15_uid278_atan2Test_a, yip1E_15_uid278_atan2Test_b, yip1E_15_uid278_atan2Test_s)
    BEGIN
        IF (yip1E_15_uid278_atan2Test_s = "1") THEN
            yip1E_15_uid278_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid278_atan2Test_a) + SIGNED(yip1E_15_uid278_atan2Test_b));
        ELSE
            yip1E_15_uid278_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid278_atan2Test_a) - SIGNED(yip1E_15_uid278_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_15_uid278_atan2Test_q <= yip1E_15_uid278_atan2Test_o(25 downto 0);

    -- yip1_15_uid284_atan2Test(BITSELECT,283)@7
    yip1_15_uid284_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_15_uid278_atan2Test_q(23 downto 0));
    yip1_15_uid284_atan2Test_b <= STD_LOGIC_VECTOR(yip1_15_uid284_atan2Test_in(23 downto 0));

    -- redist6(DELAY,380)
    redist6 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_15_uid284_atan2Test_b, xout => redist6_q, clk => clk, aclr => areset );

    -- xMSB_uid286_atan2Test(BITSELECT,285)@8
    xMSB_uid286_atan2Test_in <= STD_LOGIC_VECTOR(redist6_q);
    xMSB_uid286_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid286_atan2Test_in(23 downto 23));

    -- redist5(DELAY,379)
    redist5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid286_atan2Test_b, xout => redist5_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid276_atan2Test(LOGICAL,275)@7
    invSignOfSelectionSignal_uid276_atan2Test_a <= xMSB_uid269_atan2Test_b;
    invSignOfSelectionSignal_uid276_atan2Test_q <= not (invSignOfSelectionSignal_uid276_atan2Test_a);

    -- twoToMiSiYip_uid274_atan2Test(BITSELECT,273)@7
    twoToMiSiYip_uid274_atan2Test_in <= STD_LOGIC_VECTOR(yip1_14_uid267_atan2Test_b);
    twoToMiSiYip_uid274_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid274_atan2Test_in(24 downto 14));

    -- xip1E_15_uid277_atan2Test(ADDSUB,276)@7
    xip1E_15_uid277_atan2Test_s <= invSignOfSelectionSignal_uid276_atan2Test_q;
    xip1E_15_uid277_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_14_uid266_atan2Test_b));
    xip1E_15_uid277_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 11 => twoToMiSiYip_uid274_atan2Test_b(10)) & twoToMiSiYip_uid274_atan2Test_b));
    xip1E_15_uid277_atan2Test_combproc: PROCESS (xip1E_15_uid277_atan2Test_a, xip1E_15_uid277_atan2Test_b, xip1E_15_uid277_atan2Test_s)
    BEGIN
        IF (xip1E_15_uid277_atan2Test_s = "1") THEN
            xip1E_15_uid277_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid277_atan2Test_a) + SIGNED(xip1E_15_uid277_atan2Test_b));
        ELSE
            xip1E_15_uid277_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid277_atan2Test_a) - SIGNED(xip1E_15_uid277_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_15_uid277_atan2Test_q <= xip1E_15_uid277_atan2Test_o(38 downto 0);

    -- xip1_15_uid283_atan2Test(BITSELECT,282)@7
    xip1_15_uid283_atan2Test_in <= xip1E_15_uid277_atan2Test_q(36 downto 0);
    xip1_15_uid283_atan2Test_b <= xip1_15_uid283_atan2Test_in(36 downto 0);

    -- redist7(DELAY,381)
    redist7 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_15_uid283_atan2Test_b, xout => redist7_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid290_atan2Test(BITSELECT,289)@8
    twoToMiSiXip_uid290_atan2Test_in <= redist7_q;
    twoToMiSiXip_uid290_atan2Test_b <= twoToMiSiXip_uid290_atan2Test_in(36 downto 15);

    -- yip1E_16_uid295_atan2Test(ADDSUB,294)@8
    yip1E_16_uid295_atan2Test_s <= xMSB_uid286_atan2Test_b;
    yip1E_16_uid295_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => redist6_q(23)) & redist6_q));
    yip1E_16_uid295_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid290_atan2Test_b));
    yip1E_16_uid295_atan2Test_combproc: PROCESS (yip1E_16_uid295_atan2Test_a, yip1E_16_uid295_atan2Test_b, yip1E_16_uid295_atan2Test_s)
    BEGIN
        IF (yip1E_16_uid295_atan2Test_s = "1") THEN
            yip1E_16_uid295_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid295_atan2Test_a) + SIGNED(yip1E_16_uid295_atan2Test_b));
        ELSE
            yip1E_16_uid295_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid295_atan2Test_a) - SIGNED(yip1E_16_uid295_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_16_uid295_atan2Test_q <= yip1E_16_uid295_atan2Test_o(24 downto 0);

    -- yip1_16_uid301_atan2Test(BITSELECT,300)@8
    yip1_16_uid301_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_16_uid295_atan2Test_q(22 downto 0));
    yip1_16_uid301_atan2Test_b <= STD_LOGIC_VECTOR(yip1_16_uid301_atan2Test_in(22 downto 0));

    -- xMSB_uid303_atan2Test(BITSELECT,302)@8
    xMSB_uid303_atan2Test_in <= STD_LOGIC_VECTOR(yip1_16_uid301_atan2Test_b);
    xMSB_uid303_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid303_atan2Test_in(22 downto 22));

    -- redist4(DELAY,378)
    redist4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid303_atan2Test_b, xout => redist4_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid293_atan2Test(LOGICAL,292)@8
    invSignOfSelectionSignal_uid293_atan2Test_a <= xMSB_uid286_atan2Test_b;
    invSignOfSelectionSignal_uid293_atan2Test_q <= not (invSignOfSelectionSignal_uid293_atan2Test_a);

    -- twoToMiSiYip_uid291_atan2Test(BITSELECT,290)@8
    twoToMiSiYip_uid291_atan2Test_in <= STD_LOGIC_VECTOR(redist6_q);
    twoToMiSiYip_uid291_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid291_atan2Test_in(23 downto 15));

    -- xip1E_16_uid294_atan2Test(ADDSUB,293)@8
    xip1E_16_uid294_atan2Test_s <= invSignOfSelectionSignal_uid293_atan2Test_q;
    xip1E_16_uid294_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist7_q));
    xip1E_16_uid294_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 9 => twoToMiSiYip_uid291_atan2Test_b(8)) & twoToMiSiYip_uid291_atan2Test_b));
    xip1E_16_uid294_atan2Test_combproc: PROCESS (xip1E_16_uid294_atan2Test_a, xip1E_16_uid294_atan2Test_b, xip1E_16_uid294_atan2Test_s)
    BEGIN
        IF (xip1E_16_uid294_atan2Test_s = "1") THEN
            xip1E_16_uid294_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid294_atan2Test_a) + SIGNED(xip1E_16_uid294_atan2Test_b));
        ELSE
            xip1E_16_uid294_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid294_atan2Test_a) - SIGNED(xip1E_16_uid294_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_16_uid294_atan2Test_q <= xip1E_16_uid294_atan2Test_o(38 downto 0);

    -- xip1_16_uid300_atan2Test(BITSELECT,299)@8
    xip1_16_uid300_atan2Test_in <= xip1E_16_uid294_atan2Test_q(36 downto 0);
    xip1_16_uid300_atan2Test_b <= xip1_16_uid300_atan2Test_in(36 downto 0);

    -- twoToMiSiXip_uid307_atan2Test(BITSELECT,306)@8
    twoToMiSiXip_uid307_atan2Test_in <= xip1_16_uid300_atan2Test_b;
    twoToMiSiXip_uid307_atan2Test_b <= twoToMiSiXip_uid307_atan2Test_in(36 downto 16);

    -- yip1E_17_uid312_atan2Test(ADDSUB,311)@8
    yip1E_17_uid312_atan2Test_s <= xMSB_uid303_atan2Test_b;
    yip1E_17_uid312_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 23 => yip1_16_uid301_atan2Test_b(22)) & yip1_16_uid301_atan2Test_b));
    yip1E_17_uid312_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid307_atan2Test_b));
    yip1E_17_uid312_atan2Test_combproc: PROCESS (yip1E_17_uid312_atan2Test_a, yip1E_17_uid312_atan2Test_b, yip1E_17_uid312_atan2Test_s)
    BEGIN
        IF (yip1E_17_uid312_atan2Test_s = "1") THEN
            yip1E_17_uid312_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid312_atan2Test_a) + SIGNED(yip1E_17_uid312_atan2Test_b));
        ELSE
            yip1E_17_uid312_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid312_atan2Test_a) - SIGNED(yip1E_17_uid312_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_17_uid312_atan2Test_q <= yip1E_17_uid312_atan2Test_o(23 downto 0);

    -- yip1_17_uid318_atan2Test(BITSELECT,317)@8
    yip1_17_uid318_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_17_uid312_atan2Test_q(21 downto 0));
    yip1_17_uid318_atan2Test_b <= STD_LOGIC_VECTOR(yip1_17_uid318_atan2Test_in(21 downto 0));

    -- xMSB_uid320_atan2Test(BITSELECT,319)@8
    xMSB_uid320_atan2Test_in <= STD_LOGIC_VECTOR(yip1_17_uid318_atan2Test_b);
    xMSB_uid320_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid320_atan2Test_in(21 downto 21));

    -- redist3(DELAY,377)
    redist3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid320_atan2Test_b, xout => redist3_q, clk => clk, aclr => areset );

    -- concSignVector_uid337_atan2Test(BITJOIN,336)@9
    concSignVector_uid337_atan2Test_q <= GND_q & redist33_q & redist32_q & redist29_q & redist28_q & redist25_q & redist24_q & redist21_q & redist20_q & redist17_q & redist16_q & redist13_q & redist12_q & redist9_q & redist8_q & redist5_q & redist4_q & redist3_q;

    -- is2_uid349_atan2Test(BITSELECT,348)@9
    is2_uid349_atan2Test_in <= concSignVector_uid337_atan2Test_q(5 downto 0);
    is2_uid349_atan2Test_b <= is2_uid349_atan2Test_in(5 downto 0);

    -- table_l17_uid350_atan2Test(LOOKUP,349)@9
    table_l17_uid350_atan2Test_combproc: PROCESS (is2_uid349_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is2_uid349_atan2Test_b) IS
            WHEN "000000" => table_l17_uid350_atan2Test_q <= "0111111000";
            WHEN "000001" => table_l17_uid350_atan2Test_q <= "0111101000";
            WHEN "000010" => table_l17_uid350_atan2Test_q <= "0111011000";
            WHEN "000011" => table_l17_uid350_atan2Test_q <= "0111001000";
            WHEN "000100" => table_l17_uid350_atan2Test_q <= "0110111000";
            WHEN "000101" => table_l17_uid350_atan2Test_q <= "0110101000";
            WHEN "000110" => table_l17_uid350_atan2Test_q <= "0110011000";
            WHEN "000111" => table_l17_uid350_atan2Test_q <= "0110001000";
            WHEN "001000" => table_l17_uid350_atan2Test_q <= "0101111000";
            WHEN "001001" => table_l17_uid350_atan2Test_q <= "0101101000";
            WHEN "001010" => table_l17_uid350_atan2Test_q <= "0101011000";
            WHEN "001011" => table_l17_uid350_atan2Test_q <= "0101001000";
            WHEN "001100" => table_l17_uid350_atan2Test_q <= "0100111000";
            WHEN "001101" => table_l17_uid350_atan2Test_q <= "0100101000";
            WHEN "001110" => table_l17_uid350_atan2Test_q <= "0100011000";
            WHEN "001111" => table_l17_uid350_atan2Test_q <= "0100001000";
            WHEN "010000" => table_l17_uid350_atan2Test_q <= "0011111000";
            WHEN "010001" => table_l17_uid350_atan2Test_q <= "0011101000";
            WHEN "010010" => table_l17_uid350_atan2Test_q <= "0011011000";
            WHEN "010011" => table_l17_uid350_atan2Test_q <= "0011001000";
            WHEN "010100" => table_l17_uid350_atan2Test_q <= "0010111000";
            WHEN "010101" => table_l17_uid350_atan2Test_q <= "0010101000";
            WHEN "010110" => table_l17_uid350_atan2Test_q <= "0010011000";
            WHEN "010111" => table_l17_uid350_atan2Test_q <= "0010001000";
            WHEN "011000" => table_l17_uid350_atan2Test_q <= "0001111000";
            WHEN "011001" => table_l17_uid350_atan2Test_q <= "0001101000";
            WHEN "011010" => table_l17_uid350_atan2Test_q <= "0001011000";
            WHEN "011011" => table_l17_uid350_atan2Test_q <= "0001001000";
            WHEN "011100" => table_l17_uid350_atan2Test_q <= "0000111000";
            WHEN "011101" => table_l17_uid350_atan2Test_q <= "0000101000";
            WHEN "011110" => table_l17_uid350_atan2Test_q <= "0000011000";
            WHEN "011111" => table_l17_uid350_atan2Test_q <= "0000001000";
            WHEN "100000" => table_l17_uid350_atan2Test_q <= "1111111000";
            WHEN "100001" => table_l17_uid350_atan2Test_q <= "1111101000";
            WHEN "100010" => table_l17_uid350_atan2Test_q <= "1111011000";
            WHEN "100011" => table_l17_uid350_atan2Test_q <= "1111001000";
            WHEN "100100" => table_l17_uid350_atan2Test_q <= "1110111000";
            WHEN "100101" => table_l17_uid350_atan2Test_q <= "1110101000";
            WHEN "100110" => table_l17_uid350_atan2Test_q <= "1110011000";
            WHEN "100111" => table_l17_uid350_atan2Test_q <= "1110001000";
            WHEN "101000" => table_l17_uid350_atan2Test_q <= "1101111000";
            WHEN "101001" => table_l17_uid350_atan2Test_q <= "1101101000";
            WHEN "101010" => table_l17_uid350_atan2Test_q <= "1101011000";
            WHEN "101011" => table_l17_uid350_atan2Test_q <= "1101001000";
            WHEN "101100" => table_l17_uid350_atan2Test_q <= "1100111000";
            WHEN "101101" => table_l17_uid350_atan2Test_q <= "1100101000";
            WHEN "101110" => table_l17_uid350_atan2Test_q <= "1100011000";
            WHEN "101111" => table_l17_uid350_atan2Test_q <= "1100001000";
            WHEN "110000" => table_l17_uid350_atan2Test_q <= "1011111000";
            WHEN "110001" => table_l17_uid350_atan2Test_q <= "1011101000";
            WHEN "110010" => table_l17_uid350_atan2Test_q <= "1011011000";
            WHEN "110011" => table_l17_uid350_atan2Test_q <= "1011001000";
            WHEN "110100" => table_l17_uid350_atan2Test_q <= "1010111000";
            WHEN "110101" => table_l17_uid350_atan2Test_q <= "1010101000";
            WHEN "110110" => table_l17_uid350_atan2Test_q <= "1010011000";
            WHEN "110111" => table_l17_uid350_atan2Test_q <= "1010001000";
            WHEN "111000" => table_l17_uid350_atan2Test_q <= "1001111000";
            WHEN "111001" => table_l17_uid350_atan2Test_q <= "1001101000";
            WHEN "111010" => table_l17_uid350_atan2Test_q <= "1001011000";
            WHEN "111011" => table_l17_uid350_atan2Test_q <= "1001001000";
            WHEN "111100" => table_l17_uid350_atan2Test_q <= "1000111000";
            WHEN "111101" => table_l17_uid350_atan2Test_q <= "1000101000";
            WHEN "111110" => table_l17_uid350_atan2Test_q <= "1000011000";
            WHEN "111111" => table_l17_uid350_atan2Test_q <= "1000001000";
            WHEN OTHERS => -- unreachable
                           table_l17_uid350_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- is1_uid344_atan2Test(BITSELECT,343)@9
    is1_uid344_atan2Test_in <= concSignVector_uid337_atan2Test_q(11 downto 0);
    is1_uid344_atan2Test_b <= is1_uid344_atan2Test_in(11 downto 6);

    -- table_l11_uid346_atan2Test(LOOKUP,345)@9
    table_l11_uid346_atan2Test_combproc: PROCESS (is1_uid344_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid344_atan2Test_b) IS
            WHEN "000000" => table_l11_uid346_atan2Test_q <= "011111";
            WHEN "000001" => table_l11_uid346_atan2Test_q <= "011110";
            WHEN "000010" => table_l11_uid346_atan2Test_q <= "011101";
            WHEN "000011" => table_l11_uid346_atan2Test_q <= "011100";
            WHEN "000100" => table_l11_uid346_atan2Test_q <= "011011";
            WHEN "000101" => table_l11_uid346_atan2Test_q <= "011010";
            WHEN "000110" => table_l11_uid346_atan2Test_q <= "011001";
            WHEN "000111" => table_l11_uid346_atan2Test_q <= "011000";
            WHEN "001000" => table_l11_uid346_atan2Test_q <= "010111";
            WHEN "001001" => table_l11_uid346_atan2Test_q <= "010110";
            WHEN "001010" => table_l11_uid346_atan2Test_q <= "010101";
            WHEN "001011" => table_l11_uid346_atan2Test_q <= "010100";
            WHEN "001100" => table_l11_uid346_atan2Test_q <= "010011";
            WHEN "001101" => table_l11_uid346_atan2Test_q <= "010010";
            WHEN "001110" => table_l11_uid346_atan2Test_q <= "010001";
            WHEN "001111" => table_l11_uid346_atan2Test_q <= "010000";
            WHEN "010000" => table_l11_uid346_atan2Test_q <= "001111";
            WHEN "010001" => table_l11_uid346_atan2Test_q <= "001110";
            WHEN "010010" => table_l11_uid346_atan2Test_q <= "001101";
            WHEN "010011" => table_l11_uid346_atan2Test_q <= "001100";
            WHEN "010100" => table_l11_uid346_atan2Test_q <= "001011";
            WHEN "010101" => table_l11_uid346_atan2Test_q <= "001010";
            WHEN "010110" => table_l11_uid346_atan2Test_q <= "001001";
            WHEN "010111" => table_l11_uid346_atan2Test_q <= "001000";
            WHEN "011000" => table_l11_uid346_atan2Test_q <= "000111";
            WHEN "011001" => table_l11_uid346_atan2Test_q <= "000110";
            WHEN "011010" => table_l11_uid346_atan2Test_q <= "000101";
            WHEN "011011" => table_l11_uid346_atan2Test_q <= "000100";
            WHEN "011100" => table_l11_uid346_atan2Test_q <= "000011";
            WHEN "011101" => table_l11_uid346_atan2Test_q <= "000010";
            WHEN "011110" => table_l11_uid346_atan2Test_q <= "000001";
            WHEN "011111" => table_l11_uid346_atan2Test_q <= "000000";
            WHEN "100000" => table_l11_uid346_atan2Test_q <= "111111";
            WHEN "100001" => table_l11_uid346_atan2Test_q <= "111110";
            WHEN "100010" => table_l11_uid346_atan2Test_q <= "111101";
            WHEN "100011" => table_l11_uid346_atan2Test_q <= "111100";
            WHEN "100100" => table_l11_uid346_atan2Test_q <= "111011";
            WHEN "100101" => table_l11_uid346_atan2Test_q <= "111010";
            WHEN "100110" => table_l11_uid346_atan2Test_q <= "111001";
            WHEN "100111" => table_l11_uid346_atan2Test_q <= "111000";
            WHEN "101000" => table_l11_uid346_atan2Test_q <= "110111";
            WHEN "101001" => table_l11_uid346_atan2Test_q <= "110110";
            WHEN "101010" => table_l11_uid346_atan2Test_q <= "110101";
            WHEN "101011" => table_l11_uid346_atan2Test_q <= "110100";
            WHEN "101100" => table_l11_uid346_atan2Test_q <= "110011";
            WHEN "101101" => table_l11_uid346_atan2Test_q <= "110010";
            WHEN "101110" => table_l11_uid346_atan2Test_q <= "110001";
            WHEN "101111" => table_l11_uid346_atan2Test_q <= "110000";
            WHEN "110000" => table_l11_uid346_atan2Test_q <= "101111";
            WHEN "110001" => table_l11_uid346_atan2Test_q <= "101110";
            WHEN "110010" => table_l11_uid346_atan2Test_q <= "101101";
            WHEN "110011" => table_l11_uid346_atan2Test_q <= "101100";
            WHEN "110100" => table_l11_uid346_atan2Test_q <= "101011";
            WHEN "110101" => table_l11_uid346_atan2Test_q <= "101010";
            WHEN "110110" => table_l11_uid346_atan2Test_q <= "101001";
            WHEN "110111" => table_l11_uid346_atan2Test_q <= "101000";
            WHEN "111000" => table_l11_uid346_atan2Test_q <= "100111";
            WHEN "111001" => table_l11_uid346_atan2Test_q <= "100110";
            WHEN "111010" => table_l11_uid346_atan2Test_q <= "100101";
            WHEN "111011" => table_l11_uid346_atan2Test_q <= "100100";
            WHEN "111100" => table_l11_uid346_atan2Test_q <= "100011";
            WHEN "111101" => table_l11_uid346_atan2Test_q <= "100010";
            WHEN "111110" => table_l11_uid346_atan2Test_q <= "100001";
            WHEN "111111" => table_l11_uid346_atan2Test_q <= "100000";
            WHEN OTHERS => -- unreachable
                           table_l11_uid346_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l11_uid345_atan2Test(LOOKUP,344)@9
    table_l11_uid345_atan2Test_combproc: PROCESS (is1_uid344_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid344_atan2Test_b) IS
            WHEN "000000" => table_l11_uid345_atan2Test_q <= "0111111110";
            WHEN "000001" => table_l11_uid345_atan2Test_q <= "0111111110";
            WHEN "000010" => table_l11_uid345_atan2Test_q <= "0111111110";
            WHEN "000011" => table_l11_uid345_atan2Test_q <= "0111111110";
            WHEN "000100" => table_l11_uid345_atan2Test_q <= "0111111110";
            WHEN "000101" => table_l11_uid345_atan2Test_q <= "0111111110";
            WHEN "000110" => table_l11_uid345_atan2Test_q <= "0111111110";
            WHEN "000111" => table_l11_uid345_atan2Test_q <= "0111111110";
            WHEN "001000" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "001001" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "001010" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "001011" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "001100" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "001101" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "001110" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "001111" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "010000" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "010001" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "010010" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "010011" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "010100" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "010101" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "010110" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "010111" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "011000" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "011001" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "011010" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "011011" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "011100" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "011101" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "011110" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "011111" => table_l11_uid345_atan2Test_q <= "0111111111";
            WHEN "100000" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "100001" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "100010" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "100011" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "100100" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "100101" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "100110" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "100111" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "101000" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "101001" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "101010" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "101011" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "101100" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "101101" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "101110" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "101111" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "110000" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "110001" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "110010" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "110011" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "110100" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "110101" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "110110" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "110111" => table_l11_uid345_atan2Test_q <= "1000000001";
            WHEN "111000" => table_l11_uid345_atan2Test_q <= "1000000010";
            WHEN "111001" => table_l11_uid345_atan2Test_q <= "1000000010";
            WHEN "111010" => table_l11_uid345_atan2Test_q <= "1000000010";
            WHEN "111011" => table_l11_uid345_atan2Test_q <= "1000000010";
            WHEN "111100" => table_l11_uid345_atan2Test_q <= "1000000010";
            WHEN "111101" => table_l11_uid345_atan2Test_q <= "1000000010";
            WHEN "111110" => table_l11_uid345_atan2Test_q <= "1000000010";
            WHEN "111111" => table_l11_uid345_atan2Test_q <= "1000000010";
            WHEN OTHERS => -- unreachable
                           table_l11_uid345_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid347_atan2Test(BITJOIN,346)@9
    os_uid347_atan2Test_q <= table_l11_uid346_atan2Test_q & table_l11_uid345_atan2Test_q;

    -- is0_uid338_atan2Test(BITSELECT,337)@9
    is0_uid338_atan2Test_in <= concSignVector_uid337_atan2Test_q;
    is0_uid338_atan2Test_b <= is0_uid338_atan2Test_in(17 downto 12);

    -- table_l5_uid341_atan2Test(LOOKUP,340)@9
    table_l5_uid341_atan2Test_combproc: PROCESS (is0_uid338_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid338_atan2Test_b) IS
            WHEN "000000" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "000001" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "000010" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "000011" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "000100" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "000101" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "000110" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "000111" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "001000" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "001001" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "001010" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "001011" => table_l5_uid341_atan2Test_q <= "01";
            WHEN "001100" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "001101" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "001110" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "001111" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "010000" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "010001" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "010010" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "010011" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "010100" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "010101" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "010110" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "010111" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "011000" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "011001" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "011010" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "011011" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "011100" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "011101" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "011110" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "011111" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "100000" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "100001" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "100010" => table_l5_uid341_atan2Test_q <= "00";
            WHEN "100011" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "100100" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "100101" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "100110" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "100111" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "101000" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "101001" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "101010" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "101011" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "101100" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "101101" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "101110" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "101111" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "110000" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "110001" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "110010" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "110011" => table_l5_uid341_atan2Test_q <= "11";
            WHEN "110100" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "110101" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "110110" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "110111" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "111000" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "111001" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "111010" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "111011" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "111100" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "111101" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "111110" => table_l5_uid341_atan2Test_q <= "10";
            WHEN "111111" => table_l5_uid341_atan2Test_q <= "10";
            WHEN OTHERS => -- unreachable
                           table_l5_uid341_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid340_atan2Test(LOOKUP,339)@9
    table_l5_uid340_atan2Test_combproc: PROCESS (is0_uid338_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid338_atan2Test_b) IS
            WHEN "000000" => table_l5_uid340_atan2Test_q <= "1011011001";
            WHEN "000001" => table_l5_uid340_atan2Test_q <= "1010011001";
            WHEN "000010" => table_l5_uid340_atan2Test_q <= "1001011001";
            WHEN "000011" => table_l5_uid340_atan2Test_q <= "1000011001";
            WHEN "000100" => table_l5_uid340_atan2Test_q <= "0111011010";
            WHEN "000101" => table_l5_uid340_atan2Test_q <= "0110011010";
            WHEN "000110" => table_l5_uid340_atan2Test_q <= "0101011010";
            WHEN "000111" => table_l5_uid340_atan2Test_q <= "0100011010";
            WHEN "001000" => table_l5_uid340_atan2Test_q <= "0011100011";
            WHEN "001001" => table_l5_uid340_atan2Test_q <= "0010100011";
            WHEN "001010" => table_l5_uid340_atan2Test_q <= "0001100011";
            WHEN "001011" => table_l5_uid340_atan2Test_q <= "0000100011";
            WHEN "001100" => table_l5_uid340_atan2Test_q <= "1111100100";
            WHEN "001101" => table_l5_uid340_atan2Test_q <= "1110100100";
            WHEN "001110" => table_l5_uid340_atan2Test_q <= "1101100100";
            WHEN "001111" => table_l5_uid340_atan2Test_q <= "1100100100";
            WHEN "010000" => table_l5_uid340_atan2Test_q <= "1100100011";
            WHEN "010001" => table_l5_uid340_atan2Test_q <= "1011100011";
            WHEN "010010" => table_l5_uid340_atan2Test_q <= "1010100011";
            WHEN "010011" => table_l5_uid340_atan2Test_q <= "1001100011";
            WHEN "010100" => table_l5_uid340_atan2Test_q <= "1000100100";
            WHEN "010101" => table_l5_uid340_atan2Test_q <= "0111100100";
            WHEN "010110" => table_l5_uid340_atan2Test_q <= "0110100101";
            WHEN "010111" => table_l5_uid340_atan2Test_q <= "0101100101";
            WHEN "011000" => table_l5_uid340_atan2Test_q <= "0100101101";
            WHEN "011001" => table_l5_uid340_atan2Test_q <= "0011101101";
            WHEN "011010" => table_l5_uid340_atan2Test_q <= "0010101110";
            WHEN "011011" => table_l5_uid340_atan2Test_q <= "0001101110";
            WHEN "011100" => table_l5_uid340_atan2Test_q <= "0000101111";
            WHEN "011101" => table_l5_uid340_atan2Test_q <= "1111101111";
            WHEN "011110" => table_l5_uid340_atan2Test_q <= "1110101111";
            WHEN "011111" => table_l5_uid340_atan2Test_q <= "1101101111";
            WHEN "100000" => table_l5_uid340_atan2Test_q <= "0010010000";
            WHEN "100001" => table_l5_uid340_atan2Test_q <= "0001010000";
            WHEN "100010" => table_l5_uid340_atan2Test_q <= "0000010000";
            WHEN "100011" => table_l5_uid340_atan2Test_q <= "1111010000";
            WHEN "100100" => table_l5_uid340_atan2Test_q <= "1110010001";
            WHEN "100101" => table_l5_uid340_atan2Test_q <= "1101010001";
            WHEN "100110" => table_l5_uid340_atan2Test_q <= "1100010010";
            WHEN "100111" => table_l5_uid340_atan2Test_q <= "1011010010";
            WHEN "101000" => table_l5_uid340_atan2Test_q <= "1010011010";
            WHEN "101001" => table_l5_uid340_atan2Test_q <= "1001011010";
            WHEN "101010" => table_l5_uid340_atan2Test_q <= "1000011011";
            WHEN "101011" => table_l5_uid340_atan2Test_q <= "0111011011";
            WHEN "101100" => table_l5_uid340_atan2Test_q <= "0110011100";
            WHEN "101101" => table_l5_uid340_atan2Test_q <= "0101011100";
            WHEN "101110" => table_l5_uid340_atan2Test_q <= "0100011100";
            WHEN "101111" => table_l5_uid340_atan2Test_q <= "0011011100";
            WHEN "110000" => table_l5_uid340_atan2Test_q <= "0011011011";
            WHEN "110001" => table_l5_uid340_atan2Test_q <= "0010011011";
            WHEN "110010" => table_l5_uid340_atan2Test_q <= "0001011011";
            WHEN "110011" => table_l5_uid340_atan2Test_q <= "0000011011";
            WHEN "110100" => table_l5_uid340_atan2Test_q <= "1111011100";
            WHEN "110101" => table_l5_uid340_atan2Test_q <= "1110011100";
            WHEN "110110" => table_l5_uid340_atan2Test_q <= "1101011100";
            WHEN "110111" => table_l5_uid340_atan2Test_q <= "1100011100";
            WHEN "111000" => table_l5_uid340_atan2Test_q <= "1011100101";
            WHEN "111001" => table_l5_uid340_atan2Test_q <= "1010100101";
            WHEN "111010" => table_l5_uid340_atan2Test_q <= "1001100101";
            WHEN "111011" => table_l5_uid340_atan2Test_q <= "1000100101";
            WHEN "111100" => table_l5_uid340_atan2Test_q <= "0111100110";
            WHEN "111101" => table_l5_uid340_atan2Test_q <= "0110100110";
            WHEN "111110" => table_l5_uid340_atan2Test_q <= "0101100110";
            WHEN "111111" => table_l5_uid340_atan2Test_q <= "0100100110";
            WHEN OTHERS => -- unreachable
                           table_l5_uid340_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid339_atan2Test(LOOKUP,338)@9
    table_l5_uid339_atan2Test_combproc: PROCESS (is0_uid338_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid338_atan2Test_b) IS
            WHEN "000000" => table_l5_uid339_atan2Test_q <= "0010010010";
            WHEN "000001" => table_l5_uid339_atan2Test_q <= "0010100111";
            WHEN "000010" => table_l5_uid339_atan2Test_q <= "0100111100";
            WHEN "000011" => table_l5_uid339_atan2Test_q <= "0101010010";
            WHEN "000100" => table_l5_uid339_atan2Test_q <= "0111011011";
            WHEN "000101" => table_l5_uid339_atan2Test_q <= "0111110000";
            WHEN "000110" => table_l5_uid339_atan2Test_q <= "1010000101";
            WHEN "000111" => table_l5_uid339_atan2Test_q <= "1010011010";
            WHEN "001000" => table_l5_uid339_atan2Test_q <= "0110110101";
            WHEN "001001" => table_l5_uid339_atan2Test_q <= "0111001010";
            WHEN "001010" => table_l5_uid339_atan2Test_q <= "1001011111";
            WHEN "001011" => table_l5_uid339_atan2Test_q <= "1001110100";
            WHEN "001100" => table_l5_uid339_atan2Test_q <= "1011111101";
            WHEN "001101" => table_l5_uid339_atan2Test_q <= "1100010011";
            WHEN "001110" => table_l5_uid339_atan2Test_q <= "1110100111";
            WHEN "001111" => table_l5_uid339_atan2Test_q <= "1110111101";
            WHEN "010000" => table_l5_uid339_atan2Test_q <= "1001011111";
            WHEN "010001" => table_l5_uid339_atan2Test_q <= "1001110100";
            WHEN "010010" => table_l5_uid339_atan2Test_q <= "1100001001";
            WHEN "010011" => table_l5_uid339_atan2Test_q <= "1100011110";
            WHEN "010100" => table_l5_uid339_atan2Test_q <= "1110100111";
            WHEN "010101" => table_l5_uid339_atan2Test_q <= "1110111101";
            WHEN "010110" => table_l5_uid339_atan2Test_q <= "0001010001";
            WHEN "010111" => table_l5_uid339_atan2Test_q <= "0001100111";
            WHEN "011000" => table_l5_uid339_atan2Test_q <= "1110000001";
            WHEN "011001" => table_l5_uid339_atan2Test_q <= "1110010110";
            WHEN "011010" => table_l5_uid339_atan2Test_q <= "0000101011";
            WHEN "011011" => table_l5_uid339_atan2Test_q <= "0001000001";
            WHEN "011100" => table_l5_uid339_atan2Test_q <= "0011001010";
            WHEN "011101" => table_l5_uid339_atan2Test_q <= "0011011111";
            WHEN "011110" => table_l5_uid339_atan2Test_q <= "0101110100";
            WHEN "011111" => table_l5_uid339_atan2Test_q <= "0110001001";
            WHEN "100000" => table_l5_uid339_atan2Test_q <= "1010010111";
            WHEN "100001" => table_l5_uid339_atan2Test_q <= "1010101100";
            WHEN "100010" => table_l5_uid339_atan2Test_q <= "1101000001";
            WHEN "100011" => table_l5_uid339_atan2Test_q <= "1101010110";
            WHEN "100100" => table_l5_uid339_atan2Test_q <= "1111011111";
            WHEN "100101" => table_l5_uid339_atan2Test_q <= "1111110101";
            WHEN "100110" => table_l5_uid339_atan2Test_q <= "0010001010";
            WHEN "100111" => table_l5_uid339_atan2Test_q <= "0010011111";
            WHEN "101000" => table_l5_uid339_atan2Test_q <= "1110111001";
            WHEN "101001" => table_l5_uid339_atan2Test_q <= "1111001111";
            WHEN "101010" => table_l5_uid339_atan2Test_q <= "0001100011";
            WHEN "101011" => table_l5_uid339_atan2Test_q <= "0001111001";
            WHEN "101100" => table_l5_uid339_atan2Test_q <= "0100000010";
            WHEN "101101" => table_l5_uid339_atan2Test_q <= "0100010111";
            WHEN "101110" => table_l5_uid339_atan2Test_q <= "0110101100";
            WHEN "101111" => table_l5_uid339_atan2Test_q <= "0111000001";
            WHEN "110000" => table_l5_uid339_atan2Test_q <= "0001100011";
            WHEN "110001" => table_l5_uid339_atan2Test_q <= "0001111001";
            WHEN "110010" => table_l5_uid339_atan2Test_q <= "0100001101";
            WHEN "110011" => table_l5_uid339_atan2Test_q <= "0100100011";
            WHEN "110100" => table_l5_uid339_atan2Test_q <= "0110101100";
            WHEN "110101" => table_l5_uid339_atan2Test_q <= "0111000001";
            WHEN "110110" => table_l5_uid339_atan2Test_q <= "1001010110";
            WHEN "110111" => table_l5_uid339_atan2Test_q <= "1001101011";
            WHEN "111000" => table_l5_uid339_atan2Test_q <= "0110000110";
            WHEN "111001" => table_l5_uid339_atan2Test_q <= "0110011011";
            WHEN "111010" => table_l5_uid339_atan2Test_q <= "1000110000";
            WHEN "111011" => table_l5_uid339_atan2Test_q <= "1001000101";
            WHEN "111100" => table_l5_uid339_atan2Test_q <= "1011001110";
            WHEN "111101" => table_l5_uid339_atan2Test_q <= "1011100100";
            WHEN "111110" => table_l5_uid339_atan2Test_q <= "1101111001";
            WHEN "111111" => table_l5_uid339_atan2Test_q <= "1110001110";
            WHEN OTHERS => -- unreachable
                           table_l5_uid339_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid342_atan2Test(BITJOIN,341)@9
    os_uid342_atan2Test_q <= table_l5_uid341_atan2Test_q & table_l5_uid340_atan2Test_q & table_l5_uid339_atan2Test_q;

    -- lev1_a0_uid353_atan2Test(ADD,352)@9
    lev1_a0_uid353_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => os_uid342_atan2Test_q(21)) & os_uid342_atan2Test_q));
    lev1_a0_uid353_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 16 => os_uid347_atan2Test_q(15)) & os_uid347_atan2Test_q));
    lev1_a0_uid353_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0_uid353_atan2Test_a) + SIGNED(lev1_a0_uid353_atan2Test_b));
    lev1_a0_uid353_atan2Test_q <= lev1_a0_uid353_atan2Test_o(22 downto 0);

    -- lev2_a0_uid354_atan2Test(ADD,353)@9
    lev2_a0_uid354_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => lev1_a0_uid353_atan2Test_q(22)) & lev1_a0_uid353_atan2Test_q));
    lev2_a0_uid354_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 10 => table_l17_uid350_atan2Test_q(9)) & table_l17_uid350_atan2Test_q));
    lev2_a0_uid354_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid354_atan2Test_a) + SIGNED(lev2_a0_uid354_atan2Test_b));
    lev2_a0_uid354_atan2Test_q <= lev2_a0_uid354_atan2Test_o(23 downto 0);

    -- atanRes_uid355_atan2Test(BITSELECT,354)@9
    atanRes_uid355_atan2Test_in <= lev2_a0_uid354_atan2Test_q(21 downto 0);
    atanRes_uid355_atan2Test_b <= atanRes_uid355_atan2Test_in(21 downto 3);

    -- redist2(DELAY,376)
    redist2 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => atanRes_uid355_atan2Test_b, xout => redist2_q, clk => clk, aclr => areset );

    -- xNotZero_uid17_atan2Test(LOGICAL,16)@0
    xNotZero_uid17_atan2Test_a <= STD_LOGIC_VECTOR(x);
    xNotZero_uid17_atan2Test_q <= "1" WHEN xNotZero_uid17_atan2Test_a /= "000000000000" ELSE "0";

    -- xZero_uid18_atan2Test(LOGICAL,17)@0
    xZero_uid18_atan2Test_a <= xNotZero_uid17_atan2Test_q;
    xZero_uid18_atan2Test_q <= not (xZero_uid18_atan2Test_a);

    -- yNotZero_uid15_atan2Test(LOGICAL,14)@0
    yNotZero_uid15_atan2Test_a <= STD_LOGIC_VECTOR(y);
    yNotZero_uid15_atan2Test_q <= "1" WHEN yNotZero_uid15_atan2Test_a /= "000000000000" ELSE "0";

    -- yZero_uid16_atan2Test(LOGICAL,15)@0
    yZero_uid16_atan2Test_a <= yNotZero_uid15_atan2Test_q;
    yZero_uid16_atan2Test_q <= not (yZero_uid16_atan2Test_a);

    -- concXZeroYZero_uid362_atan2Test(BITJOIN,361)@0
    concXZeroYZero_uid362_atan2Test_q <= xZero_uid18_atan2Test_q & yZero_uid16_atan2Test_q;

    -- redist1(DELAY,375)
    redist1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => concXZeroYZero_uid362_atan2Test_q, xout => redist1_q, clk => clk, aclr => areset );

    -- atanResPostExc_uid363_atan2Test(MUX,362)@10
    atanResPostExc_uid363_atan2Test_s <= redist1_q;
    atanResPostExc_uid363_atan2Test_combproc: PROCESS (atanResPostExc_uid363_atan2Test_s, redist2_q, cstZeroOutFormat_uid356_atan2Test_q, constPio2P2u_mergedSignalTM_uid360_atan2Test_q)
    BEGIN
        CASE (atanResPostExc_uid363_atan2Test_s) IS
            WHEN "00" => atanResPostExc_uid363_atan2Test_q <= redist2_q;
            WHEN "01" => atanResPostExc_uid363_atan2Test_q <= cstZeroOutFormat_uid356_atan2Test_q;
            WHEN "10" => atanResPostExc_uid363_atan2Test_q <= constPio2P2u_mergedSignalTM_uid360_atan2Test_q;
            WHEN "11" => atanResPostExc_uid363_atan2Test_q <= cstZeroOutFormat_uid356_atan2Test_q;
            WHEN OTHERS => atanResPostExc_uid363_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constantZeroOutFormat_uid367_atan2Test(CONSTANT,366)
    constantZeroOutFormat_uid367_atan2Test_q <= "0000000000000000000";

    -- concSigns_uid364_atan2Test(BITJOIN,363)@0
    concSigns_uid364_atan2Test_q <= signX_uid7_atan2Test_b & signY_uid8_atan2Test_b;

    -- redist0(DELAY,374)
    redist0 : dspba_delay
    GENERIC MAP ( width => 2, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => concSigns_uid364_atan2Test_q, xout => redist0_q, clk => clk, aclr => areset );

    -- secondOperand_uid371_atan2Test(MUX,370)@10
    secondOperand_uid371_atan2Test_s <= redist0_q;
    secondOperand_uid371_atan2Test_combproc: PROCESS (secondOperand_uid371_atan2Test_s, constantZeroOutFormat_uid367_atan2Test_q, atanResPostExc_uid363_atan2Test_q, constPi_uid366_atan2Test_q)
    BEGIN
        CASE (secondOperand_uid371_atan2Test_s) IS
            WHEN "00" => secondOperand_uid371_atan2Test_q <= constantZeroOutFormat_uid367_atan2Test_q;
            WHEN "01" => secondOperand_uid371_atan2Test_q <= atanResPostExc_uid363_atan2Test_q;
            WHEN "10" => secondOperand_uid371_atan2Test_q <= atanResPostExc_uid363_atan2Test_q;
            WHEN "11" => secondOperand_uid371_atan2Test_q <= constPi_uid366_atan2Test_q;
            WHEN OTHERS => secondOperand_uid371_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constPiP2u_uid365_atan2Test(CONSTANT,364)
    constPiP2u_uid365_atan2Test_q <= "1100100100010000010";

    -- constantZeroOutFormatP2u_uid368_atan2Test(CONSTANT,367)
    constantZeroOutFormatP2u_uid368_atan2Test_q <= "0000000000000000100";

    -- firstOperand_uid370_atan2Test(MUX,369)@10
    firstOperand_uid370_atan2Test_s <= redist0_q;
    firstOperand_uid370_atan2Test_combproc: PROCESS (firstOperand_uid370_atan2Test_s, atanResPostExc_uid363_atan2Test_q, constantZeroOutFormatP2u_uid368_atan2Test_q, constPiP2u_uid365_atan2Test_q)
    BEGIN
        CASE (firstOperand_uid370_atan2Test_s) IS
            WHEN "00" => firstOperand_uid370_atan2Test_q <= atanResPostExc_uid363_atan2Test_q;
            WHEN "01" => firstOperand_uid370_atan2Test_q <= constantZeroOutFormatP2u_uid368_atan2Test_q;
            WHEN "10" => firstOperand_uid370_atan2Test_q <= constPiP2u_uid365_atan2Test_q;
            WHEN "11" => firstOperand_uid370_atan2Test_q <= atanResPostExc_uid363_atan2Test_q;
            WHEN OTHERS => firstOperand_uid370_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outResExtended_uid372_atan2Test(SUB,371)@10
    outResExtended_uid372_atan2Test_a <= STD_LOGIC_VECTOR("0" & firstOperand_uid370_atan2Test_q);
    outResExtended_uid372_atan2Test_b <= STD_LOGIC_VECTOR("0" & secondOperand_uid371_atan2Test_q);
    outResExtended_uid372_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(outResExtended_uid372_atan2Test_a) - UNSIGNED(outResExtended_uid372_atan2Test_b));
    outResExtended_uid372_atan2Test_q <= outResExtended_uid372_atan2Test_o(19 downto 0);

    -- atanResPostRR_uid373_atan2Test(BITSELECT,372)@10
    atanResPostRR_uid373_atan2Test_in <= STD_LOGIC_VECTOR(outResExtended_uid372_atan2Test_q);
    atanResPostRR_uid373_atan2Test_b <= STD_LOGIC_VECTOR(atanResPostRR_uid373_atan2Test_in(19 downto 2));

    -- xOut(GPOUT,4)@10
    q <= atanResPostRR_uid373_atan2Test_b;

END normal;
