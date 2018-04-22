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
-- VHDL created on Sun Apr 22 21:55:57 2018


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
    signal cstArcTan2Mi_0_uid22_atan2Test_q : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_1_uid23_atan2Test_a : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid23_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid23_atan2Test_o : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid23_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_atan2Test_a : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_atan2Test_o : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid24_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal cstArcTan2Mi_1_uid36_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal aip1E_2CostZeroPaddingA_uid45_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal cstArcTan2Mi_2_uid55_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal cstArcTan2Mi_3_uid74_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_4CostZeroPaddingA_uid76_atan2Test_q : STD_LOGIC_VECTOR (2 downto 0);
    signal cstArcTan2Mi_4_uid93_atan2Test_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_5CostZeroPaddingA_uid95_atan2Test_q : STD_LOGIC_VECTOR (3 downto 0);
    signal cstArcTan2Mi_5_uid112_atan2Test_q : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1E_6CostZeroPaddingA_uid114_atan2Test_q : STD_LOGIC_VECTOR (4 downto 0);
    signal cstArcTan2Mi_6_uid131_atan2Test_q : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1E_7CostZeroPaddingA_uid133_atan2Test_q : STD_LOGIC_VECTOR (5 downto 0);
    signal cstArcTan2Mi_7_uid152_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal cstArcTan2Mi_8_uid173_atan2Test_q : STD_LOGIC_VECTOR (35 downto 0);
    signal cstArcTan2Mi_9_uid190_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal cstArcTan2Mi_10_uid207_atan2Test_q : STD_LOGIC_VECTOR (37 downto 0);
    signal cstArcTan2Mi_11_uid224_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal cstArcTan2Mi_12_uid241_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal cstArcTan2Mi_13_uid258_atan2Test_q : STD_LOGIC_VECTOR (40 downto 0);
    signal cstArcTan2Mi_14_uid275_atan2Test_q : STD_LOGIC_VECTOR (41 downto 0);
    signal cstArcTan2Mi_15_uid292_atan2Test_q : STD_LOGIC_VECTOR (42 downto 0);
    signal cstArcTan2Mi_16_uid309_atan2Test_q : STD_LOGIC_VECTOR (43 downto 0);
    signal cstArcTan2Mi_17_uid326_atan2Test_q : STD_LOGIC_VECTOR (44 downto 0);
    signal invSignOfSelectionSignal_uid330_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid330_atan2Test_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid330_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstZeroOutFormat_uid346_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constPiP2uE_uid347_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal constPiP2u_uid355_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constPi_uid356_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constantZeroOutFormat_uid357_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constantZeroOutFormatP2u_uid358_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist0_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist3_q : STD_LOGIC_VECTOR (60 downto 0);
    signal redist4_q : STD_LOGIC_VECTOR (56 downto 0);
    signal redist5_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist6_q : STD_LOGIC_VECTOR (34 downto 0);
    signal redist7_q : STD_LOGIC_VECTOR (52 downto 0);
    signal redist8_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist9_q : STD_LOGIC_VECTOR (34 downto 0);
    signal redist10_q : STD_LOGIC_VECTOR (48 downto 0);
    signal redist11_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist12_q : STD_LOGIC_VECTOR (34 downto 0);
    signal redist13_q : STD_LOGIC_VECTOR (44 downto 0);
    signal redist14_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist15_q : STD_LOGIC_VECTOR (34 downto 0);
    signal redist16_q : STD_LOGIC_VECTOR (40 downto 0);
    signal redist17_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist18_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist19_q : STD_LOGIC_VECTOR (36 downto 0);
    signal redist20_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist21_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist22_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist23_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist24_q : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1E_2NA_uid39_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_2NA_uid42_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1E_8NA_uid155_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8NA_uid158_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal constPio2P2u_mergedSignalTM_uid350_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yNotZero_uid15_atan2Test_a : STD_LOGIC_VECTOR (11 downto 0);
    signal yNotZero_uid15_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_atan2Test_a : STD_LOGIC_VECTOR (11 downto 0);
    signal xNotZero_uid17_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal atanResPostExc_uid353_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid353_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal firstOperand_uid360_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal firstOperand_uid360_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal secondOperand_uid361_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal secondOperand_uid361_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal outResExtended_uid362_atan2Test_a : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid362_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid362_atan2Test_o : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid362_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal signX_uid7_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal signX_uid7_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid8_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal signY_uid8_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid25_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal lowRangeB_uid25_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal highBBits_uid26_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal highBBits_uid26_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xMSB_uid32_atan2Test_in : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid32_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_4NA_uid84_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_6NA_uid122_atan2Test_q : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_8NA_uid162_atan2Test_q : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_10NA_uid196_atan2Test_q : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_12NA_uid230_atan2Test_q : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_14NA_uid264_atan2Test_q : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_16NA_uid298_atan2Test_q : STD_LOGIC_VECTOR (58 downto 0);
    signal aip1E_18NA_uid332_atan2Test_q : STD_LOGIC_VECTOR (62 downto 0);
    signal xip1E_4NA_uid77_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_4NA_uid80_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_6NA_uid115_atan2Test_q : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6NA_uid118_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal aip1E_18sumAHighB_uid333_atan2Test_a : STD_LOGIC_VECTOR (64 downto 0);
    signal aip1E_18sumAHighB_uid333_atan2Test_b : STD_LOGIC_VECTOR (64 downto 0);
    signal aip1E_18sumAHighB_uid333_atan2Test_o : STD_LOGIC_VECTOR (64 downto 0);
    signal aip1E_18sumAHighB_uid333_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_18sumAHighB_uid333_atan2Test_q : STD_LOGIC_VECTOR (63 downto 0);
    signal xMSB_uid286_atan2Test_in : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid286_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid291_atan2Test_in : STD_LOGIC_VECTOR (21 downto 0);
    signal twoToMiSiYip_uid291_atan2Test_b : STD_LOGIC_VECTOR (6 downto 0);
    signal twoToMiSiXip_uid290_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid290_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xMSB_uid252_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid252_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid257_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal twoToMiSiYip_uid257_atan2Test_b : STD_LOGIC_VECTOR (10 downto 0);
    signal twoToMiSiXip_uid256_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid256_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid218_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid218_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid223_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiYip_uid223_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal twoToMiSiXip_uid222_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid222_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid184_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid184_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid189_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal twoToMiSiYip_uid189_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal twoToMiSiXip_uid188_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid188_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid146_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid146_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid151_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid151_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal twoToMiSiXip_uid150_atan2Test_in : STD_LOGIC_VECTOR (33 downto 0);
    signal twoToMiSiXip_uid150_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
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
    signal yip1E_2sumAHighB_uid43_atan2Test_a : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_o : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_q : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_o : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8sumAHighB_uid159_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal concXZeroYZero_uid352_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostRR_uid363_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal atanResPostRR_uid363_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal invSignX_uid9_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid9_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concSigns_uid354_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invSignY_uid11_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignY_uid11_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_1_uid28_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal invSignOfSelectionSignal_uid37_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid37_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_uid336_atan2Test_in : STD_LOGIC_VECTOR (62 downto 0);
    signal aip1E_uid336_atan2Test_b : STD_LOGIC_VECTOR (62 downto 0);
    signal invSignOfSelectionSignal_uid293_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid293_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid295_atan2Test_a : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_16_uid295_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_16_uid295_atan2Test_o : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_16_uid295_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid295_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_16_uid294_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_16_uid294_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_16_uid294_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_16_uid294_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_16_uid294_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal invSignOfSelectionSignal_uid259_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid259_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid261_atan2Test_a : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_14_uid261_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_14_uid261_atan2Test_o : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_14_uid261_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid261_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_14_uid260_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_14_uid260_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_14_uid260_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_14_uid260_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid260_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal invSignOfSelectionSignal_uid225_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid225_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid227_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_12_uid227_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_12_uid227_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_12_uid227_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid227_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_12_uid226_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_12_uid226_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_12_uid226_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_12_uid226_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid226_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal invSignOfSelectionSignal_uid191_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid191_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid193_atan2Test_a : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_10_uid193_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_10_uid193_atan2Test_o : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_10_uid193_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid193_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_10_uid192_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_10_uid192_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_10_uid192_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_10_uid192_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid192_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal invSignOfSelectionSignal_uid153_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid153_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid156_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal invSignOfSelectionSignal_uid113_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid113_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_6_uid125_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_6_uid125_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal invSignOfSelectionSignal_uid75_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid75_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_4_uid87_atan2Test_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_4_uid87_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_2_uid49_atan2Test_in : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1_2_uid49_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1_8_uid165_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1_8_uid165_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
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
    signal aip1E_uid31_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal aip1E_uid31_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_a : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_o : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal alphaPreRnd_uid337_atan2Test_in : STD_LOGIC_VECTOR (62 downto 0);
    signal alphaPreRnd_uid337_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_16sumAHighB_uid299_atan2Test_a : STD_LOGIC_VECTOR (60 downto 0);
    signal aip1E_16sumAHighB_uid299_atan2Test_b : STD_LOGIC_VECTOR (60 downto 0);
    signal aip1E_16sumAHighB_uid299_atan2Test_o : STD_LOGIC_VECTOR (60 downto 0);
    signal aip1E_16sumAHighB_uid299_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_16sumAHighB_uid299_atan2Test_q : STD_LOGIC_VECTOR (59 downto 0);
    signal yip1_16_uid301_atan2Test_in : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_16_uid301_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1_16_uid300_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_16_uid300_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_14sumAHighB_uid265_atan2Test_a : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_14sumAHighB_uid265_atan2Test_b : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_14sumAHighB_uid265_atan2Test_o : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_14sumAHighB_uid265_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_14sumAHighB_uid265_atan2Test_q : STD_LOGIC_VECTOR (55 downto 0);
    signal yip1_14_uid267_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_14_uid267_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_14_uid266_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_14_uid266_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_12sumAHighB_uid231_atan2Test_a : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_12sumAHighB_uid231_atan2Test_b : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_12sumAHighB_uid231_atan2Test_o : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_12sumAHighB_uid231_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_12sumAHighB_uid231_atan2Test_q : STD_LOGIC_VECTOR (51 downto 0);
    signal yip1_12_uid233_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_12_uid233_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_12_uid232_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_12_uid232_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_10sumAHighB_uid197_atan2Test_a : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_10sumAHighB_uid197_atan2Test_b : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_10sumAHighB_uid197_atan2Test_o : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_10sumAHighB_uid197_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_10sumAHighB_uid197_atan2Test_q : STD_LOGIC_VECTOR (47 downto 0);
    signal yip1_10_uid199_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_10_uid199_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_10_uid198_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_10_uid198_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_8sumAHighB_uid163_atan2Test_a : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_8sumAHighB_uid163_atan2Test_b : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_8sumAHighB_uid163_atan2Test_o : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_8sumAHighB_uid163_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_8sumAHighB_uid163_atan2Test_q : STD_LOGIC_VECTOR (43 downto 0);
    signal xip1_8_uid164_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_8_uid164_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_a : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_o : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6sumAHighB_uid116_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_6sumAHighB_uid123_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal xMSB_uid127_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid127_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7NA_uid137_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_a : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_o : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_q : STD_LOGIC_VECTOR (20 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_a : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_o : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_4sumAHighB_uid85_atan2Test_q : STD_LOGIC_VECTOR (35 downto 0);
    signal xMSB_uid89_atan2Test_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xMSB_uid89_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5NA_uid99_atan2Test_q : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid51_atan2Test_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid51_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3NA_uid61_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid167_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid167_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid172_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid172_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal absX_uid13_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal absX_uid13_atan2Test_b : STD_LOGIC_VECTOR (11 downto 0);
    signal absY_uid14_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal absY_uid14_atan2Test_b : STD_LOGIC_VECTOR (11 downto 0);
    signal aip1E_2NA_uid46_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1_2_uid48_atan2Test_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1_2_uid48_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal lowRangeA_uid341_atan2Test_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeA_uid341_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highABits_uid342_atan2Test_in : STD_LOGIC_VECTOR (18 downto 0);
    signal highABits_uid342_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_uid302_atan2Test_in : STD_LOGIC_VECTOR (58 downto 0);
    signal aip1E_uid302_atan2Test_b : STD_LOGIC_VECTOR (58 downto 0);
    signal xMSB_uid303_atan2Test_in : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid303_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid307_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid307_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid268_atan2Test_in : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_uid268_atan2Test_b : STD_LOGIC_VECTOR (54 downto 0);
    signal xMSB_uid269_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid269_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid274_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal twoToMiSiYip_uid274_atan2Test_b : STD_LOGIC_VECTOR (8 downto 0);
    signal twoToMiSiXip_uid273_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid273_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal aip1E_uid234_atan2Test_in : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_uid234_atan2Test_b : STD_LOGIC_VECTOR (50 downto 0);
    signal xMSB_uid235_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid235_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid240_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiYip_uid240_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal twoToMiSiXip_uid239_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid239_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal aip1E_uid200_atan2Test_in : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_uid200_atan2Test_b : STD_LOGIC_VECTOR (46 downto 0);
    signal xMSB_uid201_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid201_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid206_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiYip_uid206_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal twoToMiSiXip_uid205_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid205_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal aip1E_uid166_atan2Test_in : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_uid166_atan2Test_b : STD_LOGIC_VECTOR (42 downto 0);
    signal twoToMiSiXip_uid171_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid171_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_6_uid124_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_6_uid124_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal aip1E_uid126_atan2Test_in : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_uid126_atan2Test_b : STD_LOGIC_VECTOR (38 downto 0);
    signal invSignOfSelectionSignal_uid132_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid132_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_o : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid138_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1_4_uid86_atan2Test_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_4_uid86_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid88_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_uid88_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal invSignOfSelectionSignal_uid94_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid94_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_a : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_o : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal invSignOfSelectionSignal_uid56_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid56_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_a : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_o : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal invSignOfSelectionSignal_uid174_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid174_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid176_atan2Test_a : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_9_uid176_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_9_uid176_atan2Test_o : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_9_uid176_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid176_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_9_uid175_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_9_uid175_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_9_uid175_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_9_uid175_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid175_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_a : STD_LOGIC_VECTOR (32 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_o : STD_LOGIC_VECTOR (32 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_2sumAHighB_uid47_atan2Test_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_3NA_uid58_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal alphaPostRndhigh_uid343_atan2Test_a : STD_LOGIC_VECTOR (18 downto 0);
    signal alphaPostRndhigh_uid343_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal alphaPostRndhigh_uid343_atan2Test_o : STD_LOGIC_VECTOR (18 downto 0);
    signal alphaPostRndhigh_uid343_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_17NA_uid315_atan2Test_q : STD_LOGIC_VECTOR (60 downto 0);
    signal yip1E_17_uid312_atan2Test_a : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_17_uid312_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_17_uid312_atan2Test_o : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_17_uid312_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_17_uid312_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal invSignOfSelectionSignal_uid313_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid313_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_15NA_uid281_atan2Test_q : STD_LOGIC_VECTOR (56 downto 0);
    signal invSignOfSelectionSignal_uid276_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid276_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid278_atan2Test_a : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_15_uid278_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_15_uid278_atan2Test_o : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_15_uid278_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid278_atan2Test_q : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_15_uid277_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_15_uid277_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_15_uid277_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_15_uid277_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_15_uid277_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_13NA_uid247_atan2Test_q : STD_LOGIC_VECTOR (52 downto 0);
    signal invSignOfSelectionSignal_uid242_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid242_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid244_atan2Test_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_13_uid244_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_13_uid244_atan2Test_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_13_uid244_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid244_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_13_uid243_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_13_uid243_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_13_uid243_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_13_uid243_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid243_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_11NA_uid213_atan2Test_q : STD_LOGIC_VECTOR (48 downto 0);
    signal invSignOfSelectionSignal_uid208_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid208_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid210_atan2Test_a : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_11_uid210_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_11_uid210_atan2Test_o : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_11_uid210_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid210_atan2Test_q : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_11_uid209_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_11_uid209_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_11_uid209_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_11_uid209_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid209_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_9NA_uid179_atan2Test_q : STD_LOGIC_VECTOR (44 downto 0);
    signal xip1E_7NA_uid134_atan2Test_q : STD_LOGIC_VECTOR (33 downto 0);
    signal aip1E_7NA_uid141_atan2Test_q : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_a : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_o : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7sumAHighB_uid135_atan2Test_q : STD_LOGIC_VECTOR (35 downto 0);
    signal aip1E_7sumAHighB_uid142_atan2Test_a : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_7sumAHighB_uid142_atan2Test_b : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_7sumAHighB_uid142_atan2Test_o : STD_LOGIC_VECTOR (42 downto 0);
    signal aip1E_7sumAHighB_uid142_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_7sumAHighB_uid142_atan2Test_q : STD_LOGIC_VECTOR (41 downto 0);
    signal yip1_7_uid144_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1_7_uid144_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_5NA_uid96_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal aip1E_5NA_uid103_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_a : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_o : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_a : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_b : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_o : STD_LOGIC_VECTOR (38 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_5sumAHighB_uid104_atan2Test_q : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_5_uid106_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1_5_uid106_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_a : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_o : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_3_uid68_atan2Test_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_3_uid68_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_9sumAHighB_uid180_atan2Test_a : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_9sumAHighB_uid180_atan2Test_b : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_9sumAHighB_uid180_atan2Test_o : STD_LOGIC_VECTOR (46 downto 0);
    signal aip1E_9sumAHighB_uid180_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_9sumAHighB_uid180_atan2Test_q : STD_LOGIC_VECTOR (45 downto 0);
    signal yip1_9_uid182_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1_9_uid182_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_9_uid181_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_9_uid181_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_uid50_atan2Test_in : STD_LOGIC_VECTOR (30 downto 0);
    signal aip1E_uid50_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal alphaPostRnd_uid344_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal aip1E_17sumAHighB_uid316_atan2Test_a : STD_LOGIC_VECTOR (62 downto 0);
    signal aip1E_17sumAHighB_uid316_atan2Test_b : STD_LOGIC_VECTOR (62 downto 0);
    signal aip1E_17sumAHighB_uid316_atan2Test_o : STD_LOGIC_VECTOR (62 downto 0);
    signal aip1E_17sumAHighB_uid316_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_17sumAHighB_uid316_atan2Test_q : STD_LOGIC_VECTOR (61 downto 0);
    signal yip1_17_uid318_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1_17_uid318_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal aip1E_15sumAHighB_uid282_atan2Test_a : STD_LOGIC_VECTOR (58 downto 0);
    signal aip1E_15sumAHighB_uid282_atan2Test_b : STD_LOGIC_VECTOR (58 downto 0);
    signal aip1E_15sumAHighB_uid282_atan2Test_o : STD_LOGIC_VECTOR (58 downto 0);
    signal aip1E_15sumAHighB_uid282_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_15sumAHighB_uid282_atan2Test_q : STD_LOGIC_VECTOR (57 downto 0);
    signal yip1_15_uid284_atan2Test_in : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1_15_uid284_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1_15_uid283_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_15_uid283_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_13sumAHighB_uid248_atan2Test_a : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_13sumAHighB_uid248_atan2Test_b : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_13sumAHighB_uid248_atan2Test_o : STD_LOGIC_VECTOR (54 downto 0);
    signal aip1E_13sumAHighB_uid248_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_13sumAHighB_uid248_atan2Test_q : STD_LOGIC_VECTOR (53 downto 0);
    signal yip1_13_uid250_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_13_uid250_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1_13_uid249_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_13_uid249_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_11sumAHighB_uid214_atan2Test_a : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_11sumAHighB_uid214_atan2Test_b : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_11sumAHighB_uid214_atan2Test_o : STD_LOGIC_VECTOR (50 downto 0);
    signal aip1E_11sumAHighB_uid214_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_11sumAHighB_uid214_atan2Test_q : STD_LOGIC_VECTOR (49 downto 0);
    signal yip1_11_uid216_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_11_uid216_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1_11_uid215_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_11_uid215_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_7_uid143_atan2Test_in : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1_7_uid143_atan2Test_b : STD_LOGIC_VECTOR (33 downto 0);
    signal aip1E_uid145_atan2Test_in : STD_LOGIC_VECTOR (40 downto 0);
    signal aip1E_uid145_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1_5_uid105_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_5_uid105_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal aip1E_uid107_atan2Test_in : STD_LOGIC_VECTOR (36 downto 0);
    signal aip1E_uid107_atan2Test_b : STD_LOGIC_VECTOR (36 downto 0);
    signal xip1_3_uid67_atan2Test_in : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1_3_uid67_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_uid183_atan2Test_in : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_uid183_atan2Test_b : STD_LOGIC_VECTOR (44 downto 0);
    signal aip1E_3NA_uid65_atan2Test_q : STD_LOGIC_VECTOR (32 downto 0);
    signal atanRes_uid345_atan2Test_in : STD_LOGIC_VECTOR (18 downto 0);
    signal atanRes_uid345_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid319_atan2Test_in : STD_LOGIC_VECTOR (60 downto 0);
    signal aip1E_uid319_atan2Test_b : STD_LOGIC_VECTOR (60 downto 0);
    signal xMSB_uid320_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal xMSB_uid320_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_uid285_atan2Test_in : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_uid285_atan2Test_b : STD_LOGIC_VECTOR (56 downto 0);
    signal aip1E_uid251_atan2Test_in : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_uid251_atan2Test_b : STD_LOGIC_VECTOR (52 downto 0);
    signal aip1E_uid217_atan2Test_in : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_uid217_atan2Test_b : STD_LOGIC_VECTOR (48 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_a : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_o : STD_LOGIC_VECTOR (34 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_3sumAHighB_uid66_atan2Test_q : STD_LOGIC_VECTOR (33 downto 0);
    signal aip1E_uid69_atan2Test_in : STD_LOGIC_VECTOR (32 downto 0);
    signal aip1E_uid69_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- constPi_uid356_atan2Test(CONSTANT,355)
    constPi_uid356_atan2Test_q <= "1100100100001111111";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- constPiP2uE_uid347_atan2Test(CONSTANT,346)
    constPiP2uE_uid347_atan2Test_q <= "110010010001000001";

    -- constPio2P2u_mergedSignalTM_uid350_atan2Test(BITJOIN,349)@10
    constPio2P2u_mergedSignalTM_uid350_atan2Test_q <= GND_q & constPiP2uE_uid347_atan2Test_q;

    -- cstZeroOutFormat_uid346_atan2Test(CONSTANT,345)
    cstZeroOutFormat_uid346_atan2Test_q <= "0000000000000000010";

    -- xMSB_uid303_atan2Test(BITSELECT,302)@8
    xMSB_uid303_atan2Test_in <= STD_LOGIC_VECTOR(yip1_16_uid301_atan2Test_b);
    xMSB_uid303_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid303_atan2Test_in(20 downto 20));

    -- xMSB_uid269_atan2Test(BITSELECT,268)@7
    xMSB_uid269_atan2Test_in <= STD_LOGIC_VECTOR(yip1_14_uid267_atan2Test_b);
    xMSB_uid269_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid269_atan2Test_in(22 downto 22));

    -- xMSB_uid235_atan2Test(BITSELECT,234)@6
    xMSB_uid235_atan2Test_in <= STD_LOGIC_VECTOR(yip1_12_uid233_atan2Test_b);
    xMSB_uid235_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid235_atan2Test_in(24 downto 24));

    -- xMSB_uid201_atan2Test(BITSELECT,200)@5
    xMSB_uid201_atan2Test_in <= STD_LOGIC_VECTOR(yip1_10_uid199_atan2Test_b);
    xMSB_uid201_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid201_atan2Test_in(26 downto 26));

    -- xMSB_uid167_atan2Test(BITSELECT,166)@4
    xMSB_uid167_atan2Test_in <= STD_LOGIC_VECTOR(yip1_8_uid165_atan2Test_b);
    xMSB_uid167_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid167_atan2Test_in(28 downto 28));

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

    -- aip1E_2CostZeroPaddingA_uid45_atan2Test(CONSTANT,44)
    aip1E_2CostZeroPaddingA_uid45_atan2Test_q <= "00";

    -- yip1E_3NA_uid61_atan2Test(BITJOIN,60)@1
    yip1E_3NA_uid61_atan2Test_q <= yip1_2_uid49_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

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

    -- redist23(DELAY,387)
    redist23 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_3_uid68_atan2Test_b, xout => redist23_q, clk => clk, aclr => areset );

    -- xMSB_uid70_atan2Test(BITSELECT,69)@2
    xMSB_uid70_atan2Test_in <= STD_LOGIC_VECTOR(redist23_q);
    xMSB_uid70_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid70_atan2Test_in(14 downto 14));

    -- invSignOfSelectionSignal_uid56_atan2Test(LOGICAL,55)@1
    invSignOfSelectionSignal_uid56_atan2Test_a <= xMSB_uid51_atan2Test_b;
    invSignOfSelectionSignal_uid56_atan2Test_q <= not (invSignOfSelectionSignal_uid56_atan2Test_a);

    -- xip1E_3NA_uid58_atan2Test(BITJOIN,57)@1
    xip1E_3NA_uid58_atan2Test_q <= xip1_2_uid48_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

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

    -- redist24(DELAY,388)
    redist24 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_3_uid67_atan2Test_b, xout => redist24_q, clk => clk, aclr => areset );

    -- xip1E_4CostZeroPaddingA_uid76_atan2Test(CONSTANT,75)
    xip1E_4CostZeroPaddingA_uid76_atan2Test_q <= "000";

    -- yip1E_4NA_uid80_atan2Test(BITJOIN,79)@2
    yip1E_4NA_uid80_atan2Test_q <= redist23_q & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- yip1E_4sumAHighB_uid81_atan2Test(ADDSUB,80)@2
    yip1E_4sumAHighB_uid81_atan2Test_s <= xMSB_uid70_atan2Test_b;
    yip1E_4sumAHighB_uid81_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => yip1E_4NA_uid80_atan2Test_q(17)) & yip1E_4NA_uid80_atan2Test_q));
    yip1E_4sumAHighB_uid81_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist24_q));
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

    -- invSignOfSelectionSignal_uid75_atan2Test(LOGICAL,74)@2
    invSignOfSelectionSignal_uid75_atan2Test_a <= xMSB_uid70_atan2Test_b;
    invSignOfSelectionSignal_uid75_atan2Test_q <= not (invSignOfSelectionSignal_uid75_atan2Test_a);

    -- xip1E_4NA_uid77_atan2Test(BITJOIN,76)@2
    xip1E_4NA_uid77_atan2Test_q <= redist24_q & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- xip1E_4sumAHighB_uid78_atan2Test(ADDSUB,77)@2
    xip1E_4sumAHighB_uid78_atan2Test_s <= invSignOfSelectionSignal_uid75_atan2Test_q;
    xip1E_4sumAHighB_uid78_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_4NA_uid77_atan2Test_q));
    xip1E_4sumAHighB_uid78_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 15 => redist23_q(14)) & redist23_q));
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

    -- redist20(DELAY,384)
    redist20 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_5_uid106_atan2Test_b, xout => redist20_q, clk => clk, aclr => areset );

    -- xMSB_uid108_atan2Test(BITSELECT,107)@3
    xMSB_uid108_atan2Test_in <= STD_LOGIC_VECTOR(redist20_q);
    xMSB_uid108_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid108_atan2Test_in(19 downto 19));

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

    -- redist21(DELAY,385)
    redist21 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_5_uid105_atan2Test_b, xout => redist21_q, clk => clk, aclr => areset );

    -- xip1E_6CostZeroPaddingA_uid114_atan2Test(CONSTANT,113)
    xip1E_6CostZeroPaddingA_uid114_atan2Test_q <= "00000";

    -- yip1E_6NA_uid118_atan2Test(BITJOIN,117)@3
    yip1E_6NA_uid118_atan2Test_q <= redist20_q & xip1E_6CostZeroPaddingA_uid114_atan2Test_q;

    -- yip1E_6sumAHighB_uid119_atan2Test(ADDSUB,118)@3
    yip1E_6sumAHighB_uid119_atan2Test_s <= xMSB_uid108_atan2Test_b;
    yip1E_6sumAHighB_uid119_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1E_6NA_uid118_atan2Test_q(24)) & yip1E_6NA_uid118_atan2Test_q));
    yip1E_6sumAHighB_uid119_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist21_q));
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

    -- invSignOfSelectionSignal_uid113_atan2Test(LOGICAL,112)@3
    invSignOfSelectionSignal_uid113_atan2Test_a <= xMSB_uid108_atan2Test_b;
    invSignOfSelectionSignal_uid113_atan2Test_q <= not (invSignOfSelectionSignal_uid113_atan2Test_a);

    -- xip1E_6NA_uid115_atan2Test(BITJOIN,114)@3
    xip1E_6NA_uid115_atan2Test_q <= redist21_q & xip1E_6CostZeroPaddingA_uid114_atan2Test_q;

    -- xip1E_6sumAHighB_uid116_atan2Test(ADDSUB,115)@3
    xip1E_6sumAHighB_uid116_atan2Test_s <= invSignOfSelectionSignal_uid113_atan2Test_q;
    xip1E_6sumAHighB_uid116_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_6NA_uid115_atan2Test_q));
    xip1E_6sumAHighB_uid116_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 20 => redist20_q(19)) & redist20_q));
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

    -- redist17(DELAY,381)
    redist17 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_7_uid144_atan2Test_b, xout => redist17_q, clk => clk, aclr => areset );

    -- xMSB_uid146_atan2Test(BITSELECT,145)@4
    xMSB_uid146_atan2Test_in <= STD_LOGIC_VECTOR(redist17_q);
    xMSB_uid146_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid146_atan2Test_in(28 downto 28));

    -- invSignOfSelectionSignal_uid153_atan2Test(LOGICAL,152)@4
    invSignOfSelectionSignal_uid153_atan2Test_a <= xMSB_uid146_atan2Test_b;
    invSignOfSelectionSignal_uid153_atan2Test_q <= not (invSignOfSelectionSignal_uid153_atan2Test_a);

    -- twoToMiSiYip_uid151_atan2Test(BITSELECT,150)@4
    twoToMiSiYip_uid151_atan2Test_in <= STD_LOGIC_VECTOR(redist17_q);
    twoToMiSiYip_uid151_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid151_atan2Test_in(28 downto 6));

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

    -- redist18(DELAY,382)
    redist18 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_7_uid143_atan2Test_b, xout => redist18_q, clk => clk, aclr => areset );

    -- xip1E_8NA_uid155_atan2Test(BITJOIN,154)@4
    xip1E_8NA_uid155_atan2Test_q <= redist18_q & GND_q;

    -- xip1E_8sumAHighB_uid156_atan2Test(ADDSUB,155)@4
    xip1E_8sumAHighB_uid156_atan2Test_s <= invSignOfSelectionSignal_uid153_atan2Test_q;
    xip1E_8sumAHighB_uid156_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_8NA_uid155_atan2Test_q));
    xip1E_8sumAHighB_uid156_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 23 => twoToMiSiYip_uid151_atan2Test_b(22)) & twoToMiSiYip_uid151_atan2Test_b));
    xip1E_8sumAHighB_uid156_atan2Test_combproc: PROCESS (xip1E_8sumAHighB_uid156_atan2Test_a, xip1E_8sumAHighB_uid156_atan2Test_b, xip1E_8sumAHighB_uid156_atan2Test_s)
    BEGIN
        IF (xip1E_8sumAHighB_uid156_atan2Test_s = "1") THEN
            xip1E_8sumAHighB_uid156_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid156_atan2Test_a) + SIGNED(xip1E_8sumAHighB_uid156_atan2Test_b));
        ELSE
            xip1E_8sumAHighB_uid156_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid156_atan2Test_a) - SIGNED(xip1E_8sumAHighB_uid156_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_8sumAHighB_uid156_atan2Test_q <= xip1E_8sumAHighB_uid156_atan2Test_o(36 downto 0);

    -- xip1_8_uid164_atan2Test(BITSELECT,163)@4
    xip1_8_uid164_atan2Test_in <= xip1E_8sumAHighB_uid156_atan2Test_q(34 downto 0);
    xip1_8_uid164_atan2Test_b <= xip1_8_uid164_atan2Test_in(34 downto 0);

    -- twoToMiSiXip_uid171_atan2Test(BITSELECT,170)@4
    twoToMiSiXip_uid171_atan2Test_in <= xip1_8_uid164_atan2Test_b;
    twoToMiSiXip_uid171_atan2Test_b <= twoToMiSiXip_uid171_atan2Test_in(34 downto 8);

    -- twoToMiSiXip_uid150_atan2Test(BITSELECT,149)@4
    twoToMiSiXip_uid150_atan2Test_in <= redist18_q;
    twoToMiSiXip_uid150_atan2Test_b <= twoToMiSiXip_uid150_atan2Test_in(33 downto 6);

    -- yip1E_8NA_uid158_atan2Test(BITJOIN,157)@4
    yip1E_8NA_uid158_atan2Test_q <= redist17_q & GND_q;

    -- yip1E_8sumAHighB_uid159_atan2Test(ADDSUB,158)@4
    yip1E_8sumAHighB_uid159_atan2Test_s <= xMSB_uid146_atan2Test_b;
    yip1E_8sumAHighB_uid159_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => yip1E_8NA_uid158_atan2Test_q(29)) & yip1E_8NA_uid158_atan2Test_q));
    yip1E_8sumAHighB_uid159_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid150_atan2Test_b));
    yip1E_8sumAHighB_uid159_atan2Test_combproc: PROCESS (yip1E_8sumAHighB_uid159_atan2Test_a, yip1E_8sumAHighB_uid159_atan2Test_b, yip1E_8sumAHighB_uid159_atan2Test_s)
    BEGIN
        IF (yip1E_8sumAHighB_uid159_atan2Test_s = "1") THEN
            yip1E_8sumAHighB_uid159_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid159_atan2Test_a) + SIGNED(yip1E_8sumAHighB_uid159_atan2Test_b));
        ELSE
            yip1E_8sumAHighB_uid159_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid159_atan2Test_a) - SIGNED(yip1E_8sumAHighB_uid159_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_8sumAHighB_uid159_atan2Test_q <= yip1E_8sumAHighB_uid159_atan2Test_o(30 downto 0);

    -- yip1_8_uid165_atan2Test(BITSELECT,164)@4
    yip1_8_uid165_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_8sumAHighB_uid159_atan2Test_q(28 downto 0));
    yip1_8_uid165_atan2Test_b <= STD_LOGIC_VECTOR(yip1_8_uid165_atan2Test_in(28 downto 0));

    -- yip1E_9_uid176_atan2Test(ADDSUB,175)@4
    yip1E_9_uid176_atan2Test_s <= xMSB_uid167_atan2Test_b;
    yip1E_9_uid176_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => yip1_8_uid165_atan2Test_b(28)) & yip1_8_uid165_atan2Test_b));
    yip1E_9_uid176_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid171_atan2Test_b));
    yip1E_9_uid176_atan2Test_combproc: PROCESS (yip1E_9_uid176_atan2Test_a, yip1E_9_uid176_atan2Test_b, yip1E_9_uid176_atan2Test_s)
    BEGIN
        IF (yip1E_9_uid176_atan2Test_s = "1") THEN
            yip1E_9_uid176_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid176_atan2Test_a) + SIGNED(yip1E_9_uid176_atan2Test_b));
        ELSE
            yip1E_9_uid176_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid176_atan2Test_a) - SIGNED(yip1E_9_uid176_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_9_uid176_atan2Test_q <= yip1E_9_uid176_atan2Test_o(29 downto 0);

    -- yip1_9_uid182_atan2Test(BITSELECT,181)@4
    yip1_9_uid182_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_9_uid176_atan2Test_q(27 downto 0));
    yip1_9_uid182_atan2Test_b <= STD_LOGIC_VECTOR(yip1_9_uid182_atan2Test_in(27 downto 0));

    -- redist14(DELAY,378)
    redist14 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_9_uid182_atan2Test_b, xout => redist14_q, clk => clk, aclr => areset );

    -- xMSB_uid184_atan2Test(BITSELECT,183)@5
    xMSB_uid184_atan2Test_in <= STD_LOGIC_VECTOR(redist14_q);
    xMSB_uid184_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid184_atan2Test_in(27 downto 27));

    -- invSignOfSelectionSignal_uid191_atan2Test(LOGICAL,190)@5
    invSignOfSelectionSignal_uid191_atan2Test_a <= xMSB_uid184_atan2Test_b;
    invSignOfSelectionSignal_uid191_atan2Test_q <= not (invSignOfSelectionSignal_uid191_atan2Test_a);

    -- twoToMiSiYip_uid189_atan2Test(BITSELECT,188)@5
    twoToMiSiYip_uid189_atan2Test_in <= STD_LOGIC_VECTOR(redist14_q);
    twoToMiSiYip_uid189_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid189_atan2Test_in(27 downto 9));

    -- invSignOfSelectionSignal_uid174_atan2Test(LOGICAL,173)@4
    invSignOfSelectionSignal_uid174_atan2Test_a <= xMSB_uid167_atan2Test_b;
    invSignOfSelectionSignal_uid174_atan2Test_q <= not (invSignOfSelectionSignal_uid174_atan2Test_a);

    -- twoToMiSiYip_uid172_atan2Test(BITSELECT,171)@4
    twoToMiSiYip_uid172_atan2Test_in <= STD_LOGIC_VECTOR(yip1_8_uid165_atan2Test_b);
    twoToMiSiYip_uid172_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid172_atan2Test_in(28 downto 8));

    -- xip1E_9_uid175_atan2Test(ADDSUB,174)@4
    xip1E_9_uid175_atan2Test_s <= invSignOfSelectionSignal_uid174_atan2Test_q;
    xip1E_9_uid175_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_8_uid164_atan2Test_b));
    xip1E_9_uid175_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 21 => twoToMiSiYip_uid172_atan2Test_b(20)) & twoToMiSiYip_uid172_atan2Test_b));
    xip1E_9_uid175_atan2Test_combproc: PROCESS (xip1E_9_uid175_atan2Test_a, xip1E_9_uid175_atan2Test_b, xip1E_9_uid175_atan2Test_s)
    BEGIN
        IF (xip1E_9_uid175_atan2Test_s = "1") THEN
            xip1E_9_uid175_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid175_atan2Test_a) + SIGNED(xip1E_9_uid175_atan2Test_b));
        ELSE
            xip1E_9_uid175_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid175_atan2Test_a) - SIGNED(xip1E_9_uid175_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_9_uid175_atan2Test_q <= xip1E_9_uid175_atan2Test_o(36 downto 0);

    -- xip1_9_uid181_atan2Test(BITSELECT,180)@4
    xip1_9_uid181_atan2Test_in <= xip1E_9_uid175_atan2Test_q(34 downto 0);
    xip1_9_uid181_atan2Test_b <= xip1_9_uid181_atan2Test_in(34 downto 0);

    -- redist15(DELAY,379)
    redist15 : dspba_delay
    GENERIC MAP ( width => 35, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_9_uid181_atan2Test_b, xout => redist15_q, clk => clk, aclr => areset );

    -- xip1E_10_uid192_atan2Test(ADDSUB,191)@5
    xip1E_10_uid192_atan2Test_s <= invSignOfSelectionSignal_uid191_atan2Test_q;
    xip1E_10_uid192_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist15_q));
    xip1E_10_uid192_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 19 => twoToMiSiYip_uid189_atan2Test_b(18)) & twoToMiSiYip_uid189_atan2Test_b));
    xip1E_10_uid192_atan2Test_combproc: PROCESS (xip1E_10_uid192_atan2Test_a, xip1E_10_uid192_atan2Test_b, xip1E_10_uid192_atan2Test_s)
    BEGIN
        IF (xip1E_10_uid192_atan2Test_s = "1") THEN
            xip1E_10_uid192_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid192_atan2Test_a) + SIGNED(xip1E_10_uid192_atan2Test_b));
        ELSE
            xip1E_10_uid192_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid192_atan2Test_a) - SIGNED(xip1E_10_uid192_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_10_uid192_atan2Test_q <= xip1E_10_uid192_atan2Test_o(36 downto 0);

    -- xip1_10_uid198_atan2Test(BITSELECT,197)@5
    xip1_10_uid198_atan2Test_in <= xip1E_10_uid192_atan2Test_q(34 downto 0);
    xip1_10_uid198_atan2Test_b <= xip1_10_uid198_atan2Test_in(34 downto 0);

    -- twoToMiSiXip_uid205_atan2Test(BITSELECT,204)@5
    twoToMiSiXip_uid205_atan2Test_in <= xip1_10_uid198_atan2Test_b;
    twoToMiSiXip_uid205_atan2Test_b <= twoToMiSiXip_uid205_atan2Test_in(34 downto 10);

    -- twoToMiSiXip_uid188_atan2Test(BITSELECT,187)@5
    twoToMiSiXip_uid188_atan2Test_in <= redist15_q;
    twoToMiSiXip_uid188_atan2Test_b <= twoToMiSiXip_uid188_atan2Test_in(34 downto 9);

    -- yip1E_10_uid193_atan2Test(ADDSUB,192)@5
    yip1E_10_uid193_atan2Test_s <= xMSB_uid184_atan2Test_b;
    yip1E_10_uid193_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => redist14_q(27)) & redist14_q));
    yip1E_10_uid193_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid188_atan2Test_b));
    yip1E_10_uid193_atan2Test_combproc: PROCESS (yip1E_10_uid193_atan2Test_a, yip1E_10_uid193_atan2Test_b, yip1E_10_uid193_atan2Test_s)
    BEGIN
        IF (yip1E_10_uid193_atan2Test_s = "1") THEN
            yip1E_10_uid193_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid193_atan2Test_a) + SIGNED(yip1E_10_uid193_atan2Test_b));
        ELSE
            yip1E_10_uid193_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid193_atan2Test_a) - SIGNED(yip1E_10_uid193_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_10_uid193_atan2Test_q <= yip1E_10_uid193_atan2Test_o(28 downto 0);

    -- yip1_10_uid199_atan2Test(BITSELECT,198)@5
    yip1_10_uid199_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_10_uid193_atan2Test_q(26 downto 0));
    yip1_10_uid199_atan2Test_b <= STD_LOGIC_VECTOR(yip1_10_uid199_atan2Test_in(26 downto 0));

    -- yip1E_11_uid210_atan2Test(ADDSUB,209)@5
    yip1E_11_uid210_atan2Test_s <= xMSB_uid201_atan2Test_b;
    yip1E_11_uid210_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => yip1_10_uid199_atan2Test_b(26)) & yip1_10_uid199_atan2Test_b));
    yip1E_11_uid210_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid205_atan2Test_b));
    yip1E_11_uid210_atan2Test_combproc: PROCESS (yip1E_11_uid210_atan2Test_a, yip1E_11_uid210_atan2Test_b, yip1E_11_uid210_atan2Test_s)
    BEGIN
        IF (yip1E_11_uid210_atan2Test_s = "1") THEN
            yip1E_11_uid210_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid210_atan2Test_a) + SIGNED(yip1E_11_uid210_atan2Test_b));
        ELSE
            yip1E_11_uid210_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid210_atan2Test_a) - SIGNED(yip1E_11_uid210_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_11_uid210_atan2Test_q <= yip1E_11_uid210_atan2Test_o(27 downto 0);

    -- yip1_11_uid216_atan2Test(BITSELECT,215)@5
    yip1_11_uid216_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_11_uid210_atan2Test_q(25 downto 0));
    yip1_11_uid216_atan2Test_b <= STD_LOGIC_VECTOR(yip1_11_uid216_atan2Test_in(25 downto 0));

    -- redist11(DELAY,375)
    redist11 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_11_uid216_atan2Test_b, xout => redist11_q, clk => clk, aclr => areset );

    -- xMSB_uid218_atan2Test(BITSELECT,217)@6
    xMSB_uid218_atan2Test_in <= STD_LOGIC_VECTOR(redist11_q);
    xMSB_uid218_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid218_atan2Test_in(25 downto 25));

    -- invSignOfSelectionSignal_uid225_atan2Test(LOGICAL,224)@6
    invSignOfSelectionSignal_uid225_atan2Test_a <= xMSB_uid218_atan2Test_b;
    invSignOfSelectionSignal_uid225_atan2Test_q <= not (invSignOfSelectionSignal_uid225_atan2Test_a);

    -- twoToMiSiYip_uid223_atan2Test(BITSELECT,222)@6
    twoToMiSiYip_uid223_atan2Test_in <= STD_LOGIC_VECTOR(redist11_q);
    twoToMiSiYip_uid223_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid223_atan2Test_in(25 downto 11));

    -- invSignOfSelectionSignal_uid208_atan2Test(LOGICAL,207)@5
    invSignOfSelectionSignal_uid208_atan2Test_a <= xMSB_uid201_atan2Test_b;
    invSignOfSelectionSignal_uid208_atan2Test_q <= not (invSignOfSelectionSignal_uid208_atan2Test_a);

    -- twoToMiSiYip_uid206_atan2Test(BITSELECT,205)@5
    twoToMiSiYip_uid206_atan2Test_in <= STD_LOGIC_VECTOR(yip1_10_uid199_atan2Test_b);
    twoToMiSiYip_uid206_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid206_atan2Test_in(26 downto 10));

    -- xip1E_11_uid209_atan2Test(ADDSUB,208)@5
    xip1E_11_uid209_atan2Test_s <= invSignOfSelectionSignal_uid208_atan2Test_q;
    xip1E_11_uid209_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_10_uid198_atan2Test_b));
    xip1E_11_uid209_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 17 => twoToMiSiYip_uid206_atan2Test_b(16)) & twoToMiSiYip_uid206_atan2Test_b));
    xip1E_11_uid209_atan2Test_combproc: PROCESS (xip1E_11_uid209_atan2Test_a, xip1E_11_uid209_atan2Test_b, xip1E_11_uid209_atan2Test_s)
    BEGIN
        IF (xip1E_11_uid209_atan2Test_s = "1") THEN
            xip1E_11_uid209_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid209_atan2Test_a) + SIGNED(xip1E_11_uid209_atan2Test_b));
        ELSE
            xip1E_11_uid209_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid209_atan2Test_a) - SIGNED(xip1E_11_uid209_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_11_uid209_atan2Test_q <= xip1E_11_uid209_atan2Test_o(36 downto 0);

    -- xip1_11_uid215_atan2Test(BITSELECT,214)@5
    xip1_11_uid215_atan2Test_in <= xip1E_11_uid209_atan2Test_q(34 downto 0);
    xip1_11_uid215_atan2Test_b <= xip1_11_uid215_atan2Test_in(34 downto 0);

    -- redist12(DELAY,376)
    redist12 : dspba_delay
    GENERIC MAP ( width => 35, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_11_uid215_atan2Test_b, xout => redist12_q, clk => clk, aclr => areset );

    -- xip1E_12_uid226_atan2Test(ADDSUB,225)@6
    xip1E_12_uid226_atan2Test_s <= invSignOfSelectionSignal_uid225_atan2Test_q;
    xip1E_12_uid226_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist12_q));
    xip1E_12_uid226_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 15 => twoToMiSiYip_uid223_atan2Test_b(14)) & twoToMiSiYip_uid223_atan2Test_b));
    xip1E_12_uid226_atan2Test_combproc: PROCESS (xip1E_12_uid226_atan2Test_a, xip1E_12_uid226_atan2Test_b, xip1E_12_uid226_atan2Test_s)
    BEGIN
        IF (xip1E_12_uid226_atan2Test_s = "1") THEN
            xip1E_12_uid226_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid226_atan2Test_a) + SIGNED(xip1E_12_uid226_atan2Test_b));
        ELSE
            xip1E_12_uid226_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid226_atan2Test_a) - SIGNED(xip1E_12_uid226_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_12_uid226_atan2Test_q <= xip1E_12_uid226_atan2Test_o(36 downto 0);

    -- xip1_12_uid232_atan2Test(BITSELECT,231)@6
    xip1_12_uid232_atan2Test_in <= xip1E_12_uid226_atan2Test_q(34 downto 0);
    xip1_12_uid232_atan2Test_b <= xip1_12_uid232_atan2Test_in(34 downto 0);

    -- twoToMiSiXip_uid239_atan2Test(BITSELECT,238)@6
    twoToMiSiXip_uid239_atan2Test_in <= xip1_12_uid232_atan2Test_b;
    twoToMiSiXip_uid239_atan2Test_b <= twoToMiSiXip_uid239_atan2Test_in(34 downto 12);

    -- twoToMiSiXip_uid222_atan2Test(BITSELECT,221)@6
    twoToMiSiXip_uid222_atan2Test_in <= redist12_q;
    twoToMiSiXip_uid222_atan2Test_b <= twoToMiSiXip_uid222_atan2Test_in(34 downto 11);

    -- yip1E_12_uid227_atan2Test(ADDSUB,226)@6
    yip1E_12_uid227_atan2Test_s <= xMSB_uid218_atan2Test_b;
    yip1E_12_uid227_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => redist11_q(25)) & redist11_q));
    yip1E_12_uid227_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid222_atan2Test_b));
    yip1E_12_uid227_atan2Test_combproc: PROCESS (yip1E_12_uid227_atan2Test_a, yip1E_12_uid227_atan2Test_b, yip1E_12_uid227_atan2Test_s)
    BEGIN
        IF (yip1E_12_uid227_atan2Test_s = "1") THEN
            yip1E_12_uid227_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid227_atan2Test_a) + SIGNED(yip1E_12_uid227_atan2Test_b));
        ELSE
            yip1E_12_uid227_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid227_atan2Test_a) - SIGNED(yip1E_12_uid227_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_12_uid227_atan2Test_q <= yip1E_12_uid227_atan2Test_o(26 downto 0);

    -- yip1_12_uid233_atan2Test(BITSELECT,232)@6
    yip1_12_uid233_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_12_uid227_atan2Test_q(24 downto 0));
    yip1_12_uid233_atan2Test_b <= STD_LOGIC_VECTOR(yip1_12_uid233_atan2Test_in(24 downto 0));

    -- yip1E_13_uid244_atan2Test(ADDSUB,243)@6
    yip1E_13_uid244_atan2Test_s <= xMSB_uid235_atan2Test_b;
    yip1E_13_uid244_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1_12_uid233_atan2Test_b(24)) & yip1_12_uid233_atan2Test_b));
    yip1E_13_uid244_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid239_atan2Test_b));
    yip1E_13_uid244_atan2Test_combproc: PROCESS (yip1E_13_uid244_atan2Test_a, yip1E_13_uid244_atan2Test_b, yip1E_13_uid244_atan2Test_s)
    BEGIN
        IF (yip1E_13_uid244_atan2Test_s = "1") THEN
            yip1E_13_uid244_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid244_atan2Test_a) + SIGNED(yip1E_13_uid244_atan2Test_b));
        ELSE
            yip1E_13_uid244_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid244_atan2Test_a) - SIGNED(yip1E_13_uid244_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_13_uid244_atan2Test_q <= yip1E_13_uid244_atan2Test_o(25 downto 0);

    -- yip1_13_uid250_atan2Test(BITSELECT,249)@6
    yip1_13_uid250_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_13_uid244_atan2Test_q(23 downto 0));
    yip1_13_uid250_atan2Test_b <= STD_LOGIC_VECTOR(yip1_13_uid250_atan2Test_in(23 downto 0));

    -- redist8(DELAY,372)
    redist8 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_13_uid250_atan2Test_b, xout => redist8_q, clk => clk, aclr => areset );

    -- xMSB_uid252_atan2Test(BITSELECT,251)@7
    xMSB_uid252_atan2Test_in <= STD_LOGIC_VECTOR(redist8_q);
    xMSB_uid252_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid252_atan2Test_in(23 downto 23));

    -- invSignOfSelectionSignal_uid259_atan2Test(LOGICAL,258)@7
    invSignOfSelectionSignal_uid259_atan2Test_a <= xMSB_uid252_atan2Test_b;
    invSignOfSelectionSignal_uid259_atan2Test_q <= not (invSignOfSelectionSignal_uid259_atan2Test_a);

    -- twoToMiSiYip_uid257_atan2Test(BITSELECT,256)@7
    twoToMiSiYip_uid257_atan2Test_in <= STD_LOGIC_VECTOR(redist8_q);
    twoToMiSiYip_uid257_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid257_atan2Test_in(23 downto 13));

    -- invSignOfSelectionSignal_uid242_atan2Test(LOGICAL,241)@6
    invSignOfSelectionSignal_uid242_atan2Test_a <= xMSB_uid235_atan2Test_b;
    invSignOfSelectionSignal_uid242_atan2Test_q <= not (invSignOfSelectionSignal_uid242_atan2Test_a);

    -- twoToMiSiYip_uid240_atan2Test(BITSELECT,239)@6
    twoToMiSiYip_uid240_atan2Test_in <= STD_LOGIC_VECTOR(yip1_12_uid233_atan2Test_b);
    twoToMiSiYip_uid240_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid240_atan2Test_in(24 downto 12));

    -- xip1E_13_uid243_atan2Test(ADDSUB,242)@6
    xip1E_13_uid243_atan2Test_s <= invSignOfSelectionSignal_uid242_atan2Test_q;
    xip1E_13_uid243_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_12_uid232_atan2Test_b));
    xip1E_13_uid243_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 13 => twoToMiSiYip_uid240_atan2Test_b(12)) & twoToMiSiYip_uid240_atan2Test_b));
    xip1E_13_uid243_atan2Test_combproc: PROCESS (xip1E_13_uid243_atan2Test_a, xip1E_13_uid243_atan2Test_b, xip1E_13_uid243_atan2Test_s)
    BEGIN
        IF (xip1E_13_uid243_atan2Test_s = "1") THEN
            xip1E_13_uid243_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid243_atan2Test_a) + SIGNED(xip1E_13_uid243_atan2Test_b));
        ELSE
            xip1E_13_uid243_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid243_atan2Test_a) - SIGNED(xip1E_13_uid243_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_13_uid243_atan2Test_q <= xip1E_13_uid243_atan2Test_o(36 downto 0);

    -- xip1_13_uid249_atan2Test(BITSELECT,248)@6
    xip1_13_uid249_atan2Test_in <= xip1E_13_uid243_atan2Test_q(34 downto 0);
    xip1_13_uid249_atan2Test_b <= xip1_13_uid249_atan2Test_in(34 downto 0);

    -- redist9(DELAY,373)
    redist9 : dspba_delay
    GENERIC MAP ( width => 35, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_13_uid249_atan2Test_b, xout => redist9_q, clk => clk, aclr => areset );

    -- xip1E_14_uid260_atan2Test(ADDSUB,259)@7
    xip1E_14_uid260_atan2Test_s <= invSignOfSelectionSignal_uid259_atan2Test_q;
    xip1E_14_uid260_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist9_q));
    xip1E_14_uid260_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 11 => twoToMiSiYip_uid257_atan2Test_b(10)) & twoToMiSiYip_uid257_atan2Test_b));
    xip1E_14_uid260_atan2Test_combproc: PROCESS (xip1E_14_uid260_atan2Test_a, xip1E_14_uid260_atan2Test_b, xip1E_14_uid260_atan2Test_s)
    BEGIN
        IF (xip1E_14_uid260_atan2Test_s = "1") THEN
            xip1E_14_uid260_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid260_atan2Test_a) + SIGNED(xip1E_14_uid260_atan2Test_b));
        ELSE
            xip1E_14_uid260_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid260_atan2Test_a) - SIGNED(xip1E_14_uid260_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_14_uid260_atan2Test_q <= xip1E_14_uid260_atan2Test_o(36 downto 0);

    -- xip1_14_uid266_atan2Test(BITSELECT,265)@7
    xip1_14_uid266_atan2Test_in <= xip1E_14_uid260_atan2Test_q(34 downto 0);
    xip1_14_uid266_atan2Test_b <= xip1_14_uid266_atan2Test_in(34 downto 0);

    -- twoToMiSiXip_uid273_atan2Test(BITSELECT,272)@7
    twoToMiSiXip_uid273_atan2Test_in <= xip1_14_uid266_atan2Test_b;
    twoToMiSiXip_uid273_atan2Test_b <= twoToMiSiXip_uid273_atan2Test_in(34 downto 14);

    -- twoToMiSiXip_uid256_atan2Test(BITSELECT,255)@7
    twoToMiSiXip_uid256_atan2Test_in <= redist9_q;
    twoToMiSiXip_uid256_atan2Test_b <= twoToMiSiXip_uid256_atan2Test_in(34 downto 13);

    -- yip1E_14_uid261_atan2Test(ADDSUB,260)@7
    yip1E_14_uid261_atan2Test_s <= xMSB_uid252_atan2Test_b;
    yip1E_14_uid261_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => redist8_q(23)) & redist8_q));
    yip1E_14_uid261_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid256_atan2Test_b));
    yip1E_14_uid261_atan2Test_combproc: PROCESS (yip1E_14_uid261_atan2Test_a, yip1E_14_uid261_atan2Test_b, yip1E_14_uid261_atan2Test_s)
    BEGIN
        IF (yip1E_14_uid261_atan2Test_s = "1") THEN
            yip1E_14_uid261_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid261_atan2Test_a) + SIGNED(yip1E_14_uid261_atan2Test_b));
        ELSE
            yip1E_14_uid261_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid261_atan2Test_a) - SIGNED(yip1E_14_uid261_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_14_uid261_atan2Test_q <= yip1E_14_uid261_atan2Test_o(24 downto 0);

    -- yip1_14_uid267_atan2Test(BITSELECT,266)@7
    yip1_14_uid267_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_14_uid261_atan2Test_q(22 downto 0));
    yip1_14_uid267_atan2Test_b <= STD_LOGIC_VECTOR(yip1_14_uid267_atan2Test_in(22 downto 0));

    -- yip1E_15_uid278_atan2Test(ADDSUB,277)@7
    yip1E_15_uid278_atan2Test_s <= xMSB_uid269_atan2Test_b;
    yip1E_15_uid278_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 23 => yip1_14_uid267_atan2Test_b(22)) & yip1_14_uid267_atan2Test_b));
    yip1E_15_uid278_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid273_atan2Test_b));
    yip1E_15_uid278_atan2Test_combproc: PROCESS (yip1E_15_uid278_atan2Test_a, yip1E_15_uid278_atan2Test_b, yip1E_15_uid278_atan2Test_s)
    BEGIN
        IF (yip1E_15_uid278_atan2Test_s = "1") THEN
            yip1E_15_uid278_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid278_atan2Test_a) + SIGNED(yip1E_15_uid278_atan2Test_b));
        ELSE
            yip1E_15_uid278_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid278_atan2Test_a) - SIGNED(yip1E_15_uid278_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_15_uid278_atan2Test_q <= yip1E_15_uid278_atan2Test_o(23 downto 0);

    -- yip1_15_uid284_atan2Test(BITSELECT,283)@7
    yip1_15_uid284_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_15_uid278_atan2Test_q(21 downto 0));
    yip1_15_uid284_atan2Test_b <= STD_LOGIC_VECTOR(yip1_15_uid284_atan2Test_in(21 downto 0));

    -- redist5(DELAY,369)
    redist5 : dspba_delay
    GENERIC MAP ( width => 22, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_15_uid284_atan2Test_b, xout => redist5_q, clk => clk, aclr => areset );

    -- xMSB_uid286_atan2Test(BITSELECT,285)@8
    xMSB_uid286_atan2Test_in <= STD_LOGIC_VECTOR(redist5_q);
    xMSB_uid286_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid286_atan2Test_in(21 downto 21));

    -- invSignOfSelectionSignal_uid293_atan2Test(LOGICAL,292)@8
    invSignOfSelectionSignal_uid293_atan2Test_a <= xMSB_uid286_atan2Test_b;
    invSignOfSelectionSignal_uid293_atan2Test_q <= not (invSignOfSelectionSignal_uid293_atan2Test_a);

    -- twoToMiSiYip_uid291_atan2Test(BITSELECT,290)@8
    twoToMiSiYip_uid291_atan2Test_in <= STD_LOGIC_VECTOR(redist5_q);
    twoToMiSiYip_uid291_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid291_atan2Test_in(21 downto 15));

    -- invSignOfSelectionSignal_uid276_atan2Test(LOGICAL,275)@7
    invSignOfSelectionSignal_uid276_atan2Test_a <= xMSB_uid269_atan2Test_b;
    invSignOfSelectionSignal_uid276_atan2Test_q <= not (invSignOfSelectionSignal_uid276_atan2Test_a);

    -- twoToMiSiYip_uid274_atan2Test(BITSELECT,273)@7
    twoToMiSiYip_uid274_atan2Test_in <= STD_LOGIC_VECTOR(yip1_14_uid267_atan2Test_b);
    twoToMiSiYip_uid274_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid274_atan2Test_in(22 downto 14));

    -- xip1E_15_uid277_atan2Test(ADDSUB,276)@7
    xip1E_15_uid277_atan2Test_s <= invSignOfSelectionSignal_uid276_atan2Test_q;
    xip1E_15_uid277_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_14_uid266_atan2Test_b));
    xip1E_15_uid277_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 9 => twoToMiSiYip_uid274_atan2Test_b(8)) & twoToMiSiYip_uid274_atan2Test_b));
    xip1E_15_uid277_atan2Test_combproc: PROCESS (xip1E_15_uid277_atan2Test_a, xip1E_15_uid277_atan2Test_b, xip1E_15_uid277_atan2Test_s)
    BEGIN
        IF (xip1E_15_uid277_atan2Test_s = "1") THEN
            xip1E_15_uid277_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid277_atan2Test_a) + SIGNED(xip1E_15_uid277_atan2Test_b));
        ELSE
            xip1E_15_uid277_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid277_atan2Test_a) - SIGNED(xip1E_15_uid277_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_15_uid277_atan2Test_q <= xip1E_15_uid277_atan2Test_o(36 downto 0);

    -- xip1_15_uid283_atan2Test(BITSELECT,282)@7
    xip1_15_uid283_atan2Test_in <= xip1E_15_uid277_atan2Test_q(34 downto 0);
    xip1_15_uid283_atan2Test_b <= xip1_15_uid283_atan2Test_in(34 downto 0);

    -- redist6(DELAY,370)
    redist6 : dspba_delay
    GENERIC MAP ( width => 35, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_15_uid283_atan2Test_b, xout => redist6_q, clk => clk, aclr => areset );

    -- xip1E_16_uid294_atan2Test(ADDSUB,293)@8
    xip1E_16_uid294_atan2Test_s <= invSignOfSelectionSignal_uid293_atan2Test_q;
    xip1E_16_uid294_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist6_q));
    xip1E_16_uid294_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 7 => twoToMiSiYip_uid291_atan2Test_b(6)) & twoToMiSiYip_uid291_atan2Test_b));
    xip1E_16_uid294_atan2Test_combproc: PROCESS (xip1E_16_uid294_atan2Test_a, xip1E_16_uid294_atan2Test_b, xip1E_16_uid294_atan2Test_s)
    BEGIN
        IF (xip1E_16_uid294_atan2Test_s = "1") THEN
            xip1E_16_uid294_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid294_atan2Test_a) + SIGNED(xip1E_16_uid294_atan2Test_b));
        ELSE
            xip1E_16_uid294_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid294_atan2Test_a) - SIGNED(xip1E_16_uid294_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_16_uid294_atan2Test_q <= xip1E_16_uid294_atan2Test_o(36 downto 0);

    -- xip1_16_uid300_atan2Test(BITSELECT,299)@8
    xip1_16_uid300_atan2Test_in <= xip1E_16_uid294_atan2Test_q(34 downto 0);
    xip1_16_uid300_atan2Test_b <= xip1_16_uid300_atan2Test_in(34 downto 0);

    -- twoToMiSiXip_uid307_atan2Test(BITSELECT,306)@8
    twoToMiSiXip_uid307_atan2Test_in <= xip1_16_uid300_atan2Test_b;
    twoToMiSiXip_uid307_atan2Test_b <= twoToMiSiXip_uid307_atan2Test_in(34 downto 16);

    -- twoToMiSiXip_uid290_atan2Test(BITSELECT,289)@8
    twoToMiSiXip_uid290_atan2Test_in <= redist6_q;
    twoToMiSiXip_uid290_atan2Test_b <= twoToMiSiXip_uid290_atan2Test_in(34 downto 15);

    -- yip1E_16_uid295_atan2Test(ADDSUB,294)@8
    yip1E_16_uid295_atan2Test_s <= xMSB_uid286_atan2Test_b;
    yip1E_16_uid295_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 22 => redist5_q(21)) & redist5_q));
    yip1E_16_uid295_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid290_atan2Test_b));
    yip1E_16_uid295_atan2Test_combproc: PROCESS (yip1E_16_uid295_atan2Test_a, yip1E_16_uid295_atan2Test_b, yip1E_16_uid295_atan2Test_s)
    BEGIN
        IF (yip1E_16_uid295_atan2Test_s = "1") THEN
            yip1E_16_uid295_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid295_atan2Test_a) + SIGNED(yip1E_16_uid295_atan2Test_b));
        ELSE
            yip1E_16_uid295_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid295_atan2Test_a) - SIGNED(yip1E_16_uid295_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_16_uid295_atan2Test_q <= yip1E_16_uid295_atan2Test_o(22 downto 0);

    -- yip1_16_uid301_atan2Test(BITSELECT,300)@8
    yip1_16_uid301_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_16_uid295_atan2Test_q(20 downto 0));
    yip1_16_uid301_atan2Test_b <= STD_LOGIC_VECTOR(yip1_16_uid301_atan2Test_in(20 downto 0));

    -- yip1E_17_uid312_atan2Test(ADDSUB,311)@8
    yip1E_17_uid312_atan2Test_s <= xMSB_uid303_atan2Test_b;
    yip1E_17_uid312_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => yip1_16_uid301_atan2Test_b(20)) & yip1_16_uid301_atan2Test_b));
    yip1E_17_uid312_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid307_atan2Test_b));
    yip1E_17_uid312_atan2Test_combproc: PROCESS (yip1E_17_uid312_atan2Test_a, yip1E_17_uid312_atan2Test_b, yip1E_17_uid312_atan2Test_s)
    BEGIN
        IF (yip1E_17_uid312_atan2Test_s = "1") THEN
            yip1E_17_uid312_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid312_atan2Test_a) + SIGNED(yip1E_17_uid312_atan2Test_b));
        ELSE
            yip1E_17_uid312_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid312_atan2Test_a) - SIGNED(yip1E_17_uid312_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_17_uid312_atan2Test_q <= yip1E_17_uid312_atan2Test_o(21 downto 0);

    -- yip1_17_uid318_atan2Test(BITSELECT,317)@8
    yip1_17_uid318_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_17_uid312_atan2Test_q(19 downto 0));
    yip1_17_uid318_atan2Test_b <= STD_LOGIC_VECTOR(yip1_17_uid318_atan2Test_in(19 downto 0));

    -- xMSB_uid320_atan2Test(BITSELECT,319)@8
    xMSB_uid320_atan2Test_in <= STD_LOGIC_VECTOR(yip1_17_uid318_atan2Test_b);
    xMSB_uid320_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid320_atan2Test_in(19 downto 19));

    -- invSignOfSelectionSignal_uid330_atan2Test(LOGICAL,329)@8 + 1
    invSignOfSelectionSignal_uid330_atan2Test_a <= xMSB_uid320_atan2Test_b;
    invSignOfSelectionSignal_uid330_atan2Test_qi <= not (invSignOfSelectionSignal_uid330_atan2Test_a);
    invSignOfSelectionSignal_uid330_atan2Test_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignOfSelectionSignal_uid330_atan2Test_qi, xout => invSignOfSelectionSignal_uid330_atan2Test_q, clk => clk, aclr => areset );

    -- cstArcTan2Mi_17_uid326_atan2Test(CONSTANT,325)
    cstArcTan2Mi_17_uid326_atan2Test_q <= "011111111111111111111111111111111111010101011";

    -- invSignOfSelectionSignal_uid313_atan2Test(LOGICAL,312)@8
    invSignOfSelectionSignal_uid313_atan2Test_a <= xMSB_uid303_atan2Test_b;
    invSignOfSelectionSignal_uid313_atan2Test_q <= not (invSignOfSelectionSignal_uid313_atan2Test_a);

    -- cstArcTan2Mi_16_uid309_atan2Test(CONSTANT,308)
    cstArcTan2Mi_16_uid309_atan2Test_q <= "01111111111111111111111111111111110101010101";

    -- cstArcTan2Mi_15_uid292_atan2Test(CONSTANT,291)
    cstArcTan2Mi_15_uid292_atan2Test_q <= "0111111111111111111111111111111101010101011";

    -- cstArcTan2Mi_14_uid275_atan2Test(CONSTANT,274)
    cstArcTan2Mi_14_uid275_atan2Test_q <= "011111111111111111111111111111010101010101";

    -- cstArcTan2Mi_13_uid258_atan2Test(CONSTANT,257)
    cstArcTan2Mi_13_uid258_atan2Test_q <= "01111111111111111111111111110101010101011";

    -- cstArcTan2Mi_12_uid241_atan2Test(CONSTANT,240)
    cstArcTan2Mi_12_uid241_atan2Test_q <= "0111111111111111111111111101010101010101";

    -- cstArcTan2Mi_11_uid224_atan2Test(CONSTANT,223)
    cstArcTan2Mi_11_uid224_atan2Test_q <= "011111111111111111111111010101010101011";

    -- cstArcTan2Mi_10_uid207_atan2Test(CONSTANT,206)
    cstArcTan2Mi_10_uid207_atan2Test_q <= "01111111111111111111110101010101010101";

    -- cstArcTan2Mi_9_uid190_atan2Test(CONSTANT,189)
    cstArcTan2Mi_9_uid190_atan2Test_q <= "0111111111111111111101010101010101011";

    -- cstArcTan2Mi_8_uid173_atan2Test(CONSTANT,172)
    cstArcTan2Mi_8_uid173_atan2Test_q <= "011111111111111111010101010101010111";

    -- cstArcTan2Mi_7_uid152_atan2Test(CONSTANT,151)
    cstArcTan2Mi_7_uid152_atan2Test_q <= "01111111111111110101010101010110111";

    -- cstArcTan2Mi_6_uid131_atan2Test(CONSTANT,130)
    cstArcTan2Mi_6_uid131_atan2Test_q <= "0111111111111101010101010110111100";

    -- cstArcTan2Mi_5_uid112_atan2Test(CONSTANT,111)
    cstArcTan2Mi_5_uid112_atan2Test_q <= "011111111111010101010110111011101";

    -- cstArcTan2Mi_4_uid93_atan2Test(CONSTANT,92)
    cstArcTan2Mi_4_uid93_atan2Test_q <= "01111111110101010110111011011101";

    -- cstArcTan2Mi_3_uid74_atan2Test(CONSTANT,73)
    cstArcTan2Mi_3_uid74_atan2Test_q <= "0111111101010110111010100110101";

    -- cstArcTan2Mi_2_uid55_atan2Test(CONSTANT,54)
    cstArcTan2Mi_2_uid55_atan2Test_q <= "011111010110110111010111111001";

    -- cstArcTan2Mi_1_uid36_atan2Test(CONSTANT,35)
    cstArcTan2Mi_1_uid36_atan2Test_q <= "01110110101100011001110000011";

    -- cstArcTan2Mi_0_uid22_atan2Test(CONSTANT,21)
    cstArcTan2Mi_0_uid22_atan2Test_q <= "0110010010000111111011010101";

    -- highBBits_uid26_atan2Test(BITSELECT,25)@1
    highBBits_uid26_atan2Test_in <= STD_LOGIC_VECTOR(cstArcTan2Mi_0_uid22_atan2Test_q);
    highBBits_uid26_atan2Test_b <= STD_LOGIC_VECTOR(highBBits_uid26_atan2Test_in(27 downto 27));

    -- lowRangeB_uid25_atan2Test(BITSELECT,24)@1
    lowRangeB_uid25_atan2Test_in <= cstArcTan2Mi_0_uid22_atan2Test_q(26 downto 0);
    lowRangeB_uid25_atan2Test_b <= lowRangeB_uid25_atan2Test_in(26 downto 0);

    -- aip1E_1_uid28_atan2Test(BITJOIN,27)@1
    aip1E_1_uid28_atan2Test_q <= STD_LOGIC_VECTOR((2 downto 1 => highBBits_uid26_atan2Test_b(0)) & highBBits_uid26_atan2Test_b) & lowRangeB_uid25_atan2Test_b;

    -- aip1E_uid31_atan2Test(BITSELECT,30)@1
    aip1E_uid31_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_1_uid28_atan2Test_q(28 downto 0));
    aip1E_uid31_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid31_atan2Test_in(28 downto 0));

    -- aip1E_2NA_uid46_atan2Test(BITJOIN,45)@1
    aip1E_2NA_uid46_atan2Test_q <= aip1E_uid31_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_2sumAHighB_uid47_atan2Test(ADDSUB,46)@1
    aip1E_2sumAHighB_uid47_atan2Test_s <= invSignOfSelectionSignal_uid37_atan2Test_q;
    aip1E_2sumAHighB_uid47_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 31 => aip1E_2NA_uid46_atan2Test_q(30)) & aip1E_2NA_uid46_atan2Test_q));
    aip1E_2sumAHighB_uid47_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 29 => cstArcTan2Mi_1_uid36_atan2Test_q(28)) & cstArcTan2Mi_1_uid36_atan2Test_q));
    aip1E_2sumAHighB_uid47_atan2Test_combproc: PROCESS (aip1E_2sumAHighB_uid47_atan2Test_a, aip1E_2sumAHighB_uid47_atan2Test_b, aip1E_2sumAHighB_uid47_atan2Test_s)
    BEGIN
        IF (aip1E_2sumAHighB_uid47_atan2Test_s = "1") THEN
            aip1E_2sumAHighB_uid47_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2sumAHighB_uid47_atan2Test_a) + SIGNED(aip1E_2sumAHighB_uid47_atan2Test_b));
        ELSE
            aip1E_2sumAHighB_uid47_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2sumAHighB_uid47_atan2Test_a) - SIGNED(aip1E_2sumAHighB_uid47_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_2sumAHighB_uid47_atan2Test_q <= aip1E_2sumAHighB_uid47_atan2Test_o(31 downto 0);

    -- aip1E_uid50_atan2Test(BITSELECT,49)@1
    aip1E_uid50_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_2sumAHighB_uid47_atan2Test_q(30 downto 0));
    aip1E_uid50_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid50_atan2Test_in(30 downto 0));

    -- aip1E_3NA_uid65_atan2Test(BITJOIN,64)@1
    aip1E_3NA_uid65_atan2Test_q <= aip1E_uid50_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_3sumAHighB_uid66_atan2Test(ADDSUB,65)@1
    aip1E_3sumAHighB_uid66_atan2Test_s <= invSignOfSelectionSignal_uid56_atan2Test_q;
    aip1E_3sumAHighB_uid66_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => aip1E_3NA_uid65_atan2Test_q(32)) & aip1E_3NA_uid65_atan2Test_q));
    aip1E_3sumAHighB_uid66_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 30 => cstArcTan2Mi_2_uid55_atan2Test_q(29)) & cstArcTan2Mi_2_uid55_atan2Test_q));
    aip1E_3sumAHighB_uid66_atan2Test_combproc: PROCESS (aip1E_3sumAHighB_uid66_atan2Test_a, aip1E_3sumAHighB_uid66_atan2Test_b, aip1E_3sumAHighB_uid66_atan2Test_s)
    BEGIN
        IF (aip1E_3sumAHighB_uid66_atan2Test_s = "1") THEN
            aip1E_3sumAHighB_uid66_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_3sumAHighB_uid66_atan2Test_a) + SIGNED(aip1E_3sumAHighB_uid66_atan2Test_b));
        ELSE
            aip1E_3sumAHighB_uid66_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_3sumAHighB_uid66_atan2Test_a) - SIGNED(aip1E_3sumAHighB_uid66_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_3sumAHighB_uid66_atan2Test_q <= aip1E_3sumAHighB_uid66_atan2Test_o(33 downto 0);

    -- aip1E_uid69_atan2Test(BITSELECT,68)@1
    aip1E_uid69_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_3sumAHighB_uid66_atan2Test_q(32 downto 0));
    aip1E_uid69_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid69_atan2Test_in(32 downto 0));

    -- redist22(DELAY,386)
    redist22 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid69_atan2Test_b, xout => redist22_q, clk => clk, aclr => areset );

    -- aip1E_4NA_uid84_atan2Test(BITJOIN,83)@2
    aip1E_4NA_uid84_atan2Test_q <= redist22_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_4sumAHighB_uid85_atan2Test(ADDSUB,84)@2
    aip1E_4sumAHighB_uid85_atan2Test_s <= invSignOfSelectionSignal_uid75_atan2Test_q;
    aip1E_4sumAHighB_uid85_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 35 => aip1E_4NA_uid84_atan2Test_q(34)) & aip1E_4NA_uid84_atan2Test_q));
    aip1E_4sumAHighB_uid85_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 31 => cstArcTan2Mi_3_uid74_atan2Test_q(30)) & cstArcTan2Mi_3_uid74_atan2Test_q));
    aip1E_4sumAHighB_uid85_atan2Test_combproc: PROCESS (aip1E_4sumAHighB_uid85_atan2Test_a, aip1E_4sumAHighB_uid85_atan2Test_b, aip1E_4sumAHighB_uid85_atan2Test_s)
    BEGIN
        IF (aip1E_4sumAHighB_uid85_atan2Test_s = "1") THEN
            aip1E_4sumAHighB_uid85_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_4sumAHighB_uid85_atan2Test_a) + SIGNED(aip1E_4sumAHighB_uid85_atan2Test_b));
        ELSE
            aip1E_4sumAHighB_uid85_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_4sumAHighB_uid85_atan2Test_a) - SIGNED(aip1E_4sumAHighB_uid85_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_4sumAHighB_uid85_atan2Test_q <= aip1E_4sumAHighB_uid85_atan2Test_o(35 downto 0);

    -- aip1E_uid88_atan2Test(BITSELECT,87)@2
    aip1E_uid88_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_4sumAHighB_uid85_atan2Test_q(34 downto 0));
    aip1E_uid88_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid88_atan2Test_in(34 downto 0));

    -- aip1E_5NA_uid103_atan2Test(BITJOIN,102)@2
    aip1E_5NA_uid103_atan2Test_q <= aip1E_uid88_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_5sumAHighB_uid104_atan2Test(ADDSUB,103)@2
    aip1E_5sumAHighB_uid104_atan2Test_s <= invSignOfSelectionSignal_uid94_atan2Test_q;
    aip1E_5sumAHighB_uid104_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 37 => aip1E_5NA_uid103_atan2Test_q(36)) & aip1E_5NA_uid103_atan2Test_q));
    aip1E_5sumAHighB_uid104_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 32 => cstArcTan2Mi_4_uid93_atan2Test_q(31)) & cstArcTan2Mi_4_uid93_atan2Test_q));
    aip1E_5sumAHighB_uid104_atan2Test_combproc: PROCESS (aip1E_5sumAHighB_uid104_atan2Test_a, aip1E_5sumAHighB_uid104_atan2Test_b, aip1E_5sumAHighB_uid104_atan2Test_s)
    BEGIN
        IF (aip1E_5sumAHighB_uid104_atan2Test_s = "1") THEN
            aip1E_5sumAHighB_uid104_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_5sumAHighB_uid104_atan2Test_a) + SIGNED(aip1E_5sumAHighB_uid104_atan2Test_b));
        ELSE
            aip1E_5sumAHighB_uid104_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_5sumAHighB_uid104_atan2Test_a) - SIGNED(aip1E_5sumAHighB_uid104_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_5sumAHighB_uid104_atan2Test_q <= aip1E_5sumAHighB_uid104_atan2Test_o(37 downto 0);

    -- aip1E_uid107_atan2Test(BITSELECT,106)@2
    aip1E_uid107_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_5sumAHighB_uid104_atan2Test_q(36 downto 0));
    aip1E_uid107_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid107_atan2Test_in(36 downto 0));

    -- redist19(DELAY,383)
    redist19 : dspba_delay
    GENERIC MAP ( width => 37, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid107_atan2Test_b, xout => redist19_q, clk => clk, aclr => areset );

    -- aip1E_6NA_uid122_atan2Test(BITJOIN,121)@3
    aip1E_6NA_uid122_atan2Test_q <= redist19_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_6sumAHighB_uid123_atan2Test(ADDSUB,122)@3
    aip1E_6sumAHighB_uid123_atan2Test_s <= invSignOfSelectionSignal_uid113_atan2Test_q;
    aip1E_6sumAHighB_uid123_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 39 => aip1E_6NA_uid122_atan2Test_q(38)) & aip1E_6NA_uid122_atan2Test_q));
    aip1E_6sumAHighB_uid123_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 33 => cstArcTan2Mi_5_uid112_atan2Test_q(32)) & cstArcTan2Mi_5_uid112_atan2Test_q));
    aip1E_6sumAHighB_uid123_atan2Test_combproc: PROCESS (aip1E_6sumAHighB_uid123_atan2Test_a, aip1E_6sumAHighB_uid123_atan2Test_b, aip1E_6sumAHighB_uid123_atan2Test_s)
    BEGIN
        IF (aip1E_6sumAHighB_uid123_atan2Test_s = "1") THEN
            aip1E_6sumAHighB_uid123_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_6sumAHighB_uid123_atan2Test_a) + SIGNED(aip1E_6sumAHighB_uid123_atan2Test_b));
        ELSE
            aip1E_6sumAHighB_uid123_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_6sumAHighB_uid123_atan2Test_a) - SIGNED(aip1E_6sumAHighB_uid123_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_6sumAHighB_uid123_atan2Test_q <= aip1E_6sumAHighB_uid123_atan2Test_o(39 downto 0);

    -- aip1E_uid126_atan2Test(BITSELECT,125)@3
    aip1E_uid126_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_6sumAHighB_uid123_atan2Test_q(38 downto 0));
    aip1E_uid126_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid126_atan2Test_in(38 downto 0));

    -- aip1E_7NA_uid141_atan2Test(BITJOIN,140)@3
    aip1E_7NA_uid141_atan2Test_q <= aip1E_uid126_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_7sumAHighB_uid142_atan2Test(ADDSUB,141)@3
    aip1E_7sumAHighB_uid142_atan2Test_s <= invSignOfSelectionSignal_uid132_atan2Test_q;
    aip1E_7sumAHighB_uid142_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 41 => aip1E_7NA_uid141_atan2Test_q(40)) & aip1E_7NA_uid141_atan2Test_q));
    aip1E_7sumAHighB_uid142_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 34 => cstArcTan2Mi_6_uid131_atan2Test_q(33)) & cstArcTan2Mi_6_uid131_atan2Test_q));
    aip1E_7sumAHighB_uid142_atan2Test_combproc: PROCESS (aip1E_7sumAHighB_uid142_atan2Test_a, aip1E_7sumAHighB_uid142_atan2Test_b, aip1E_7sumAHighB_uid142_atan2Test_s)
    BEGIN
        IF (aip1E_7sumAHighB_uid142_atan2Test_s = "1") THEN
            aip1E_7sumAHighB_uid142_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_7sumAHighB_uid142_atan2Test_a) + SIGNED(aip1E_7sumAHighB_uid142_atan2Test_b));
        ELSE
            aip1E_7sumAHighB_uid142_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_7sumAHighB_uid142_atan2Test_a) - SIGNED(aip1E_7sumAHighB_uid142_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_7sumAHighB_uid142_atan2Test_q <= aip1E_7sumAHighB_uid142_atan2Test_o(41 downto 0);

    -- aip1E_uid145_atan2Test(BITSELECT,144)@3
    aip1E_uid145_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_7sumAHighB_uid142_atan2Test_q(40 downto 0));
    aip1E_uid145_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid145_atan2Test_in(40 downto 0));

    -- redist16(DELAY,380)
    redist16 : dspba_delay
    GENERIC MAP ( width => 41, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid145_atan2Test_b, xout => redist16_q, clk => clk, aclr => areset );

    -- aip1E_8NA_uid162_atan2Test(BITJOIN,161)@4
    aip1E_8NA_uid162_atan2Test_q <= redist16_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_8sumAHighB_uid163_atan2Test(ADDSUB,162)@4
    aip1E_8sumAHighB_uid163_atan2Test_s <= invSignOfSelectionSignal_uid153_atan2Test_q;
    aip1E_8sumAHighB_uid163_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 43 => aip1E_8NA_uid162_atan2Test_q(42)) & aip1E_8NA_uid162_atan2Test_q));
    aip1E_8sumAHighB_uid163_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 35 => cstArcTan2Mi_7_uid152_atan2Test_q(34)) & cstArcTan2Mi_7_uid152_atan2Test_q));
    aip1E_8sumAHighB_uid163_atan2Test_combproc: PROCESS (aip1E_8sumAHighB_uid163_atan2Test_a, aip1E_8sumAHighB_uid163_atan2Test_b, aip1E_8sumAHighB_uid163_atan2Test_s)
    BEGIN
        IF (aip1E_8sumAHighB_uid163_atan2Test_s = "1") THEN
            aip1E_8sumAHighB_uid163_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_8sumAHighB_uid163_atan2Test_a) + SIGNED(aip1E_8sumAHighB_uid163_atan2Test_b));
        ELSE
            aip1E_8sumAHighB_uid163_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_8sumAHighB_uid163_atan2Test_a) - SIGNED(aip1E_8sumAHighB_uid163_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_8sumAHighB_uid163_atan2Test_q <= aip1E_8sumAHighB_uid163_atan2Test_o(43 downto 0);

    -- aip1E_uid166_atan2Test(BITSELECT,165)@4
    aip1E_uid166_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_8sumAHighB_uid163_atan2Test_q(42 downto 0));
    aip1E_uid166_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid166_atan2Test_in(42 downto 0));

    -- aip1E_9NA_uid179_atan2Test(BITJOIN,178)@4
    aip1E_9NA_uid179_atan2Test_q <= aip1E_uid166_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_9sumAHighB_uid180_atan2Test(ADDSUB,179)@4
    aip1E_9sumAHighB_uid180_atan2Test_s <= invSignOfSelectionSignal_uid174_atan2Test_q;
    aip1E_9sumAHighB_uid180_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 45 => aip1E_9NA_uid179_atan2Test_q(44)) & aip1E_9NA_uid179_atan2Test_q));
    aip1E_9sumAHighB_uid180_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 36 => cstArcTan2Mi_8_uid173_atan2Test_q(35)) & cstArcTan2Mi_8_uid173_atan2Test_q));
    aip1E_9sumAHighB_uid180_atan2Test_combproc: PROCESS (aip1E_9sumAHighB_uid180_atan2Test_a, aip1E_9sumAHighB_uid180_atan2Test_b, aip1E_9sumAHighB_uid180_atan2Test_s)
    BEGIN
        IF (aip1E_9sumAHighB_uid180_atan2Test_s = "1") THEN
            aip1E_9sumAHighB_uid180_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_9sumAHighB_uid180_atan2Test_a) + SIGNED(aip1E_9sumAHighB_uid180_atan2Test_b));
        ELSE
            aip1E_9sumAHighB_uid180_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_9sumAHighB_uid180_atan2Test_a) - SIGNED(aip1E_9sumAHighB_uid180_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_9sumAHighB_uid180_atan2Test_q <= aip1E_9sumAHighB_uid180_atan2Test_o(45 downto 0);

    -- aip1E_uid183_atan2Test(BITSELECT,182)@4
    aip1E_uid183_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_9sumAHighB_uid180_atan2Test_q(44 downto 0));
    aip1E_uid183_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid183_atan2Test_in(44 downto 0));

    -- redist13(DELAY,377)
    redist13 : dspba_delay
    GENERIC MAP ( width => 45, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid183_atan2Test_b, xout => redist13_q, clk => clk, aclr => areset );

    -- aip1E_10NA_uid196_atan2Test(BITJOIN,195)@5
    aip1E_10NA_uid196_atan2Test_q <= redist13_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_10sumAHighB_uid197_atan2Test(ADDSUB,196)@5
    aip1E_10sumAHighB_uid197_atan2Test_s <= invSignOfSelectionSignal_uid191_atan2Test_q;
    aip1E_10sumAHighB_uid197_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 47 => aip1E_10NA_uid196_atan2Test_q(46)) & aip1E_10NA_uid196_atan2Test_q));
    aip1E_10sumAHighB_uid197_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 37 => cstArcTan2Mi_9_uid190_atan2Test_q(36)) & cstArcTan2Mi_9_uid190_atan2Test_q));
    aip1E_10sumAHighB_uid197_atan2Test_combproc: PROCESS (aip1E_10sumAHighB_uid197_atan2Test_a, aip1E_10sumAHighB_uid197_atan2Test_b, aip1E_10sumAHighB_uid197_atan2Test_s)
    BEGIN
        IF (aip1E_10sumAHighB_uid197_atan2Test_s = "1") THEN
            aip1E_10sumAHighB_uid197_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_10sumAHighB_uid197_atan2Test_a) + SIGNED(aip1E_10sumAHighB_uid197_atan2Test_b));
        ELSE
            aip1E_10sumAHighB_uid197_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_10sumAHighB_uid197_atan2Test_a) - SIGNED(aip1E_10sumAHighB_uid197_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_10sumAHighB_uid197_atan2Test_q <= aip1E_10sumAHighB_uid197_atan2Test_o(47 downto 0);

    -- aip1E_uid200_atan2Test(BITSELECT,199)@5
    aip1E_uid200_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_10sumAHighB_uid197_atan2Test_q(46 downto 0));
    aip1E_uid200_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid200_atan2Test_in(46 downto 0));

    -- aip1E_11NA_uid213_atan2Test(BITJOIN,212)@5
    aip1E_11NA_uid213_atan2Test_q <= aip1E_uid200_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_11sumAHighB_uid214_atan2Test(ADDSUB,213)@5
    aip1E_11sumAHighB_uid214_atan2Test_s <= invSignOfSelectionSignal_uid208_atan2Test_q;
    aip1E_11sumAHighB_uid214_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 49 => aip1E_11NA_uid213_atan2Test_q(48)) & aip1E_11NA_uid213_atan2Test_q));
    aip1E_11sumAHighB_uid214_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 38 => cstArcTan2Mi_10_uid207_atan2Test_q(37)) & cstArcTan2Mi_10_uid207_atan2Test_q));
    aip1E_11sumAHighB_uid214_atan2Test_combproc: PROCESS (aip1E_11sumAHighB_uid214_atan2Test_a, aip1E_11sumAHighB_uid214_atan2Test_b, aip1E_11sumAHighB_uid214_atan2Test_s)
    BEGIN
        IF (aip1E_11sumAHighB_uid214_atan2Test_s = "1") THEN
            aip1E_11sumAHighB_uid214_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_11sumAHighB_uid214_atan2Test_a) + SIGNED(aip1E_11sumAHighB_uid214_atan2Test_b));
        ELSE
            aip1E_11sumAHighB_uid214_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_11sumAHighB_uid214_atan2Test_a) - SIGNED(aip1E_11sumAHighB_uid214_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_11sumAHighB_uid214_atan2Test_q <= aip1E_11sumAHighB_uid214_atan2Test_o(49 downto 0);

    -- aip1E_uid217_atan2Test(BITSELECT,216)@5
    aip1E_uid217_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_11sumAHighB_uid214_atan2Test_q(48 downto 0));
    aip1E_uid217_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid217_atan2Test_in(48 downto 0));

    -- redist10(DELAY,374)
    redist10 : dspba_delay
    GENERIC MAP ( width => 49, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid217_atan2Test_b, xout => redist10_q, clk => clk, aclr => areset );

    -- aip1E_12NA_uid230_atan2Test(BITJOIN,229)@6
    aip1E_12NA_uid230_atan2Test_q <= redist10_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_12sumAHighB_uid231_atan2Test(ADDSUB,230)@6
    aip1E_12sumAHighB_uid231_atan2Test_s <= invSignOfSelectionSignal_uid225_atan2Test_q;
    aip1E_12sumAHighB_uid231_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 51 => aip1E_12NA_uid230_atan2Test_q(50)) & aip1E_12NA_uid230_atan2Test_q));
    aip1E_12sumAHighB_uid231_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 39 => cstArcTan2Mi_11_uid224_atan2Test_q(38)) & cstArcTan2Mi_11_uid224_atan2Test_q));
    aip1E_12sumAHighB_uid231_atan2Test_combproc: PROCESS (aip1E_12sumAHighB_uid231_atan2Test_a, aip1E_12sumAHighB_uid231_atan2Test_b, aip1E_12sumAHighB_uid231_atan2Test_s)
    BEGIN
        IF (aip1E_12sumAHighB_uid231_atan2Test_s = "1") THEN
            aip1E_12sumAHighB_uid231_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_12sumAHighB_uid231_atan2Test_a) + SIGNED(aip1E_12sumAHighB_uid231_atan2Test_b));
        ELSE
            aip1E_12sumAHighB_uid231_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_12sumAHighB_uid231_atan2Test_a) - SIGNED(aip1E_12sumAHighB_uid231_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_12sumAHighB_uid231_atan2Test_q <= aip1E_12sumAHighB_uid231_atan2Test_o(51 downto 0);

    -- aip1E_uid234_atan2Test(BITSELECT,233)@6
    aip1E_uid234_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_12sumAHighB_uid231_atan2Test_q(50 downto 0));
    aip1E_uid234_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid234_atan2Test_in(50 downto 0));

    -- aip1E_13NA_uid247_atan2Test(BITJOIN,246)@6
    aip1E_13NA_uid247_atan2Test_q <= aip1E_uid234_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_13sumAHighB_uid248_atan2Test(ADDSUB,247)@6
    aip1E_13sumAHighB_uid248_atan2Test_s <= invSignOfSelectionSignal_uid242_atan2Test_q;
    aip1E_13sumAHighB_uid248_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((54 downto 53 => aip1E_13NA_uid247_atan2Test_q(52)) & aip1E_13NA_uid247_atan2Test_q));
    aip1E_13sumAHighB_uid248_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((54 downto 40 => cstArcTan2Mi_12_uid241_atan2Test_q(39)) & cstArcTan2Mi_12_uid241_atan2Test_q));
    aip1E_13sumAHighB_uid248_atan2Test_combproc: PROCESS (aip1E_13sumAHighB_uid248_atan2Test_a, aip1E_13sumAHighB_uid248_atan2Test_b, aip1E_13sumAHighB_uid248_atan2Test_s)
    BEGIN
        IF (aip1E_13sumAHighB_uid248_atan2Test_s = "1") THEN
            aip1E_13sumAHighB_uid248_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_13sumAHighB_uid248_atan2Test_a) + SIGNED(aip1E_13sumAHighB_uid248_atan2Test_b));
        ELSE
            aip1E_13sumAHighB_uid248_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_13sumAHighB_uid248_atan2Test_a) - SIGNED(aip1E_13sumAHighB_uid248_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_13sumAHighB_uid248_atan2Test_q <= aip1E_13sumAHighB_uid248_atan2Test_o(53 downto 0);

    -- aip1E_uid251_atan2Test(BITSELECT,250)@6
    aip1E_uid251_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_13sumAHighB_uid248_atan2Test_q(52 downto 0));
    aip1E_uid251_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid251_atan2Test_in(52 downto 0));

    -- redist7(DELAY,371)
    redist7 : dspba_delay
    GENERIC MAP ( width => 53, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid251_atan2Test_b, xout => redist7_q, clk => clk, aclr => areset );

    -- aip1E_14NA_uid264_atan2Test(BITJOIN,263)@7
    aip1E_14NA_uid264_atan2Test_q <= redist7_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_14sumAHighB_uid265_atan2Test(ADDSUB,264)@7
    aip1E_14sumAHighB_uid265_atan2Test_s <= invSignOfSelectionSignal_uid259_atan2Test_q;
    aip1E_14sumAHighB_uid265_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((56 downto 55 => aip1E_14NA_uid264_atan2Test_q(54)) & aip1E_14NA_uid264_atan2Test_q));
    aip1E_14sumAHighB_uid265_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((56 downto 41 => cstArcTan2Mi_13_uid258_atan2Test_q(40)) & cstArcTan2Mi_13_uid258_atan2Test_q));
    aip1E_14sumAHighB_uid265_atan2Test_combproc: PROCESS (aip1E_14sumAHighB_uid265_atan2Test_a, aip1E_14sumAHighB_uid265_atan2Test_b, aip1E_14sumAHighB_uid265_atan2Test_s)
    BEGIN
        IF (aip1E_14sumAHighB_uid265_atan2Test_s = "1") THEN
            aip1E_14sumAHighB_uid265_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_14sumAHighB_uid265_atan2Test_a) + SIGNED(aip1E_14sumAHighB_uid265_atan2Test_b));
        ELSE
            aip1E_14sumAHighB_uid265_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_14sumAHighB_uid265_atan2Test_a) - SIGNED(aip1E_14sumAHighB_uid265_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_14sumAHighB_uid265_atan2Test_q <= aip1E_14sumAHighB_uid265_atan2Test_o(55 downto 0);

    -- aip1E_uid268_atan2Test(BITSELECT,267)@7
    aip1E_uid268_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_14sumAHighB_uid265_atan2Test_q(54 downto 0));
    aip1E_uid268_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid268_atan2Test_in(54 downto 0));

    -- aip1E_15NA_uid281_atan2Test(BITJOIN,280)@7
    aip1E_15NA_uid281_atan2Test_q <= aip1E_uid268_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_15sumAHighB_uid282_atan2Test(ADDSUB,281)@7
    aip1E_15sumAHighB_uid282_atan2Test_s <= invSignOfSelectionSignal_uid276_atan2Test_q;
    aip1E_15sumAHighB_uid282_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((58 downto 57 => aip1E_15NA_uid281_atan2Test_q(56)) & aip1E_15NA_uid281_atan2Test_q));
    aip1E_15sumAHighB_uid282_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((58 downto 42 => cstArcTan2Mi_14_uid275_atan2Test_q(41)) & cstArcTan2Mi_14_uid275_atan2Test_q));
    aip1E_15sumAHighB_uid282_atan2Test_combproc: PROCESS (aip1E_15sumAHighB_uid282_atan2Test_a, aip1E_15sumAHighB_uid282_atan2Test_b, aip1E_15sumAHighB_uid282_atan2Test_s)
    BEGIN
        IF (aip1E_15sumAHighB_uid282_atan2Test_s = "1") THEN
            aip1E_15sumAHighB_uid282_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_15sumAHighB_uid282_atan2Test_a) + SIGNED(aip1E_15sumAHighB_uid282_atan2Test_b));
        ELSE
            aip1E_15sumAHighB_uid282_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_15sumAHighB_uid282_atan2Test_a) - SIGNED(aip1E_15sumAHighB_uid282_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_15sumAHighB_uid282_atan2Test_q <= aip1E_15sumAHighB_uid282_atan2Test_o(57 downto 0);

    -- aip1E_uid285_atan2Test(BITSELECT,284)@7
    aip1E_uid285_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_15sumAHighB_uid282_atan2Test_q(56 downto 0));
    aip1E_uid285_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid285_atan2Test_in(56 downto 0));

    -- redist4(DELAY,368)
    redist4 : dspba_delay
    GENERIC MAP ( width => 57, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid285_atan2Test_b, xout => redist4_q, clk => clk, aclr => areset );

    -- aip1E_16NA_uid298_atan2Test(BITJOIN,297)@8
    aip1E_16NA_uid298_atan2Test_q <= redist4_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_16sumAHighB_uid299_atan2Test(ADDSUB,298)@8
    aip1E_16sumAHighB_uid299_atan2Test_s <= invSignOfSelectionSignal_uid293_atan2Test_q;
    aip1E_16sumAHighB_uid299_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((60 downto 59 => aip1E_16NA_uid298_atan2Test_q(58)) & aip1E_16NA_uid298_atan2Test_q));
    aip1E_16sumAHighB_uid299_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((60 downto 43 => cstArcTan2Mi_15_uid292_atan2Test_q(42)) & cstArcTan2Mi_15_uid292_atan2Test_q));
    aip1E_16sumAHighB_uid299_atan2Test_combproc: PROCESS (aip1E_16sumAHighB_uid299_atan2Test_a, aip1E_16sumAHighB_uid299_atan2Test_b, aip1E_16sumAHighB_uid299_atan2Test_s)
    BEGIN
        IF (aip1E_16sumAHighB_uid299_atan2Test_s = "1") THEN
            aip1E_16sumAHighB_uid299_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_16sumAHighB_uid299_atan2Test_a) + SIGNED(aip1E_16sumAHighB_uid299_atan2Test_b));
        ELSE
            aip1E_16sumAHighB_uid299_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_16sumAHighB_uid299_atan2Test_a) - SIGNED(aip1E_16sumAHighB_uid299_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_16sumAHighB_uid299_atan2Test_q <= aip1E_16sumAHighB_uid299_atan2Test_o(59 downto 0);

    -- aip1E_uid302_atan2Test(BITSELECT,301)@8
    aip1E_uid302_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_16sumAHighB_uid299_atan2Test_q(58 downto 0));
    aip1E_uid302_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid302_atan2Test_in(58 downto 0));

    -- aip1E_17NA_uid315_atan2Test(BITJOIN,314)@8
    aip1E_17NA_uid315_atan2Test_q <= aip1E_uid302_atan2Test_b & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_17sumAHighB_uid316_atan2Test(ADDSUB,315)@8
    aip1E_17sumAHighB_uid316_atan2Test_s <= invSignOfSelectionSignal_uid313_atan2Test_q;
    aip1E_17sumAHighB_uid316_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((62 downto 61 => aip1E_17NA_uid315_atan2Test_q(60)) & aip1E_17NA_uid315_atan2Test_q));
    aip1E_17sumAHighB_uid316_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((62 downto 44 => cstArcTan2Mi_16_uid309_atan2Test_q(43)) & cstArcTan2Mi_16_uid309_atan2Test_q));
    aip1E_17sumAHighB_uid316_atan2Test_combproc: PROCESS (aip1E_17sumAHighB_uid316_atan2Test_a, aip1E_17sumAHighB_uid316_atan2Test_b, aip1E_17sumAHighB_uid316_atan2Test_s)
    BEGIN
        IF (aip1E_17sumAHighB_uid316_atan2Test_s = "1") THEN
            aip1E_17sumAHighB_uid316_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_17sumAHighB_uid316_atan2Test_a) + SIGNED(aip1E_17sumAHighB_uid316_atan2Test_b));
        ELSE
            aip1E_17sumAHighB_uid316_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_17sumAHighB_uid316_atan2Test_a) - SIGNED(aip1E_17sumAHighB_uid316_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_17sumAHighB_uid316_atan2Test_q <= aip1E_17sumAHighB_uid316_atan2Test_o(61 downto 0);

    -- aip1E_uid319_atan2Test(BITSELECT,318)@8
    aip1E_uid319_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_17sumAHighB_uid316_atan2Test_q(60 downto 0));
    aip1E_uid319_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid319_atan2Test_in(60 downto 0));

    -- redist3(DELAY,367)
    redist3 : dspba_delay
    GENERIC MAP ( width => 61, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid319_atan2Test_b, xout => redist3_q, clk => clk, aclr => areset );

    -- aip1E_18NA_uid332_atan2Test(BITJOIN,331)@9
    aip1E_18NA_uid332_atan2Test_q <= redist3_q & aip1E_2CostZeroPaddingA_uid45_atan2Test_q;

    -- aip1E_18sumAHighB_uid333_atan2Test(ADDSUB,332)@9
    aip1E_18sumAHighB_uid333_atan2Test_s <= invSignOfSelectionSignal_uid330_atan2Test_q;
    aip1E_18sumAHighB_uid333_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 63 => aip1E_18NA_uid332_atan2Test_q(62)) & aip1E_18NA_uid332_atan2Test_q));
    aip1E_18sumAHighB_uid333_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 45 => cstArcTan2Mi_17_uid326_atan2Test_q(44)) & cstArcTan2Mi_17_uid326_atan2Test_q));
    aip1E_18sumAHighB_uid333_atan2Test_combproc: PROCESS (aip1E_18sumAHighB_uid333_atan2Test_a, aip1E_18sumAHighB_uid333_atan2Test_b, aip1E_18sumAHighB_uid333_atan2Test_s)
    BEGIN
        IF (aip1E_18sumAHighB_uid333_atan2Test_s = "1") THEN
            aip1E_18sumAHighB_uid333_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_18sumAHighB_uid333_atan2Test_a) + SIGNED(aip1E_18sumAHighB_uid333_atan2Test_b));
        ELSE
            aip1E_18sumAHighB_uid333_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_18sumAHighB_uid333_atan2Test_a) - SIGNED(aip1E_18sumAHighB_uid333_atan2Test_b));
        END IF;
    END PROCESS;
    aip1E_18sumAHighB_uid333_atan2Test_q <= aip1E_18sumAHighB_uid333_atan2Test_o(63 downto 0);

    -- aip1E_uid336_atan2Test(BITSELECT,335)@9
    aip1E_uid336_atan2Test_in <= STD_LOGIC_VECTOR(aip1E_18sumAHighB_uid333_atan2Test_q(62 downto 0));
    aip1E_uid336_atan2Test_b <= STD_LOGIC_VECTOR(aip1E_uid336_atan2Test_in(62 downto 0));

    -- alphaPreRnd_uid337_atan2Test(BITSELECT,336)@9
    alphaPreRnd_uid337_atan2Test_in <= aip1E_uid336_atan2Test_b;
    alphaPreRnd_uid337_atan2Test_b <= alphaPreRnd_uid337_atan2Test_in(62 downto 44);

    -- highABits_uid342_atan2Test(BITSELECT,341)@9
    highABits_uid342_atan2Test_in <= alphaPreRnd_uid337_atan2Test_b;
    highABits_uid342_atan2Test_b <= highABits_uid342_atan2Test_in(18 downto 1);

    -- alphaPostRndhigh_uid343_atan2Test(ADD,342)@9
    alphaPostRndhigh_uid343_atan2Test_a <= STD_LOGIC_VECTOR("0" & highABits_uid342_atan2Test_b);
    alphaPostRndhigh_uid343_atan2Test_b <= STD_LOGIC_VECTOR("000000000000000000" & VCC_q);
    alphaPostRndhigh_uid343_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(alphaPostRndhigh_uid343_atan2Test_a) + UNSIGNED(alphaPostRndhigh_uid343_atan2Test_b));
    alphaPostRndhigh_uid343_atan2Test_q <= alphaPostRndhigh_uid343_atan2Test_o(18 downto 0);

    -- lowRangeA_uid341_atan2Test(BITSELECT,340)@9
    lowRangeA_uid341_atan2Test_in <= alphaPreRnd_uid337_atan2Test_b(0 downto 0);
    lowRangeA_uid341_atan2Test_b <= lowRangeA_uid341_atan2Test_in(0 downto 0);

    -- alphaPostRnd_uid344_atan2Test(BITJOIN,343)@9
    alphaPostRnd_uid344_atan2Test_q <= alphaPostRndhigh_uid343_atan2Test_q & lowRangeA_uid341_atan2Test_b;

    -- atanRes_uid345_atan2Test(BITSELECT,344)@9
    atanRes_uid345_atan2Test_in <= alphaPostRnd_uid344_atan2Test_q(18 downto 0);
    atanRes_uid345_atan2Test_b <= atanRes_uid345_atan2Test_in(18 downto 0);

    -- redist2(DELAY,366)
    redist2 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => atanRes_uid345_atan2Test_b, xout => redist2_q, clk => clk, aclr => areset );

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

    -- concXZeroYZero_uid352_atan2Test(BITJOIN,351)@0
    concXZeroYZero_uid352_atan2Test_q <= xZero_uid18_atan2Test_q & yZero_uid16_atan2Test_q;

    -- redist1(DELAY,365)
    redist1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => concXZeroYZero_uid352_atan2Test_q, xout => redist1_q, clk => clk, aclr => areset );

    -- atanResPostExc_uid353_atan2Test(MUX,352)@10
    atanResPostExc_uid353_atan2Test_s <= redist1_q;
    atanResPostExc_uid353_atan2Test_combproc: PROCESS (atanResPostExc_uid353_atan2Test_s, redist2_q, cstZeroOutFormat_uid346_atan2Test_q, constPio2P2u_mergedSignalTM_uid350_atan2Test_q)
    BEGIN
        CASE (atanResPostExc_uid353_atan2Test_s) IS
            WHEN "00" => atanResPostExc_uid353_atan2Test_q <= redist2_q;
            WHEN "01" => atanResPostExc_uid353_atan2Test_q <= cstZeroOutFormat_uid346_atan2Test_q;
            WHEN "10" => atanResPostExc_uid353_atan2Test_q <= constPio2P2u_mergedSignalTM_uid350_atan2Test_q;
            WHEN "11" => atanResPostExc_uid353_atan2Test_q <= cstZeroOutFormat_uid346_atan2Test_q;
            WHEN OTHERS => atanResPostExc_uid353_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constantZeroOutFormat_uid357_atan2Test(CONSTANT,356)
    constantZeroOutFormat_uid357_atan2Test_q <= "0000000000000000000";

    -- concSigns_uid354_atan2Test(BITJOIN,353)@0
    concSigns_uid354_atan2Test_q <= signX_uid7_atan2Test_b & signY_uid8_atan2Test_b;

    -- redist0(DELAY,364)
    redist0 : dspba_delay
    GENERIC MAP ( width => 2, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => concSigns_uid354_atan2Test_q, xout => redist0_q, clk => clk, aclr => areset );

    -- secondOperand_uid361_atan2Test(MUX,360)@10
    secondOperand_uid361_atan2Test_s <= redist0_q;
    secondOperand_uid361_atan2Test_combproc: PROCESS (secondOperand_uid361_atan2Test_s, constantZeroOutFormat_uid357_atan2Test_q, atanResPostExc_uid353_atan2Test_q, constPi_uid356_atan2Test_q)
    BEGIN
        CASE (secondOperand_uid361_atan2Test_s) IS
            WHEN "00" => secondOperand_uid361_atan2Test_q <= constantZeroOutFormat_uid357_atan2Test_q;
            WHEN "01" => secondOperand_uid361_atan2Test_q <= atanResPostExc_uid353_atan2Test_q;
            WHEN "10" => secondOperand_uid361_atan2Test_q <= atanResPostExc_uid353_atan2Test_q;
            WHEN "11" => secondOperand_uid361_atan2Test_q <= constPi_uid356_atan2Test_q;
            WHEN OTHERS => secondOperand_uid361_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constPiP2u_uid355_atan2Test(CONSTANT,354)
    constPiP2u_uid355_atan2Test_q <= "1100100100010000010";

    -- constantZeroOutFormatP2u_uid358_atan2Test(CONSTANT,357)
    constantZeroOutFormatP2u_uid358_atan2Test_q <= "0000000000000000100";

    -- firstOperand_uid360_atan2Test(MUX,359)@10
    firstOperand_uid360_atan2Test_s <= redist0_q;
    firstOperand_uid360_atan2Test_combproc: PROCESS (firstOperand_uid360_atan2Test_s, atanResPostExc_uid353_atan2Test_q, constantZeroOutFormatP2u_uid358_atan2Test_q, constPiP2u_uid355_atan2Test_q)
    BEGIN
        CASE (firstOperand_uid360_atan2Test_s) IS
            WHEN "00" => firstOperand_uid360_atan2Test_q <= atanResPostExc_uid353_atan2Test_q;
            WHEN "01" => firstOperand_uid360_atan2Test_q <= constantZeroOutFormatP2u_uid358_atan2Test_q;
            WHEN "10" => firstOperand_uid360_atan2Test_q <= constPiP2u_uid355_atan2Test_q;
            WHEN "11" => firstOperand_uid360_atan2Test_q <= atanResPostExc_uid353_atan2Test_q;
            WHEN OTHERS => firstOperand_uid360_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outResExtended_uid362_atan2Test(SUB,361)@10
    outResExtended_uid362_atan2Test_a <= STD_LOGIC_VECTOR("0" & firstOperand_uid360_atan2Test_q);
    outResExtended_uid362_atan2Test_b <= STD_LOGIC_VECTOR("0" & secondOperand_uid361_atan2Test_q);
    outResExtended_uid362_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(outResExtended_uid362_atan2Test_a) - UNSIGNED(outResExtended_uid362_atan2Test_b));
    outResExtended_uid362_atan2Test_q <= outResExtended_uid362_atan2Test_o(19 downto 0);

    -- atanResPostRR_uid363_atan2Test(BITSELECT,362)@10
    atanResPostRR_uid363_atan2Test_in <= STD_LOGIC_VECTOR(outResExtended_uid362_atan2Test_q);
    atanResPostRR_uid363_atan2Test_b <= STD_LOGIC_VECTOR(atanResPostRR_uid363_atan2Test_in(19 downto 2));

    -- xOut(GPOUT,4)@10
    q <= atanResPostRR_uid363_atan2Test_b;

END normal;
