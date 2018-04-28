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
-- VHDL created on Sat Apr 28 12:56:31 2018


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
        q : out std_logic_vector(18 downto 0);  -- sfix19_en16
        r : out std_logic_vector(17 downto 0);  -- ufix18_en6
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
    signal cstZeroOutFormat_uid379_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal constPiP2uE_uid380_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal constPiP2u_uid388_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal constPi_uid389_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal constantZeroOutFormat_uid390_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal constantZeroOutFormatP2u_uid391_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_a : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_o : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal redist0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal redist1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist3_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist4_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist5_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist11_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_q : STD_LOGIC_VECTOR (24 downto 0);
    signal redist15_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist19_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist23_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_q : STD_LOGIC_VECTOR (30 downto 0);
    signal redist27_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist28_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist31_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist35_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist36_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist39_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist40_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concSignVector_uid354_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_2NA_uid39_vecTranslateTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_2NA_uid42_vecTranslateTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal constPio2P2u_mergedSignalTM_uid383_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yNotZero_uid15_vecTranslateTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal yNotZero_uid15_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_vecTranslateTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal xNotZero_uid17_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal atanResPostExc_uid386_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid386_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal firstOperand_uid393_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal firstOperand_uid393_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal secondOperand_uid394_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal secondOperand_uid394_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal outResExtended_uid395_vecTranslateTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal outResExtended_uid395_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal outResExtended_uid395_vecTranslateTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal outResExtended_uid395_vecTranslateTest_q : STD_LOGIC_VECTOR (20 downto 0);
    signal p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q : STD_LOGIC_VECTOR (42 downto 0);
    signal p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q : STD_LOGIC_VECTOR (33 downto 0);
    signal p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_a : STD_LOGIC_VECTOR (45 downto 0);
    signal lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (45 downto 0);
    signal lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_o : STD_LOGIC_VECTOR (45 downto 0);
    signal lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_q : STD_LOGIC_VECTOR (45 downto 0);
    signal signX_uid7_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal signX_uid7_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid8_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal signY_uid8_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xMSB_uid32_vecTranslateTest_in : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid32_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4NA_uid77_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_4NA_uid80_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_8NA_uid155_vecTranslateTest_q : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1E_8NA_uid158_vecTranslateTest_q : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1E_6NA_uid115_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6NA_uid118_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid320_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid320_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid325_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal twoToMiSiYip_uid325_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal twoToMiSiXip_uid324_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid324_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid286_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid286_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid291_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiYip_uid291_vecTranslateTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal twoToMiSiXip_uid290_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid290_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid252_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid252_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid257_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiYip_uid257_vecTranslateTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal twoToMiSiXip_uid256_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid256_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid218_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid218_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid223_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid223_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal twoToMiSiXip_uid222_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid222_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid184_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal xMSB_uid184_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid189_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal twoToMiSiYip_uid189_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal twoToMiSiXip_uid188_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid188_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid146_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid146_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid151_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid151_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiXip_uid150_vecTranslateTest_in : STD_LOGIC_VECTOR (33 downto 0);
    signal twoToMiSiXip_uid150_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
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
    signal is0_uid355_vecTranslateTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal is0_uid355_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is1_uid361_vecTranslateTest_in : STD_LOGIC_VECTOR (12 downto 0);
    signal is1_uid361_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is2_uid366_vecTranslateTest_in : STD_LOGIC_VECTOR (6 downto 0);
    signal is2_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is3_uid371_vecTranslateTest_in : STD_LOGIC_VECTOR (0 downto 0);
    signal is3_uid371_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_o : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid43_vecTranslateTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal concXZeroYZero_uid385_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostRR_uid396_vecTranslateTest_in : STD_LOGIC_VECTOR (20 downto 0);
    signal atanResPostRR_uid396_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal lowRangeB_uid414_cstMultOutMag_uid399_vecTranslateTest_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid414_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid415_cstMultOutMag_uid399_vecTranslateTest_in : STD_LOGIC_VECTOR (39 downto 0);
    signal highBBits_uid415_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (38 downto 0);
    signal sR_uid420_cstMultOutMag_uid399_vecTranslateTest_in : STD_LOGIC_VECTOR (42 downto 0);
    signal sR_uid420_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal invSignX_uid9_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid9_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concSigns_uid387_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invSignY_uid11_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignY_uid11_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid37_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid37_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_a : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_b : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_o : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8sumAHighB_uid159_vecTranslateTest_q : STD_LOGIC_VECTOR (33 downto 0);
    signal invSignOfSelectionSignal_uid327_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid327_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_18_uid329_vecTranslateTest_a : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_18_uid329_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_18_uid329_vecTranslateTest_o : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1E_18_uid329_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_18_uid329_vecTranslateTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_18_uid328_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid293_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid293_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid295_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_16_uid294_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid259_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid259_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_a : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_o : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid261_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid260_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid225_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid225_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_a : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_o : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid227_vecTranslateTest_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid226_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid191_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid191_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid193_vecTranslateTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid192_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid153_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid153_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid156_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid113_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid113_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_6_uid125_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_6_uid125_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal invSignOfSelectionSignal_uid75_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid75_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_4_uid87_vecTranslateTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_4_uid87_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal table_l5_uid356_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid357_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid358_vecTranslateTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal table_l11_uid362_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l11_uid363_vecTranslateTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal table_l17_uid367_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l17_uid368_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal table_l18_uid372_vecTranslateTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal yip1_2_uid49_vecTranslateTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1_2_uid49_vecTranslateTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_a : STD_LOGIC_VECTOR (43 downto 0);
    signal lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (43 downto 0);
    signal lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_o : STD_LOGIC_VECTOR (43 downto 0);
    signal lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_q : STD_LOGIC_VECTOR (43 downto 0);
    signal outMagPostRnd_uid403_vecTranslateTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal outMagPostRnd_uid403_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal outMagPostRnd_uid403_vecTranslateTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal outMagPostRnd_uid403_vecTranslateTest_q : STD_LOGIC_VECTOR (20 downto 0);
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
    signal yip1_8_uid165_vecTranslateTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1_8_uid165_vecTranslateTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1_18_uid335_vecTranslateTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1_18_uid335_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1_18_uid334_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_18_uid334_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_16_uid301_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_16_uid301_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1_16_uid300_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_16_uid300_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_14_uid267_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_14_uid267_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1_14_uid266_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_14_uid266_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_12_uid233_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1_12_uid233_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_12_uid232_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_12_uid232_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_10_uid199_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1_10_uid199_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1_10_uid198_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_10_uid198_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_8_uid164_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_8_uid164_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
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
    signal os_uid359_vecTranslateTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal os_uid364_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal os_uid369_vecTranslateTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal lev1_a1_uid376_vecTranslateTest_a : STD_LOGIC_VECTOR (12 downto 0);
    signal lev1_a1_uid376_vecTranslateTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal lev1_a1_uid376_vecTranslateTest_o : STD_LOGIC_VECTOR (12 downto 0);
    signal lev1_a1_uid376_vecTranslateTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid51_vecTranslateTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid51_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3NA_uid61_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal lev1_a0_uid417_cstMultOutMag_uid399_vecTranslateTest_q : STD_LOGIC_VECTOR (44 downto 0);
    signal outMag_uid404_vecTranslateTest_in : STD_LOGIC_VECTOR (19 downto 0);
    signal outMag_uid404_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal absX_uid13_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal absX_uid13_vecTranslateTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal absY_uid14_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal absY_uid14_vecTranslateTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1_2_uid48_vecTranslateTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1_2_uid48_vecTranslateTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid167_vecTranslateTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid167_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid172_vecTranslateTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal twoToMiSiYip_uid172_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid337_vecTranslateTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid337_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid342_vecTranslateTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal twoToMiSiYip_uid342_vecTranslateTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal xMSB_uid303_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid303_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid308_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal twoToMiSiYip_uid308_vecTranslateTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal twoToMiSiXip_uid307_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid307_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid269_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid269_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid274_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiYip_uid274_vecTranslateTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal twoToMiSiXip_uid273_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid273_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid235_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid235_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid240_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal twoToMiSiYip_uid240_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal twoToMiSiXip_uid239_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid239_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid201_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid201_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid206_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal twoToMiSiYip_uid206_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal twoToMiSiXip_uid205_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid205_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal twoToMiSiXip_uid171_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid171_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
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
    signal lev1_a0_uid375_vecTranslateTest_a : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0_uid375_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0_uid375_vecTranslateTest_o : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0_uid375_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal lev2_a0_uid377_vecTranslateTest_a : STD_LOGIC_VECTOR (25 downto 0);
    signal lev2_a0_uid377_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal lev2_a0_uid377_vecTranslateTest_o : STD_LOGIC_VECTOR (25 downto 0);
    signal lev2_a0_uid377_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal invSignOfSelectionSignal_uid56_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid56_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_a : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_o : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_3NA_uid58_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal invSignOfSelectionSignal_uid174_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid174_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_a : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_b : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_o : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid176_vecTranslateTest_q : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid175_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid344_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid344_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_19_uid345_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_19_uid345_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_19_uid345_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_19_uid345_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_19_uid345_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid310_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid310_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_a : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_o : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_17_uid312_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_17_uid311_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid276_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid276_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid278_vecTranslateTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_15_uid277_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid242_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid242_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_a : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_o : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid244_vecTranslateTest_q : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid243_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid208_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid208_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_o : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid210_vecTranslateTest_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid209_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
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
    signal atanRes_uid378_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal atanRes_uid378_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3sumAHighB_uid59_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_3_uid68_vecTranslateTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_3_uid68_vecTranslateTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_9_uid182_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1_9_uid182_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1_9_uid181_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_9_uid181_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_19_uid351_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_19_uid351_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_17_uid318_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_17_uid318_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_17_uid317_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_17_uid317_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_15_uid284_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_15_uid284_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_15_uid283_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_15_uid283_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_13_uid250_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_13_uid250_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_13_uid249_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_13_uid249_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_11_uid216_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1_11_uid216_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_11_uid215_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_11_uid215_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_7_uid143_vecTranslateTest_in : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1_7_uid143_vecTranslateTest_b : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1_5_uid105_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_5_uid105_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_3_uid67_vecTranslateTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1_3_uid67_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal outMagPreCstMult_uid398_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal outMagPreCstMult_uid398_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xv0_uid406_cstMultOutMag_uid399_vecTranslateTest_in : STD_LOGIC_VECTOR (5 downto 0);
    signal xv0_uid406_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv1_uid407_cstMultOutMag_uid399_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal xv1_uid407_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv2_uid408_cstMultOutMag_uid399_vecTranslateTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal xv2_uid408_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv3_uid409_cstMultOutMag_uid399_vecTranslateTest_in : STD_LOGIC_VECTOR (20 downto 0);
    signal xv3_uid409_cstMultOutMag_uid399_vecTranslateTest_b : STD_LOGIC_VECTOR (2 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- xMSB_uid320_vecTranslateTest(BITSELECT,319)@9
    xMSB_uid320_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist10_q);
    xMSB_uid320_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid320_vecTranslateTest_in(22 downto 22));

    -- xMSB_uid286_vecTranslateTest(BITSELECT,285)@8
    xMSB_uid286_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist14_q);
    xMSB_uid286_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid286_vecTranslateTest_in(24 downto 24));

    -- xMSB_uid252_vecTranslateTest(BITSELECT,251)@7
    xMSB_uid252_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist18_q);
    xMSB_uid252_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid252_vecTranslateTest_in(26 downto 26));

    -- xMSB_uid218_vecTranslateTest(BITSELECT,217)@6
    xMSB_uid218_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist22_q);
    xMSB_uid218_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid218_vecTranslateTest_in(28 downto 28));

    -- xMSB_uid184_vecTranslateTest(BITSELECT,183)@5
    xMSB_uid184_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist26_q);
    xMSB_uid184_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid184_vecTranslateTest_in(30 downto 30));

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

    -- redist38(DELAY,492)
    redist38 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_3_uid68_vecTranslateTest_b, xout => redist38_q, clk => clk, aclr => areset );

    -- xMSB_uid70_vecTranslateTest(BITSELECT,69)@2
    xMSB_uid70_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist38_q);
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

    -- redist39(DELAY,493)
    redist39 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_3_uid67_vecTranslateTest_b, xout => redist39_q, clk => clk, aclr => areset );

    -- xip1E_4CostZeroPaddingA_uid76_vecTranslateTest(CONSTANT,75)
    xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q <= "000";

    -- yip1E_4NA_uid80_vecTranslateTest(BITJOIN,79)@2
    yip1E_4NA_uid80_vecTranslateTest_q <= redist38_q & xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q;

    -- yip1E_4sumAHighB_uid81_vecTranslateTest(ADDSUB,80)@2
    yip1E_4sumAHighB_uid81_vecTranslateTest_s <= xMSB_uid70_vecTranslateTest_b;
    yip1E_4sumAHighB_uid81_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => yip1E_4NA_uid80_vecTranslateTest_q(17)) & yip1E_4NA_uid80_vecTranslateTest_q));
    yip1E_4sumAHighB_uid81_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist39_q));
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
    xip1E_4NA_uid77_vecTranslateTest_q <= redist39_q & xip1E_4CostZeroPaddingA_uid76_vecTranslateTest_q;

    -- xip1E_4sumAHighB_uid78_vecTranslateTest(ADDSUB,77)@2
    xip1E_4sumAHighB_uid78_vecTranslateTest_s <= invSignOfSelectionSignal_uid75_vecTranslateTest_q;
    xip1E_4sumAHighB_uid78_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_4NA_uid77_vecTranslateTest_q));
    xip1E_4sumAHighB_uid78_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 15 => redist38_q(14)) & redist38_q));
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

    -- redist34(DELAY,488)
    redist34 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_5_uid106_vecTranslateTest_b, xout => redist34_q, clk => clk, aclr => areset );

    -- xMSB_uid108_vecTranslateTest(BITSELECT,107)@3
    xMSB_uid108_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist34_q);
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

    -- redist35(DELAY,489)
    redist35 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_5_uid105_vecTranslateTest_b, xout => redist35_q, clk => clk, aclr => areset );

    -- xip1E_6CostZeroPaddingA_uid114_vecTranslateTest(CONSTANT,113)
    xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q <= "00000";

    -- yip1E_6NA_uid118_vecTranslateTest(BITJOIN,117)@3
    yip1E_6NA_uid118_vecTranslateTest_q <= redist34_q & xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q;

    -- yip1E_6sumAHighB_uid119_vecTranslateTest(ADDSUB,118)@3
    yip1E_6sumAHighB_uid119_vecTranslateTest_s <= xMSB_uid108_vecTranslateTest_b;
    yip1E_6sumAHighB_uid119_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1E_6NA_uid118_vecTranslateTest_q(24)) & yip1E_6NA_uid118_vecTranslateTest_q));
    yip1E_6sumAHighB_uid119_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist35_q));
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
    xip1E_6NA_uid115_vecTranslateTest_q <= redist35_q & xip1E_6CostZeroPaddingA_uid114_vecTranslateTest_q;

    -- xip1E_6sumAHighB_uid116_vecTranslateTest(ADDSUB,115)@3
    xip1E_6sumAHighB_uid116_vecTranslateTest_s <= invSignOfSelectionSignal_uid113_vecTranslateTest_q;
    xip1E_6sumAHighB_uid116_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_6NA_uid115_vecTranslateTest_q));
    xip1E_6sumAHighB_uid116_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 20 => redist34_q(19)) & redist34_q));
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

    -- redist30(DELAY,484)
    redist30 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_7_uid144_vecTranslateTest_b, xout => redist30_q, clk => clk, aclr => areset );

    -- xMSB_uid146_vecTranslateTest(BITSELECT,145)@4
    xMSB_uid146_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist30_q);
    xMSB_uid146_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid146_vecTranslateTest_in(28 downto 28));

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

    -- redist31(DELAY,485)
    redist31 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_7_uid143_vecTranslateTest_b, xout => redist31_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid150_vecTranslateTest(BITSELECT,149)@4
    twoToMiSiXip_uid150_vecTranslateTest_in <= redist31_q;
    twoToMiSiXip_uid150_vecTranslateTest_b <= twoToMiSiXip_uid150_vecTranslateTest_in(33 downto 3);

    -- yip1E_8NA_uid158_vecTranslateTest(BITJOIN,157)@4
    yip1E_8NA_uid158_vecTranslateTest_q <= redist30_q & xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q;

    -- yip1E_8sumAHighB_uid159_vecTranslateTest(ADDSUB,158)@4
    yip1E_8sumAHighB_uid159_vecTranslateTest_s <= xMSB_uid146_vecTranslateTest_b;
    yip1E_8sumAHighB_uid159_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => yip1E_8NA_uid158_vecTranslateTest_q(32)) & yip1E_8NA_uid158_vecTranslateTest_q));
    yip1E_8sumAHighB_uid159_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid150_vecTranslateTest_b));
    yip1E_8sumAHighB_uid159_vecTranslateTest_combproc: PROCESS (yip1E_8sumAHighB_uid159_vecTranslateTest_a, yip1E_8sumAHighB_uid159_vecTranslateTest_b, yip1E_8sumAHighB_uid159_vecTranslateTest_s)
    BEGIN
        IF (yip1E_8sumAHighB_uid159_vecTranslateTest_s = "1") THEN
            yip1E_8sumAHighB_uid159_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid159_vecTranslateTest_a) + SIGNED(yip1E_8sumAHighB_uid159_vecTranslateTest_b));
        ELSE
            yip1E_8sumAHighB_uid159_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid159_vecTranslateTest_a) - SIGNED(yip1E_8sumAHighB_uid159_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_8sumAHighB_uid159_vecTranslateTest_q <= yip1E_8sumAHighB_uid159_vecTranslateTest_o(33 downto 0);

    -- yip1_8_uid165_vecTranslateTest(BITSELECT,164)@4
    yip1_8_uid165_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_8sumAHighB_uid159_vecTranslateTest_q(31 downto 0));
    yip1_8_uid165_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_8_uid165_vecTranslateTest_in(31 downto 0));

    -- xMSB_uid167_vecTranslateTest(BITSELECT,166)@4
    xMSB_uid167_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_8_uid165_vecTranslateTest_b);
    xMSB_uid167_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid167_vecTranslateTest_in(31 downto 31));

    -- invSignOfSelectionSignal_uid174_vecTranslateTest(LOGICAL,173)@4
    invSignOfSelectionSignal_uid174_vecTranslateTest_a <= xMSB_uid167_vecTranslateTest_b;
    invSignOfSelectionSignal_uid174_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid174_vecTranslateTest_a);

    -- twoToMiSiYip_uid172_vecTranslateTest(BITSELECT,171)@4
    twoToMiSiYip_uid172_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_8_uid165_vecTranslateTest_b);
    twoToMiSiYip_uid172_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid172_vecTranslateTest_in(31 downto 8));

    -- invSignOfSelectionSignal_uid153_vecTranslateTest(LOGICAL,152)@4
    invSignOfSelectionSignal_uid153_vecTranslateTest_a <= xMSB_uid146_vecTranslateTest_b;
    invSignOfSelectionSignal_uid153_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid153_vecTranslateTest_a);

    -- twoToMiSiYip_uid151_vecTranslateTest(BITSELECT,150)@4
    twoToMiSiYip_uid151_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist30_q);
    twoToMiSiYip_uid151_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid151_vecTranslateTest_in(28 downto 3));

    -- xip1E_8NA_uid155_vecTranslateTest(BITJOIN,154)@4
    xip1E_8NA_uid155_vecTranslateTest_q <= redist31_q & xip1E_5CostZeroPaddingA_uid95_vecTranslateTest_q;

    -- xip1E_8sumAHighB_uid156_vecTranslateTest(ADDSUB,155)@4
    xip1E_8sumAHighB_uid156_vecTranslateTest_s <= invSignOfSelectionSignal_uid153_vecTranslateTest_q;
    xip1E_8sumAHighB_uid156_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_8NA_uid155_vecTranslateTest_q));
    xip1E_8sumAHighB_uid156_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 26 => twoToMiSiYip_uid151_vecTranslateTest_b(25)) & twoToMiSiYip_uid151_vecTranslateTest_b));
    xip1E_8sumAHighB_uid156_vecTranslateTest_combproc: PROCESS (xip1E_8sumAHighB_uid156_vecTranslateTest_a, xip1E_8sumAHighB_uid156_vecTranslateTest_b, xip1E_8sumAHighB_uid156_vecTranslateTest_s)
    BEGIN
        IF (xip1E_8sumAHighB_uid156_vecTranslateTest_s = "1") THEN
            xip1E_8sumAHighB_uid156_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid156_vecTranslateTest_a) + SIGNED(xip1E_8sumAHighB_uid156_vecTranslateTest_b));
        ELSE
            xip1E_8sumAHighB_uid156_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid156_vecTranslateTest_a) - SIGNED(xip1E_8sumAHighB_uid156_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_8sumAHighB_uid156_vecTranslateTest_q <= xip1E_8sumAHighB_uid156_vecTranslateTest_o(39 downto 0);

    -- xip1_8_uid164_vecTranslateTest(BITSELECT,163)@4
    xip1_8_uid164_vecTranslateTest_in <= xip1E_8sumAHighB_uid156_vecTranslateTest_q(37 downto 0);
    xip1_8_uid164_vecTranslateTest_b <= xip1_8_uid164_vecTranslateTest_in(37 downto 0);

    -- xip1E_9_uid175_vecTranslateTest(ADDSUB,174)@4
    xip1E_9_uid175_vecTranslateTest_s <= invSignOfSelectionSignal_uid174_vecTranslateTest_q;
    xip1E_9_uid175_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_8_uid164_vecTranslateTest_b));
    xip1E_9_uid175_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 24 => twoToMiSiYip_uid172_vecTranslateTest_b(23)) & twoToMiSiYip_uid172_vecTranslateTest_b));
    xip1E_9_uid175_vecTranslateTest_combproc: PROCESS (xip1E_9_uid175_vecTranslateTest_a, xip1E_9_uid175_vecTranslateTest_b, xip1E_9_uid175_vecTranslateTest_s)
    BEGIN
        IF (xip1E_9_uid175_vecTranslateTest_s = "1") THEN
            xip1E_9_uid175_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid175_vecTranslateTest_a) + SIGNED(xip1E_9_uid175_vecTranslateTest_b));
        ELSE
            xip1E_9_uid175_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid175_vecTranslateTest_a) - SIGNED(xip1E_9_uid175_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_9_uid175_vecTranslateTest_q <= xip1E_9_uid175_vecTranslateTest_o(39 downto 0);

    -- xip1_9_uid181_vecTranslateTest(BITSELECT,180)@4
    xip1_9_uid181_vecTranslateTest_in <= xip1E_9_uid175_vecTranslateTest_q(37 downto 0);
    xip1_9_uid181_vecTranslateTest_b <= xip1_9_uid181_vecTranslateTest_in(37 downto 0);

    -- redist27(DELAY,481)
    redist27 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_9_uid181_vecTranslateTest_b, xout => redist27_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid188_vecTranslateTest(BITSELECT,187)@5
    twoToMiSiXip_uid188_vecTranslateTest_in <= redist27_q;
    twoToMiSiXip_uid188_vecTranslateTest_b <= twoToMiSiXip_uid188_vecTranslateTest_in(37 downto 9);

    -- twoToMiSiXip_uid171_vecTranslateTest(BITSELECT,170)@4
    twoToMiSiXip_uid171_vecTranslateTest_in <= xip1_8_uid164_vecTranslateTest_b;
    twoToMiSiXip_uid171_vecTranslateTest_b <= twoToMiSiXip_uid171_vecTranslateTest_in(37 downto 8);

    -- yip1E_9_uid176_vecTranslateTest(ADDSUB,175)@4
    yip1E_9_uid176_vecTranslateTest_s <= xMSB_uid167_vecTranslateTest_b;
    yip1E_9_uid176_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => yip1_8_uid165_vecTranslateTest_b(31)) & yip1_8_uid165_vecTranslateTest_b));
    yip1E_9_uid176_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid171_vecTranslateTest_b));
    yip1E_9_uid176_vecTranslateTest_combproc: PROCESS (yip1E_9_uid176_vecTranslateTest_a, yip1E_9_uid176_vecTranslateTest_b, yip1E_9_uid176_vecTranslateTest_s)
    BEGIN
        IF (yip1E_9_uid176_vecTranslateTest_s = "1") THEN
            yip1E_9_uid176_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid176_vecTranslateTest_a) + SIGNED(yip1E_9_uid176_vecTranslateTest_b));
        ELSE
            yip1E_9_uid176_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid176_vecTranslateTest_a) - SIGNED(yip1E_9_uid176_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_9_uid176_vecTranslateTest_q <= yip1E_9_uid176_vecTranslateTest_o(32 downto 0);

    -- yip1_9_uid182_vecTranslateTest(BITSELECT,181)@4
    yip1_9_uid182_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_9_uid176_vecTranslateTest_q(30 downto 0));
    yip1_9_uid182_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_9_uid182_vecTranslateTest_in(30 downto 0));

    -- redist26(DELAY,480)
    redist26 : dspba_delay
    GENERIC MAP ( width => 31, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_9_uid182_vecTranslateTest_b, xout => redist26_q, clk => clk, aclr => areset );

    -- yip1E_10_uid193_vecTranslateTest(ADDSUB,192)@5
    yip1E_10_uid193_vecTranslateTest_s <= xMSB_uid184_vecTranslateTest_b;
    yip1E_10_uid193_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 31 => redist26_q(30)) & redist26_q));
    yip1E_10_uid193_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid188_vecTranslateTest_b));
    yip1E_10_uid193_vecTranslateTest_combproc: PROCESS (yip1E_10_uid193_vecTranslateTest_a, yip1E_10_uid193_vecTranslateTest_b, yip1E_10_uid193_vecTranslateTest_s)
    BEGIN
        IF (yip1E_10_uid193_vecTranslateTest_s = "1") THEN
            yip1E_10_uid193_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid193_vecTranslateTest_a) + SIGNED(yip1E_10_uid193_vecTranslateTest_b));
        ELSE
            yip1E_10_uid193_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid193_vecTranslateTest_a) - SIGNED(yip1E_10_uid193_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_10_uid193_vecTranslateTest_q <= yip1E_10_uid193_vecTranslateTest_o(31 downto 0);

    -- yip1_10_uid199_vecTranslateTest(BITSELECT,198)@5
    yip1_10_uid199_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_10_uid193_vecTranslateTest_q(29 downto 0));
    yip1_10_uid199_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_10_uid199_vecTranslateTest_in(29 downto 0));

    -- xMSB_uid201_vecTranslateTest(BITSELECT,200)@5
    xMSB_uid201_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_10_uid199_vecTranslateTest_b);
    xMSB_uid201_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid201_vecTranslateTest_in(29 downto 29));

    -- invSignOfSelectionSignal_uid208_vecTranslateTest(LOGICAL,207)@5
    invSignOfSelectionSignal_uid208_vecTranslateTest_a <= xMSB_uid201_vecTranslateTest_b;
    invSignOfSelectionSignal_uid208_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid208_vecTranslateTest_a);

    -- twoToMiSiYip_uid206_vecTranslateTest(BITSELECT,205)@5
    twoToMiSiYip_uid206_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_10_uid199_vecTranslateTest_b);
    twoToMiSiYip_uid206_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid206_vecTranslateTest_in(29 downto 10));

    -- invSignOfSelectionSignal_uid191_vecTranslateTest(LOGICAL,190)@5
    invSignOfSelectionSignal_uid191_vecTranslateTest_a <= xMSB_uid184_vecTranslateTest_b;
    invSignOfSelectionSignal_uid191_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid191_vecTranslateTest_a);

    -- twoToMiSiYip_uid189_vecTranslateTest(BITSELECT,188)@5
    twoToMiSiYip_uid189_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist26_q);
    twoToMiSiYip_uid189_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid189_vecTranslateTest_in(30 downto 9));

    -- xip1E_10_uid192_vecTranslateTest(ADDSUB,191)@5
    xip1E_10_uid192_vecTranslateTest_s <= invSignOfSelectionSignal_uid191_vecTranslateTest_q;
    xip1E_10_uid192_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist27_q));
    xip1E_10_uid192_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 22 => twoToMiSiYip_uid189_vecTranslateTest_b(21)) & twoToMiSiYip_uid189_vecTranslateTest_b));
    xip1E_10_uid192_vecTranslateTest_combproc: PROCESS (xip1E_10_uid192_vecTranslateTest_a, xip1E_10_uid192_vecTranslateTest_b, xip1E_10_uid192_vecTranslateTest_s)
    BEGIN
        IF (xip1E_10_uid192_vecTranslateTest_s = "1") THEN
            xip1E_10_uid192_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid192_vecTranslateTest_a) + SIGNED(xip1E_10_uid192_vecTranslateTest_b));
        ELSE
            xip1E_10_uid192_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid192_vecTranslateTest_a) - SIGNED(xip1E_10_uid192_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_10_uid192_vecTranslateTest_q <= xip1E_10_uid192_vecTranslateTest_o(39 downto 0);

    -- xip1_10_uid198_vecTranslateTest(BITSELECT,197)@5
    xip1_10_uid198_vecTranslateTest_in <= xip1E_10_uid192_vecTranslateTest_q(37 downto 0);
    xip1_10_uid198_vecTranslateTest_b <= xip1_10_uid198_vecTranslateTest_in(37 downto 0);

    -- xip1E_11_uid209_vecTranslateTest(ADDSUB,208)@5
    xip1E_11_uid209_vecTranslateTest_s <= invSignOfSelectionSignal_uid208_vecTranslateTest_q;
    xip1E_11_uid209_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_10_uid198_vecTranslateTest_b));
    xip1E_11_uid209_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 20 => twoToMiSiYip_uid206_vecTranslateTest_b(19)) & twoToMiSiYip_uid206_vecTranslateTest_b));
    xip1E_11_uid209_vecTranslateTest_combproc: PROCESS (xip1E_11_uid209_vecTranslateTest_a, xip1E_11_uid209_vecTranslateTest_b, xip1E_11_uid209_vecTranslateTest_s)
    BEGIN
        IF (xip1E_11_uid209_vecTranslateTest_s = "1") THEN
            xip1E_11_uid209_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid209_vecTranslateTest_a) + SIGNED(xip1E_11_uid209_vecTranslateTest_b));
        ELSE
            xip1E_11_uid209_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid209_vecTranslateTest_a) - SIGNED(xip1E_11_uid209_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_11_uid209_vecTranslateTest_q <= xip1E_11_uid209_vecTranslateTest_o(39 downto 0);

    -- xip1_11_uid215_vecTranslateTest(BITSELECT,214)@5
    xip1_11_uid215_vecTranslateTest_in <= xip1E_11_uid209_vecTranslateTest_q(37 downto 0);
    xip1_11_uid215_vecTranslateTest_b <= xip1_11_uid215_vecTranslateTest_in(37 downto 0);

    -- redist23(DELAY,477)
    redist23 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_11_uid215_vecTranslateTest_b, xout => redist23_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid222_vecTranslateTest(BITSELECT,221)@6
    twoToMiSiXip_uid222_vecTranslateTest_in <= redist23_q;
    twoToMiSiXip_uid222_vecTranslateTest_b <= twoToMiSiXip_uid222_vecTranslateTest_in(37 downto 11);

    -- twoToMiSiXip_uid205_vecTranslateTest(BITSELECT,204)@5
    twoToMiSiXip_uid205_vecTranslateTest_in <= xip1_10_uid198_vecTranslateTest_b;
    twoToMiSiXip_uid205_vecTranslateTest_b <= twoToMiSiXip_uid205_vecTranslateTest_in(37 downto 10);

    -- yip1E_11_uid210_vecTranslateTest(ADDSUB,209)@5
    yip1E_11_uid210_vecTranslateTest_s <= xMSB_uid201_vecTranslateTest_b;
    yip1E_11_uid210_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => yip1_10_uid199_vecTranslateTest_b(29)) & yip1_10_uid199_vecTranslateTest_b));
    yip1E_11_uid210_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid205_vecTranslateTest_b));
    yip1E_11_uid210_vecTranslateTest_combproc: PROCESS (yip1E_11_uid210_vecTranslateTest_a, yip1E_11_uid210_vecTranslateTest_b, yip1E_11_uid210_vecTranslateTest_s)
    BEGIN
        IF (yip1E_11_uid210_vecTranslateTest_s = "1") THEN
            yip1E_11_uid210_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid210_vecTranslateTest_a) + SIGNED(yip1E_11_uid210_vecTranslateTest_b));
        ELSE
            yip1E_11_uid210_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid210_vecTranslateTest_a) - SIGNED(yip1E_11_uid210_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_11_uid210_vecTranslateTest_q <= yip1E_11_uid210_vecTranslateTest_o(30 downto 0);

    -- yip1_11_uid216_vecTranslateTest(BITSELECT,215)@5
    yip1_11_uid216_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_11_uid210_vecTranslateTest_q(28 downto 0));
    yip1_11_uid216_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_11_uid216_vecTranslateTest_in(28 downto 0));

    -- redist22(DELAY,476)
    redist22 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_11_uid216_vecTranslateTest_b, xout => redist22_q, clk => clk, aclr => areset );

    -- yip1E_12_uid227_vecTranslateTest(ADDSUB,226)@6
    yip1E_12_uid227_vecTranslateTest_s <= xMSB_uid218_vecTranslateTest_b;
    yip1E_12_uid227_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => redist22_q(28)) & redist22_q));
    yip1E_12_uid227_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid222_vecTranslateTest_b));
    yip1E_12_uid227_vecTranslateTest_combproc: PROCESS (yip1E_12_uid227_vecTranslateTest_a, yip1E_12_uid227_vecTranslateTest_b, yip1E_12_uid227_vecTranslateTest_s)
    BEGIN
        IF (yip1E_12_uid227_vecTranslateTest_s = "1") THEN
            yip1E_12_uid227_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid227_vecTranslateTest_a) + SIGNED(yip1E_12_uid227_vecTranslateTest_b));
        ELSE
            yip1E_12_uid227_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid227_vecTranslateTest_a) - SIGNED(yip1E_12_uid227_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_12_uid227_vecTranslateTest_q <= yip1E_12_uid227_vecTranslateTest_o(29 downto 0);

    -- yip1_12_uid233_vecTranslateTest(BITSELECT,232)@6
    yip1_12_uid233_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_12_uid227_vecTranslateTest_q(27 downto 0));
    yip1_12_uid233_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_12_uid233_vecTranslateTest_in(27 downto 0));

    -- xMSB_uid235_vecTranslateTest(BITSELECT,234)@6
    xMSB_uid235_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_12_uid233_vecTranslateTest_b);
    xMSB_uid235_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid235_vecTranslateTest_in(27 downto 27));

    -- invSignOfSelectionSignal_uid242_vecTranslateTest(LOGICAL,241)@6
    invSignOfSelectionSignal_uid242_vecTranslateTest_a <= xMSB_uid235_vecTranslateTest_b;
    invSignOfSelectionSignal_uid242_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid242_vecTranslateTest_a);

    -- twoToMiSiYip_uid240_vecTranslateTest(BITSELECT,239)@6
    twoToMiSiYip_uid240_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_12_uid233_vecTranslateTest_b);
    twoToMiSiYip_uid240_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid240_vecTranslateTest_in(27 downto 12));

    -- invSignOfSelectionSignal_uid225_vecTranslateTest(LOGICAL,224)@6
    invSignOfSelectionSignal_uid225_vecTranslateTest_a <= xMSB_uid218_vecTranslateTest_b;
    invSignOfSelectionSignal_uid225_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid225_vecTranslateTest_a);

    -- twoToMiSiYip_uid223_vecTranslateTest(BITSELECT,222)@6
    twoToMiSiYip_uid223_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist22_q);
    twoToMiSiYip_uid223_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid223_vecTranslateTest_in(28 downto 11));

    -- xip1E_12_uid226_vecTranslateTest(ADDSUB,225)@6
    xip1E_12_uid226_vecTranslateTest_s <= invSignOfSelectionSignal_uid225_vecTranslateTest_q;
    xip1E_12_uid226_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist23_q));
    xip1E_12_uid226_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 18 => twoToMiSiYip_uid223_vecTranslateTest_b(17)) & twoToMiSiYip_uid223_vecTranslateTest_b));
    xip1E_12_uid226_vecTranslateTest_combproc: PROCESS (xip1E_12_uid226_vecTranslateTest_a, xip1E_12_uid226_vecTranslateTest_b, xip1E_12_uid226_vecTranslateTest_s)
    BEGIN
        IF (xip1E_12_uid226_vecTranslateTest_s = "1") THEN
            xip1E_12_uid226_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid226_vecTranslateTest_a) + SIGNED(xip1E_12_uid226_vecTranslateTest_b));
        ELSE
            xip1E_12_uid226_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid226_vecTranslateTest_a) - SIGNED(xip1E_12_uid226_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_12_uid226_vecTranslateTest_q <= xip1E_12_uid226_vecTranslateTest_o(39 downto 0);

    -- xip1_12_uid232_vecTranslateTest(BITSELECT,231)@6
    xip1_12_uid232_vecTranslateTest_in <= xip1E_12_uid226_vecTranslateTest_q(37 downto 0);
    xip1_12_uid232_vecTranslateTest_b <= xip1_12_uid232_vecTranslateTest_in(37 downto 0);

    -- xip1E_13_uid243_vecTranslateTest(ADDSUB,242)@6
    xip1E_13_uid243_vecTranslateTest_s <= invSignOfSelectionSignal_uid242_vecTranslateTest_q;
    xip1E_13_uid243_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_12_uid232_vecTranslateTest_b));
    xip1E_13_uid243_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 16 => twoToMiSiYip_uid240_vecTranslateTest_b(15)) & twoToMiSiYip_uid240_vecTranslateTest_b));
    xip1E_13_uid243_vecTranslateTest_combproc: PROCESS (xip1E_13_uid243_vecTranslateTest_a, xip1E_13_uid243_vecTranslateTest_b, xip1E_13_uid243_vecTranslateTest_s)
    BEGIN
        IF (xip1E_13_uid243_vecTranslateTest_s = "1") THEN
            xip1E_13_uid243_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid243_vecTranslateTest_a) + SIGNED(xip1E_13_uid243_vecTranslateTest_b));
        ELSE
            xip1E_13_uid243_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid243_vecTranslateTest_a) - SIGNED(xip1E_13_uid243_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_13_uid243_vecTranslateTest_q <= xip1E_13_uid243_vecTranslateTest_o(39 downto 0);

    -- xip1_13_uid249_vecTranslateTest(BITSELECT,248)@6
    xip1_13_uid249_vecTranslateTest_in <= xip1E_13_uid243_vecTranslateTest_q(37 downto 0);
    xip1_13_uid249_vecTranslateTest_b <= xip1_13_uid249_vecTranslateTest_in(37 downto 0);

    -- redist19(DELAY,473)
    redist19 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_13_uid249_vecTranslateTest_b, xout => redist19_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid256_vecTranslateTest(BITSELECT,255)@7
    twoToMiSiXip_uid256_vecTranslateTest_in <= redist19_q;
    twoToMiSiXip_uid256_vecTranslateTest_b <= twoToMiSiXip_uid256_vecTranslateTest_in(37 downto 13);

    -- twoToMiSiXip_uid239_vecTranslateTest(BITSELECT,238)@6
    twoToMiSiXip_uid239_vecTranslateTest_in <= xip1_12_uid232_vecTranslateTest_b;
    twoToMiSiXip_uid239_vecTranslateTest_b <= twoToMiSiXip_uid239_vecTranslateTest_in(37 downto 12);

    -- yip1E_13_uid244_vecTranslateTest(ADDSUB,243)@6
    yip1E_13_uid244_vecTranslateTest_s <= xMSB_uid235_vecTranslateTest_b;
    yip1E_13_uid244_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => yip1_12_uid233_vecTranslateTest_b(27)) & yip1_12_uid233_vecTranslateTest_b));
    yip1E_13_uid244_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid239_vecTranslateTest_b));
    yip1E_13_uid244_vecTranslateTest_combproc: PROCESS (yip1E_13_uid244_vecTranslateTest_a, yip1E_13_uid244_vecTranslateTest_b, yip1E_13_uid244_vecTranslateTest_s)
    BEGIN
        IF (yip1E_13_uid244_vecTranslateTest_s = "1") THEN
            yip1E_13_uid244_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid244_vecTranslateTest_a) + SIGNED(yip1E_13_uid244_vecTranslateTest_b));
        ELSE
            yip1E_13_uid244_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid244_vecTranslateTest_a) - SIGNED(yip1E_13_uid244_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_13_uid244_vecTranslateTest_q <= yip1E_13_uid244_vecTranslateTest_o(28 downto 0);

    -- yip1_13_uid250_vecTranslateTest(BITSELECT,249)@6
    yip1_13_uid250_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_13_uid244_vecTranslateTest_q(26 downto 0));
    yip1_13_uid250_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_13_uid250_vecTranslateTest_in(26 downto 0));

    -- redist18(DELAY,472)
    redist18 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_13_uid250_vecTranslateTest_b, xout => redist18_q, clk => clk, aclr => areset );

    -- yip1E_14_uid261_vecTranslateTest(ADDSUB,260)@7
    yip1E_14_uid261_vecTranslateTest_s <= xMSB_uid252_vecTranslateTest_b;
    yip1E_14_uid261_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => redist18_q(26)) & redist18_q));
    yip1E_14_uid261_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid256_vecTranslateTest_b));
    yip1E_14_uid261_vecTranslateTest_combproc: PROCESS (yip1E_14_uid261_vecTranslateTest_a, yip1E_14_uid261_vecTranslateTest_b, yip1E_14_uid261_vecTranslateTest_s)
    BEGIN
        IF (yip1E_14_uid261_vecTranslateTest_s = "1") THEN
            yip1E_14_uid261_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid261_vecTranslateTest_a) + SIGNED(yip1E_14_uid261_vecTranslateTest_b));
        ELSE
            yip1E_14_uid261_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid261_vecTranslateTest_a) - SIGNED(yip1E_14_uid261_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_14_uid261_vecTranslateTest_q <= yip1E_14_uid261_vecTranslateTest_o(27 downto 0);

    -- yip1_14_uid267_vecTranslateTest(BITSELECT,266)@7
    yip1_14_uid267_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_14_uid261_vecTranslateTest_q(25 downto 0));
    yip1_14_uid267_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_14_uid267_vecTranslateTest_in(25 downto 0));

    -- xMSB_uid269_vecTranslateTest(BITSELECT,268)@7
    xMSB_uid269_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_14_uid267_vecTranslateTest_b);
    xMSB_uid269_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid269_vecTranslateTest_in(25 downto 25));

    -- invSignOfSelectionSignal_uid276_vecTranslateTest(LOGICAL,275)@7
    invSignOfSelectionSignal_uid276_vecTranslateTest_a <= xMSB_uid269_vecTranslateTest_b;
    invSignOfSelectionSignal_uid276_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid276_vecTranslateTest_a);

    -- twoToMiSiYip_uid274_vecTranslateTest(BITSELECT,273)@7
    twoToMiSiYip_uid274_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_14_uid267_vecTranslateTest_b);
    twoToMiSiYip_uid274_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid274_vecTranslateTest_in(25 downto 14));

    -- invSignOfSelectionSignal_uid259_vecTranslateTest(LOGICAL,258)@7
    invSignOfSelectionSignal_uid259_vecTranslateTest_a <= xMSB_uid252_vecTranslateTest_b;
    invSignOfSelectionSignal_uid259_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid259_vecTranslateTest_a);

    -- twoToMiSiYip_uid257_vecTranslateTest(BITSELECT,256)@7
    twoToMiSiYip_uid257_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist18_q);
    twoToMiSiYip_uid257_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid257_vecTranslateTest_in(26 downto 13));

    -- xip1E_14_uid260_vecTranslateTest(ADDSUB,259)@7
    xip1E_14_uid260_vecTranslateTest_s <= invSignOfSelectionSignal_uid259_vecTranslateTest_q;
    xip1E_14_uid260_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist19_q));
    xip1E_14_uid260_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 14 => twoToMiSiYip_uid257_vecTranslateTest_b(13)) & twoToMiSiYip_uid257_vecTranslateTest_b));
    xip1E_14_uid260_vecTranslateTest_combproc: PROCESS (xip1E_14_uid260_vecTranslateTest_a, xip1E_14_uid260_vecTranslateTest_b, xip1E_14_uid260_vecTranslateTest_s)
    BEGIN
        IF (xip1E_14_uid260_vecTranslateTest_s = "1") THEN
            xip1E_14_uid260_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid260_vecTranslateTest_a) + SIGNED(xip1E_14_uid260_vecTranslateTest_b));
        ELSE
            xip1E_14_uid260_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid260_vecTranslateTest_a) - SIGNED(xip1E_14_uid260_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_14_uid260_vecTranslateTest_q <= xip1E_14_uid260_vecTranslateTest_o(39 downto 0);

    -- xip1_14_uid266_vecTranslateTest(BITSELECT,265)@7
    xip1_14_uid266_vecTranslateTest_in <= xip1E_14_uid260_vecTranslateTest_q(37 downto 0);
    xip1_14_uid266_vecTranslateTest_b <= xip1_14_uid266_vecTranslateTest_in(37 downto 0);

    -- xip1E_15_uid277_vecTranslateTest(ADDSUB,276)@7
    xip1E_15_uid277_vecTranslateTest_s <= invSignOfSelectionSignal_uid276_vecTranslateTest_q;
    xip1E_15_uid277_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_14_uid266_vecTranslateTest_b));
    xip1E_15_uid277_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 12 => twoToMiSiYip_uid274_vecTranslateTest_b(11)) & twoToMiSiYip_uid274_vecTranslateTest_b));
    xip1E_15_uid277_vecTranslateTest_combproc: PROCESS (xip1E_15_uid277_vecTranslateTest_a, xip1E_15_uid277_vecTranslateTest_b, xip1E_15_uid277_vecTranslateTest_s)
    BEGIN
        IF (xip1E_15_uid277_vecTranslateTest_s = "1") THEN
            xip1E_15_uid277_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid277_vecTranslateTest_a) + SIGNED(xip1E_15_uid277_vecTranslateTest_b));
        ELSE
            xip1E_15_uid277_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid277_vecTranslateTest_a) - SIGNED(xip1E_15_uid277_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_15_uid277_vecTranslateTest_q <= xip1E_15_uid277_vecTranslateTest_o(39 downto 0);

    -- xip1_15_uid283_vecTranslateTest(BITSELECT,282)@7
    xip1_15_uid283_vecTranslateTest_in <= xip1E_15_uid277_vecTranslateTest_q(37 downto 0);
    xip1_15_uid283_vecTranslateTest_b <= xip1_15_uid283_vecTranslateTest_in(37 downto 0);

    -- redist15(DELAY,469)
    redist15 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_15_uid283_vecTranslateTest_b, xout => redist15_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid290_vecTranslateTest(BITSELECT,289)@8
    twoToMiSiXip_uid290_vecTranslateTest_in <= redist15_q;
    twoToMiSiXip_uid290_vecTranslateTest_b <= twoToMiSiXip_uid290_vecTranslateTest_in(37 downto 15);

    -- twoToMiSiXip_uid273_vecTranslateTest(BITSELECT,272)@7
    twoToMiSiXip_uid273_vecTranslateTest_in <= xip1_14_uid266_vecTranslateTest_b;
    twoToMiSiXip_uid273_vecTranslateTest_b <= twoToMiSiXip_uid273_vecTranslateTest_in(37 downto 14);

    -- yip1E_15_uid278_vecTranslateTest(ADDSUB,277)@7
    yip1E_15_uid278_vecTranslateTest_s <= xMSB_uid269_vecTranslateTest_b;
    yip1E_15_uid278_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => yip1_14_uid267_vecTranslateTest_b(25)) & yip1_14_uid267_vecTranslateTest_b));
    yip1E_15_uid278_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid273_vecTranslateTest_b));
    yip1E_15_uid278_vecTranslateTest_combproc: PROCESS (yip1E_15_uid278_vecTranslateTest_a, yip1E_15_uid278_vecTranslateTest_b, yip1E_15_uid278_vecTranslateTest_s)
    BEGIN
        IF (yip1E_15_uid278_vecTranslateTest_s = "1") THEN
            yip1E_15_uid278_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid278_vecTranslateTest_a) + SIGNED(yip1E_15_uid278_vecTranslateTest_b));
        ELSE
            yip1E_15_uid278_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid278_vecTranslateTest_a) - SIGNED(yip1E_15_uid278_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_15_uid278_vecTranslateTest_q <= yip1E_15_uid278_vecTranslateTest_o(26 downto 0);

    -- yip1_15_uid284_vecTranslateTest(BITSELECT,283)@7
    yip1_15_uid284_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_15_uid278_vecTranslateTest_q(24 downto 0));
    yip1_15_uid284_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_15_uid284_vecTranslateTest_in(24 downto 0));

    -- redist14(DELAY,468)
    redist14 : dspba_delay
    GENERIC MAP ( width => 25, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_15_uid284_vecTranslateTest_b, xout => redist14_q, clk => clk, aclr => areset );

    -- yip1E_16_uid295_vecTranslateTest(ADDSUB,294)@8
    yip1E_16_uid295_vecTranslateTest_s <= xMSB_uid286_vecTranslateTest_b;
    yip1E_16_uid295_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => redist14_q(24)) & redist14_q));
    yip1E_16_uid295_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid290_vecTranslateTest_b));
    yip1E_16_uid295_vecTranslateTest_combproc: PROCESS (yip1E_16_uid295_vecTranslateTest_a, yip1E_16_uid295_vecTranslateTest_b, yip1E_16_uid295_vecTranslateTest_s)
    BEGIN
        IF (yip1E_16_uid295_vecTranslateTest_s = "1") THEN
            yip1E_16_uid295_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid295_vecTranslateTest_a) + SIGNED(yip1E_16_uid295_vecTranslateTest_b));
        ELSE
            yip1E_16_uid295_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid295_vecTranslateTest_a) - SIGNED(yip1E_16_uid295_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_16_uid295_vecTranslateTest_q <= yip1E_16_uid295_vecTranslateTest_o(25 downto 0);

    -- yip1_16_uid301_vecTranslateTest(BITSELECT,300)@8
    yip1_16_uid301_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_16_uid295_vecTranslateTest_q(23 downto 0));
    yip1_16_uid301_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_16_uid301_vecTranslateTest_in(23 downto 0));

    -- xMSB_uid303_vecTranslateTest(BITSELECT,302)@8
    xMSB_uid303_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_16_uid301_vecTranslateTest_b);
    xMSB_uid303_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid303_vecTranslateTest_in(23 downto 23));

    -- invSignOfSelectionSignal_uid310_vecTranslateTest(LOGICAL,309)@8
    invSignOfSelectionSignal_uid310_vecTranslateTest_a <= xMSB_uid303_vecTranslateTest_b;
    invSignOfSelectionSignal_uid310_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid310_vecTranslateTest_a);

    -- twoToMiSiYip_uid308_vecTranslateTest(BITSELECT,307)@8
    twoToMiSiYip_uid308_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_16_uid301_vecTranslateTest_b);
    twoToMiSiYip_uid308_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid308_vecTranslateTest_in(23 downto 16));

    -- invSignOfSelectionSignal_uid293_vecTranslateTest(LOGICAL,292)@8
    invSignOfSelectionSignal_uid293_vecTranslateTest_a <= xMSB_uid286_vecTranslateTest_b;
    invSignOfSelectionSignal_uid293_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid293_vecTranslateTest_a);

    -- twoToMiSiYip_uid291_vecTranslateTest(BITSELECT,290)@8
    twoToMiSiYip_uid291_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist14_q);
    twoToMiSiYip_uid291_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid291_vecTranslateTest_in(24 downto 15));

    -- xip1E_16_uid294_vecTranslateTest(ADDSUB,293)@8
    xip1E_16_uid294_vecTranslateTest_s <= invSignOfSelectionSignal_uid293_vecTranslateTest_q;
    xip1E_16_uid294_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist15_q));
    xip1E_16_uid294_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 10 => twoToMiSiYip_uid291_vecTranslateTest_b(9)) & twoToMiSiYip_uid291_vecTranslateTest_b));
    xip1E_16_uid294_vecTranslateTest_combproc: PROCESS (xip1E_16_uid294_vecTranslateTest_a, xip1E_16_uid294_vecTranslateTest_b, xip1E_16_uid294_vecTranslateTest_s)
    BEGIN
        IF (xip1E_16_uid294_vecTranslateTest_s = "1") THEN
            xip1E_16_uid294_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid294_vecTranslateTest_a) + SIGNED(xip1E_16_uid294_vecTranslateTest_b));
        ELSE
            xip1E_16_uid294_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid294_vecTranslateTest_a) - SIGNED(xip1E_16_uid294_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_16_uid294_vecTranslateTest_q <= xip1E_16_uid294_vecTranslateTest_o(39 downto 0);

    -- xip1_16_uid300_vecTranslateTest(BITSELECT,299)@8
    xip1_16_uid300_vecTranslateTest_in <= xip1E_16_uid294_vecTranslateTest_q(37 downto 0);
    xip1_16_uid300_vecTranslateTest_b <= xip1_16_uid300_vecTranslateTest_in(37 downto 0);

    -- xip1E_17_uid311_vecTranslateTest(ADDSUB,310)@8
    xip1E_17_uid311_vecTranslateTest_s <= invSignOfSelectionSignal_uid310_vecTranslateTest_q;
    xip1E_17_uid311_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_16_uid300_vecTranslateTest_b));
    xip1E_17_uid311_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 8 => twoToMiSiYip_uid308_vecTranslateTest_b(7)) & twoToMiSiYip_uid308_vecTranslateTest_b));
    xip1E_17_uid311_vecTranslateTest_combproc: PROCESS (xip1E_17_uid311_vecTranslateTest_a, xip1E_17_uid311_vecTranslateTest_b, xip1E_17_uid311_vecTranslateTest_s)
    BEGIN
        IF (xip1E_17_uid311_vecTranslateTest_s = "1") THEN
            xip1E_17_uid311_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_17_uid311_vecTranslateTest_a) + SIGNED(xip1E_17_uid311_vecTranslateTest_b));
        ELSE
            xip1E_17_uid311_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_17_uid311_vecTranslateTest_a) - SIGNED(xip1E_17_uid311_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_17_uid311_vecTranslateTest_q <= xip1E_17_uid311_vecTranslateTest_o(39 downto 0);

    -- xip1_17_uid317_vecTranslateTest(BITSELECT,316)@8
    xip1_17_uid317_vecTranslateTest_in <= xip1E_17_uid311_vecTranslateTest_q(37 downto 0);
    xip1_17_uid317_vecTranslateTest_b <= xip1_17_uid317_vecTranslateTest_in(37 downto 0);

    -- redist11(DELAY,465)
    redist11 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_17_uid317_vecTranslateTest_b, xout => redist11_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid324_vecTranslateTest(BITSELECT,323)@9
    twoToMiSiXip_uid324_vecTranslateTest_in <= redist11_q;
    twoToMiSiXip_uid324_vecTranslateTest_b <= twoToMiSiXip_uid324_vecTranslateTest_in(37 downto 17);

    -- twoToMiSiXip_uid307_vecTranslateTest(BITSELECT,306)@8
    twoToMiSiXip_uid307_vecTranslateTest_in <= xip1_16_uid300_vecTranslateTest_b;
    twoToMiSiXip_uid307_vecTranslateTest_b <= twoToMiSiXip_uid307_vecTranslateTest_in(37 downto 16);

    -- yip1E_17_uid312_vecTranslateTest(ADDSUB,311)@8
    yip1E_17_uid312_vecTranslateTest_s <= xMSB_uid303_vecTranslateTest_b;
    yip1E_17_uid312_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => yip1_16_uid301_vecTranslateTest_b(23)) & yip1_16_uid301_vecTranslateTest_b));
    yip1E_17_uid312_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid307_vecTranslateTest_b));
    yip1E_17_uid312_vecTranslateTest_combproc: PROCESS (yip1E_17_uid312_vecTranslateTest_a, yip1E_17_uid312_vecTranslateTest_b, yip1E_17_uid312_vecTranslateTest_s)
    BEGIN
        IF (yip1E_17_uid312_vecTranslateTest_s = "1") THEN
            yip1E_17_uid312_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid312_vecTranslateTest_a) + SIGNED(yip1E_17_uid312_vecTranslateTest_b));
        ELSE
            yip1E_17_uid312_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid312_vecTranslateTest_a) - SIGNED(yip1E_17_uid312_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_17_uid312_vecTranslateTest_q <= yip1E_17_uid312_vecTranslateTest_o(24 downto 0);

    -- yip1_17_uid318_vecTranslateTest(BITSELECT,317)@8
    yip1_17_uid318_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_17_uid312_vecTranslateTest_q(22 downto 0));
    yip1_17_uid318_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_17_uid318_vecTranslateTest_in(22 downto 0));

    -- redist10(DELAY,464)
    redist10 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_17_uid318_vecTranslateTest_b, xout => redist10_q, clk => clk, aclr => areset );

    -- yip1E_18_uid329_vecTranslateTest(ADDSUB,328)@9
    yip1E_18_uid329_vecTranslateTest_s <= xMSB_uid320_vecTranslateTest_b;
    yip1E_18_uid329_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 23 => redist10_q(22)) & redist10_q));
    yip1E_18_uid329_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid324_vecTranslateTest_b));
    yip1E_18_uid329_vecTranslateTest_combproc: PROCESS (yip1E_18_uid329_vecTranslateTest_a, yip1E_18_uid329_vecTranslateTest_b, yip1E_18_uid329_vecTranslateTest_s)
    BEGIN
        IF (yip1E_18_uid329_vecTranslateTest_s = "1") THEN
            yip1E_18_uid329_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_18_uid329_vecTranslateTest_a) + SIGNED(yip1E_18_uid329_vecTranslateTest_b));
        ELSE
            yip1E_18_uid329_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_18_uid329_vecTranslateTest_a) - SIGNED(yip1E_18_uid329_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_18_uid329_vecTranslateTest_q <= yip1E_18_uid329_vecTranslateTest_o(23 downto 0);

    -- yip1_18_uid335_vecTranslateTest(BITSELECT,334)@9
    yip1_18_uid335_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_18_uid329_vecTranslateTest_q(21 downto 0));
    yip1_18_uid335_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_18_uid335_vecTranslateTest_in(21 downto 0));

    -- xMSB_uid337_vecTranslateTest(BITSELECT,336)@9
    xMSB_uid337_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_18_uid335_vecTranslateTest_b);
    xMSB_uid337_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid337_vecTranslateTest_in(21 downto 21));

    -- invSignOfSelectionSignal_uid344_vecTranslateTest(LOGICAL,343)@9
    invSignOfSelectionSignal_uid344_vecTranslateTest_a <= xMSB_uid337_vecTranslateTest_b;
    invSignOfSelectionSignal_uid344_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid344_vecTranslateTest_a);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- twoToMiSiYip_uid342_vecTranslateTest(BITSELECT,341)@9
    twoToMiSiYip_uid342_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_18_uid335_vecTranslateTest_b);
    twoToMiSiYip_uid342_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid342_vecTranslateTest_in(21 downto 18));

    -- invSignOfSelectionSignal_uid327_vecTranslateTest(LOGICAL,326)@9
    invSignOfSelectionSignal_uid327_vecTranslateTest_a <= xMSB_uid320_vecTranslateTest_b;
    invSignOfSelectionSignal_uid327_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid327_vecTranslateTest_a);

    -- twoToMiSiYip_uid325_vecTranslateTest(BITSELECT,324)@9
    twoToMiSiYip_uid325_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist10_q);
    twoToMiSiYip_uid325_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid325_vecTranslateTest_in(22 downto 17));

    -- xip1E_18_uid328_vecTranslateTest(ADDSUB,327)@9
    xip1E_18_uid328_vecTranslateTest_s <= invSignOfSelectionSignal_uid327_vecTranslateTest_q;
    xip1E_18_uid328_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist11_q));
    xip1E_18_uid328_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 6 => twoToMiSiYip_uid325_vecTranslateTest_b(5)) & twoToMiSiYip_uid325_vecTranslateTest_b));
    xip1E_18_uid328_vecTranslateTest_combproc: PROCESS (xip1E_18_uid328_vecTranslateTest_a, xip1E_18_uid328_vecTranslateTest_b, xip1E_18_uid328_vecTranslateTest_s)
    BEGIN
        IF (xip1E_18_uid328_vecTranslateTest_s = "1") THEN
            xip1E_18_uid328_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_18_uid328_vecTranslateTest_a) + SIGNED(xip1E_18_uid328_vecTranslateTest_b));
        ELSE
            xip1E_18_uid328_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_18_uid328_vecTranslateTest_a) - SIGNED(xip1E_18_uid328_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_18_uid328_vecTranslateTest_q <= xip1E_18_uid328_vecTranslateTest_o(39 downto 0);

    -- xip1_18_uid334_vecTranslateTest(BITSELECT,333)@9
    xip1_18_uid334_vecTranslateTest_in <= xip1E_18_uid328_vecTranslateTest_q(37 downto 0);
    xip1_18_uid334_vecTranslateTest_b <= xip1_18_uid334_vecTranslateTest_in(37 downto 0);

    -- xip1E_19_uid345_vecTranslateTest(ADDSUB,344)@9
    xip1E_19_uid345_vecTranslateTest_s <= invSignOfSelectionSignal_uid344_vecTranslateTest_q;
    xip1E_19_uid345_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_18_uid334_vecTranslateTest_b));
    xip1E_19_uid345_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 4 => twoToMiSiYip_uid342_vecTranslateTest_b(3)) & twoToMiSiYip_uid342_vecTranslateTest_b));
    xip1E_19_uid345_vecTranslateTest_combproc: PROCESS (xip1E_19_uid345_vecTranslateTest_a, xip1E_19_uid345_vecTranslateTest_b, xip1E_19_uid345_vecTranslateTest_s)
    BEGIN
        IF (xip1E_19_uid345_vecTranslateTest_s = "1") THEN
            xip1E_19_uid345_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_19_uid345_vecTranslateTest_a) + SIGNED(xip1E_19_uid345_vecTranslateTest_b));
        ELSE
            xip1E_19_uid345_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_19_uid345_vecTranslateTest_a) - SIGNED(xip1E_19_uid345_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_19_uid345_vecTranslateTest_q <= xip1E_19_uid345_vecTranslateTest_o(39 downto 0);

    -- xip1_19_uid351_vecTranslateTest(BITSELECT,350)@9
    xip1_19_uid351_vecTranslateTest_in <= xip1E_19_uid345_vecTranslateTest_q(37 downto 0);
    xip1_19_uid351_vecTranslateTest_b <= xip1_19_uid351_vecTranslateTest_in(37 downto 0);

    -- outMagPreCstMult_uid398_vecTranslateTest(BITSELECT,397)@9
    outMagPreCstMult_uid398_vecTranslateTest_in <= xip1_19_uid351_vecTranslateTest_b;
    outMagPreCstMult_uid398_vecTranslateTest_b <= outMagPreCstMult_uid398_vecTranslateTest_in(37 downto 17);

    -- xv0_uid406_cstMultOutMag_uid399_vecTranslateTest(BITSELECT,405)@9
    xv0_uid406_cstMultOutMag_uid399_vecTranslateTest_in <= outMagPreCstMult_uid398_vecTranslateTest_b(5 downto 0);
    xv0_uid406_cstMultOutMag_uid399_vecTranslateTest_b <= xv0_uid406_cstMultOutMag_uid399_vecTranslateTest_in(5 downto 0);

    -- redist4(DELAY,458)
    redist4 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv0_uid406_cstMultOutMag_uid399_vecTranslateTest_b, xout => redist4_q, clk => clk, aclr => areset );

    -- p0_uid413_cstMultOutMag_uid399_vecTranslateTest(LOOKUP,412)@10
    p0_uid413_cstMultOutMag_uid399_vecTranslateTest_combproc: PROCESS (redist4_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist4_q) IS
            WHEN "000000" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0000000000000000000000000000";
            WHEN "000001" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0000001001101101110100111100";
            WHEN "000010" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0000010011011011101001111000";
            WHEN "000011" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0000011101001001011110110100";
            WHEN "000100" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0000100110110111010011110000";
            WHEN "000101" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0000110000100101001000101100";
            WHEN "000110" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0000111010010010111101101000";
            WHEN "000111" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0001000100000000110010100100";
            WHEN "001000" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0001001101101110100111100000";
            WHEN "001001" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0001010111011100011100011100";
            WHEN "001010" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0001100001001010010001011000";
            WHEN "001011" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0001101010111000000110010100";
            WHEN "001100" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0001110100100101111011010000";
            WHEN "001101" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0001111110010011110000001100";
            WHEN "001110" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0010001000000001100101001000";
            WHEN "001111" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0010010001101111011010000100";
            WHEN "010000" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0010011011011101001111000000";
            WHEN "010001" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0010100101001011000011111100";
            WHEN "010010" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0010101110111000111000111000";
            WHEN "010011" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0010111000100110101101110100";
            WHEN "010100" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0011000010010100100010110000";
            WHEN "010101" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0011001100000010010111101100";
            WHEN "010110" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0011010101110000001100101000";
            WHEN "010111" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0011011111011110000001100100";
            WHEN "011000" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0011101001001011110110100000";
            WHEN "011001" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0011110010111001101011011100";
            WHEN "011010" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0011111100100111100000011000";
            WHEN "011011" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0100000110010101010101010100";
            WHEN "011100" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0100010000000011001010010000";
            WHEN "011101" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0100011001110000111111001100";
            WHEN "011110" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0100100011011110110100001000";
            WHEN "011111" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0100101101001100101001000100";
            WHEN "100000" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0100110110111010011110000000";
            WHEN "100001" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0101000000101000010010111100";
            WHEN "100010" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0101001010010110000111111000";
            WHEN "100011" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0101010100000011111100110100";
            WHEN "100100" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0101011101110001110001110000";
            WHEN "100101" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0101100111011111100110101100";
            WHEN "100110" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0101110001001101011011101000";
            WHEN "100111" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0101111010111011010000100100";
            WHEN "101000" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0110000100101001000101100000";
            WHEN "101001" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0110001110010110111010011100";
            WHEN "101010" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0110011000000100101111011000";
            WHEN "101011" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0110100001110010100100010100";
            WHEN "101100" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0110101011100000011001010000";
            WHEN "101101" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0110110101001110001110001100";
            WHEN "101110" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0110111110111100000011001000";
            WHEN "101111" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0111001000101001111000000100";
            WHEN "110000" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0111010010010111101101000000";
            WHEN "110001" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0111011100000101100001111100";
            WHEN "110010" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0111100101110011010110111000";
            WHEN "110011" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0111101111100001001011110100";
            WHEN "110100" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "0111111001001111000000110000";
            WHEN "110101" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1000000010111100110101101100";
            WHEN "110110" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1000001100101010101010101000";
            WHEN "110111" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1000010110011000011111100100";
            WHEN "111000" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1000100000000110010100100000";
            WHEN "111001" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1000101001110100001001011100";
            WHEN "111010" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1000110011100001111110011000";
            WHEN "111011" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1000111101001111110011010100";
            WHEN "111100" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1001000110111101101000010000";
            WHEN "111101" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1001010000101011011101001100";
            WHEN "111110" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1001011010011001010010001000";
            WHEN "111111" => p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= "1001100100000111000111000100";
            WHEN OTHERS => -- unreachable
                           p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- xv1_uid407_cstMultOutMag_uid399_vecTranslateTest(BITSELECT,406)@9
    xv1_uid407_cstMultOutMag_uid399_vecTranslateTest_in <= outMagPreCstMult_uid398_vecTranslateTest_b(11 downto 0);
    xv1_uid407_cstMultOutMag_uid399_vecTranslateTest_b <= xv1_uid407_cstMultOutMag_uid399_vecTranslateTest_in(11 downto 6);

    -- redist3(DELAY,457)
    redist3 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv1_uid407_cstMultOutMag_uid399_vecTranslateTest_b, xout => redist3_q, clk => clk, aclr => areset );

    -- p1_uid412_cstMultOutMag_uid399_vecTranslateTest(LOOKUP,411)@10
    p1_uid412_cstMultOutMag_uid399_vecTranslateTest_combproc: PROCESS (redist3_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist3_q) IS
            WHEN "000000" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0000000000000000000000000000000000";
            WHEN "000001" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0000001001101101110100111100000000";
            WHEN "000010" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0000010011011011101001111000000000";
            WHEN "000011" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0000011101001001011110110100000000";
            WHEN "000100" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0000100110110111010011110000000000";
            WHEN "000101" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0000110000100101001000101100000000";
            WHEN "000110" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0000111010010010111101101000000000";
            WHEN "000111" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0001000100000000110010100100000000";
            WHEN "001000" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0001001101101110100111100000000000";
            WHEN "001001" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0001010111011100011100011100000000";
            WHEN "001010" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0001100001001010010001011000000000";
            WHEN "001011" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0001101010111000000110010100000000";
            WHEN "001100" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0001110100100101111011010000000000";
            WHEN "001101" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0001111110010011110000001100000000";
            WHEN "001110" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0010001000000001100101001000000000";
            WHEN "001111" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0010010001101111011010000100000000";
            WHEN "010000" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0010011011011101001111000000000000";
            WHEN "010001" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0010100101001011000011111100000000";
            WHEN "010010" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0010101110111000111000111000000000";
            WHEN "010011" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0010111000100110101101110100000000";
            WHEN "010100" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0011000010010100100010110000000000";
            WHEN "010101" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0011001100000010010111101100000000";
            WHEN "010110" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0011010101110000001100101000000000";
            WHEN "010111" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0011011111011110000001100100000000";
            WHEN "011000" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0011101001001011110110100000000000";
            WHEN "011001" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0011110010111001101011011100000000";
            WHEN "011010" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0011111100100111100000011000000000";
            WHEN "011011" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0100000110010101010101010100000000";
            WHEN "011100" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0100010000000011001010010000000000";
            WHEN "011101" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0100011001110000111111001100000000";
            WHEN "011110" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0100100011011110110100001000000000";
            WHEN "011111" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0100101101001100101001000100000000";
            WHEN "100000" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0100110110111010011110000000000000";
            WHEN "100001" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0101000000101000010010111100000000";
            WHEN "100010" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0101001010010110000111111000000000";
            WHEN "100011" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0101010100000011111100110100000000";
            WHEN "100100" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0101011101110001110001110000000000";
            WHEN "100101" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0101100111011111100110101100000000";
            WHEN "100110" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0101110001001101011011101000000000";
            WHEN "100111" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0101111010111011010000100100000000";
            WHEN "101000" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0110000100101001000101100000000000";
            WHEN "101001" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0110001110010110111010011100000000";
            WHEN "101010" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0110011000000100101111011000000000";
            WHEN "101011" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0110100001110010100100010100000000";
            WHEN "101100" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0110101011100000011001010000000000";
            WHEN "101101" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0110110101001110001110001100000000";
            WHEN "101110" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0110111110111100000011001000000000";
            WHEN "101111" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0111001000101001111000000100000000";
            WHEN "110000" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0111010010010111101101000000000000";
            WHEN "110001" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0111011100000101100001111100000000";
            WHEN "110010" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0111100101110011010110111000000000";
            WHEN "110011" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0111101111100001001011110100000000";
            WHEN "110100" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "0111111001001111000000110000000000";
            WHEN "110101" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1000000010111100110101101100000000";
            WHEN "110110" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1000001100101010101010101000000000";
            WHEN "110111" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1000010110011000011111100100000000";
            WHEN "111000" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1000100000000110010100100000000000";
            WHEN "111001" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1000101001110100001001011100000000";
            WHEN "111010" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1000110011100001111110011000000000";
            WHEN "111011" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1000111101001111110011010100000000";
            WHEN "111100" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1001000110111101101000010000000000";
            WHEN "111101" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1001010000101011011101001100000000";
            WHEN "111110" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1001011010011001010010001000000000";
            WHEN "111111" => p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= "1001100100000111000111000100000000";
            WHEN OTHERS => -- unreachable
                           p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest(ADD,417)@10 + 1
    lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & p1_uid412_cstMultOutMag_uid399_vecTranslateTest_q);
    lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_b <= STD_LOGIC_VECTOR("0000000" & p0_uid413_cstMultOutMag_uid399_vecTranslateTest_q);
    lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_a) + UNSIGNED(lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_b));
        END IF;
    END PROCESS;
    lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_q <= lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_o(34 downto 0);

    -- xv2_uid408_cstMultOutMag_uid399_vecTranslateTest(BITSELECT,407)@9
    xv2_uid408_cstMultOutMag_uid399_vecTranslateTest_in <= outMagPreCstMult_uid398_vecTranslateTest_b(17 downto 0);
    xv2_uid408_cstMultOutMag_uid399_vecTranslateTest_b <= xv2_uid408_cstMultOutMag_uid399_vecTranslateTest_in(17 downto 12);

    -- redist2(DELAY,456)
    redist2 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv2_uid408_cstMultOutMag_uid399_vecTranslateTest_b, xout => redist2_q, clk => clk, aclr => areset );

    -- p2_uid411_cstMultOutMag_uid399_vecTranslateTest(LOOKUP,410)@10
    p2_uid411_cstMultOutMag_uid399_vecTranslateTest_combproc: PROCESS (redist2_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist2_q) IS
            WHEN "000000" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0000000000000000000000000000000000000000";
            WHEN "000001" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0000001001101101110100111100000000000000";
            WHEN "000010" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0000010011011011101001111000000000000000";
            WHEN "000011" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0000011101001001011110110100000000000000";
            WHEN "000100" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0000100110110111010011110000000000000000";
            WHEN "000101" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0000110000100101001000101100000000000000";
            WHEN "000110" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0000111010010010111101101000000000000000";
            WHEN "000111" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0001000100000000110010100100000000000000";
            WHEN "001000" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0001001101101110100111100000000000000000";
            WHEN "001001" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0001010111011100011100011100000000000000";
            WHEN "001010" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0001100001001010010001011000000000000000";
            WHEN "001011" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0001101010111000000110010100000000000000";
            WHEN "001100" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0001110100100101111011010000000000000000";
            WHEN "001101" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0001111110010011110000001100000000000000";
            WHEN "001110" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0010001000000001100101001000000000000000";
            WHEN "001111" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0010010001101111011010000100000000000000";
            WHEN "010000" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0010011011011101001111000000000000000000";
            WHEN "010001" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0010100101001011000011111100000000000000";
            WHEN "010010" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0010101110111000111000111000000000000000";
            WHEN "010011" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0010111000100110101101110100000000000000";
            WHEN "010100" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0011000010010100100010110000000000000000";
            WHEN "010101" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0011001100000010010111101100000000000000";
            WHEN "010110" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0011010101110000001100101000000000000000";
            WHEN "010111" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0011011111011110000001100100000000000000";
            WHEN "011000" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0011101001001011110110100000000000000000";
            WHEN "011001" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0011110010111001101011011100000000000000";
            WHEN "011010" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0011111100100111100000011000000000000000";
            WHEN "011011" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0100000110010101010101010100000000000000";
            WHEN "011100" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0100010000000011001010010000000000000000";
            WHEN "011101" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0100011001110000111111001100000000000000";
            WHEN "011110" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0100100011011110110100001000000000000000";
            WHEN "011111" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0100101101001100101001000100000000000000";
            WHEN "100000" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0100110110111010011110000000000000000000";
            WHEN "100001" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0101000000101000010010111100000000000000";
            WHEN "100010" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0101001010010110000111111000000000000000";
            WHEN "100011" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0101010100000011111100110100000000000000";
            WHEN "100100" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0101011101110001110001110000000000000000";
            WHEN "100101" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0101100111011111100110101100000000000000";
            WHEN "100110" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0101110001001101011011101000000000000000";
            WHEN "100111" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0101111010111011010000100100000000000000";
            WHEN "101000" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0110000100101001000101100000000000000000";
            WHEN "101001" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0110001110010110111010011100000000000000";
            WHEN "101010" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0110011000000100101111011000000000000000";
            WHEN "101011" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0110100001110010100100010100000000000000";
            WHEN "101100" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0110101011100000011001010000000000000000";
            WHEN "101101" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0110110101001110001110001100000000000000";
            WHEN "101110" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0110111110111100000011001000000000000000";
            WHEN "101111" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0111001000101001111000000100000000000000";
            WHEN "110000" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0111010010010111101101000000000000000000";
            WHEN "110001" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0111011100000101100001111100000000000000";
            WHEN "110010" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0111100101110011010110111000000000000000";
            WHEN "110011" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0111101111100001001011110100000000000000";
            WHEN "110100" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "0111111001001111000000110000000000000000";
            WHEN "110101" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1000000010111100110101101100000000000000";
            WHEN "110110" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1000001100101010101010101000000000000000";
            WHEN "110111" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1000010110011000011111100100000000000000";
            WHEN "111000" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1000100000000110010100100000000000000000";
            WHEN "111001" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1000101001110100001001011100000000000000";
            WHEN "111010" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1000110011100001111110011000000000000000";
            WHEN "111011" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1000111101001111110011010100000000000000";
            WHEN "111100" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1001000110111101101000010000000000000000";
            WHEN "111101" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1001010000101011011101001100000000000000";
            WHEN "111110" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1001011010011001010010001000000000000000";
            WHEN "111111" => p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= "1001100100000111000111000100000000000000";
            WHEN OTHERS => -- unreachable
                           p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- highBBits_uid415_cstMultOutMag_uid399_vecTranslateTest(BITSELECT,414)@10
    highBBits_uid415_cstMultOutMag_uid399_vecTranslateTest_in <= p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q;
    highBBits_uid415_cstMultOutMag_uid399_vecTranslateTest_b <= highBBits_uid415_cstMultOutMag_uid399_vecTranslateTest_in(39 downto 1);

    -- xv3_uid409_cstMultOutMag_uid399_vecTranslateTest(BITSELECT,408)@9
    xv3_uid409_cstMultOutMag_uid399_vecTranslateTest_in <= outMagPreCstMult_uid398_vecTranslateTest_b;
    xv3_uid409_cstMultOutMag_uid399_vecTranslateTest_b <= xv3_uid409_cstMultOutMag_uid399_vecTranslateTest_in(20 downto 18);

    -- redist1(DELAY,455)
    redist1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv3_uid409_cstMultOutMag_uid399_vecTranslateTest_b, xout => redist1_q, clk => clk, aclr => areset );

    -- p3_uid410_cstMultOutMag_uid399_vecTranslateTest(LOOKUP,409)@10
    p3_uid410_cstMultOutMag_uid399_vecTranslateTest_combproc: PROCESS (redist1_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist1_q) IS
            WHEN "000" => p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q <= "0000000000000000000001000000000000000000000";
            WHEN "001" => p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q <= "0000100110110111010100110000000000000000000";
            WHEN "010" => p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q <= "0001001101101110101000100000000000000000000";
            WHEN "011" => p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q <= "0001110100100101111100010000000000000000000";
            WHEN "100" => p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q <= "0010011011011101010000000000000000000000000";
            WHEN "101" => p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q <= "0011000010010100100011110000000000000000000";
            WHEN "110" => p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q <= "0011101001001011110111100000000000000000000";
            WHEN "111" => p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q <= "0100010000000011001011010000000000000000000";
            WHEN OTHERS => -- unreachable
                           p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest(ADD,415)@10
    lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & p3_uid410_cstMultOutMag_uid399_vecTranslateTest_q);
    lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_b <= STD_LOGIC_VECTOR("00000" & highBBits_uid415_cstMultOutMag_uid399_vecTranslateTest_b);
    lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_a) + UNSIGNED(lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_b));
    lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_q <= lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_o(43 downto 0);

    -- lowRangeB_uid414_cstMultOutMag_uid399_vecTranslateTest(BITSELECT,413)@10
    lowRangeB_uid414_cstMultOutMag_uid399_vecTranslateTest_in <= p2_uid411_cstMultOutMag_uid399_vecTranslateTest_q(0 downto 0);
    lowRangeB_uid414_cstMultOutMag_uid399_vecTranslateTest_b <= lowRangeB_uid414_cstMultOutMag_uid399_vecTranslateTest_in(0 downto 0);

    -- lev1_a0_uid417_cstMultOutMag_uid399_vecTranslateTest(BITJOIN,416)@10
    lev1_a0_uid417_cstMultOutMag_uid399_vecTranslateTest_q <= lev1_a0sumAHighB_uid416_cstMultOutMag_uid399_vecTranslateTest_q & lowRangeB_uid414_cstMultOutMag_uid399_vecTranslateTest_b;

    -- redist0(DELAY,454)
    redist0 : dspba_delay
    GENERIC MAP ( width => 45, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => lev1_a0_uid417_cstMultOutMag_uid399_vecTranslateTest_q, xout => redist0_q, clk => clk, aclr => areset );

    -- lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest(ADD,418)@11
    lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & redist0_q);
    lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_b <= STD_LOGIC_VECTOR("00000000000" & lev1_a1_uid418_cstMultOutMag_uid399_vecTranslateTest_q);
    lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_a) + UNSIGNED(lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_b));
    lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_q <= lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_o(45 downto 0);

    -- sR_uid420_cstMultOutMag_uid399_vecTranslateTest(BITSELECT,419)@11
    sR_uid420_cstMultOutMag_uid399_vecTranslateTest_in <= lev2_a0_uid419_cstMultOutMag_uid399_vecTranslateTest_q(42 downto 0);
    sR_uid420_cstMultOutMag_uid399_vecTranslateTest_b <= sR_uid420_cstMultOutMag_uid399_vecTranslateTest_in(42 downto 23);

    -- outMagPostRnd_uid403_vecTranslateTest(ADD,402)@11
    outMagPostRnd_uid403_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & sR_uid420_cstMultOutMag_uid399_vecTranslateTest_b);
    outMagPostRnd_uid403_vecTranslateTest_b <= STD_LOGIC_VECTOR("00000000000000000000" & VCC_q);
    outMagPostRnd_uid403_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(outMagPostRnd_uid403_vecTranslateTest_a) + UNSIGNED(outMagPostRnd_uid403_vecTranslateTest_b));
    outMagPostRnd_uid403_vecTranslateTest_q <= outMagPostRnd_uid403_vecTranslateTest_o(20 downto 0);

    -- outMag_uid404_vecTranslateTest(BITSELECT,403)@11
    outMag_uid404_vecTranslateTest_in <= outMagPostRnd_uid403_vecTranslateTest_q(19 downto 0);
    outMag_uid404_vecTranslateTest_b <= outMag_uid404_vecTranslateTest_in(19 downto 1);

    -- constPi_uid389_vecTranslateTest(CONSTANT,388)
    constPi_uid389_vecTranslateTest_q <= "11001001000011111110";

    -- constPiP2uE_uid380_vecTranslateTest(CONSTANT,379)
    constPiP2uE_uid380_vecTranslateTest_q <= "1100100100010000001";

    -- constPio2P2u_mergedSignalTM_uid383_vecTranslateTest(BITJOIN,382)@11
    constPio2P2u_mergedSignalTM_uid383_vecTranslateTest_q <= GND_q & constPiP2uE_uid380_vecTranslateTest_q;

    -- cstZeroOutFormat_uid379_vecTranslateTest(CONSTANT,378)
    cstZeroOutFormat_uid379_vecTranslateTest_q <= "00000000000000000010";

    -- redist41(DELAY,495)
    redist41 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid32_vecTranslateTest_b, xout => redist41_q, clk => clk, aclr => areset );

    -- redist40(DELAY,494)
    redist40 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid51_vecTranslateTest_b, xout => redist40_q, clk => clk, aclr => areset );

    -- redist37(DELAY,491)
    redist37 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid70_vecTranslateTest_b, xout => redist37_q, clk => clk, aclr => areset );

    -- redist36(DELAY,490)
    redist36 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid89_vecTranslateTest_b, xout => redist36_q, clk => clk, aclr => areset );

    -- redist33(DELAY,487)
    redist33 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid108_vecTranslateTest_b, xout => redist33_q, clk => clk, aclr => areset );

    -- redist32(DELAY,486)
    redist32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid127_vecTranslateTest_b, xout => redist32_q, clk => clk, aclr => areset );

    -- redist29(DELAY,483)
    redist29 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid146_vecTranslateTest_b, xout => redist29_q, clk => clk, aclr => areset );

    -- redist28(DELAY,482)
    redist28 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid167_vecTranslateTest_b, xout => redist28_q, clk => clk, aclr => areset );

    -- redist25(DELAY,479)
    redist25 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid184_vecTranslateTest_b, xout => redist25_q, clk => clk, aclr => areset );

    -- redist24(DELAY,478)
    redist24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid201_vecTranslateTest_b, xout => redist24_q, clk => clk, aclr => areset );

    -- redist21(DELAY,475)
    redist21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid218_vecTranslateTest_b, xout => redist21_q, clk => clk, aclr => areset );

    -- redist20(DELAY,474)
    redist20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid235_vecTranslateTest_b, xout => redist20_q, clk => clk, aclr => areset );

    -- redist17(DELAY,471)
    redist17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid252_vecTranslateTest_b, xout => redist17_q, clk => clk, aclr => areset );

    -- redist16(DELAY,470)
    redist16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid269_vecTranslateTest_b, xout => redist16_q, clk => clk, aclr => areset );

    -- redist13(DELAY,467)
    redist13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid286_vecTranslateTest_b, xout => redist13_q, clk => clk, aclr => areset );

    -- redist12(DELAY,466)
    redist12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid303_vecTranslateTest_b, xout => redist12_q, clk => clk, aclr => areset );

    -- redist9(DELAY,463)
    redist9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid320_vecTranslateTest_b, xout => redist9_q, clk => clk, aclr => areset );

    -- redist8(DELAY,462)
    redist8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid337_vecTranslateTest_b, xout => redist8_q, clk => clk, aclr => areset );

    -- concSignVector_uid354_vecTranslateTest(BITJOIN,353)@10
    concSignVector_uid354_vecTranslateTest_q <= GND_q & redist41_q & redist40_q & redist37_q & redist36_q & redist33_q & redist32_q & redist29_q & redist28_q & redist25_q & redist24_q & redist21_q & redist20_q & redist17_q & redist16_q & redist13_q & redist12_q & redist9_q & redist8_q;

    -- is3_uid371_vecTranslateTest(BITSELECT,370)@10
    is3_uid371_vecTranslateTest_in <= concSignVector_uid354_vecTranslateTest_q(0 downto 0);
    is3_uid371_vecTranslateTest_b <= is3_uid371_vecTranslateTest_in(0 downto 0);

    -- table_l18_uid372_vecTranslateTest(LOOKUP,371)@10
    table_l18_uid372_vecTranslateTest_combproc: PROCESS (is3_uid371_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is3_uid371_vecTranslateTest_b) IS
            WHEN "0" => table_l18_uid372_vecTranslateTest_q <= "010000";
            WHEN "1" => table_l18_uid372_vecTranslateTest_q <= "110000";
            WHEN OTHERS => -- unreachable
                           table_l18_uid372_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- is2_uid366_vecTranslateTest(BITSELECT,365)@10
    is2_uid366_vecTranslateTest_in <= concSignVector_uid354_vecTranslateTest_q(6 downto 0);
    is2_uid366_vecTranslateTest_b <= is2_uid366_vecTranslateTest_in(6 downto 1);

    -- table_l17_uid368_vecTranslateTest(LOOKUP,367)@10
    table_l17_uid368_vecTranslateTest_combproc: PROCESS (is2_uid366_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is2_uid366_vecTranslateTest_b) IS
            WHEN "000000" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "000001" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "000010" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "000011" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "000100" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "000101" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "000110" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "000111" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "001000" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "001001" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "001010" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "001011" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "001100" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "001101" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "001110" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "001111" => table_l17_uid368_vecTranslateTest_q <= "01";
            WHEN "010000" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "010001" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "010010" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "010011" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "010100" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "010101" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "010110" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "010111" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "011000" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "011001" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "011010" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "011011" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "011100" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "011101" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "011110" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "011111" => table_l17_uid368_vecTranslateTest_q <= "00";
            WHEN "100000" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "100001" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "100010" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "100011" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "100100" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "100101" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "100110" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "100111" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "101000" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "101001" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "101010" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "101011" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "101100" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "101101" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "101110" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "101111" => table_l17_uid368_vecTranslateTest_q <= "11";
            WHEN "110000" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "110001" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "110010" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "110011" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "110100" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "110101" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "110110" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "110111" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "111000" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "111001" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "111010" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "111011" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "111100" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "111101" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "111110" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN "111111" => table_l17_uid368_vecTranslateTest_q <= "10";
            WHEN OTHERS => -- unreachable
                           table_l17_uid368_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l17_uid367_vecTranslateTest(LOOKUP,366)@10
    table_l17_uid367_vecTranslateTest_combproc: PROCESS (is2_uid366_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is2_uid366_vecTranslateTest_b) IS
            WHEN "000000" => table_l17_uid367_vecTranslateTest_q <= "1111100000";
            WHEN "000001" => table_l17_uid367_vecTranslateTest_q <= "1110100000";
            WHEN "000010" => table_l17_uid367_vecTranslateTest_q <= "1101100000";
            WHEN "000011" => table_l17_uid367_vecTranslateTest_q <= "1100100000";
            WHEN "000100" => table_l17_uid367_vecTranslateTest_q <= "1011100000";
            WHEN "000101" => table_l17_uid367_vecTranslateTest_q <= "1010100000";
            WHEN "000110" => table_l17_uid367_vecTranslateTest_q <= "1001100000";
            WHEN "000111" => table_l17_uid367_vecTranslateTest_q <= "1000100000";
            WHEN "001000" => table_l17_uid367_vecTranslateTest_q <= "0111100000";
            WHEN "001001" => table_l17_uid367_vecTranslateTest_q <= "0110100000";
            WHEN "001010" => table_l17_uid367_vecTranslateTest_q <= "0101100000";
            WHEN "001011" => table_l17_uid367_vecTranslateTest_q <= "0100100000";
            WHEN "001100" => table_l17_uid367_vecTranslateTest_q <= "0011100000";
            WHEN "001101" => table_l17_uid367_vecTranslateTest_q <= "0010100000";
            WHEN "001110" => table_l17_uid367_vecTranslateTest_q <= "0001100000";
            WHEN "001111" => table_l17_uid367_vecTranslateTest_q <= "0000100000";
            WHEN "010000" => table_l17_uid367_vecTranslateTest_q <= "1111100000";
            WHEN "010001" => table_l17_uid367_vecTranslateTest_q <= "1110100000";
            WHEN "010010" => table_l17_uid367_vecTranslateTest_q <= "1101100000";
            WHEN "010011" => table_l17_uid367_vecTranslateTest_q <= "1100100000";
            WHEN "010100" => table_l17_uid367_vecTranslateTest_q <= "1011100000";
            WHEN "010101" => table_l17_uid367_vecTranslateTest_q <= "1010100000";
            WHEN "010110" => table_l17_uid367_vecTranslateTest_q <= "1001100000";
            WHEN "010111" => table_l17_uid367_vecTranslateTest_q <= "1000100000";
            WHEN "011000" => table_l17_uid367_vecTranslateTest_q <= "0111100000";
            WHEN "011001" => table_l17_uid367_vecTranslateTest_q <= "0110100000";
            WHEN "011010" => table_l17_uid367_vecTranslateTest_q <= "0101100000";
            WHEN "011011" => table_l17_uid367_vecTranslateTest_q <= "0100100000";
            WHEN "011100" => table_l17_uid367_vecTranslateTest_q <= "0011100000";
            WHEN "011101" => table_l17_uid367_vecTranslateTest_q <= "0010100000";
            WHEN "011110" => table_l17_uid367_vecTranslateTest_q <= "0001100000";
            WHEN "011111" => table_l17_uid367_vecTranslateTest_q <= "0000100000";
            WHEN "100000" => table_l17_uid367_vecTranslateTest_q <= "1111100000";
            WHEN "100001" => table_l17_uid367_vecTranslateTest_q <= "1110100000";
            WHEN "100010" => table_l17_uid367_vecTranslateTest_q <= "1101100000";
            WHEN "100011" => table_l17_uid367_vecTranslateTest_q <= "1100100000";
            WHEN "100100" => table_l17_uid367_vecTranslateTest_q <= "1011100000";
            WHEN "100101" => table_l17_uid367_vecTranslateTest_q <= "1010100000";
            WHEN "100110" => table_l17_uid367_vecTranslateTest_q <= "1001100000";
            WHEN "100111" => table_l17_uid367_vecTranslateTest_q <= "1000100000";
            WHEN "101000" => table_l17_uid367_vecTranslateTest_q <= "0111100000";
            WHEN "101001" => table_l17_uid367_vecTranslateTest_q <= "0110100000";
            WHEN "101010" => table_l17_uid367_vecTranslateTest_q <= "0101100000";
            WHEN "101011" => table_l17_uid367_vecTranslateTest_q <= "0100100000";
            WHEN "101100" => table_l17_uid367_vecTranslateTest_q <= "0011100000";
            WHEN "101101" => table_l17_uid367_vecTranslateTest_q <= "0010100000";
            WHEN "101110" => table_l17_uid367_vecTranslateTest_q <= "0001100000";
            WHEN "101111" => table_l17_uid367_vecTranslateTest_q <= "0000100000";
            WHEN "110000" => table_l17_uid367_vecTranslateTest_q <= "1111100000";
            WHEN "110001" => table_l17_uid367_vecTranslateTest_q <= "1110100000";
            WHEN "110010" => table_l17_uid367_vecTranslateTest_q <= "1101100000";
            WHEN "110011" => table_l17_uid367_vecTranslateTest_q <= "1100100000";
            WHEN "110100" => table_l17_uid367_vecTranslateTest_q <= "1011100000";
            WHEN "110101" => table_l17_uid367_vecTranslateTest_q <= "1010100000";
            WHEN "110110" => table_l17_uid367_vecTranslateTest_q <= "1001100000";
            WHEN "110111" => table_l17_uid367_vecTranslateTest_q <= "1000100000";
            WHEN "111000" => table_l17_uid367_vecTranslateTest_q <= "0111100000";
            WHEN "111001" => table_l17_uid367_vecTranslateTest_q <= "0110100000";
            WHEN "111010" => table_l17_uid367_vecTranslateTest_q <= "0101100000";
            WHEN "111011" => table_l17_uid367_vecTranslateTest_q <= "0100100000";
            WHEN "111100" => table_l17_uid367_vecTranslateTest_q <= "0011100000";
            WHEN "111101" => table_l17_uid367_vecTranslateTest_q <= "0010100000";
            WHEN "111110" => table_l17_uid367_vecTranslateTest_q <= "0001100000";
            WHEN "111111" => table_l17_uid367_vecTranslateTest_q <= "0000100000";
            WHEN OTHERS => -- unreachable
                           table_l17_uid367_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid369_vecTranslateTest(BITJOIN,368)@10
    os_uid369_vecTranslateTest_q <= table_l17_uid368_vecTranslateTest_q & table_l17_uid367_vecTranslateTest_q;

    -- lev1_a1_uid376_vecTranslateTest(ADD,375)@10
    lev1_a1_uid376_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => os_uid369_vecTranslateTest_q(11)) & os_uid369_vecTranslateTest_q));
    lev1_a1_uid376_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 6 => table_l18_uid372_vecTranslateTest_q(5)) & table_l18_uid372_vecTranslateTest_q));
    lev1_a1_uid376_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a1_uid376_vecTranslateTest_a) + SIGNED(lev1_a1_uid376_vecTranslateTest_b));
    lev1_a1_uid376_vecTranslateTest_q <= lev1_a1_uid376_vecTranslateTest_o(12 downto 0);

    -- is1_uid361_vecTranslateTest(BITSELECT,360)@10
    is1_uid361_vecTranslateTest_in <= concSignVector_uid354_vecTranslateTest_q(12 downto 0);
    is1_uid361_vecTranslateTest_b <= is1_uid361_vecTranslateTest_in(12 downto 7);

    -- table_l11_uid363_vecTranslateTest(LOOKUP,362)@10
    table_l11_uid363_vecTranslateTest_combproc: PROCESS (is1_uid361_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid361_vecTranslateTest_b) IS
            WHEN "000000" => table_l11_uid363_vecTranslateTest_q <= "01111101";
            WHEN "000001" => table_l11_uid363_vecTranslateTest_q <= "01111001";
            WHEN "000010" => table_l11_uid363_vecTranslateTest_q <= "01110101";
            WHEN "000011" => table_l11_uid363_vecTranslateTest_q <= "01110001";
            WHEN "000100" => table_l11_uid363_vecTranslateTest_q <= "01101101";
            WHEN "000101" => table_l11_uid363_vecTranslateTest_q <= "01101001";
            WHEN "000110" => table_l11_uid363_vecTranslateTest_q <= "01100101";
            WHEN "000111" => table_l11_uid363_vecTranslateTest_q <= "01100001";
            WHEN "001000" => table_l11_uid363_vecTranslateTest_q <= "01011101";
            WHEN "001001" => table_l11_uid363_vecTranslateTest_q <= "01011001";
            WHEN "001010" => table_l11_uid363_vecTranslateTest_q <= "01010101";
            WHEN "001011" => table_l11_uid363_vecTranslateTest_q <= "01010001";
            WHEN "001100" => table_l11_uid363_vecTranslateTest_q <= "01001101";
            WHEN "001101" => table_l11_uid363_vecTranslateTest_q <= "01001001";
            WHEN "001110" => table_l11_uid363_vecTranslateTest_q <= "01000101";
            WHEN "001111" => table_l11_uid363_vecTranslateTest_q <= "01000001";
            WHEN "010000" => table_l11_uid363_vecTranslateTest_q <= "00111101";
            WHEN "010001" => table_l11_uid363_vecTranslateTest_q <= "00111001";
            WHEN "010010" => table_l11_uid363_vecTranslateTest_q <= "00110101";
            WHEN "010011" => table_l11_uid363_vecTranslateTest_q <= "00110001";
            WHEN "010100" => table_l11_uid363_vecTranslateTest_q <= "00101101";
            WHEN "010101" => table_l11_uid363_vecTranslateTest_q <= "00101001";
            WHEN "010110" => table_l11_uid363_vecTranslateTest_q <= "00100101";
            WHEN "010111" => table_l11_uid363_vecTranslateTest_q <= "00100001";
            WHEN "011000" => table_l11_uid363_vecTranslateTest_q <= "00011101";
            WHEN "011001" => table_l11_uid363_vecTranslateTest_q <= "00011001";
            WHEN "011010" => table_l11_uid363_vecTranslateTest_q <= "00010101";
            WHEN "011011" => table_l11_uid363_vecTranslateTest_q <= "00010001";
            WHEN "011100" => table_l11_uid363_vecTranslateTest_q <= "00001101";
            WHEN "011101" => table_l11_uid363_vecTranslateTest_q <= "00001001";
            WHEN "011110" => table_l11_uid363_vecTranslateTest_q <= "00000101";
            WHEN "011111" => table_l11_uid363_vecTranslateTest_q <= "00000001";
            WHEN "100000" => table_l11_uid363_vecTranslateTest_q <= "11111110";
            WHEN "100001" => table_l11_uid363_vecTranslateTest_q <= "11111010";
            WHEN "100010" => table_l11_uid363_vecTranslateTest_q <= "11110110";
            WHEN "100011" => table_l11_uid363_vecTranslateTest_q <= "11110010";
            WHEN "100100" => table_l11_uid363_vecTranslateTest_q <= "11101110";
            WHEN "100101" => table_l11_uid363_vecTranslateTest_q <= "11101010";
            WHEN "100110" => table_l11_uid363_vecTranslateTest_q <= "11100110";
            WHEN "100111" => table_l11_uid363_vecTranslateTest_q <= "11100010";
            WHEN "101000" => table_l11_uid363_vecTranslateTest_q <= "11011110";
            WHEN "101001" => table_l11_uid363_vecTranslateTest_q <= "11011010";
            WHEN "101010" => table_l11_uid363_vecTranslateTest_q <= "11010110";
            WHEN "101011" => table_l11_uid363_vecTranslateTest_q <= "11010010";
            WHEN "101100" => table_l11_uid363_vecTranslateTest_q <= "11001110";
            WHEN "101101" => table_l11_uid363_vecTranslateTest_q <= "11001010";
            WHEN "101110" => table_l11_uid363_vecTranslateTest_q <= "11000110";
            WHEN "101111" => table_l11_uid363_vecTranslateTest_q <= "11000010";
            WHEN "110000" => table_l11_uid363_vecTranslateTest_q <= "10111110";
            WHEN "110001" => table_l11_uid363_vecTranslateTest_q <= "10111010";
            WHEN "110010" => table_l11_uid363_vecTranslateTest_q <= "10110110";
            WHEN "110011" => table_l11_uid363_vecTranslateTest_q <= "10110010";
            WHEN "110100" => table_l11_uid363_vecTranslateTest_q <= "10101110";
            WHEN "110101" => table_l11_uid363_vecTranslateTest_q <= "10101010";
            WHEN "110110" => table_l11_uid363_vecTranslateTest_q <= "10100110";
            WHEN "110111" => table_l11_uid363_vecTranslateTest_q <= "10100010";
            WHEN "111000" => table_l11_uid363_vecTranslateTest_q <= "10011110";
            WHEN "111001" => table_l11_uid363_vecTranslateTest_q <= "10011010";
            WHEN "111010" => table_l11_uid363_vecTranslateTest_q <= "10010110";
            WHEN "111011" => table_l11_uid363_vecTranslateTest_q <= "10010010";
            WHEN "111100" => table_l11_uid363_vecTranslateTest_q <= "10001110";
            WHEN "111101" => table_l11_uid363_vecTranslateTest_q <= "10001010";
            WHEN "111110" => table_l11_uid363_vecTranslateTest_q <= "10000110";
            WHEN "111111" => table_l11_uid363_vecTranslateTest_q <= "10000010";
            WHEN OTHERS => -- unreachable
                           table_l11_uid363_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l11_uid362_vecTranslateTest(LOOKUP,361)@10
    table_l11_uid362_vecTranslateTest_combproc: PROCESS (is1_uid361_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid361_vecTranslateTest_b) IS
            WHEN "000000" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "000001" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "000010" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "000011" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "000100" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "000101" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "000110" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "000111" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "001000" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "001001" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "001010" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "001011" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "001100" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "001101" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "001110" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "001111" => table_l11_uid362_vecTranslateTest_q <= "1111111010";
            WHEN "010000" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "010001" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "010010" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "010011" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "010100" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "010101" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "010110" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "010111" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "011000" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "011001" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "011010" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "011011" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "011100" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "011101" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "011110" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "011111" => table_l11_uid362_vecTranslateTest_q <= "1111111011";
            WHEN "100000" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "100001" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "100010" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "100011" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "100100" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "100101" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "100110" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "100111" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "101000" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "101001" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "101010" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "101011" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "101100" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "101101" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "101110" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "101111" => table_l11_uid362_vecTranslateTest_q <= "0000000101";
            WHEN "110000" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "110001" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "110010" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "110011" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "110100" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "110101" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "110110" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "110111" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "111000" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "111001" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "111010" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "111011" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "111100" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "111101" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "111110" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN "111111" => table_l11_uid362_vecTranslateTest_q <= "0000000110";
            WHEN OTHERS => -- unreachable
                           table_l11_uid362_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid364_vecTranslateTest(BITJOIN,363)@10
    os_uid364_vecTranslateTest_q <= table_l11_uid363_vecTranslateTest_q & table_l11_uid362_vecTranslateTest_q;

    -- is0_uid355_vecTranslateTest(BITSELECT,354)@10
    is0_uid355_vecTranslateTest_in <= concSignVector_uid354_vecTranslateTest_q;
    is0_uid355_vecTranslateTest_b <= is0_uid355_vecTranslateTest_in(18 downto 13);

    -- table_l5_uid358_vecTranslateTest(LOOKUP,357)@10
    table_l5_uid358_vecTranslateTest_combproc: PROCESS (is0_uid355_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid355_vecTranslateTest_b) IS
            WHEN "000000" => table_l5_uid358_vecTranslateTest_q <= "0110";
            WHEN "000001" => table_l5_uid358_vecTranslateTest_q <= "0110";
            WHEN "000010" => table_l5_uid358_vecTranslateTest_q <= "0110";
            WHEN "000011" => table_l5_uid358_vecTranslateTest_q <= "0110";
            WHEN "000100" => table_l5_uid358_vecTranslateTest_q <= "0101";
            WHEN "000101" => table_l5_uid358_vecTranslateTest_q <= "0101";
            WHEN "000110" => table_l5_uid358_vecTranslateTest_q <= "0101";
            WHEN "000111" => table_l5_uid358_vecTranslateTest_q <= "0101";
            WHEN "001000" => table_l5_uid358_vecTranslateTest_q <= "0100";
            WHEN "001001" => table_l5_uid358_vecTranslateTest_q <= "0100";
            WHEN "001010" => table_l5_uid358_vecTranslateTest_q <= "0100";
            WHEN "001011" => table_l5_uid358_vecTranslateTest_q <= "0100";
            WHEN "001100" => table_l5_uid358_vecTranslateTest_q <= "0011";
            WHEN "001101" => table_l5_uid358_vecTranslateTest_q <= "0011";
            WHEN "001110" => table_l5_uid358_vecTranslateTest_q <= "0011";
            WHEN "001111" => table_l5_uid358_vecTranslateTest_q <= "0011";
            WHEN "010000" => table_l5_uid358_vecTranslateTest_q <= "0011";
            WHEN "010001" => table_l5_uid358_vecTranslateTest_q <= "0010";
            WHEN "010010" => table_l5_uid358_vecTranslateTest_q <= "0010";
            WHEN "010011" => table_l5_uid358_vecTranslateTest_q <= "0010";
            WHEN "010100" => table_l5_uid358_vecTranslateTest_q <= "0010";
            WHEN "010101" => table_l5_uid358_vecTranslateTest_q <= "0001";
            WHEN "010110" => table_l5_uid358_vecTranslateTest_q <= "0001";
            WHEN "010111" => table_l5_uid358_vecTranslateTest_q <= "0001";
            WHEN "011000" => table_l5_uid358_vecTranslateTest_q <= "0001";
            WHEN "011001" => table_l5_uid358_vecTranslateTest_q <= "0000";
            WHEN "011010" => table_l5_uid358_vecTranslateTest_q <= "0000";
            WHEN "011011" => table_l5_uid358_vecTranslateTest_q <= "0000";
            WHEN "011100" => table_l5_uid358_vecTranslateTest_q <= "0000";
            WHEN "011101" => table_l5_uid358_vecTranslateTest_q <= "1111";
            WHEN "011110" => table_l5_uid358_vecTranslateTest_q <= "1111";
            WHEN "011111" => table_l5_uid358_vecTranslateTest_q <= "1111";
            WHEN "100000" => table_l5_uid358_vecTranslateTest_q <= "0000";
            WHEN "100001" => table_l5_uid358_vecTranslateTest_q <= "0000";
            WHEN "100010" => table_l5_uid358_vecTranslateTest_q <= "0000";
            WHEN "100011" => table_l5_uid358_vecTranslateTest_q <= "1111";
            WHEN "100100" => table_l5_uid358_vecTranslateTest_q <= "1111";
            WHEN "100101" => table_l5_uid358_vecTranslateTest_q <= "1111";
            WHEN "100110" => table_l5_uid358_vecTranslateTest_q <= "1111";
            WHEN "100111" => table_l5_uid358_vecTranslateTest_q <= "1110";
            WHEN "101000" => table_l5_uid358_vecTranslateTest_q <= "1110";
            WHEN "101001" => table_l5_uid358_vecTranslateTest_q <= "1110";
            WHEN "101010" => table_l5_uid358_vecTranslateTest_q <= "1110";
            WHEN "101011" => table_l5_uid358_vecTranslateTest_q <= "1101";
            WHEN "101100" => table_l5_uid358_vecTranslateTest_q <= "1101";
            WHEN "101101" => table_l5_uid358_vecTranslateTest_q <= "1101";
            WHEN "101110" => table_l5_uid358_vecTranslateTest_q <= "1101";
            WHEN "101111" => table_l5_uid358_vecTranslateTest_q <= "1100";
            WHEN "110000" => table_l5_uid358_vecTranslateTest_q <= "1100";
            WHEN "110001" => table_l5_uid358_vecTranslateTest_q <= "1100";
            WHEN "110010" => table_l5_uid358_vecTranslateTest_q <= "1100";
            WHEN "110011" => table_l5_uid358_vecTranslateTest_q <= "1100";
            WHEN "110100" => table_l5_uid358_vecTranslateTest_q <= "1011";
            WHEN "110101" => table_l5_uid358_vecTranslateTest_q <= "1011";
            WHEN "110110" => table_l5_uid358_vecTranslateTest_q <= "1011";
            WHEN "110111" => table_l5_uid358_vecTranslateTest_q <= "1011";
            WHEN "111000" => table_l5_uid358_vecTranslateTest_q <= "1010";
            WHEN "111001" => table_l5_uid358_vecTranslateTest_q <= "1010";
            WHEN "111010" => table_l5_uid358_vecTranslateTest_q <= "1010";
            WHEN "111011" => table_l5_uid358_vecTranslateTest_q <= "1010";
            WHEN "111100" => table_l5_uid358_vecTranslateTest_q <= "1001";
            WHEN "111101" => table_l5_uid358_vecTranslateTest_q <= "1001";
            WHEN "111110" => table_l5_uid358_vecTranslateTest_q <= "1001";
            WHEN "111111" => table_l5_uid358_vecTranslateTest_q <= "1001";
            WHEN OTHERS => -- unreachable
                           table_l5_uid358_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid357_vecTranslateTest(LOOKUP,356)@10
    table_l5_uid357_vecTranslateTest_combproc: PROCESS (is0_uid355_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid355_vecTranslateTest_b) IS
            WHEN "000000" => table_l5_uid357_vecTranslateTest_q <= "1101100100";
            WHEN "000001" => table_l5_uid357_vecTranslateTest_q <= "1001100100";
            WHEN "000010" => table_l5_uid357_vecTranslateTest_q <= "0101100101";
            WHEN "000011" => table_l5_uid357_vecTranslateTest_q <= "0001100101";
            WHEN "000100" => table_l5_uid357_vecTranslateTest_q <= "1101101001";
            WHEN "000101" => table_l5_uid357_vecTranslateTest_q <= "1001101001";
            WHEN "000110" => table_l5_uid357_vecTranslateTest_q <= "0101101010";
            WHEN "000111" => table_l5_uid357_vecTranslateTest_q <= "0001101010";
            WHEN "001000" => table_l5_uid357_vecTranslateTest_q <= "1110001101";
            WHEN "001001" => table_l5_uid357_vecTranslateTest_q <= "1010001101";
            WHEN "001010" => table_l5_uid357_vecTranslateTest_q <= "0110001110";
            WHEN "001011" => table_l5_uid357_vecTranslateTest_q <= "0010001110";
            WHEN "001100" => table_l5_uid357_vecTranslateTest_q <= "1110010010";
            WHEN "001101" => table_l5_uid357_vecTranslateTest_q <= "1010010011";
            WHEN "001110" => table_l5_uid357_vecTranslateTest_q <= "0110010011";
            WHEN "001111" => table_l5_uid357_vecTranslateTest_q <= "0010010011";
            WHEN "010000" => table_l5_uid357_vecTranslateTest_q <= "0010001110";
            WHEN "010001" => table_l5_uid357_vecTranslateTest_q <= "1110001110";
            WHEN "010010" => table_l5_uid357_vecTranslateTest_q <= "1010001111";
            WHEN "010011" => table_l5_uid357_vecTranslateTest_q <= "0110001111";
            WHEN "010100" => table_l5_uid357_vecTranslateTest_q <= "0010010011";
            WHEN "010101" => table_l5_uid357_vecTranslateTest_q <= "1110010011";
            WHEN "010110" => table_l5_uid357_vecTranslateTest_q <= "1010010100";
            WHEN "010111" => table_l5_uid357_vecTranslateTest_q <= "0110010100";
            WHEN "011000" => table_l5_uid357_vecTranslateTest_q <= "0010110111";
            WHEN "011001" => table_l5_uid357_vecTranslateTest_q <= "1110110111";
            WHEN "011010" => table_l5_uid357_vecTranslateTest_q <= "1010111000";
            WHEN "011011" => table_l5_uid357_vecTranslateTest_q <= "0110111000";
            WHEN "011100" => table_l5_uid357_vecTranslateTest_q <= "0010111100";
            WHEN "011101" => table_l5_uid357_vecTranslateTest_q <= "1110111100";
            WHEN "011110" => table_l5_uid357_vecTranslateTest_q <= "1010111101";
            WHEN "011111" => table_l5_uid357_vecTranslateTest_q <= "0110111101";
            WHEN "100000" => table_l5_uid357_vecTranslateTest_q <= "1001000010";
            WHEN "100001" => table_l5_uid357_vecTranslateTest_q <= "0101000010";
            WHEN "100010" => table_l5_uid357_vecTranslateTest_q <= "0001000011";
            WHEN "100011" => table_l5_uid357_vecTranslateTest_q <= "1101000011";
            WHEN "100100" => table_l5_uid357_vecTranslateTest_q <= "1001000111";
            WHEN "100101" => table_l5_uid357_vecTranslateTest_q <= "0101000111";
            WHEN "100110" => table_l5_uid357_vecTranslateTest_q <= "0001001000";
            WHEN "100111" => table_l5_uid357_vecTranslateTest_q <= "1101001000";
            WHEN "101000" => table_l5_uid357_vecTranslateTest_q <= "1001101011";
            WHEN "101001" => table_l5_uid357_vecTranslateTest_q <= "0101101011";
            WHEN "101010" => table_l5_uid357_vecTranslateTest_q <= "0001101100";
            WHEN "101011" => table_l5_uid357_vecTranslateTest_q <= "1101101100";
            WHEN "101100" => table_l5_uid357_vecTranslateTest_q <= "1001110000";
            WHEN "101101" => table_l5_uid357_vecTranslateTest_q <= "0101110001";
            WHEN "101110" => table_l5_uid357_vecTranslateTest_q <= "0001110001";
            WHEN "101111" => table_l5_uid357_vecTranslateTest_q <= "1101110001";
            WHEN "110000" => table_l5_uid357_vecTranslateTest_q <= "1101101100";
            WHEN "110001" => table_l5_uid357_vecTranslateTest_q <= "1001101100";
            WHEN "110010" => table_l5_uid357_vecTranslateTest_q <= "0101101101";
            WHEN "110011" => table_l5_uid357_vecTranslateTest_q <= "0001101101";
            WHEN "110100" => table_l5_uid357_vecTranslateTest_q <= "1101110001";
            WHEN "110101" => table_l5_uid357_vecTranslateTest_q <= "1001110001";
            WHEN "110110" => table_l5_uid357_vecTranslateTest_q <= "0101110010";
            WHEN "110111" => table_l5_uid357_vecTranslateTest_q <= "0001110010";
            WHEN "111000" => table_l5_uid357_vecTranslateTest_q <= "1110010101";
            WHEN "111001" => table_l5_uid357_vecTranslateTest_q <= "1010010101";
            WHEN "111010" => table_l5_uid357_vecTranslateTest_q <= "0110010110";
            WHEN "111011" => table_l5_uid357_vecTranslateTest_q <= "0010010110";
            WHEN "111100" => table_l5_uid357_vecTranslateTest_q <= "1110011010";
            WHEN "111101" => table_l5_uid357_vecTranslateTest_q <= "1010011010";
            WHEN "111110" => table_l5_uid357_vecTranslateTest_q <= "0110011011";
            WHEN "111111" => table_l5_uid357_vecTranslateTest_q <= "0010011011";
            WHEN OTHERS => -- unreachable
                           table_l5_uid357_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid356_vecTranslateTest(LOOKUP,355)@10
    table_l5_uid356_vecTranslateTest_combproc: PROCESS (is0_uid355_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid355_vecTranslateTest_b) IS
            WHEN "000000" => table_l5_uid356_vecTranslateTest_q <= "1000101000";
            WHEN "000001" => table_l5_uid356_vecTranslateTest_q <= "1001111101";
            WHEN "000010" => table_l5_uid356_vecTranslateTest_q <= "0011010001";
            WHEN "000011" => table_l5_uid356_vecTranslateTest_q <= "0100100110";
            WHEN "000100" => table_l5_uid356_vecTranslateTest_q <= "1101001011";
            WHEN "000101" => table_l5_uid356_vecTranslateTest_q <= "1110100000";
            WHEN "000110" => table_l5_uid356_vecTranslateTest_q <= "0111110100";
            WHEN "000111" => table_l5_uid356_vecTranslateTest_q <= "1001001001";
            WHEN "001000" => table_l5_uid356_vecTranslateTest_q <= "1010110010";
            WHEN "001001" => table_l5_uid356_vecTranslateTest_q <= "1100000111";
            WHEN "001010" => table_l5_uid356_vecTranslateTest_q <= "0101011011";
            WHEN "001011" => table_l5_uid356_vecTranslateTest_q <= "0110110001";
            WHEN "001100" => table_l5_uid356_vecTranslateTest_q <= "1111010101";
            WHEN "001101" => table_l5_uid356_vecTranslateTest_q <= "0000101010";
            WHEN "001110" => table_l5_uid356_vecTranslateTest_q <= "1001111110";
            WHEN "001111" => table_l5_uid356_vecTranslateTest_q <= "1011010011";
            WHEN "010000" => table_l5_uid356_vecTranslateTest_q <= "0101011010";
            WHEN "010001" => table_l5_uid356_vecTranslateTest_q <= "0110101111";
            WHEN "010010" => table_l5_uid356_vecTranslateTest_q <= "0000000011";
            WHEN "010011" => table_l5_uid356_vecTranslateTest_q <= "0001011000";
            WHEN "010100" => table_l5_uid356_vecTranslateTest_q <= "1001111101";
            WHEN "010101" => table_l5_uid356_vecTranslateTest_q <= "1011010010";
            WHEN "010110" => table_l5_uid356_vecTranslateTest_q <= "0100100110";
            WHEN "010111" => table_l5_uid356_vecTranslateTest_q <= "0101111011";
            WHEN "011000" => table_l5_uid356_vecTranslateTest_q <= "0111100100";
            WHEN "011001" => table_l5_uid356_vecTranslateTest_q <= "1000111001";
            WHEN "011010" => table_l5_uid356_vecTranslateTest_q <= "0010001101";
            WHEN "011011" => table_l5_uid356_vecTranslateTest_q <= "0011100010";
            WHEN "011100" => table_l5_uid356_vecTranslateTest_q <= "1100000111";
            WHEN "011101" => table_l5_uid356_vecTranslateTest_q <= "1101011100";
            WHEN "011110" => table_l5_uid356_vecTranslateTest_q <= "0110110000";
            WHEN "011111" => table_l5_uid356_vecTranslateTest_q <= "1000000101";
            WHEN "100000" => table_l5_uid356_vecTranslateTest_q <= "1000111011";
            WHEN "100001" => table_l5_uid356_vecTranslateTest_q <= "1010010000";
            WHEN "100010" => table_l5_uid356_vecTranslateTest_q <= "0011100100";
            WHEN "100011" => table_l5_uid356_vecTranslateTest_q <= "0100111001";
            WHEN "100100" => table_l5_uid356_vecTranslateTest_q <= "1101011110";
            WHEN "100101" => table_l5_uid356_vecTranslateTest_q <= "1110110011";
            WHEN "100110" => table_l5_uid356_vecTranslateTest_q <= "1000000111";
            WHEN "100111" => table_l5_uid356_vecTranslateTest_q <= "1001011100";
            WHEN "101000" => table_l5_uid356_vecTranslateTest_q <= "1011000101";
            WHEN "101001" => table_l5_uid356_vecTranslateTest_q <= "1100011010";
            WHEN "101010" => table_l5_uid356_vecTranslateTest_q <= "0101101110";
            WHEN "101011" => table_l5_uid356_vecTranslateTest_q <= "0111000011";
            WHEN "101100" => table_l5_uid356_vecTranslateTest_q <= "1111101000";
            WHEN "101101" => table_l5_uid356_vecTranslateTest_q <= "0000111101";
            WHEN "101110" => table_l5_uid356_vecTranslateTest_q <= "1010010001";
            WHEN "101111" => table_l5_uid356_vecTranslateTest_q <= "1011100110";
            WHEN "110000" => table_l5_uid356_vecTranslateTest_q <= "0101101101";
            WHEN "110001" => table_l5_uid356_vecTranslateTest_q <= "0111000010";
            WHEN "110010" => table_l5_uid356_vecTranslateTest_q <= "0000010110";
            WHEN "110011" => table_l5_uid356_vecTranslateTest_q <= "0001101011";
            WHEN "110100" => table_l5_uid356_vecTranslateTest_q <= "1010001111";
            WHEN "110101" => table_l5_uid356_vecTranslateTest_q <= "1011100101";
            WHEN "110110" => table_l5_uid356_vecTranslateTest_q <= "0100111001";
            WHEN "110111" => table_l5_uid356_vecTranslateTest_q <= "0110001110";
            WHEN "111000" => table_l5_uid356_vecTranslateTest_q <= "0111110111";
            WHEN "111001" => table_l5_uid356_vecTranslateTest_q <= "1001001100";
            WHEN "111010" => table_l5_uid356_vecTranslateTest_q <= "0010100000";
            WHEN "111011" => table_l5_uid356_vecTranslateTest_q <= "0011110101";
            WHEN "111100" => table_l5_uid356_vecTranslateTest_q <= "1100011010";
            WHEN "111101" => table_l5_uid356_vecTranslateTest_q <= "1101101111";
            WHEN "111110" => table_l5_uid356_vecTranslateTest_q <= "0111000011";
            WHEN "111111" => table_l5_uid356_vecTranslateTest_q <= "1000011000";
            WHEN OTHERS => -- unreachable
                           table_l5_uid356_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid359_vecTranslateTest(BITJOIN,358)@10
    os_uid359_vecTranslateTest_q <= table_l5_uid358_vecTranslateTest_q & table_l5_uid357_vecTranslateTest_q & table_l5_uid356_vecTranslateTest_q;

    -- lev1_a0_uid375_vecTranslateTest(ADD,374)@10
    lev1_a0_uid375_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => os_uid359_vecTranslateTest_q(23)) & os_uid359_vecTranslateTest_q));
    lev1_a0_uid375_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 18 => os_uid364_vecTranslateTest_q(17)) & os_uid364_vecTranslateTest_q));
    lev1_a0_uid375_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0_uid375_vecTranslateTest_a) + SIGNED(lev1_a0_uid375_vecTranslateTest_b));
    lev1_a0_uid375_vecTranslateTest_q <= lev1_a0_uid375_vecTranslateTest_o(24 downto 0);

    -- lev2_a0_uid377_vecTranslateTest(ADD,376)@10
    lev2_a0_uid377_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => lev1_a0_uid375_vecTranslateTest_q(24)) & lev1_a0_uid375_vecTranslateTest_q));
    lev2_a0_uid377_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 13 => lev1_a1_uid376_vecTranslateTest_q(12)) & lev1_a1_uid376_vecTranslateTest_q));
    lev2_a0_uid377_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid377_vecTranslateTest_a) + SIGNED(lev2_a0_uid377_vecTranslateTest_b));
    lev2_a0_uid377_vecTranslateTest_q <= lev2_a0_uid377_vecTranslateTest_o(25 downto 0);

    -- atanRes_uid378_vecTranslateTest(BITSELECT,377)@10
    atanRes_uid378_vecTranslateTest_in <= lev2_a0_uid377_vecTranslateTest_q(23 downto 0);
    atanRes_uid378_vecTranslateTest_b <= atanRes_uid378_vecTranslateTest_in(23 downto 4);

    -- redist7(DELAY,461)
    redist7 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => atanRes_uid378_vecTranslateTest_b, xout => redist7_q, clk => clk, aclr => areset );

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

    -- concXZeroYZero_uid385_vecTranslateTest(BITJOIN,384)@0
    concXZeroYZero_uid385_vecTranslateTest_q <= xZero_uid18_vecTranslateTest_q & yZero_uid16_vecTranslateTest_q;

    -- redist6(DELAY,460)
    redist6 : dspba_delay
    GENERIC MAP ( width => 2, depth => 11, reset_kind => "ASYNC" )
    PORT MAP ( xin => concXZeroYZero_uid385_vecTranslateTest_q, xout => redist6_q, clk => clk, aclr => areset );

    -- atanResPostExc_uid386_vecTranslateTest(MUX,385)@11
    atanResPostExc_uid386_vecTranslateTest_s <= redist6_q;
    atanResPostExc_uid386_vecTranslateTest_combproc: PROCESS (atanResPostExc_uid386_vecTranslateTest_s, redist7_q, cstZeroOutFormat_uid379_vecTranslateTest_q, constPio2P2u_mergedSignalTM_uid383_vecTranslateTest_q)
    BEGIN
        CASE (atanResPostExc_uid386_vecTranslateTest_s) IS
            WHEN "00" => atanResPostExc_uid386_vecTranslateTest_q <= redist7_q;
            WHEN "01" => atanResPostExc_uid386_vecTranslateTest_q <= cstZeroOutFormat_uid379_vecTranslateTest_q;
            WHEN "10" => atanResPostExc_uid386_vecTranslateTest_q <= constPio2P2u_mergedSignalTM_uid383_vecTranslateTest_q;
            WHEN "11" => atanResPostExc_uid386_vecTranslateTest_q <= cstZeroOutFormat_uid379_vecTranslateTest_q;
            WHEN OTHERS => atanResPostExc_uid386_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constantZeroOutFormat_uid390_vecTranslateTest(CONSTANT,389)
    constantZeroOutFormat_uid390_vecTranslateTest_q <= "00000000000000000000";

    -- concSigns_uid387_vecTranslateTest(BITJOIN,386)@0
    concSigns_uid387_vecTranslateTest_q <= signX_uid7_vecTranslateTest_b & signY_uid8_vecTranslateTest_b;

    -- redist5(DELAY,459)
    redist5 : dspba_delay
    GENERIC MAP ( width => 2, depth => 11, reset_kind => "ASYNC" )
    PORT MAP ( xin => concSigns_uid387_vecTranslateTest_q, xout => redist5_q, clk => clk, aclr => areset );

    -- secondOperand_uid394_vecTranslateTest(MUX,393)@11
    secondOperand_uid394_vecTranslateTest_s <= redist5_q;
    secondOperand_uid394_vecTranslateTest_combproc: PROCESS (secondOperand_uid394_vecTranslateTest_s, constantZeroOutFormat_uid390_vecTranslateTest_q, atanResPostExc_uid386_vecTranslateTest_q, constPi_uid389_vecTranslateTest_q)
    BEGIN
        CASE (secondOperand_uid394_vecTranslateTest_s) IS
            WHEN "00" => secondOperand_uid394_vecTranslateTest_q <= constantZeroOutFormat_uid390_vecTranslateTest_q;
            WHEN "01" => secondOperand_uid394_vecTranslateTest_q <= atanResPostExc_uid386_vecTranslateTest_q;
            WHEN "10" => secondOperand_uid394_vecTranslateTest_q <= atanResPostExc_uid386_vecTranslateTest_q;
            WHEN "11" => secondOperand_uid394_vecTranslateTest_q <= constPi_uid389_vecTranslateTest_q;
            WHEN OTHERS => secondOperand_uid394_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constPiP2u_uid388_vecTranslateTest(CONSTANT,387)
    constPiP2u_uid388_vecTranslateTest_q <= "11001001000100000001";

    -- constantZeroOutFormatP2u_uid391_vecTranslateTest(CONSTANT,390)
    constantZeroOutFormatP2u_uid391_vecTranslateTest_q <= "00000000000000000100";

    -- firstOperand_uid393_vecTranslateTest(MUX,392)@11
    firstOperand_uid393_vecTranslateTest_s <= redist5_q;
    firstOperand_uid393_vecTranslateTest_combproc: PROCESS (firstOperand_uid393_vecTranslateTest_s, atanResPostExc_uid386_vecTranslateTest_q, constantZeroOutFormatP2u_uid391_vecTranslateTest_q, constPiP2u_uid388_vecTranslateTest_q)
    BEGIN
        CASE (firstOperand_uid393_vecTranslateTest_s) IS
            WHEN "00" => firstOperand_uid393_vecTranslateTest_q <= atanResPostExc_uid386_vecTranslateTest_q;
            WHEN "01" => firstOperand_uid393_vecTranslateTest_q <= constantZeroOutFormatP2u_uid391_vecTranslateTest_q;
            WHEN "10" => firstOperand_uid393_vecTranslateTest_q <= constPiP2u_uid388_vecTranslateTest_q;
            WHEN "11" => firstOperand_uid393_vecTranslateTest_q <= atanResPostExc_uid386_vecTranslateTest_q;
            WHEN OTHERS => firstOperand_uid393_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outResExtended_uid395_vecTranslateTest(SUB,394)@11
    outResExtended_uid395_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & firstOperand_uid393_vecTranslateTest_q);
    outResExtended_uid395_vecTranslateTest_b <= STD_LOGIC_VECTOR("0" & secondOperand_uid394_vecTranslateTest_q);
    outResExtended_uid395_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(outResExtended_uid395_vecTranslateTest_a) - UNSIGNED(outResExtended_uid395_vecTranslateTest_b));
    outResExtended_uid395_vecTranslateTest_q <= outResExtended_uid395_vecTranslateTest_o(20 downto 0);

    -- atanResPostRR_uid396_vecTranslateTest(BITSELECT,395)@11
    atanResPostRR_uid396_vecTranslateTest_in <= STD_LOGIC_VECTOR(outResExtended_uid395_vecTranslateTest_q);
    atanResPostRR_uid396_vecTranslateTest_b <= STD_LOGIC_VECTOR(atanResPostRR_uid396_vecTranslateTest_in(20 downto 2));

    -- xOut(GPOUT,4)@11
    q <= atanResPostRR_uid396_vecTranslateTest_b;
    r <= outMag_uid404_vecTranslateTest_b(17 downto 0);

END normal;
