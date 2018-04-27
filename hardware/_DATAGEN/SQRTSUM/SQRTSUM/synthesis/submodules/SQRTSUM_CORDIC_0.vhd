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
-- VHDL created on Fri Apr 27 21:39:03 2018


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
        x : in std_logic_vector(11 downto 0);  -- ufix12
        y : in std_logic_vector(11 downto 0);  -- ufix12
        q : out std_logic_vector(17 downto 0);  -- sfix18_en16
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
    signal xip1E_3CostZeroPaddingA_uid56_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xip1E_4CostZeroPaddingA_uid75_vecTranslateTest_q : STD_LOGIC_VECTOR (2 downto 0);
    signal xip1E_5CostZeroPaddingA_uid94_vecTranslateTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xip1E_6CostZeroPaddingA_uid113_vecTranslateTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xip1E_7CostZeroPaddingA_uid132_vecTranslateTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal cstZeroOutFormat_uid356_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal cstPiO2OutFormatL_uid357_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_a : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_o : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal redist0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal redist1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist3_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist4_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist5_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist10_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist18_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist22_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist23_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist26_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist27_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_q : STD_LOGIC_VECTOR (24 downto 0);
    signal redist30_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist31_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist34_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist35_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist38_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist39_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concSignVector_uid336_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal cstPiO2OutFormat_mergedSignalTMB_uid360_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yNotZero_uid6_vecTranslateTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal yNotZero_uid6_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid7_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid7_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid8_vecTranslateTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal xNotZero_uid8_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid9_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid9_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_1_uid14_vecTranslateTest_a : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid14_vecTranslateTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid14_vecTranslateTest_o : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid14_vecTranslateTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid15_vecTranslateTest_a : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid15_vecTranslateTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid15_vecTranslateTest_o : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid15_vecTranslateTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal atanResPostExc_uid363_vecTranslateTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid363_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q : STD_LOGIC_VECTOR (42 downto 0);
    signal p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q : STD_LOGIC_VECTOR (33 downto 0);
    signal p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_a : STD_LOGIC_VECTOR (45 downto 0);
    signal lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (45 downto 0);
    signal lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_o : STD_LOGIC_VECTOR (45 downto 0);
    signal lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_q : STD_LOGIC_VECTOR (45 downto 0);
    signal xip1E_3NA_uid57_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_3NA_uid60_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_5NA_uid95_vecTranslateTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_5NA_uid98_vecTranslateTest_q : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1E_7NA_uid133_vecTranslateTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_7NA_uid136_vecTranslateTest_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xMSB_uid302_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid302_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid307_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal twoToMiSiYip_uid307_vecTranslateTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal twoToMiSiXip_uid306_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid306_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid268_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid268_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid273_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiYip_uid273_vecTranslateTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal twoToMiSiXip_uid272_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid272_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid234_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid234_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid239_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal twoToMiSiYip_uid239_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal twoToMiSiXip_uid238_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid238_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid200_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid200_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid205_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal twoToMiSiYip_uid205_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal twoToMiSiXip_uid204_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid204_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid166_vecTranslateTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid166_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid171_vecTranslateTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal twoToMiSiYip_uid171_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal twoToMiSiXip_uid170_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid170_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid126_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid126_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid137_vecTranslateTest_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_7sumAHighB_uid137_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_7sumAHighB_uid137_vecTranslateTest_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_7sumAHighB_uid137_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid137_vecTranslateTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid88_vecTranslateTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal xMSB_uid88_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid99_vecTranslateTest_a : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_5sumAHighB_uid99_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_5sumAHighB_uid99_vecTranslateTest_o : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_5sumAHighB_uid99_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid99_vecTranslateTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid50_vecTranslateTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid50_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid61_vecTranslateTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3sumAHighB_uid61_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3sumAHighB_uid61_vecTranslateTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3sumAHighB_uid61_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid61_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal is0_uid337_vecTranslateTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal is0_uid337_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is1_uid343_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal is1_uid343_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is2_uid348_vecTranslateTest_in : STD_LOGIC_VECTOR (5 downto 0);
    signal is2_uid348_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal concXZeroYZero_uid362_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xip1_1_mergedSignalTM_uid22_vecTranslateTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid24_vecTranslateTest_in : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid24_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_1_mergedSignalTM_uid28_vecTranslateTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal lowRangeB_uid381_cstMultOutMag_uid366_vecTranslateTest_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid381_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid382_cstMultOutMag_uid366_vecTranslateTest_in : STD_LOGIC_VECTOR (39 downto 0);
    signal highBBits_uid382_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (38 downto 0);
    signal sR_uid387_cstMultOutMag_uid366_vecTranslateTest_in : STD_LOGIC_VECTOR (42 downto 0);
    signal sR_uid387_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal invSignOfSelectionSignal_uid309_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid309_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_17_uid311_vecTranslateTest_a : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_17_uid311_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_17_uid311_vecTranslateTest_o : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_17_uid311_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_17_uid311_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_17_uid310_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_17_uid310_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_17_uid310_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_17_uid310_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_17_uid310_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid275_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid275_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid277_vecTranslateTest_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_15_uid277_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_15_uid277_vecTranslateTest_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_15_uid277_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid277_vecTranslateTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_15_uid276_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_15_uid276_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_15_uid276_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_15_uid276_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_15_uid276_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid241_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid241_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid243_vecTranslateTest_a : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_13_uid243_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_13_uid243_vecTranslateTest_o : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_13_uid243_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid243_vecTranslateTest_q : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_13_uid242_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_13_uid242_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_13_uid242_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_13_uid242_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid242_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid207_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid207_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid209_vecTranslateTest_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_11_uid209_vecTranslateTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_11_uid209_vecTranslateTest_o : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_11_uid209_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid209_vecTranslateTest_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_11_uid208_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_11_uid208_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_11_uid208_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_11_uid208_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid208_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid173_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid173_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid175_vecTranslateTest_a : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_9_uid175_vecTranslateTest_b : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_9_uid175_vecTranslateTest_o : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_9_uid175_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid175_vecTranslateTest_q : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1E_9_uid174_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_9_uid174_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_9_uid174_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_9_uid174_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid174_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid131_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid131_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_7_uid143_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1_7_uid143_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal invSignOfSelectionSignal_uid93_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid93_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_5_uid105_vecTranslateTest_in : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_5_uid105_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal invSignOfSelectionSignal_uid55_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid55_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_3_uid67_vecTranslateTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1_3_uid67_vecTranslateTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal table_l5_uid338_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid339_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid340_vecTranslateTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal table_l11_uid344_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l11_uid345_vecTranslateTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal table_l17_uid349_vecTranslateTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l17_uid350_vecTranslateTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xip1E_2NA_uid38_vecTranslateTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid31_vecTranslateTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid31_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2NA_uid41_vecTranslateTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_a : STD_LOGIC_VECTOR (43 downto 0);
    signal lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (43 downto 0);
    signal lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_o : STD_LOGIC_VECTOR (43 downto 0);
    signal lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_q : STD_LOGIC_VECTOR (43 downto 0);
    signal outMagPostRnd_uid370_vecTranslateTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal outMagPostRnd_uid370_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal outMagPostRnd_uid370_vecTranslateTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal outMagPostRnd_uid370_vecTranslateTest_q : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_17_uid317_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_17_uid317_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_17_uid316_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_17_uid316_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_15_uid283_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_15_uid283_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_15_uid282_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_15_uid282_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_13_uid249_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_13_uid249_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_13_uid248_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_13_uid248_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_11_uid215_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1_11_uid215_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_11_uid214_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_11_uid214_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_9_uid181_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1_9_uid181_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1_9_uid180_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_9_uid180_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_7sumAHighB_uid134_vecTranslateTest_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_7sumAHighB_uid134_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_7sumAHighB_uid134_vecTranslateTest_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_7sumAHighB_uid134_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7sumAHighB_uid134_vecTranslateTest_q : STD_LOGIC_VECTOR (36 downto 0);
    signal xMSB_uid145_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid145_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid150_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal twoToMiSiYip_uid150_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_8NA_uid157_vecTranslateTest_q : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1E_5sumAHighB_uid96_vecTranslateTest_a : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_5sumAHighB_uid96_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_5sumAHighB_uid96_vecTranslateTest_o : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_5sumAHighB_uid96_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5sumAHighB_uid96_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid107_vecTranslateTest_in : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid107_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6NA_uid117_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_3sumAHighB_uid58_vecTranslateTest_a : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_3sumAHighB_uid58_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_3sumAHighB_uid58_vecTranslateTest_o : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_3sumAHighB_uid58_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3sumAHighB_uid58_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal xMSB_uid69_vecTranslateTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid69_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4NA_uid79_vecTranslateTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal os_uid341_vecTranslateTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal os_uid346_vecTranslateTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal os_uid351_vecTranslateTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal invSignOfSelectionSignal_uid36_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid36_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid42_vecTranslateTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2sumAHighB_uid42_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2sumAHighB_uid42_vecTranslateTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2sumAHighB_uid42_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid42_vecTranslateTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal lev1_a0_uid384_cstMultOutMag_uid366_vecTranslateTest_q : STD_LOGIC_VECTOR (44 downto 0);
    signal outMag_uid371_vecTranslateTest_in : STD_LOGIC_VECTOR (19 downto 0);
    signal outMag_uid371_vecTranslateTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xMSB_uid319_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid319_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid324_vecTranslateTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal twoToMiSiYip_uid324_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xMSB_uid285_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid285_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid290_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiYip_uid290_vecTranslateTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal twoToMiSiXip_uid289_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid289_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid251_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid251_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid256_vecTranslateTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiYip_uid256_vecTranslateTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal twoToMiSiXip_uid255_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid255_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid217_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid217_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid222_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid222_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal twoToMiSiXip_uid221_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid221_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid183_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal xMSB_uid183_vecTranslateTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid188_vecTranslateTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal twoToMiSiYip_uid188_vecTranslateTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal twoToMiSiXip_uid187_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid187_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_7_uid142_vecTranslateTest_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_7_uid142_vecTranslateTest_b : STD_LOGIC_VECTOR (34 downto 0);
    signal invSignOfSelectionSignal_uid152_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid152_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1_5_uid104_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1_5_uid104_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal invSignOfSelectionSignal_uid112_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid112_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid118_vecTranslateTest_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6sumAHighB_uid118_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6sumAHighB_uid118_vecTranslateTest_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6sumAHighB_uid118_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid118_vecTranslateTest_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_3_uid66_vecTranslateTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_3_uid66_vecTranslateTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal invSignOfSelectionSignal_uid74_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid74_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid80_vecTranslateTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4sumAHighB_uid80_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4sumAHighB_uid80_vecTranslateTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4sumAHighB_uid80_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid80_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal lev1_a0_uid353_vecTranslateTest_a : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0_uid353_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0_uid353_vecTranslateTest_o : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0_uid353_vecTranslateTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal lev2_a0_uid354_vecTranslateTest_a : STD_LOGIC_VECTOR (25 downto 0);
    signal lev2_a0_uid354_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal lev2_a0_uid354_vecTranslateTest_o : STD_LOGIC_VECTOR (25 downto 0);
    signal lev2_a0_uid354_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_2sumAHighB_uid39_vecTranslateTest_a : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_2sumAHighB_uid39_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_2sumAHighB_uid39_vecTranslateTest_o : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_2sumAHighB_uid39_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2sumAHighB_uid39_vecTranslateTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_2_uid48_vecTranslateTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_2_uid48_vecTranslateTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal invSignOfSelectionSignal_uid326_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid326_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_18_uid327_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_18_uid327_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_18_uid327_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_18_uid327_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_18_uid327_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid292_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid292_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid294_vecTranslateTest_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_16_uid294_vecTranslateTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_16_uid294_vecTranslateTest_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_16_uid294_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid294_vecTranslateTest_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_16_uid293_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_16_uid293_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_16_uid293_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_16_uid293_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_16_uid293_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid258_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid258_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid260_vecTranslateTest_a : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_14_uid260_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_14_uid260_vecTranslateTest_o : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_14_uid260_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid260_vecTranslateTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_14_uid259_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_14_uid259_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_14_uid259_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_14_uid259_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid259_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid224_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid224_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid226_vecTranslateTest_a : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_12_uid226_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_12_uid226_vecTranslateTest_o : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_12_uid226_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid226_vecTranslateTest_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_12_uid225_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_12_uid225_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_12_uid225_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_12_uid225_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid225_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid190_vecTranslateTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid190_vecTranslateTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid192_vecTranslateTest_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_10_uid192_vecTranslateTest_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_10_uid192_vecTranslateTest_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_10_uid192_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid192_vecTranslateTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_10_uid191_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_10_uid191_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_10_uid191_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_10_uid191_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid191_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal twoToMiSiXip_uid149_vecTranslateTest_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid149_vecTranslateTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_8NA_uid154_vecTranslateTest_q : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_8sumAHighB_uid155_vecTranslateTest_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_8sumAHighB_uid155_vecTranslateTest_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_8sumAHighB_uid155_vecTranslateTest_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_8sumAHighB_uid155_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid155_vecTranslateTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_6NA_uid114_vecTranslateTest_q : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_6sumAHighB_uid115_vecTranslateTest_a : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_6sumAHighB_uid115_vecTranslateTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_6sumAHighB_uid115_vecTranslateTest_o : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_6sumAHighB_uid115_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6sumAHighB_uid115_vecTranslateTest_q : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1_6_uid124_vecTranslateTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_6_uid124_vecTranslateTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_4NA_uid76_vecTranslateTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_4sumAHighB_uid77_vecTranslateTest_a : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_4sumAHighB_uid77_vecTranslateTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_4sumAHighB_uid77_vecTranslateTest_o : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_4sumAHighB_uid77_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4sumAHighB_uid77_vecTranslateTest_q : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1_4_uid86_vecTranslateTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_4_uid86_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal atanRes_uid355_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal atanRes_uid355_vecTranslateTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1_2_uid47_vecTranslateTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1_2_uid47_vecTranslateTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1_18_uid333_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_18_uid333_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_16_uid300_vecTranslateTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_16_uid300_vecTranslateTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1_16_uid299_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_16_uid299_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_14_uid266_vecTranslateTest_in : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_14_uid266_vecTranslateTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1_14_uid265_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_14_uid265_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_12_uid232_vecTranslateTest_in : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1_12_uid232_vecTranslateTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_12_uid231_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_12_uid231_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_10_uid198_vecTranslateTest_in : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1_10_uid198_vecTranslateTest_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1_10_uid197_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_10_uid197_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1E_8sumAHighB_uid158_vecTranslateTest_a : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8sumAHighB_uid158_vecTranslateTest_b : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8sumAHighB_uid158_vecTranslateTest_o : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8sumAHighB_uid158_vecTranslateTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8sumAHighB_uid158_vecTranslateTest_q : STD_LOGIC_VECTOR (33 downto 0);
    signal xip1_8_uid163_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_8_uid163_vecTranslateTest_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_6_uid123_vecTranslateTest_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_6_uid123_vecTranslateTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_4_uid85_vecTranslateTest_in : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1_4_uid85_vecTranslateTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal outMagPreCstMult_uid365_vecTranslateTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal outMagPreCstMult_uid365_vecTranslateTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_8_uid164_vecTranslateTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1_8_uid164_vecTranslateTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal xv0_uid373_cstMultOutMag_uid366_vecTranslateTest_in : STD_LOGIC_VECTOR (5 downto 0);
    signal xv0_uid373_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv1_uid374_cstMultOutMag_uid366_vecTranslateTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal xv1_uid374_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv2_uid375_cstMultOutMag_uid366_vecTranslateTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal xv2_uid375_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv3_uid376_cstMultOutMag_uid366_vecTranslateTest_in : STD_LOGIC_VECTOR (20 downto 0);
    signal xv3_uid376_cstMultOutMag_uid366_vecTranslateTest_b : STD_LOGIC_VECTOR (2 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- xMSB_uid302_vecTranslateTest(BITSELECT,301)@8
    xMSB_uid302_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist9_q);
    xMSB_uid302_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid302_vecTranslateTest_in(23 downto 23));

    -- xMSB_uid268_vecTranslateTest(BITSELECT,267)@7
    xMSB_uid268_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist13_q);
    xMSB_uid268_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid268_vecTranslateTest_in(25 downto 25));

    -- xMSB_uid234_vecTranslateTest(BITSELECT,233)@6
    xMSB_uid234_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist17_q);
    xMSB_uid234_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid234_vecTranslateTest_in(27 downto 27));

    -- xMSB_uid200_vecTranslateTest(BITSELECT,199)@5
    xMSB_uid200_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist21_q);
    xMSB_uid200_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid200_vecTranslateTest_in(29 downto 29));

    -- xMSB_uid166_vecTranslateTest(BITSELECT,165)@4
    xMSB_uid166_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist25_q);
    xMSB_uid166_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid166_vecTranslateTest_in(31 downto 31));

    -- xMSB_uid24_vecTranslateTest(BITSELECT,23)@0
    xMSB_uid24_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_1_uid15_vecTranslateTest_q);
    xMSB_uid24_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid24_vecTranslateTest_in(12 downto 12));

    -- xIn(GPIN,3)@0

    -- yip1E_1_uid15_vecTranslateTest(SUB,14)@0
    yip1E_1_uid15_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & y);
    yip1E_1_uid15_vecTranslateTest_b <= STD_LOGIC_VECTOR("0" & x);
    yip1E_1_uid15_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1_uid15_vecTranslateTest_a) - UNSIGNED(yip1E_1_uid15_vecTranslateTest_b));
    yip1E_1_uid15_vecTranslateTest_q <= yip1E_1_uid15_vecTranslateTest_o(12 downto 0);

    -- yip1_1_mergedSignalTM_uid28_vecTranslateTest(BITJOIN,27)@0
    yip1_1_mergedSignalTM_uid28_vecTranslateTest_q <= xMSB_uid24_vecTranslateTest_b & yip1E_1_uid15_vecTranslateTest_q;

    -- xMSB_uid31_vecTranslateTest(BITSELECT,30)@0
    xMSB_uid31_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_1_mergedSignalTM_uid28_vecTranslateTest_q);
    xMSB_uid31_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid31_vecTranslateTest_in(13 downto 13));

    -- xip1E_1_uid14_vecTranslateTest(ADD,13)@0
    xip1E_1_uid14_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & x);
    xip1E_1_uid14_vecTranslateTest_b <= STD_LOGIC_VECTOR("0" & y);
    xip1E_1_uid14_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(xip1E_1_uid14_vecTranslateTest_a) + UNSIGNED(xip1E_1_uid14_vecTranslateTest_b));
    xip1E_1_uid14_vecTranslateTest_q <= xip1E_1_uid14_vecTranslateTest_o(12 downto 0);

    -- xip1_1_mergedSignalTM_uid22_vecTranslateTest(BITJOIN,21)@0
    xip1_1_mergedSignalTM_uid22_vecTranslateTest_q <= GND_q & xip1E_1_uid14_vecTranslateTest_q;

    -- yip1E_2NA_uid41_vecTranslateTest(BITJOIN,40)@0
    yip1E_2NA_uid41_vecTranslateTest_q <= yip1_1_mergedSignalTM_uid28_vecTranslateTest_q & GND_q;

    -- yip1E_2sumAHighB_uid42_vecTranslateTest(ADDSUB,41)@0
    yip1E_2sumAHighB_uid42_vecTranslateTest_s <= xMSB_uid31_vecTranslateTest_b;
    yip1E_2sumAHighB_uid42_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => yip1E_2NA_uid41_vecTranslateTest_q(14)) & yip1E_2NA_uid41_vecTranslateTest_q));
    yip1E_2sumAHighB_uid42_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_1_mergedSignalTM_uid22_vecTranslateTest_q));
    yip1E_2sumAHighB_uid42_vecTranslateTest_combproc: PROCESS (yip1E_2sumAHighB_uid42_vecTranslateTest_a, yip1E_2sumAHighB_uid42_vecTranslateTest_b, yip1E_2sumAHighB_uid42_vecTranslateTest_s)
    BEGIN
        IF (yip1E_2sumAHighB_uid42_vecTranslateTest_s = "1") THEN
            yip1E_2sumAHighB_uid42_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid42_vecTranslateTest_a) + SIGNED(yip1E_2sumAHighB_uid42_vecTranslateTest_b));
        ELSE
            yip1E_2sumAHighB_uid42_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid42_vecTranslateTest_a) - SIGNED(yip1E_2sumAHighB_uid42_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_2sumAHighB_uid42_vecTranslateTest_q <= yip1E_2sumAHighB_uid42_vecTranslateTest_o(15 downto 0);

    -- yip1_2_uid48_vecTranslateTest(BITSELECT,47)@0
    yip1_2_uid48_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_2sumAHighB_uid42_vecTranslateTest_q(14 downto 0));
    yip1_2_uid48_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_2_uid48_vecTranslateTest_in(14 downto 0));

    -- redist37(DELAY,458)
    redist37 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_2_uid48_vecTranslateTest_b, xout => redist37_q, clk => clk, aclr => areset );

    -- xMSB_uid50_vecTranslateTest(BITSELECT,49)@1
    xMSB_uid50_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist37_q);
    xMSB_uid50_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid50_vecTranslateTest_in(14 downto 14));

    -- invSignOfSelectionSignal_uid36_vecTranslateTest(LOGICAL,35)@0
    invSignOfSelectionSignal_uid36_vecTranslateTest_a <= xMSB_uid31_vecTranslateTest_b;
    invSignOfSelectionSignal_uid36_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid36_vecTranslateTest_a);

    -- xip1E_2NA_uid38_vecTranslateTest(BITJOIN,37)@0
    xip1E_2NA_uid38_vecTranslateTest_q <= xip1_1_mergedSignalTM_uid22_vecTranslateTest_q & GND_q;

    -- xip1E_2sumAHighB_uid39_vecTranslateTest(ADDSUB,38)@0
    xip1E_2sumAHighB_uid39_vecTranslateTest_s <= invSignOfSelectionSignal_uid36_vecTranslateTest_q;
    xip1E_2sumAHighB_uid39_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_2NA_uid38_vecTranslateTest_q));
    xip1E_2sumAHighB_uid39_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 14 => yip1_1_mergedSignalTM_uid28_vecTranslateTest_q(13)) & yip1_1_mergedSignalTM_uid28_vecTranslateTest_q));
    xip1E_2sumAHighB_uid39_vecTranslateTest_combproc: PROCESS (xip1E_2sumAHighB_uid39_vecTranslateTest_a, xip1E_2sumAHighB_uid39_vecTranslateTest_b, xip1E_2sumAHighB_uid39_vecTranslateTest_s)
    BEGIN
        IF (xip1E_2sumAHighB_uid39_vecTranslateTest_s = "1") THEN
            xip1E_2sumAHighB_uid39_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid39_vecTranslateTest_a) + SIGNED(xip1E_2sumAHighB_uid39_vecTranslateTest_b));
        ELSE
            xip1E_2sumAHighB_uid39_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid39_vecTranslateTest_a) - SIGNED(xip1E_2sumAHighB_uid39_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_2sumAHighB_uid39_vecTranslateTest_q <= xip1E_2sumAHighB_uid39_vecTranslateTest_o(16 downto 0);

    -- xip1_2_uid47_vecTranslateTest(BITSELECT,46)@0
    xip1_2_uid47_vecTranslateTest_in <= xip1E_2sumAHighB_uid39_vecTranslateTest_q(14 downto 0);
    xip1_2_uid47_vecTranslateTest_b <= xip1_2_uid47_vecTranslateTest_in(14 downto 0);

    -- redist38(DELAY,459)
    redist38 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_2_uid47_vecTranslateTest_b, xout => redist38_q, clk => clk, aclr => areset );

    -- xip1E_3CostZeroPaddingA_uid56_vecTranslateTest(CONSTANT,55)
    xip1E_3CostZeroPaddingA_uid56_vecTranslateTest_q <= "00";

    -- yip1E_3NA_uid60_vecTranslateTest(BITJOIN,59)@1
    yip1E_3NA_uid60_vecTranslateTest_q <= redist37_q & xip1E_3CostZeroPaddingA_uid56_vecTranslateTest_q;

    -- yip1E_3sumAHighB_uid61_vecTranslateTest(ADDSUB,60)@1
    yip1E_3sumAHighB_uid61_vecTranslateTest_s <= xMSB_uid50_vecTranslateTest_b;
    yip1E_3sumAHighB_uid61_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => yip1E_3NA_uid60_vecTranslateTest_q(16)) & yip1E_3NA_uid60_vecTranslateTest_q));
    yip1E_3sumAHighB_uid61_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist38_q));
    yip1E_3sumAHighB_uid61_vecTranslateTest_combproc: PROCESS (yip1E_3sumAHighB_uid61_vecTranslateTest_a, yip1E_3sumAHighB_uid61_vecTranslateTest_b, yip1E_3sumAHighB_uid61_vecTranslateTest_s)
    BEGIN
        IF (yip1E_3sumAHighB_uid61_vecTranslateTest_s = "1") THEN
            yip1E_3sumAHighB_uid61_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid61_vecTranslateTest_a) + SIGNED(yip1E_3sumAHighB_uid61_vecTranslateTest_b));
        ELSE
            yip1E_3sumAHighB_uid61_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid61_vecTranslateTest_a) - SIGNED(yip1E_3sumAHighB_uid61_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_3sumAHighB_uid61_vecTranslateTest_q <= yip1E_3sumAHighB_uid61_vecTranslateTest_o(17 downto 0);

    -- yip1_3_uid67_vecTranslateTest(BITSELECT,66)@1
    yip1_3_uid67_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_3sumAHighB_uid61_vecTranslateTest_q(15 downto 0));
    yip1_3_uid67_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_3_uid67_vecTranslateTest_in(15 downto 0));

    -- xMSB_uid69_vecTranslateTest(BITSELECT,68)@1
    xMSB_uid69_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_3_uid67_vecTranslateTest_b);
    xMSB_uid69_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid69_vecTranslateTest_in(15 downto 15));

    -- invSignOfSelectionSignal_uid55_vecTranslateTest(LOGICAL,54)@1
    invSignOfSelectionSignal_uid55_vecTranslateTest_a <= xMSB_uid50_vecTranslateTest_b;
    invSignOfSelectionSignal_uid55_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid55_vecTranslateTest_a);

    -- xip1E_3NA_uid57_vecTranslateTest(BITJOIN,56)@1
    xip1E_3NA_uid57_vecTranslateTest_q <= redist38_q & xip1E_3CostZeroPaddingA_uid56_vecTranslateTest_q;

    -- xip1E_3sumAHighB_uid58_vecTranslateTest(ADDSUB,57)@1
    xip1E_3sumAHighB_uid58_vecTranslateTest_s <= invSignOfSelectionSignal_uid55_vecTranslateTest_q;
    xip1E_3sumAHighB_uid58_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_3NA_uid57_vecTranslateTest_q));
    xip1E_3sumAHighB_uid58_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 15 => redist37_q(14)) & redist37_q));
    xip1E_3sumAHighB_uid58_vecTranslateTest_combproc: PROCESS (xip1E_3sumAHighB_uid58_vecTranslateTest_a, xip1E_3sumAHighB_uid58_vecTranslateTest_b, xip1E_3sumAHighB_uid58_vecTranslateTest_s)
    BEGIN
        IF (xip1E_3sumAHighB_uid58_vecTranslateTest_s = "1") THEN
            xip1E_3sumAHighB_uid58_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid58_vecTranslateTest_a) + SIGNED(xip1E_3sumAHighB_uid58_vecTranslateTest_b));
        ELSE
            xip1E_3sumAHighB_uid58_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid58_vecTranslateTest_a) - SIGNED(xip1E_3sumAHighB_uid58_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_3sumAHighB_uid58_vecTranslateTest_q <= xip1E_3sumAHighB_uid58_vecTranslateTest_o(18 downto 0);

    -- xip1_3_uid66_vecTranslateTest(BITSELECT,65)@1
    xip1_3_uid66_vecTranslateTest_in <= xip1E_3sumAHighB_uid58_vecTranslateTest_q(16 downto 0);
    xip1_3_uid66_vecTranslateTest_b <= xip1_3_uid66_vecTranslateTest_in(16 downto 0);

    -- xip1E_4CostZeroPaddingA_uid75_vecTranslateTest(CONSTANT,74)
    xip1E_4CostZeroPaddingA_uid75_vecTranslateTest_q <= "000";

    -- yip1E_4NA_uid79_vecTranslateTest(BITJOIN,78)@1
    yip1E_4NA_uid79_vecTranslateTest_q <= yip1_3_uid67_vecTranslateTest_b & xip1E_4CostZeroPaddingA_uid75_vecTranslateTest_q;

    -- yip1E_4sumAHighB_uid80_vecTranslateTest(ADDSUB,79)@1
    yip1E_4sumAHighB_uid80_vecTranslateTest_s <= xMSB_uid69_vecTranslateTest_b;
    yip1E_4sumAHighB_uid80_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => yip1E_4NA_uid79_vecTranslateTest_q(18)) & yip1E_4NA_uid79_vecTranslateTest_q));
    yip1E_4sumAHighB_uid80_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_3_uid66_vecTranslateTest_b));
    yip1E_4sumAHighB_uid80_vecTranslateTest_combproc: PROCESS (yip1E_4sumAHighB_uid80_vecTranslateTest_a, yip1E_4sumAHighB_uid80_vecTranslateTest_b, yip1E_4sumAHighB_uid80_vecTranslateTest_s)
    BEGIN
        IF (yip1E_4sumAHighB_uid80_vecTranslateTest_s = "1") THEN
            yip1E_4sumAHighB_uid80_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid80_vecTranslateTest_a) + SIGNED(yip1E_4sumAHighB_uid80_vecTranslateTest_b));
        ELSE
            yip1E_4sumAHighB_uid80_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid80_vecTranslateTest_a) - SIGNED(yip1E_4sumAHighB_uid80_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_4sumAHighB_uid80_vecTranslateTest_q <= yip1E_4sumAHighB_uid80_vecTranslateTest_o(19 downto 0);

    -- yip1_4_uid86_vecTranslateTest(BITSELECT,85)@1
    yip1_4_uid86_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_4sumAHighB_uid80_vecTranslateTest_q(17 downto 0));
    yip1_4_uid86_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_4_uid86_vecTranslateTest_in(17 downto 0));

    -- redist33(DELAY,454)
    redist33 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_4_uid86_vecTranslateTest_b, xout => redist33_q, clk => clk, aclr => areset );

    -- xMSB_uid88_vecTranslateTest(BITSELECT,87)@2
    xMSB_uid88_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist33_q);
    xMSB_uid88_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid88_vecTranslateTest_in(17 downto 17));

    -- invSignOfSelectionSignal_uid74_vecTranslateTest(LOGICAL,73)@1
    invSignOfSelectionSignal_uid74_vecTranslateTest_a <= xMSB_uid69_vecTranslateTest_b;
    invSignOfSelectionSignal_uid74_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid74_vecTranslateTest_a);

    -- xip1E_4NA_uid76_vecTranslateTest(BITJOIN,75)@1
    xip1E_4NA_uid76_vecTranslateTest_q <= xip1_3_uid66_vecTranslateTest_b & xip1E_4CostZeroPaddingA_uid75_vecTranslateTest_q;

    -- xip1E_4sumAHighB_uid77_vecTranslateTest(ADDSUB,76)@1
    xip1E_4sumAHighB_uid77_vecTranslateTest_s <= invSignOfSelectionSignal_uid74_vecTranslateTest_q;
    xip1E_4sumAHighB_uid77_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_4NA_uid76_vecTranslateTest_q));
    xip1E_4sumAHighB_uid77_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 16 => yip1_3_uid67_vecTranslateTest_b(15)) & yip1_3_uid67_vecTranslateTest_b));
    xip1E_4sumAHighB_uid77_vecTranslateTest_combproc: PROCESS (xip1E_4sumAHighB_uid77_vecTranslateTest_a, xip1E_4sumAHighB_uid77_vecTranslateTest_b, xip1E_4sumAHighB_uid77_vecTranslateTest_s)
    BEGIN
        IF (xip1E_4sumAHighB_uid77_vecTranslateTest_s = "1") THEN
            xip1E_4sumAHighB_uid77_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid77_vecTranslateTest_a) + SIGNED(xip1E_4sumAHighB_uid77_vecTranslateTest_b));
        ELSE
            xip1E_4sumAHighB_uid77_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid77_vecTranslateTest_a) - SIGNED(xip1E_4sumAHighB_uid77_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_4sumAHighB_uid77_vecTranslateTest_q <= xip1E_4sumAHighB_uid77_vecTranslateTest_o(21 downto 0);

    -- xip1_4_uid85_vecTranslateTest(BITSELECT,84)@1
    xip1_4_uid85_vecTranslateTest_in <= xip1E_4sumAHighB_uid77_vecTranslateTest_q(19 downto 0);
    xip1_4_uid85_vecTranslateTest_b <= xip1_4_uid85_vecTranslateTest_in(19 downto 0);

    -- redist34(DELAY,455)
    redist34 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_4_uid85_vecTranslateTest_b, xout => redist34_q, clk => clk, aclr => areset );

    -- xip1E_5CostZeroPaddingA_uid94_vecTranslateTest(CONSTANT,93)
    xip1E_5CostZeroPaddingA_uid94_vecTranslateTest_q <= "0000";

    -- yip1E_5NA_uid98_vecTranslateTest(BITJOIN,97)@2
    yip1E_5NA_uid98_vecTranslateTest_q <= redist33_q & xip1E_5CostZeroPaddingA_uid94_vecTranslateTest_q;

    -- yip1E_5sumAHighB_uid99_vecTranslateTest(ADDSUB,98)@2
    yip1E_5sumAHighB_uid99_vecTranslateTest_s <= xMSB_uid88_vecTranslateTest_b;
    yip1E_5sumAHighB_uid99_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 22 => yip1E_5NA_uid98_vecTranslateTest_q(21)) & yip1E_5NA_uid98_vecTranslateTest_q));
    yip1E_5sumAHighB_uid99_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist34_q));
    yip1E_5sumAHighB_uid99_vecTranslateTest_combproc: PROCESS (yip1E_5sumAHighB_uid99_vecTranslateTest_a, yip1E_5sumAHighB_uid99_vecTranslateTest_b, yip1E_5sumAHighB_uid99_vecTranslateTest_s)
    BEGIN
        IF (yip1E_5sumAHighB_uid99_vecTranslateTest_s = "1") THEN
            yip1E_5sumAHighB_uid99_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid99_vecTranslateTest_a) + SIGNED(yip1E_5sumAHighB_uid99_vecTranslateTest_b));
        ELSE
            yip1E_5sumAHighB_uid99_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid99_vecTranslateTest_a) - SIGNED(yip1E_5sumAHighB_uid99_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_5sumAHighB_uid99_vecTranslateTest_q <= yip1E_5sumAHighB_uid99_vecTranslateTest_o(22 downto 0);

    -- yip1_5_uid105_vecTranslateTest(BITSELECT,104)@2
    yip1_5_uid105_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_5sumAHighB_uid99_vecTranslateTest_q(20 downto 0));
    yip1_5_uid105_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_5_uid105_vecTranslateTest_in(20 downto 0));

    -- xMSB_uid107_vecTranslateTest(BITSELECT,106)@2
    xMSB_uid107_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_5_uid105_vecTranslateTest_b);
    xMSB_uid107_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid107_vecTranslateTest_in(20 downto 20));

    -- invSignOfSelectionSignal_uid93_vecTranslateTest(LOGICAL,92)@2
    invSignOfSelectionSignal_uid93_vecTranslateTest_a <= xMSB_uid88_vecTranslateTest_b;
    invSignOfSelectionSignal_uid93_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid93_vecTranslateTest_a);

    -- xip1E_5NA_uid95_vecTranslateTest(BITJOIN,94)@2
    xip1E_5NA_uid95_vecTranslateTest_q <= redist34_q & xip1E_5CostZeroPaddingA_uid94_vecTranslateTest_q;

    -- xip1E_5sumAHighB_uid96_vecTranslateTest(ADDSUB,95)@2
    xip1E_5sumAHighB_uid96_vecTranslateTest_s <= invSignOfSelectionSignal_uid93_vecTranslateTest_q;
    xip1E_5sumAHighB_uid96_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_5NA_uid95_vecTranslateTest_q));
    xip1E_5sumAHighB_uid96_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => redist33_q(17)) & redist33_q));
    xip1E_5sumAHighB_uid96_vecTranslateTest_combproc: PROCESS (xip1E_5sumAHighB_uid96_vecTranslateTest_a, xip1E_5sumAHighB_uid96_vecTranslateTest_b, xip1E_5sumAHighB_uid96_vecTranslateTest_s)
    BEGIN
        IF (xip1E_5sumAHighB_uid96_vecTranslateTest_s = "1") THEN
            xip1E_5sumAHighB_uid96_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid96_vecTranslateTest_a) + SIGNED(xip1E_5sumAHighB_uid96_vecTranslateTest_b));
        ELSE
            xip1E_5sumAHighB_uid96_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid96_vecTranslateTest_a) - SIGNED(xip1E_5sumAHighB_uid96_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_5sumAHighB_uid96_vecTranslateTest_q <= xip1E_5sumAHighB_uid96_vecTranslateTest_o(25 downto 0);

    -- xip1_5_uid104_vecTranslateTest(BITSELECT,103)@2
    xip1_5_uid104_vecTranslateTest_in <= xip1E_5sumAHighB_uid96_vecTranslateTest_q(23 downto 0);
    xip1_5_uid104_vecTranslateTest_b <= xip1_5_uid104_vecTranslateTest_in(23 downto 0);

    -- xip1E_6CostZeroPaddingA_uid113_vecTranslateTest(CONSTANT,112)
    xip1E_6CostZeroPaddingA_uid113_vecTranslateTest_q <= "00000";

    -- yip1E_6NA_uid117_vecTranslateTest(BITJOIN,116)@2
    yip1E_6NA_uid117_vecTranslateTest_q <= yip1_5_uid105_vecTranslateTest_b & xip1E_6CostZeroPaddingA_uid113_vecTranslateTest_q;

    -- yip1E_6sumAHighB_uid118_vecTranslateTest(ADDSUB,117)@2
    yip1E_6sumAHighB_uid118_vecTranslateTest_s <= xMSB_uid107_vecTranslateTest_b;
    yip1E_6sumAHighB_uid118_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => yip1E_6NA_uid117_vecTranslateTest_q(25)) & yip1E_6NA_uid117_vecTranslateTest_q));
    yip1E_6sumAHighB_uid118_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_5_uid104_vecTranslateTest_b));
    yip1E_6sumAHighB_uid118_vecTranslateTest_combproc: PROCESS (yip1E_6sumAHighB_uid118_vecTranslateTest_a, yip1E_6sumAHighB_uid118_vecTranslateTest_b, yip1E_6sumAHighB_uid118_vecTranslateTest_s)
    BEGIN
        IF (yip1E_6sumAHighB_uid118_vecTranslateTest_s = "1") THEN
            yip1E_6sumAHighB_uid118_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid118_vecTranslateTest_a) + SIGNED(yip1E_6sumAHighB_uid118_vecTranslateTest_b));
        ELSE
            yip1E_6sumAHighB_uid118_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid118_vecTranslateTest_a) - SIGNED(yip1E_6sumAHighB_uid118_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_6sumAHighB_uid118_vecTranslateTest_q <= yip1E_6sumAHighB_uid118_vecTranslateTest_o(26 downto 0);

    -- yip1_6_uid124_vecTranslateTest(BITSELECT,123)@2
    yip1_6_uid124_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_6sumAHighB_uid118_vecTranslateTest_q(24 downto 0));
    yip1_6_uid124_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_6_uid124_vecTranslateTest_in(24 downto 0));

    -- redist29(DELAY,450)
    redist29 : dspba_delay
    GENERIC MAP ( width => 25, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_6_uid124_vecTranslateTest_b, xout => redist29_q, clk => clk, aclr => areset );

    -- xMSB_uid126_vecTranslateTest(BITSELECT,125)@3
    xMSB_uid126_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist29_q);
    xMSB_uid126_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid126_vecTranslateTest_in(24 downto 24));

    -- invSignOfSelectionSignal_uid112_vecTranslateTest(LOGICAL,111)@2
    invSignOfSelectionSignal_uid112_vecTranslateTest_a <= xMSB_uid107_vecTranslateTest_b;
    invSignOfSelectionSignal_uid112_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid112_vecTranslateTest_a);

    -- xip1E_6NA_uid114_vecTranslateTest(BITJOIN,113)@2
    xip1E_6NA_uid114_vecTranslateTest_q <= xip1_5_uid104_vecTranslateTest_b & xip1E_6CostZeroPaddingA_uid113_vecTranslateTest_q;

    -- xip1E_6sumAHighB_uid115_vecTranslateTest(ADDSUB,114)@2
    xip1E_6sumAHighB_uid115_vecTranslateTest_s <= invSignOfSelectionSignal_uid112_vecTranslateTest_q;
    xip1E_6sumAHighB_uid115_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_6NA_uid114_vecTranslateTest_q));
    xip1E_6sumAHighB_uid115_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 21 => yip1_5_uid105_vecTranslateTest_b(20)) & yip1_5_uid105_vecTranslateTest_b));
    xip1E_6sumAHighB_uid115_vecTranslateTest_combproc: PROCESS (xip1E_6sumAHighB_uid115_vecTranslateTest_a, xip1E_6sumAHighB_uid115_vecTranslateTest_b, xip1E_6sumAHighB_uid115_vecTranslateTest_s)
    BEGIN
        IF (xip1E_6sumAHighB_uid115_vecTranslateTest_s = "1") THEN
            xip1E_6sumAHighB_uid115_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid115_vecTranslateTest_a) + SIGNED(xip1E_6sumAHighB_uid115_vecTranslateTest_b));
        ELSE
            xip1E_6sumAHighB_uid115_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid115_vecTranslateTest_a) - SIGNED(xip1E_6sumAHighB_uid115_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_6sumAHighB_uid115_vecTranslateTest_q <= xip1E_6sumAHighB_uid115_vecTranslateTest_o(30 downto 0);

    -- xip1_6_uid123_vecTranslateTest(BITSELECT,122)@2
    xip1_6_uid123_vecTranslateTest_in <= xip1E_6sumAHighB_uid115_vecTranslateTest_q(28 downto 0);
    xip1_6_uid123_vecTranslateTest_b <= xip1_6_uid123_vecTranslateTest_in(28 downto 0);

    -- redist30(DELAY,451)
    redist30 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_6_uid123_vecTranslateTest_b, xout => redist30_q, clk => clk, aclr => areset );

    -- xip1E_7CostZeroPaddingA_uid132_vecTranslateTest(CONSTANT,131)
    xip1E_7CostZeroPaddingA_uid132_vecTranslateTest_q <= "000000";

    -- yip1E_7NA_uid136_vecTranslateTest(BITJOIN,135)@3
    yip1E_7NA_uid136_vecTranslateTest_q <= redist29_q & xip1E_7CostZeroPaddingA_uid132_vecTranslateTest_q;

    -- yip1E_7sumAHighB_uid137_vecTranslateTest(ADDSUB,136)@3
    yip1E_7sumAHighB_uid137_vecTranslateTest_s <= xMSB_uid126_vecTranslateTest_b;
    yip1E_7sumAHighB_uid137_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 31 => yip1E_7NA_uid136_vecTranslateTest_q(30)) & yip1E_7NA_uid136_vecTranslateTest_q));
    yip1E_7sumAHighB_uid137_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist30_q));
    yip1E_7sumAHighB_uid137_vecTranslateTest_combproc: PROCESS (yip1E_7sumAHighB_uid137_vecTranslateTest_a, yip1E_7sumAHighB_uid137_vecTranslateTest_b, yip1E_7sumAHighB_uid137_vecTranslateTest_s)
    BEGIN
        IF (yip1E_7sumAHighB_uid137_vecTranslateTest_s = "1") THEN
            yip1E_7sumAHighB_uid137_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid137_vecTranslateTest_a) + SIGNED(yip1E_7sumAHighB_uid137_vecTranslateTest_b));
        ELSE
            yip1E_7sumAHighB_uid137_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid137_vecTranslateTest_a) - SIGNED(yip1E_7sumAHighB_uid137_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_7sumAHighB_uid137_vecTranslateTest_q <= yip1E_7sumAHighB_uid137_vecTranslateTest_o(31 downto 0);

    -- yip1_7_uid143_vecTranslateTest(BITSELECT,142)@3
    yip1_7_uid143_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_7sumAHighB_uid137_vecTranslateTest_q(29 downto 0));
    yip1_7_uid143_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_7_uid143_vecTranslateTest_in(29 downto 0));

    -- xMSB_uid145_vecTranslateTest(BITSELECT,144)@3
    xMSB_uid145_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_7_uid143_vecTranslateTest_b);
    xMSB_uid145_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid145_vecTranslateTest_in(29 downto 29));

    -- invSignOfSelectionSignal_uid152_vecTranslateTest(LOGICAL,151)@3
    invSignOfSelectionSignal_uid152_vecTranslateTest_a <= xMSB_uid145_vecTranslateTest_b;
    invSignOfSelectionSignal_uid152_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid152_vecTranslateTest_a);

    -- twoToMiSiYip_uid150_vecTranslateTest(BITSELECT,149)@3
    twoToMiSiYip_uid150_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_7_uid143_vecTranslateTest_b);
    twoToMiSiYip_uid150_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid150_vecTranslateTest_in(29 downto 4));

    -- invSignOfSelectionSignal_uid131_vecTranslateTest(LOGICAL,130)@3
    invSignOfSelectionSignal_uid131_vecTranslateTest_a <= xMSB_uid126_vecTranslateTest_b;
    invSignOfSelectionSignal_uid131_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid131_vecTranslateTest_a);

    -- xip1E_7NA_uid133_vecTranslateTest(BITJOIN,132)@3
    xip1E_7NA_uid133_vecTranslateTest_q <= redist30_q & xip1E_7CostZeroPaddingA_uid132_vecTranslateTest_q;

    -- xip1E_7sumAHighB_uid134_vecTranslateTest(ADDSUB,133)@3
    xip1E_7sumAHighB_uid134_vecTranslateTest_s <= invSignOfSelectionSignal_uid131_vecTranslateTest_q;
    xip1E_7sumAHighB_uid134_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_7NA_uid133_vecTranslateTest_q));
    xip1E_7sumAHighB_uid134_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 25 => redist29_q(24)) & redist29_q));
    xip1E_7sumAHighB_uid134_vecTranslateTest_combproc: PROCESS (xip1E_7sumAHighB_uid134_vecTranslateTest_a, xip1E_7sumAHighB_uid134_vecTranslateTest_b, xip1E_7sumAHighB_uid134_vecTranslateTest_s)
    BEGIN
        IF (xip1E_7sumAHighB_uid134_vecTranslateTest_s = "1") THEN
            xip1E_7sumAHighB_uid134_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid134_vecTranslateTest_a) + SIGNED(xip1E_7sumAHighB_uid134_vecTranslateTest_b));
        ELSE
            xip1E_7sumAHighB_uid134_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid134_vecTranslateTest_a) - SIGNED(xip1E_7sumAHighB_uid134_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_7sumAHighB_uid134_vecTranslateTest_q <= xip1E_7sumAHighB_uid134_vecTranslateTest_o(36 downto 0);

    -- xip1_7_uid142_vecTranslateTest(BITSELECT,141)@3
    xip1_7_uid142_vecTranslateTest_in <= xip1E_7sumAHighB_uid134_vecTranslateTest_q(34 downto 0);
    xip1_7_uid142_vecTranslateTest_b <= xip1_7_uid142_vecTranslateTest_in(34 downto 0);

    -- xip1E_8NA_uid154_vecTranslateTest(BITJOIN,153)@3
    xip1E_8NA_uid154_vecTranslateTest_q <= xip1_7_uid142_vecTranslateTest_b & xip1E_4CostZeroPaddingA_uid75_vecTranslateTest_q;

    -- xip1E_8sumAHighB_uid155_vecTranslateTest(ADDSUB,154)@3
    xip1E_8sumAHighB_uid155_vecTranslateTest_s <= invSignOfSelectionSignal_uid152_vecTranslateTest_q;
    xip1E_8sumAHighB_uid155_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_8NA_uid154_vecTranslateTest_q));
    xip1E_8sumAHighB_uid155_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 26 => twoToMiSiYip_uid150_vecTranslateTest_b(25)) & twoToMiSiYip_uid150_vecTranslateTest_b));
    xip1E_8sumAHighB_uid155_vecTranslateTest_combproc: PROCESS (xip1E_8sumAHighB_uid155_vecTranslateTest_a, xip1E_8sumAHighB_uid155_vecTranslateTest_b, xip1E_8sumAHighB_uid155_vecTranslateTest_s)
    BEGIN
        IF (xip1E_8sumAHighB_uid155_vecTranslateTest_s = "1") THEN
            xip1E_8sumAHighB_uid155_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid155_vecTranslateTest_a) + SIGNED(xip1E_8sumAHighB_uid155_vecTranslateTest_b));
        ELSE
            xip1E_8sumAHighB_uid155_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid155_vecTranslateTest_a) - SIGNED(xip1E_8sumAHighB_uid155_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_8sumAHighB_uid155_vecTranslateTest_q <= xip1E_8sumAHighB_uid155_vecTranslateTest_o(39 downto 0);

    -- xip1_8_uid163_vecTranslateTest(BITSELECT,162)@3
    xip1_8_uid163_vecTranslateTest_in <= xip1E_8sumAHighB_uid155_vecTranslateTest_q(37 downto 0);
    xip1_8_uid163_vecTranslateTest_b <= xip1_8_uid163_vecTranslateTest_in(37 downto 0);

    -- redist26(DELAY,447)
    redist26 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_8_uid163_vecTranslateTest_b, xout => redist26_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid170_vecTranslateTest(BITSELECT,169)@4
    twoToMiSiXip_uid170_vecTranslateTest_in <= redist26_q;
    twoToMiSiXip_uid170_vecTranslateTest_b <= twoToMiSiXip_uid170_vecTranslateTest_in(37 downto 8);

    -- twoToMiSiXip_uid149_vecTranslateTest(BITSELECT,148)@3
    twoToMiSiXip_uid149_vecTranslateTest_in <= xip1_7_uid142_vecTranslateTest_b;
    twoToMiSiXip_uid149_vecTranslateTest_b <= twoToMiSiXip_uid149_vecTranslateTest_in(34 downto 4);

    -- yip1E_8NA_uid157_vecTranslateTest(BITJOIN,156)@3
    yip1E_8NA_uid157_vecTranslateTest_q <= yip1_7_uid143_vecTranslateTest_b & xip1E_4CostZeroPaddingA_uid75_vecTranslateTest_q;

    -- yip1E_8sumAHighB_uid158_vecTranslateTest(ADDSUB,157)@3
    yip1E_8sumAHighB_uid158_vecTranslateTest_s <= xMSB_uid145_vecTranslateTest_b;
    yip1E_8sumAHighB_uid158_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => yip1E_8NA_uid157_vecTranslateTest_q(32)) & yip1E_8NA_uid157_vecTranslateTest_q));
    yip1E_8sumAHighB_uid158_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid149_vecTranslateTest_b));
    yip1E_8sumAHighB_uid158_vecTranslateTest_combproc: PROCESS (yip1E_8sumAHighB_uid158_vecTranslateTest_a, yip1E_8sumAHighB_uid158_vecTranslateTest_b, yip1E_8sumAHighB_uid158_vecTranslateTest_s)
    BEGIN
        IF (yip1E_8sumAHighB_uid158_vecTranslateTest_s = "1") THEN
            yip1E_8sumAHighB_uid158_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid158_vecTranslateTest_a) + SIGNED(yip1E_8sumAHighB_uid158_vecTranslateTest_b));
        ELSE
            yip1E_8sumAHighB_uid158_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid158_vecTranslateTest_a) - SIGNED(yip1E_8sumAHighB_uid158_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_8sumAHighB_uid158_vecTranslateTest_q <= yip1E_8sumAHighB_uid158_vecTranslateTest_o(33 downto 0);

    -- yip1_8_uid164_vecTranslateTest(BITSELECT,163)@3
    yip1_8_uid164_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_8sumAHighB_uid158_vecTranslateTest_q(31 downto 0));
    yip1_8_uid164_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_8_uid164_vecTranslateTest_in(31 downto 0));

    -- redist25(DELAY,446)
    redist25 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_8_uid164_vecTranslateTest_b, xout => redist25_q, clk => clk, aclr => areset );

    -- yip1E_9_uid175_vecTranslateTest(ADDSUB,174)@4
    yip1E_9_uid175_vecTranslateTest_s <= xMSB_uid166_vecTranslateTest_b;
    yip1E_9_uid175_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist25_q(31)) & redist25_q));
    yip1E_9_uid175_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid170_vecTranslateTest_b));
    yip1E_9_uid175_vecTranslateTest_combproc: PROCESS (yip1E_9_uid175_vecTranslateTest_a, yip1E_9_uid175_vecTranslateTest_b, yip1E_9_uid175_vecTranslateTest_s)
    BEGIN
        IF (yip1E_9_uid175_vecTranslateTest_s = "1") THEN
            yip1E_9_uid175_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid175_vecTranslateTest_a) + SIGNED(yip1E_9_uid175_vecTranslateTest_b));
        ELSE
            yip1E_9_uid175_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid175_vecTranslateTest_a) - SIGNED(yip1E_9_uid175_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_9_uid175_vecTranslateTest_q <= yip1E_9_uid175_vecTranslateTest_o(32 downto 0);

    -- yip1_9_uid181_vecTranslateTest(BITSELECT,180)@4
    yip1_9_uid181_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_9_uid175_vecTranslateTest_q(30 downto 0));
    yip1_9_uid181_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_9_uid181_vecTranslateTest_in(30 downto 0));

    -- xMSB_uid183_vecTranslateTest(BITSELECT,182)@4
    xMSB_uid183_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_9_uid181_vecTranslateTest_b);
    xMSB_uid183_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid183_vecTranslateTest_in(30 downto 30));

    -- invSignOfSelectionSignal_uid190_vecTranslateTest(LOGICAL,189)@4
    invSignOfSelectionSignal_uid190_vecTranslateTest_a <= xMSB_uid183_vecTranslateTest_b;
    invSignOfSelectionSignal_uid190_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid190_vecTranslateTest_a);

    -- twoToMiSiYip_uid188_vecTranslateTest(BITSELECT,187)@4
    twoToMiSiYip_uid188_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_9_uid181_vecTranslateTest_b);
    twoToMiSiYip_uid188_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid188_vecTranslateTest_in(30 downto 9));

    -- invSignOfSelectionSignal_uid173_vecTranslateTest(LOGICAL,172)@4
    invSignOfSelectionSignal_uid173_vecTranslateTest_a <= xMSB_uid166_vecTranslateTest_b;
    invSignOfSelectionSignal_uid173_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid173_vecTranslateTest_a);

    -- twoToMiSiYip_uid171_vecTranslateTest(BITSELECT,170)@4
    twoToMiSiYip_uid171_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist25_q);
    twoToMiSiYip_uid171_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid171_vecTranslateTest_in(31 downto 8));

    -- xip1E_9_uid174_vecTranslateTest(ADDSUB,173)@4
    xip1E_9_uid174_vecTranslateTest_s <= invSignOfSelectionSignal_uid173_vecTranslateTest_q;
    xip1E_9_uid174_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist26_q));
    xip1E_9_uid174_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 24 => twoToMiSiYip_uid171_vecTranslateTest_b(23)) & twoToMiSiYip_uid171_vecTranslateTest_b));
    xip1E_9_uid174_vecTranslateTest_combproc: PROCESS (xip1E_9_uid174_vecTranslateTest_a, xip1E_9_uid174_vecTranslateTest_b, xip1E_9_uid174_vecTranslateTest_s)
    BEGIN
        IF (xip1E_9_uid174_vecTranslateTest_s = "1") THEN
            xip1E_9_uid174_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid174_vecTranslateTest_a) + SIGNED(xip1E_9_uid174_vecTranslateTest_b));
        ELSE
            xip1E_9_uid174_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid174_vecTranslateTest_a) - SIGNED(xip1E_9_uid174_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_9_uid174_vecTranslateTest_q <= xip1E_9_uid174_vecTranslateTest_o(39 downto 0);

    -- xip1_9_uid180_vecTranslateTest(BITSELECT,179)@4
    xip1_9_uid180_vecTranslateTest_in <= xip1E_9_uid174_vecTranslateTest_q(37 downto 0);
    xip1_9_uid180_vecTranslateTest_b <= xip1_9_uid180_vecTranslateTest_in(37 downto 0);

    -- xip1E_10_uid191_vecTranslateTest(ADDSUB,190)@4
    xip1E_10_uid191_vecTranslateTest_s <= invSignOfSelectionSignal_uid190_vecTranslateTest_q;
    xip1E_10_uid191_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_9_uid180_vecTranslateTest_b));
    xip1E_10_uid191_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 22 => twoToMiSiYip_uid188_vecTranslateTest_b(21)) & twoToMiSiYip_uid188_vecTranslateTest_b));
    xip1E_10_uid191_vecTranslateTest_combproc: PROCESS (xip1E_10_uid191_vecTranslateTest_a, xip1E_10_uid191_vecTranslateTest_b, xip1E_10_uid191_vecTranslateTest_s)
    BEGIN
        IF (xip1E_10_uid191_vecTranslateTest_s = "1") THEN
            xip1E_10_uid191_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid191_vecTranslateTest_a) + SIGNED(xip1E_10_uid191_vecTranslateTest_b));
        ELSE
            xip1E_10_uid191_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid191_vecTranslateTest_a) - SIGNED(xip1E_10_uid191_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_10_uid191_vecTranslateTest_q <= xip1E_10_uid191_vecTranslateTest_o(39 downto 0);

    -- xip1_10_uid197_vecTranslateTest(BITSELECT,196)@4
    xip1_10_uid197_vecTranslateTest_in <= xip1E_10_uid191_vecTranslateTest_q(37 downto 0);
    xip1_10_uid197_vecTranslateTest_b <= xip1_10_uid197_vecTranslateTest_in(37 downto 0);

    -- redist22(DELAY,443)
    redist22 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_10_uid197_vecTranslateTest_b, xout => redist22_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid204_vecTranslateTest(BITSELECT,203)@5
    twoToMiSiXip_uid204_vecTranslateTest_in <= redist22_q;
    twoToMiSiXip_uid204_vecTranslateTest_b <= twoToMiSiXip_uid204_vecTranslateTest_in(37 downto 10);

    -- twoToMiSiXip_uid187_vecTranslateTest(BITSELECT,186)@4
    twoToMiSiXip_uid187_vecTranslateTest_in <= xip1_9_uid180_vecTranslateTest_b;
    twoToMiSiXip_uid187_vecTranslateTest_b <= twoToMiSiXip_uid187_vecTranslateTest_in(37 downto 9);

    -- yip1E_10_uid192_vecTranslateTest(ADDSUB,191)@4
    yip1E_10_uid192_vecTranslateTest_s <= xMSB_uid183_vecTranslateTest_b;
    yip1E_10_uid192_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 31 => yip1_9_uid181_vecTranslateTest_b(30)) & yip1_9_uid181_vecTranslateTest_b));
    yip1E_10_uid192_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid187_vecTranslateTest_b));
    yip1E_10_uid192_vecTranslateTest_combproc: PROCESS (yip1E_10_uid192_vecTranslateTest_a, yip1E_10_uid192_vecTranslateTest_b, yip1E_10_uid192_vecTranslateTest_s)
    BEGIN
        IF (yip1E_10_uid192_vecTranslateTest_s = "1") THEN
            yip1E_10_uid192_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid192_vecTranslateTest_a) + SIGNED(yip1E_10_uid192_vecTranslateTest_b));
        ELSE
            yip1E_10_uid192_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid192_vecTranslateTest_a) - SIGNED(yip1E_10_uid192_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_10_uid192_vecTranslateTest_q <= yip1E_10_uid192_vecTranslateTest_o(31 downto 0);

    -- yip1_10_uid198_vecTranslateTest(BITSELECT,197)@4
    yip1_10_uid198_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_10_uid192_vecTranslateTest_q(29 downto 0));
    yip1_10_uid198_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_10_uid198_vecTranslateTest_in(29 downto 0));

    -- redist21(DELAY,442)
    redist21 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_10_uid198_vecTranslateTest_b, xout => redist21_q, clk => clk, aclr => areset );

    -- yip1E_11_uid209_vecTranslateTest(ADDSUB,208)@5
    yip1E_11_uid209_vecTranslateTest_s <= xMSB_uid200_vecTranslateTest_b;
    yip1E_11_uid209_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => redist21_q(29)) & redist21_q));
    yip1E_11_uid209_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid204_vecTranslateTest_b));
    yip1E_11_uid209_vecTranslateTest_combproc: PROCESS (yip1E_11_uid209_vecTranslateTest_a, yip1E_11_uid209_vecTranslateTest_b, yip1E_11_uid209_vecTranslateTest_s)
    BEGIN
        IF (yip1E_11_uid209_vecTranslateTest_s = "1") THEN
            yip1E_11_uid209_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid209_vecTranslateTest_a) + SIGNED(yip1E_11_uid209_vecTranslateTest_b));
        ELSE
            yip1E_11_uid209_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid209_vecTranslateTest_a) - SIGNED(yip1E_11_uid209_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_11_uid209_vecTranslateTest_q <= yip1E_11_uid209_vecTranslateTest_o(30 downto 0);

    -- yip1_11_uid215_vecTranslateTest(BITSELECT,214)@5
    yip1_11_uid215_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_11_uid209_vecTranslateTest_q(28 downto 0));
    yip1_11_uid215_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_11_uid215_vecTranslateTest_in(28 downto 0));

    -- xMSB_uid217_vecTranslateTest(BITSELECT,216)@5
    xMSB_uid217_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_11_uid215_vecTranslateTest_b);
    xMSB_uid217_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid217_vecTranslateTest_in(28 downto 28));

    -- invSignOfSelectionSignal_uid224_vecTranslateTest(LOGICAL,223)@5
    invSignOfSelectionSignal_uid224_vecTranslateTest_a <= xMSB_uid217_vecTranslateTest_b;
    invSignOfSelectionSignal_uid224_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid224_vecTranslateTest_a);

    -- twoToMiSiYip_uid222_vecTranslateTest(BITSELECT,221)@5
    twoToMiSiYip_uid222_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_11_uid215_vecTranslateTest_b);
    twoToMiSiYip_uid222_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid222_vecTranslateTest_in(28 downto 11));

    -- invSignOfSelectionSignal_uid207_vecTranslateTest(LOGICAL,206)@5
    invSignOfSelectionSignal_uid207_vecTranslateTest_a <= xMSB_uid200_vecTranslateTest_b;
    invSignOfSelectionSignal_uid207_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid207_vecTranslateTest_a);

    -- twoToMiSiYip_uid205_vecTranslateTest(BITSELECT,204)@5
    twoToMiSiYip_uid205_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist21_q);
    twoToMiSiYip_uid205_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid205_vecTranslateTest_in(29 downto 10));

    -- xip1E_11_uid208_vecTranslateTest(ADDSUB,207)@5
    xip1E_11_uid208_vecTranslateTest_s <= invSignOfSelectionSignal_uid207_vecTranslateTest_q;
    xip1E_11_uid208_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist22_q));
    xip1E_11_uid208_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 20 => twoToMiSiYip_uid205_vecTranslateTest_b(19)) & twoToMiSiYip_uid205_vecTranslateTest_b));
    xip1E_11_uid208_vecTranslateTest_combproc: PROCESS (xip1E_11_uid208_vecTranslateTest_a, xip1E_11_uid208_vecTranslateTest_b, xip1E_11_uid208_vecTranslateTest_s)
    BEGIN
        IF (xip1E_11_uid208_vecTranslateTest_s = "1") THEN
            xip1E_11_uid208_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid208_vecTranslateTest_a) + SIGNED(xip1E_11_uid208_vecTranslateTest_b));
        ELSE
            xip1E_11_uid208_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid208_vecTranslateTest_a) - SIGNED(xip1E_11_uid208_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_11_uid208_vecTranslateTest_q <= xip1E_11_uid208_vecTranslateTest_o(39 downto 0);

    -- xip1_11_uid214_vecTranslateTest(BITSELECT,213)@5
    xip1_11_uid214_vecTranslateTest_in <= xip1E_11_uid208_vecTranslateTest_q(37 downto 0);
    xip1_11_uid214_vecTranslateTest_b <= xip1_11_uid214_vecTranslateTest_in(37 downto 0);

    -- xip1E_12_uid225_vecTranslateTest(ADDSUB,224)@5
    xip1E_12_uid225_vecTranslateTest_s <= invSignOfSelectionSignal_uid224_vecTranslateTest_q;
    xip1E_12_uid225_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_11_uid214_vecTranslateTest_b));
    xip1E_12_uid225_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 18 => twoToMiSiYip_uid222_vecTranslateTest_b(17)) & twoToMiSiYip_uid222_vecTranslateTest_b));
    xip1E_12_uid225_vecTranslateTest_combproc: PROCESS (xip1E_12_uid225_vecTranslateTest_a, xip1E_12_uid225_vecTranslateTest_b, xip1E_12_uid225_vecTranslateTest_s)
    BEGIN
        IF (xip1E_12_uid225_vecTranslateTest_s = "1") THEN
            xip1E_12_uid225_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid225_vecTranslateTest_a) + SIGNED(xip1E_12_uid225_vecTranslateTest_b));
        ELSE
            xip1E_12_uid225_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid225_vecTranslateTest_a) - SIGNED(xip1E_12_uid225_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_12_uid225_vecTranslateTest_q <= xip1E_12_uid225_vecTranslateTest_o(39 downto 0);

    -- xip1_12_uid231_vecTranslateTest(BITSELECT,230)@5
    xip1_12_uid231_vecTranslateTest_in <= xip1E_12_uid225_vecTranslateTest_q(37 downto 0);
    xip1_12_uid231_vecTranslateTest_b <= xip1_12_uid231_vecTranslateTest_in(37 downto 0);

    -- redist18(DELAY,439)
    redist18 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_12_uid231_vecTranslateTest_b, xout => redist18_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid238_vecTranslateTest(BITSELECT,237)@6
    twoToMiSiXip_uid238_vecTranslateTest_in <= redist18_q;
    twoToMiSiXip_uid238_vecTranslateTest_b <= twoToMiSiXip_uid238_vecTranslateTest_in(37 downto 12);

    -- twoToMiSiXip_uid221_vecTranslateTest(BITSELECT,220)@5
    twoToMiSiXip_uid221_vecTranslateTest_in <= xip1_11_uid214_vecTranslateTest_b;
    twoToMiSiXip_uid221_vecTranslateTest_b <= twoToMiSiXip_uid221_vecTranslateTest_in(37 downto 11);

    -- yip1E_12_uid226_vecTranslateTest(ADDSUB,225)@5
    yip1E_12_uid226_vecTranslateTest_s <= xMSB_uid217_vecTranslateTest_b;
    yip1E_12_uid226_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => yip1_11_uid215_vecTranslateTest_b(28)) & yip1_11_uid215_vecTranslateTest_b));
    yip1E_12_uid226_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid221_vecTranslateTest_b));
    yip1E_12_uid226_vecTranslateTest_combproc: PROCESS (yip1E_12_uid226_vecTranslateTest_a, yip1E_12_uid226_vecTranslateTest_b, yip1E_12_uid226_vecTranslateTest_s)
    BEGIN
        IF (yip1E_12_uid226_vecTranslateTest_s = "1") THEN
            yip1E_12_uid226_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid226_vecTranslateTest_a) + SIGNED(yip1E_12_uid226_vecTranslateTest_b));
        ELSE
            yip1E_12_uid226_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid226_vecTranslateTest_a) - SIGNED(yip1E_12_uid226_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_12_uid226_vecTranslateTest_q <= yip1E_12_uid226_vecTranslateTest_o(29 downto 0);

    -- yip1_12_uid232_vecTranslateTest(BITSELECT,231)@5
    yip1_12_uid232_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_12_uid226_vecTranslateTest_q(27 downto 0));
    yip1_12_uid232_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_12_uid232_vecTranslateTest_in(27 downto 0));

    -- redist17(DELAY,438)
    redist17 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_12_uid232_vecTranslateTest_b, xout => redist17_q, clk => clk, aclr => areset );

    -- yip1E_13_uid243_vecTranslateTest(ADDSUB,242)@6
    yip1E_13_uid243_vecTranslateTest_s <= xMSB_uid234_vecTranslateTest_b;
    yip1E_13_uid243_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => redist17_q(27)) & redist17_q));
    yip1E_13_uid243_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid238_vecTranslateTest_b));
    yip1E_13_uid243_vecTranslateTest_combproc: PROCESS (yip1E_13_uid243_vecTranslateTest_a, yip1E_13_uid243_vecTranslateTest_b, yip1E_13_uid243_vecTranslateTest_s)
    BEGIN
        IF (yip1E_13_uid243_vecTranslateTest_s = "1") THEN
            yip1E_13_uid243_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid243_vecTranslateTest_a) + SIGNED(yip1E_13_uid243_vecTranslateTest_b));
        ELSE
            yip1E_13_uid243_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid243_vecTranslateTest_a) - SIGNED(yip1E_13_uid243_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_13_uid243_vecTranslateTest_q <= yip1E_13_uid243_vecTranslateTest_o(28 downto 0);

    -- yip1_13_uid249_vecTranslateTest(BITSELECT,248)@6
    yip1_13_uid249_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_13_uid243_vecTranslateTest_q(26 downto 0));
    yip1_13_uid249_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_13_uid249_vecTranslateTest_in(26 downto 0));

    -- xMSB_uid251_vecTranslateTest(BITSELECT,250)@6
    xMSB_uid251_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_13_uid249_vecTranslateTest_b);
    xMSB_uid251_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid251_vecTranslateTest_in(26 downto 26));

    -- invSignOfSelectionSignal_uid258_vecTranslateTest(LOGICAL,257)@6
    invSignOfSelectionSignal_uid258_vecTranslateTest_a <= xMSB_uid251_vecTranslateTest_b;
    invSignOfSelectionSignal_uid258_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid258_vecTranslateTest_a);

    -- twoToMiSiYip_uid256_vecTranslateTest(BITSELECT,255)@6
    twoToMiSiYip_uid256_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_13_uid249_vecTranslateTest_b);
    twoToMiSiYip_uid256_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid256_vecTranslateTest_in(26 downto 13));

    -- invSignOfSelectionSignal_uid241_vecTranslateTest(LOGICAL,240)@6
    invSignOfSelectionSignal_uid241_vecTranslateTest_a <= xMSB_uid234_vecTranslateTest_b;
    invSignOfSelectionSignal_uid241_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid241_vecTranslateTest_a);

    -- twoToMiSiYip_uid239_vecTranslateTest(BITSELECT,238)@6
    twoToMiSiYip_uid239_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist17_q);
    twoToMiSiYip_uid239_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid239_vecTranslateTest_in(27 downto 12));

    -- xip1E_13_uid242_vecTranslateTest(ADDSUB,241)@6
    xip1E_13_uid242_vecTranslateTest_s <= invSignOfSelectionSignal_uid241_vecTranslateTest_q;
    xip1E_13_uid242_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist18_q));
    xip1E_13_uid242_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 16 => twoToMiSiYip_uid239_vecTranslateTest_b(15)) & twoToMiSiYip_uid239_vecTranslateTest_b));
    xip1E_13_uid242_vecTranslateTest_combproc: PROCESS (xip1E_13_uid242_vecTranslateTest_a, xip1E_13_uid242_vecTranslateTest_b, xip1E_13_uid242_vecTranslateTest_s)
    BEGIN
        IF (xip1E_13_uid242_vecTranslateTest_s = "1") THEN
            xip1E_13_uid242_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid242_vecTranslateTest_a) + SIGNED(xip1E_13_uid242_vecTranslateTest_b));
        ELSE
            xip1E_13_uid242_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid242_vecTranslateTest_a) - SIGNED(xip1E_13_uid242_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_13_uid242_vecTranslateTest_q <= xip1E_13_uid242_vecTranslateTest_o(39 downto 0);

    -- xip1_13_uid248_vecTranslateTest(BITSELECT,247)@6
    xip1_13_uid248_vecTranslateTest_in <= xip1E_13_uid242_vecTranslateTest_q(37 downto 0);
    xip1_13_uid248_vecTranslateTest_b <= xip1_13_uid248_vecTranslateTest_in(37 downto 0);

    -- xip1E_14_uid259_vecTranslateTest(ADDSUB,258)@6
    xip1E_14_uid259_vecTranslateTest_s <= invSignOfSelectionSignal_uid258_vecTranslateTest_q;
    xip1E_14_uid259_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_13_uid248_vecTranslateTest_b));
    xip1E_14_uid259_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 14 => twoToMiSiYip_uid256_vecTranslateTest_b(13)) & twoToMiSiYip_uid256_vecTranslateTest_b));
    xip1E_14_uid259_vecTranslateTest_combproc: PROCESS (xip1E_14_uid259_vecTranslateTest_a, xip1E_14_uid259_vecTranslateTest_b, xip1E_14_uid259_vecTranslateTest_s)
    BEGIN
        IF (xip1E_14_uid259_vecTranslateTest_s = "1") THEN
            xip1E_14_uid259_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid259_vecTranslateTest_a) + SIGNED(xip1E_14_uid259_vecTranslateTest_b));
        ELSE
            xip1E_14_uid259_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid259_vecTranslateTest_a) - SIGNED(xip1E_14_uid259_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_14_uid259_vecTranslateTest_q <= xip1E_14_uid259_vecTranslateTest_o(39 downto 0);

    -- xip1_14_uid265_vecTranslateTest(BITSELECT,264)@6
    xip1_14_uid265_vecTranslateTest_in <= xip1E_14_uid259_vecTranslateTest_q(37 downto 0);
    xip1_14_uid265_vecTranslateTest_b <= xip1_14_uid265_vecTranslateTest_in(37 downto 0);

    -- redist14(DELAY,435)
    redist14 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_14_uid265_vecTranslateTest_b, xout => redist14_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid272_vecTranslateTest(BITSELECT,271)@7
    twoToMiSiXip_uid272_vecTranslateTest_in <= redist14_q;
    twoToMiSiXip_uid272_vecTranslateTest_b <= twoToMiSiXip_uid272_vecTranslateTest_in(37 downto 14);

    -- twoToMiSiXip_uid255_vecTranslateTest(BITSELECT,254)@6
    twoToMiSiXip_uid255_vecTranslateTest_in <= xip1_13_uid248_vecTranslateTest_b;
    twoToMiSiXip_uid255_vecTranslateTest_b <= twoToMiSiXip_uid255_vecTranslateTest_in(37 downto 13);

    -- yip1E_14_uid260_vecTranslateTest(ADDSUB,259)@6
    yip1E_14_uid260_vecTranslateTest_s <= xMSB_uid251_vecTranslateTest_b;
    yip1E_14_uid260_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => yip1_13_uid249_vecTranslateTest_b(26)) & yip1_13_uid249_vecTranslateTest_b));
    yip1E_14_uid260_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid255_vecTranslateTest_b));
    yip1E_14_uid260_vecTranslateTest_combproc: PROCESS (yip1E_14_uid260_vecTranslateTest_a, yip1E_14_uid260_vecTranslateTest_b, yip1E_14_uid260_vecTranslateTest_s)
    BEGIN
        IF (yip1E_14_uid260_vecTranslateTest_s = "1") THEN
            yip1E_14_uid260_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid260_vecTranslateTest_a) + SIGNED(yip1E_14_uid260_vecTranslateTest_b));
        ELSE
            yip1E_14_uid260_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid260_vecTranslateTest_a) - SIGNED(yip1E_14_uid260_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_14_uid260_vecTranslateTest_q <= yip1E_14_uid260_vecTranslateTest_o(27 downto 0);

    -- yip1_14_uid266_vecTranslateTest(BITSELECT,265)@6
    yip1_14_uid266_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_14_uid260_vecTranslateTest_q(25 downto 0));
    yip1_14_uid266_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_14_uid266_vecTranslateTest_in(25 downto 0));

    -- redist13(DELAY,434)
    redist13 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_14_uid266_vecTranslateTest_b, xout => redist13_q, clk => clk, aclr => areset );

    -- yip1E_15_uid277_vecTranslateTest(ADDSUB,276)@7
    yip1E_15_uid277_vecTranslateTest_s <= xMSB_uid268_vecTranslateTest_b;
    yip1E_15_uid277_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => redist13_q(25)) & redist13_q));
    yip1E_15_uid277_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid272_vecTranslateTest_b));
    yip1E_15_uid277_vecTranslateTest_combproc: PROCESS (yip1E_15_uid277_vecTranslateTest_a, yip1E_15_uid277_vecTranslateTest_b, yip1E_15_uid277_vecTranslateTest_s)
    BEGIN
        IF (yip1E_15_uid277_vecTranslateTest_s = "1") THEN
            yip1E_15_uid277_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid277_vecTranslateTest_a) + SIGNED(yip1E_15_uid277_vecTranslateTest_b));
        ELSE
            yip1E_15_uid277_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid277_vecTranslateTest_a) - SIGNED(yip1E_15_uid277_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_15_uid277_vecTranslateTest_q <= yip1E_15_uid277_vecTranslateTest_o(26 downto 0);

    -- yip1_15_uid283_vecTranslateTest(BITSELECT,282)@7
    yip1_15_uid283_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_15_uid277_vecTranslateTest_q(24 downto 0));
    yip1_15_uid283_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_15_uid283_vecTranslateTest_in(24 downto 0));

    -- xMSB_uid285_vecTranslateTest(BITSELECT,284)@7
    xMSB_uid285_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_15_uid283_vecTranslateTest_b);
    xMSB_uid285_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid285_vecTranslateTest_in(24 downto 24));

    -- invSignOfSelectionSignal_uid292_vecTranslateTest(LOGICAL,291)@7
    invSignOfSelectionSignal_uid292_vecTranslateTest_a <= xMSB_uid285_vecTranslateTest_b;
    invSignOfSelectionSignal_uid292_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid292_vecTranslateTest_a);

    -- twoToMiSiYip_uid290_vecTranslateTest(BITSELECT,289)@7
    twoToMiSiYip_uid290_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_15_uid283_vecTranslateTest_b);
    twoToMiSiYip_uid290_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid290_vecTranslateTest_in(24 downto 15));

    -- invSignOfSelectionSignal_uid275_vecTranslateTest(LOGICAL,274)@7
    invSignOfSelectionSignal_uid275_vecTranslateTest_a <= xMSB_uid268_vecTranslateTest_b;
    invSignOfSelectionSignal_uid275_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid275_vecTranslateTest_a);

    -- twoToMiSiYip_uid273_vecTranslateTest(BITSELECT,272)@7
    twoToMiSiYip_uid273_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist13_q);
    twoToMiSiYip_uid273_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid273_vecTranslateTest_in(25 downto 14));

    -- xip1E_15_uid276_vecTranslateTest(ADDSUB,275)@7
    xip1E_15_uid276_vecTranslateTest_s <= invSignOfSelectionSignal_uid275_vecTranslateTest_q;
    xip1E_15_uid276_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist14_q));
    xip1E_15_uid276_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 12 => twoToMiSiYip_uid273_vecTranslateTest_b(11)) & twoToMiSiYip_uid273_vecTranslateTest_b));
    xip1E_15_uid276_vecTranslateTest_combproc: PROCESS (xip1E_15_uid276_vecTranslateTest_a, xip1E_15_uid276_vecTranslateTest_b, xip1E_15_uid276_vecTranslateTest_s)
    BEGIN
        IF (xip1E_15_uid276_vecTranslateTest_s = "1") THEN
            xip1E_15_uid276_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid276_vecTranslateTest_a) + SIGNED(xip1E_15_uid276_vecTranslateTest_b));
        ELSE
            xip1E_15_uid276_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid276_vecTranslateTest_a) - SIGNED(xip1E_15_uid276_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_15_uid276_vecTranslateTest_q <= xip1E_15_uid276_vecTranslateTest_o(39 downto 0);

    -- xip1_15_uid282_vecTranslateTest(BITSELECT,281)@7
    xip1_15_uid282_vecTranslateTest_in <= xip1E_15_uid276_vecTranslateTest_q(37 downto 0);
    xip1_15_uid282_vecTranslateTest_b <= xip1_15_uid282_vecTranslateTest_in(37 downto 0);

    -- xip1E_16_uid293_vecTranslateTest(ADDSUB,292)@7
    xip1E_16_uid293_vecTranslateTest_s <= invSignOfSelectionSignal_uid292_vecTranslateTest_q;
    xip1E_16_uid293_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_15_uid282_vecTranslateTest_b));
    xip1E_16_uid293_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 10 => twoToMiSiYip_uid290_vecTranslateTest_b(9)) & twoToMiSiYip_uid290_vecTranslateTest_b));
    xip1E_16_uid293_vecTranslateTest_combproc: PROCESS (xip1E_16_uid293_vecTranslateTest_a, xip1E_16_uid293_vecTranslateTest_b, xip1E_16_uid293_vecTranslateTest_s)
    BEGIN
        IF (xip1E_16_uid293_vecTranslateTest_s = "1") THEN
            xip1E_16_uid293_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid293_vecTranslateTest_a) + SIGNED(xip1E_16_uid293_vecTranslateTest_b));
        ELSE
            xip1E_16_uid293_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid293_vecTranslateTest_a) - SIGNED(xip1E_16_uid293_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_16_uid293_vecTranslateTest_q <= xip1E_16_uid293_vecTranslateTest_o(39 downto 0);

    -- xip1_16_uid299_vecTranslateTest(BITSELECT,298)@7
    xip1_16_uid299_vecTranslateTest_in <= xip1E_16_uid293_vecTranslateTest_q(37 downto 0);
    xip1_16_uid299_vecTranslateTest_b <= xip1_16_uid299_vecTranslateTest_in(37 downto 0);

    -- redist10(DELAY,431)
    redist10 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_16_uid299_vecTranslateTest_b, xout => redist10_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid306_vecTranslateTest(BITSELECT,305)@8
    twoToMiSiXip_uid306_vecTranslateTest_in <= redist10_q;
    twoToMiSiXip_uid306_vecTranslateTest_b <= twoToMiSiXip_uid306_vecTranslateTest_in(37 downto 16);

    -- twoToMiSiXip_uid289_vecTranslateTest(BITSELECT,288)@7
    twoToMiSiXip_uid289_vecTranslateTest_in <= xip1_15_uid282_vecTranslateTest_b;
    twoToMiSiXip_uid289_vecTranslateTest_b <= twoToMiSiXip_uid289_vecTranslateTest_in(37 downto 15);

    -- yip1E_16_uid294_vecTranslateTest(ADDSUB,293)@7
    yip1E_16_uid294_vecTranslateTest_s <= xMSB_uid285_vecTranslateTest_b;
    yip1E_16_uid294_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => yip1_15_uid283_vecTranslateTest_b(24)) & yip1_15_uid283_vecTranslateTest_b));
    yip1E_16_uid294_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid289_vecTranslateTest_b));
    yip1E_16_uid294_vecTranslateTest_combproc: PROCESS (yip1E_16_uid294_vecTranslateTest_a, yip1E_16_uid294_vecTranslateTest_b, yip1E_16_uid294_vecTranslateTest_s)
    BEGIN
        IF (yip1E_16_uid294_vecTranslateTest_s = "1") THEN
            yip1E_16_uid294_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid294_vecTranslateTest_a) + SIGNED(yip1E_16_uid294_vecTranslateTest_b));
        ELSE
            yip1E_16_uid294_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid294_vecTranslateTest_a) - SIGNED(yip1E_16_uid294_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_16_uid294_vecTranslateTest_q <= yip1E_16_uid294_vecTranslateTest_o(25 downto 0);

    -- yip1_16_uid300_vecTranslateTest(BITSELECT,299)@7
    yip1_16_uid300_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_16_uid294_vecTranslateTest_q(23 downto 0));
    yip1_16_uid300_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_16_uid300_vecTranslateTest_in(23 downto 0));

    -- redist9(DELAY,430)
    redist9 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_16_uid300_vecTranslateTest_b, xout => redist9_q, clk => clk, aclr => areset );

    -- yip1E_17_uid311_vecTranslateTest(ADDSUB,310)@8
    yip1E_17_uid311_vecTranslateTest_s <= xMSB_uid302_vecTranslateTest_b;
    yip1E_17_uid311_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => redist9_q(23)) & redist9_q));
    yip1E_17_uid311_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid306_vecTranslateTest_b));
    yip1E_17_uid311_vecTranslateTest_combproc: PROCESS (yip1E_17_uid311_vecTranslateTest_a, yip1E_17_uid311_vecTranslateTest_b, yip1E_17_uid311_vecTranslateTest_s)
    BEGIN
        IF (yip1E_17_uid311_vecTranslateTest_s = "1") THEN
            yip1E_17_uid311_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid311_vecTranslateTest_a) + SIGNED(yip1E_17_uid311_vecTranslateTest_b));
        ELSE
            yip1E_17_uid311_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid311_vecTranslateTest_a) - SIGNED(yip1E_17_uid311_vecTranslateTest_b));
        END IF;
    END PROCESS;
    yip1E_17_uid311_vecTranslateTest_q <= yip1E_17_uid311_vecTranslateTest_o(24 downto 0);

    -- yip1_17_uid317_vecTranslateTest(BITSELECT,316)@8
    yip1_17_uid317_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1E_17_uid311_vecTranslateTest_q(22 downto 0));
    yip1_17_uid317_vecTranslateTest_b <= STD_LOGIC_VECTOR(yip1_17_uid317_vecTranslateTest_in(22 downto 0));

    -- xMSB_uid319_vecTranslateTest(BITSELECT,318)@8
    xMSB_uid319_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_17_uid317_vecTranslateTest_b);
    xMSB_uid319_vecTranslateTest_b <= STD_LOGIC_VECTOR(xMSB_uid319_vecTranslateTest_in(22 downto 22));

    -- invSignOfSelectionSignal_uid326_vecTranslateTest(LOGICAL,325)@8
    invSignOfSelectionSignal_uid326_vecTranslateTest_a <= xMSB_uid319_vecTranslateTest_b;
    invSignOfSelectionSignal_uid326_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid326_vecTranslateTest_a);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- twoToMiSiYip_uid324_vecTranslateTest(BITSELECT,323)@8
    twoToMiSiYip_uid324_vecTranslateTest_in <= STD_LOGIC_VECTOR(yip1_17_uid317_vecTranslateTest_b);
    twoToMiSiYip_uid324_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid324_vecTranslateTest_in(22 downto 17));

    -- invSignOfSelectionSignal_uid309_vecTranslateTest(LOGICAL,308)@8
    invSignOfSelectionSignal_uid309_vecTranslateTest_a <= xMSB_uid302_vecTranslateTest_b;
    invSignOfSelectionSignal_uid309_vecTranslateTest_q <= not (invSignOfSelectionSignal_uid309_vecTranslateTest_a);

    -- twoToMiSiYip_uid307_vecTranslateTest(BITSELECT,306)@8
    twoToMiSiYip_uid307_vecTranslateTest_in <= STD_LOGIC_VECTOR(redist9_q);
    twoToMiSiYip_uid307_vecTranslateTest_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid307_vecTranslateTest_in(23 downto 16));

    -- xip1E_17_uid310_vecTranslateTest(ADDSUB,309)@8
    xip1E_17_uid310_vecTranslateTest_s <= invSignOfSelectionSignal_uid309_vecTranslateTest_q;
    xip1E_17_uid310_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist10_q));
    xip1E_17_uid310_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 8 => twoToMiSiYip_uid307_vecTranslateTest_b(7)) & twoToMiSiYip_uid307_vecTranslateTest_b));
    xip1E_17_uid310_vecTranslateTest_combproc: PROCESS (xip1E_17_uid310_vecTranslateTest_a, xip1E_17_uid310_vecTranslateTest_b, xip1E_17_uid310_vecTranslateTest_s)
    BEGIN
        IF (xip1E_17_uid310_vecTranslateTest_s = "1") THEN
            xip1E_17_uid310_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_17_uid310_vecTranslateTest_a) + SIGNED(xip1E_17_uid310_vecTranslateTest_b));
        ELSE
            xip1E_17_uid310_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_17_uid310_vecTranslateTest_a) - SIGNED(xip1E_17_uid310_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_17_uid310_vecTranslateTest_q <= xip1E_17_uid310_vecTranslateTest_o(39 downto 0);

    -- xip1_17_uid316_vecTranslateTest(BITSELECT,315)@8
    xip1_17_uid316_vecTranslateTest_in <= xip1E_17_uid310_vecTranslateTest_q(37 downto 0);
    xip1_17_uid316_vecTranslateTest_b <= xip1_17_uid316_vecTranslateTest_in(37 downto 0);

    -- xip1E_18_uid327_vecTranslateTest(ADDSUB,326)@8
    xip1E_18_uid327_vecTranslateTest_s <= invSignOfSelectionSignal_uid326_vecTranslateTest_q;
    xip1E_18_uid327_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_17_uid316_vecTranslateTest_b));
    xip1E_18_uid327_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 6 => twoToMiSiYip_uid324_vecTranslateTest_b(5)) & twoToMiSiYip_uid324_vecTranslateTest_b));
    xip1E_18_uid327_vecTranslateTest_combproc: PROCESS (xip1E_18_uid327_vecTranslateTest_a, xip1E_18_uid327_vecTranslateTest_b, xip1E_18_uid327_vecTranslateTest_s)
    BEGIN
        IF (xip1E_18_uid327_vecTranslateTest_s = "1") THEN
            xip1E_18_uid327_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_18_uid327_vecTranslateTest_a) + SIGNED(xip1E_18_uid327_vecTranslateTest_b));
        ELSE
            xip1E_18_uid327_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_18_uid327_vecTranslateTest_a) - SIGNED(xip1E_18_uid327_vecTranslateTest_b));
        END IF;
    END PROCESS;
    xip1E_18_uid327_vecTranslateTest_q <= xip1E_18_uid327_vecTranslateTest_o(39 downto 0);

    -- xip1_18_uid333_vecTranslateTest(BITSELECT,332)@8
    xip1_18_uid333_vecTranslateTest_in <= xip1E_18_uid327_vecTranslateTest_q(37 downto 0);
    xip1_18_uid333_vecTranslateTest_b <= xip1_18_uid333_vecTranslateTest_in(37 downto 0);

    -- outMagPreCstMult_uid365_vecTranslateTest(BITSELECT,364)@8
    outMagPreCstMult_uid365_vecTranslateTest_in <= xip1_18_uid333_vecTranslateTest_b;
    outMagPreCstMult_uid365_vecTranslateTest_b <= outMagPreCstMult_uid365_vecTranslateTest_in(37 downto 17);

    -- xv0_uid373_cstMultOutMag_uid366_vecTranslateTest(BITSELECT,372)@8
    xv0_uid373_cstMultOutMag_uid366_vecTranslateTest_in <= outMagPreCstMult_uid365_vecTranslateTest_b(5 downto 0);
    xv0_uid373_cstMultOutMag_uid366_vecTranslateTest_b <= xv0_uid373_cstMultOutMag_uid366_vecTranslateTest_in(5 downto 0);

    -- redist4(DELAY,425)
    redist4 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv0_uid373_cstMultOutMag_uid366_vecTranslateTest_b, xout => redist4_q, clk => clk, aclr => areset );

    -- p0_uid380_cstMultOutMag_uid366_vecTranslateTest(LOOKUP,379)@9
    p0_uid380_cstMultOutMag_uid366_vecTranslateTest_combproc: PROCESS (redist4_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist4_q) IS
            WHEN "000000" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0000000000000000000000000000";
            WHEN "000001" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0000001001101101110100111100";
            WHEN "000010" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0000010011011011101001111000";
            WHEN "000011" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0000011101001001011110110100";
            WHEN "000100" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0000100110110111010011110000";
            WHEN "000101" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0000110000100101001000101100";
            WHEN "000110" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0000111010010010111101101000";
            WHEN "000111" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0001000100000000110010100100";
            WHEN "001000" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0001001101101110100111100000";
            WHEN "001001" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0001010111011100011100011100";
            WHEN "001010" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0001100001001010010001011000";
            WHEN "001011" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0001101010111000000110010100";
            WHEN "001100" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0001110100100101111011010000";
            WHEN "001101" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0001111110010011110000001100";
            WHEN "001110" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0010001000000001100101001000";
            WHEN "001111" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0010010001101111011010000100";
            WHEN "010000" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0010011011011101001111000000";
            WHEN "010001" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0010100101001011000011111100";
            WHEN "010010" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0010101110111000111000111000";
            WHEN "010011" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0010111000100110101101110100";
            WHEN "010100" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0011000010010100100010110000";
            WHEN "010101" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0011001100000010010111101100";
            WHEN "010110" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0011010101110000001100101000";
            WHEN "010111" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0011011111011110000001100100";
            WHEN "011000" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0011101001001011110110100000";
            WHEN "011001" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0011110010111001101011011100";
            WHEN "011010" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0011111100100111100000011000";
            WHEN "011011" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0100000110010101010101010100";
            WHEN "011100" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0100010000000011001010010000";
            WHEN "011101" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0100011001110000111111001100";
            WHEN "011110" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0100100011011110110100001000";
            WHEN "011111" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0100101101001100101001000100";
            WHEN "100000" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0100110110111010011110000000";
            WHEN "100001" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0101000000101000010010111100";
            WHEN "100010" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0101001010010110000111111000";
            WHEN "100011" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0101010100000011111100110100";
            WHEN "100100" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0101011101110001110001110000";
            WHEN "100101" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0101100111011111100110101100";
            WHEN "100110" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0101110001001101011011101000";
            WHEN "100111" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0101111010111011010000100100";
            WHEN "101000" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0110000100101001000101100000";
            WHEN "101001" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0110001110010110111010011100";
            WHEN "101010" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0110011000000100101111011000";
            WHEN "101011" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0110100001110010100100010100";
            WHEN "101100" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0110101011100000011001010000";
            WHEN "101101" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0110110101001110001110001100";
            WHEN "101110" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0110111110111100000011001000";
            WHEN "101111" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0111001000101001111000000100";
            WHEN "110000" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0111010010010111101101000000";
            WHEN "110001" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0111011100000101100001111100";
            WHEN "110010" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0111100101110011010110111000";
            WHEN "110011" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0111101111100001001011110100";
            WHEN "110100" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "0111111001001111000000110000";
            WHEN "110101" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1000000010111100110101101100";
            WHEN "110110" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1000001100101010101010101000";
            WHEN "110111" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1000010110011000011111100100";
            WHEN "111000" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1000100000000110010100100000";
            WHEN "111001" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1000101001110100001001011100";
            WHEN "111010" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1000110011100001111110011000";
            WHEN "111011" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1000111101001111110011010100";
            WHEN "111100" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1001000110111101101000010000";
            WHEN "111101" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1001010000101011011101001100";
            WHEN "111110" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1001011010011001010010001000";
            WHEN "111111" => p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= "1001100100000111000111000100";
            WHEN OTHERS => -- unreachable
                           p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- xv1_uid374_cstMultOutMag_uid366_vecTranslateTest(BITSELECT,373)@8
    xv1_uid374_cstMultOutMag_uid366_vecTranslateTest_in <= outMagPreCstMult_uid365_vecTranslateTest_b(11 downto 0);
    xv1_uid374_cstMultOutMag_uid366_vecTranslateTest_b <= xv1_uid374_cstMultOutMag_uid366_vecTranslateTest_in(11 downto 6);

    -- redist3(DELAY,424)
    redist3 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv1_uid374_cstMultOutMag_uid366_vecTranslateTest_b, xout => redist3_q, clk => clk, aclr => areset );

    -- p1_uid379_cstMultOutMag_uid366_vecTranslateTest(LOOKUP,378)@9
    p1_uid379_cstMultOutMag_uid366_vecTranslateTest_combproc: PROCESS (redist3_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist3_q) IS
            WHEN "000000" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0000000000000000000000000000000000";
            WHEN "000001" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0000001001101101110100111100000000";
            WHEN "000010" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0000010011011011101001111000000000";
            WHEN "000011" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0000011101001001011110110100000000";
            WHEN "000100" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0000100110110111010011110000000000";
            WHEN "000101" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0000110000100101001000101100000000";
            WHEN "000110" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0000111010010010111101101000000000";
            WHEN "000111" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0001000100000000110010100100000000";
            WHEN "001000" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0001001101101110100111100000000000";
            WHEN "001001" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0001010111011100011100011100000000";
            WHEN "001010" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0001100001001010010001011000000000";
            WHEN "001011" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0001101010111000000110010100000000";
            WHEN "001100" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0001110100100101111011010000000000";
            WHEN "001101" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0001111110010011110000001100000000";
            WHEN "001110" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0010001000000001100101001000000000";
            WHEN "001111" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0010010001101111011010000100000000";
            WHEN "010000" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0010011011011101001111000000000000";
            WHEN "010001" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0010100101001011000011111100000000";
            WHEN "010010" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0010101110111000111000111000000000";
            WHEN "010011" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0010111000100110101101110100000000";
            WHEN "010100" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0011000010010100100010110000000000";
            WHEN "010101" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0011001100000010010111101100000000";
            WHEN "010110" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0011010101110000001100101000000000";
            WHEN "010111" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0011011111011110000001100100000000";
            WHEN "011000" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0011101001001011110110100000000000";
            WHEN "011001" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0011110010111001101011011100000000";
            WHEN "011010" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0011111100100111100000011000000000";
            WHEN "011011" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0100000110010101010101010100000000";
            WHEN "011100" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0100010000000011001010010000000000";
            WHEN "011101" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0100011001110000111111001100000000";
            WHEN "011110" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0100100011011110110100001000000000";
            WHEN "011111" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0100101101001100101001000100000000";
            WHEN "100000" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0100110110111010011110000000000000";
            WHEN "100001" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0101000000101000010010111100000000";
            WHEN "100010" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0101001010010110000111111000000000";
            WHEN "100011" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0101010100000011111100110100000000";
            WHEN "100100" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0101011101110001110001110000000000";
            WHEN "100101" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0101100111011111100110101100000000";
            WHEN "100110" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0101110001001101011011101000000000";
            WHEN "100111" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0101111010111011010000100100000000";
            WHEN "101000" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0110000100101001000101100000000000";
            WHEN "101001" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0110001110010110111010011100000000";
            WHEN "101010" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0110011000000100101111011000000000";
            WHEN "101011" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0110100001110010100100010100000000";
            WHEN "101100" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0110101011100000011001010000000000";
            WHEN "101101" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0110110101001110001110001100000000";
            WHEN "101110" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0110111110111100000011001000000000";
            WHEN "101111" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0111001000101001111000000100000000";
            WHEN "110000" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0111010010010111101101000000000000";
            WHEN "110001" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0111011100000101100001111100000000";
            WHEN "110010" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0111100101110011010110111000000000";
            WHEN "110011" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0111101111100001001011110100000000";
            WHEN "110100" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "0111111001001111000000110000000000";
            WHEN "110101" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1000000010111100110101101100000000";
            WHEN "110110" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1000001100101010101010101000000000";
            WHEN "110111" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1000010110011000011111100100000000";
            WHEN "111000" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1000100000000110010100100000000000";
            WHEN "111001" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1000101001110100001001011100000000";
            WHEN "111010" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1000110011100001111110011000000000";
            WHEN "111011" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1000111101001111110011010100000000";
            WHEN "111100" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1001000110111101101000010000000000";
            WHEN "111101" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1001010000101011011101001100000000";
            WHEN "111110" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1001011010011001010010001000000000";
            WHEN "111111" => p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= "1001100100000111000111000100000000";
            WHEN OTHERS => -- unreachable
                           p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest(ADD,384)@9 + 1
    lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & p1_uid379_cstMultOutMag_uid366_vecTranslateTest_q);
    lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_b <= STD_LOGIC_VECTOR("0000000" & p0_uid380_cstMultOutMag_uid366_vecTranslateTest_q);
    lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_a) + UNSIGNED(lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_b));
        END IF;
    END PROCESS;
    lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_q <= lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_o(34 downto 0);

    -- xv2_uid375_cstMultOutMag_uid366_vecTranslateTest(BITSELECT,374)@8
    xv2_uid375_cstMultOutMag_uid366_vecTranslateTest_in <= outMagPreCstMult_uid365_vecTranslateTest_b(17 downto 0);
    xv2_uid375_cstMultOutMag_uid366_vecTranslateTest_b <= xv2_uid375_cstMultOutMag_uid366_vecTranslateTest_in(17 downto 12);

    -- redist2(DELAY,423)
    redist2 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv2_uid375_cstMultOutMag_uid366_vecTranslateTest_b, xout => redist2_q, clk => clk, aclr => areset );

    -- p2_uid378_cstMultOutMag_uid366_vecTranslateTest(LOOKUP,377)@9
    p2_uid378_cstMultOutMag_uid366_vecTranslateTest_combproc: PROCESS (redist2_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist2_q) IS
            WHEN "000000" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0000000000000000000000000000000000000000";
            WHEN "000001" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0000001001101101110100111100000000000000";
            WHEN "000010" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0000010011011011101001111000000000000000";
            WHEN "000011" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0000011101001001011110110100000000000000";
            WHEN "000100" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0000100110110111010011110000000000000000";
            WHEN "000101" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0000110000100101001000101100000000000000";
            WHEN "000110" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0000111010010010111101101000000000000000";
            WHEN "000111" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0001000100000000110010100100000000000000";
            WHEN "001000" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0001001101101110100111100000000000000000";
            WHEN "001001" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0001010111011100011100011100000000000000";
            WHEN "001010" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0001100001001010010001011000000000000000";
            WHEN "001011" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0001101010111000000110010100000000000000";
            WHEN "001100" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0001110100100101111011010000000000000000";
            WHEN "001101" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0001111110010011110000001100000000000000";
            WHEN "001110" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0010001000000001100101001000000000000000";
            WHEN "001111" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0010010001101111011010000100000000000000";
            WHEN "010000" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0010011011011101001111000000000000000000";
            WHEN "010001" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0010100101001011000011111100000000000000";
            WHEN "010010" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0010101110111000111000111000000000000000";
            WHEN "010011" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0010111000100110101101110100000000000000";
            WHEN "010100" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0011000010010100100010110000000000000000";
            WHEN "010101" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0011001100000010010111101100000000000000";
            WHEN "010110" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0011010101110000001100101000000000000000";
            WHEN "010111" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0011011111011110000001100100000000000000";
            WHEN "011000" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0011101001001011110110100000000000000000";
            WHEN "011001" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0011110010111001101011011100000000000000";
            WHEN "011010" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0011111100100111100000011000000000000000";
            WHEN "011011" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0100000110010101010101010100000000000000";
            WHEN "011100" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0100010000000011001010010000000000000000";
            WHEN "011101" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0100011001110000111111001100000000000000";
            WHEN "011110" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0100100011011110110100001000000000000000";
            WHEN "011111" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0100101101001100101001000100000000000000";
            WHEN "100000" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0100110110111010011110000000000000000000";
            WHEN "100001" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0101000000101000010010111100000000000000";
            WHEN "100010" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0101001010010110000111111000000000000000";
            WHEN "100011" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0101010100000011111100110100000000000000";
            WHEN "100100" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0101011101110001110001110000000000000000";
            WHEN "100101" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0101100111011111100110101100000000000000";
            WHEN "100110" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0101110001001101011011101000000000000000";
            WHEN "100111" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0101111010111011010000100100000000000000";
            WHEN "101000" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0110000100101001000101100000000000000000";
            WHEN "101001" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0110001110010110111010011100000000000000";
            WHEN "101010" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0110011000000100101111011000000000000000";
            WHEN "101011" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0110100001110010100100010100000000000000";
            WHEN "101100" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0110101011100000011001010000000000000000";
            WHEN "101101" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0110110101001110001110001100000000000000";
            WHEN "101110" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0110111110111100000011001000000000000000";
            WHEN "101111" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0111001000101001111000000100000000000000";
            WHEN "110000" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0111010010010111101101000000000000000000";
            WHEN "110001" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0111011100000101100001111100000000000000";
            WHEN "110010" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0111100101110011010110111000000000000000";
            WHEN "110011" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0111101111100001001011110100000000000000";
            WHEN "110100" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "0111111001001111000000110000000000000000";
            WHEN "110101" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1000000010111100110101101100000000000000";
            WHEN "110110" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1000001100101010101010101000000000000000";
            WHEN "110111" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1000010110011000011111100100000000000000";
            WHEN "111000" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1000100000000110010100100000000000000000";
            WHEN "111001" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1000101001110100001001011100000000000000";
            WHEN "111010" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1000110011100001111110011000000000000000";
            WHEN "111011" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1000111101001111110011010100000000000000";
            WHEN "111100" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1001000110111101101000010000000000000000";
            WHEN "111101" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1001010000101011011101001100000000000000";
            WHEN "111110" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1001011010011001010010001000000000000000";
            WHEN "111111" => p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= "1001100100000111000111000100000000000000";
            WHEN OTHERS => -- unreachable
                           p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- highBBits_uid382_cstMultOutMag_uid366_vecTranslateTest(BITSELECT,381)@9
    highBBits_uid382_cstMultOutMag_uid366_vecTranslateTest_in <= p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q;
    highBBits_uid382_cstMultOutMag_uid366_vecTranslateTest_b <= highBBits_uid382_cstMultOutMag_uid366_vecTranslateTest_in(39 downto 1);

    -- xv3_uid376_cstMultOutMag_uid366_vecTranslateTest(BITSELECT,375)@8
    xv3_uid376_cstMultOutMag_uid366_vecTranslateTest_in <= outMagPreCstMult_uid365_vecTranslateTest_b;
    xv3_uid376_cstMultOutMag_uid366_vecTranslateTest_b <= xv3_uid376_cstMultOutMag_uid366_vecTranslateTest_in(20 downto 18);

    -- redist1(DELAY,422)
    redist1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv3_uid376_cstMultOutMag_uid366_vecTranslateTest_b, xout => redist1_q, clk => clk, aclr => areset );

    -- p3_uid377_cstMultOutMag_uid366_vecTranslateTest(LOOKUP,376)@9
    p3_uid377_cstMultOutMag_uid366_vecTranslateTest_combproc: PROCESS (redist1_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist1_q) IS
            WHEN "000" => p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q <= "0000000000000000000001000000000000000000000";
            WHEN "001" => p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q <= "0000100110110111010100110000000000000000000";
            WHEN "010" => p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q <= "0001001101101110101000100000000000000000000";
            WHEN "011" => p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q <= "0001110100100101111100010000000000000000000";
            WHEN "100" => p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q <= "0010011011011101010000000000000000000000000";
            WHEN "101" => p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q <= "0011000010010100100011110000000000000000000";
            WHEN "110" => p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q <= "0011101001001011110111100000000000000000000";
            WHEN "111" => p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q <= "0100010000000011001011010000000000000000000";
            WHEN OTHERS => -- unreachable
                           p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest(ADD,382)@9
    lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & p3_uid377_cstMultOutMag_uid366_vecTranslateTest_q);
    lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_b <= STD_LOGIC_VECTOR("00000" & highBBits_uid382_cstMultOutMag_uid366_vecTranslateTest_b);
    lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_a) + UNSIGNED(lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_b));
    lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_q <= lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_o(43 downto 0);

    -- lowRangeB_uid381_cstMultOutMag_uid366_vecTranslateTest(BITSELECT,380)@9
    lowRangeB_uid381_cstMultOutMag_uid366_vecTranslateTest_in <= p2_uid378_cstMultOutMag_uid366_vecTranslateTest_q(0 downto 0);
    lowRangeB_uid381_cstMultOutMag_uid366_vecTranslateTest_b <= lowRangeB_uid381_cstMultOutMag_uid366_vecTranslateTest_in(0 downto 0);

    -- lev1_a0_uid384_cstMultOutMag_uid366_vecTranslateTest(BITJOIN,383)@9
    lev1_a0_uid384_cstMultOutMag_uid366_vecTranslateTest_q <= lev1_a0sumAHighB_uid383_cstMultOutMag_uid366_vecTranslateTest_q & lowRangeB_uid381_cstMultOutMag_uid366_vecTranslateTest_b;

    -- redist0(DELAY,421)
    redist0 : dspba_delay
    GENERIC MAP ( width => 45, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => lev1_a0_uid384_cstMultOutMag_uid366_vecTranslateTest_q, xout => redist0_q, clk => clk, aclr => areset );

    -- lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest(ADD,385)@10
    lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & redist0_q);
    lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_b <= STD_LOGIC_VECTOR("00000000000" & lev1_a1_uid385_cstMultOutMag_uid366_vecTranslateTest_q);
    lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_a) + UNSIGNED(lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_b));
    lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_q <= lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_o(45 downto 0);

    -- sR_uid387_cstMultOutMag_uid366_vecTranslateTest(BITSELECT,386)@10
    sR_uid387_cstMultOutMag_uid366_vecTranslateTest_in <= lev2_a0_uid386_cstMultOutMag_uid366_vecTranslateTest_q(42 downto 0);
    sR_uid387_cstMultOutMag_uid366_vecTranslateTest_b <= sR_uid387_cstMultOutMag_uid366_vecTranslateTest_in(42 downto 23);

    -- outMagPostRnd_uid370_vecTranslateTest(ADD,369)@10
    outMagPostRnd_uid370_vecTranslateTest_a <= STD_LOGIC_VECTOR("0" & sR_uid387_cstMultOutMag_uid366_vecTranslateTest_b);
    outMagPostRnd_uid370_vecTranslateTest_b <= STD_LOGIC_VECTOR("00000000000000000000" & VCC_q);
    outMagPostRnd_uid370_vecTranslateTest_o <= STD_LOGIC_VECTOR(UNSIGNED(outMagPostRnd_uid370_vecTranslateTest_a) + UNSIGNED(outMagPostRnd_uid370_vecTranslateTest_b));
    outMagPostRnd_uid370_vecTranslateTest_q <= outMagPostRnd_uid370_vecTranslateTest_o(20 downto 0);

    -- outMag_uid371_vecTranslateTest(BITSELECT,370)@10
    outMag_uid371_vecTranslateTest_in <= outMagPostRnd_uid370_vecTranslateTest_q(19 downto 0);
    outMag_uid371_vecTranslateTest_b <= outMag_uid371_vecTranslateTest_in(19 downto 1);

    -- cstPiO2OutFormatL_uid357_vecTranslateTest(CONSTANT,356)
    cstPiO2OutFormatL_uid357_vecTranslateTest_q <= "1100100100010000";

    -- cstPiO2OutFormat_mergedSignalTMB_uid360_vecTranslateTest(BITJOIN,359)@10
    cstPiO2OutFormat_mergedSignalTMB_uid360_vecTranslateTest_q <= GND_q & cstPiO2OutFormatL_uid357_vecTranslateTest_q & GND_q;

    -- cstZeroOutFormat_uid356_vecTranslateTest(CONSTANT,355)
    cstZeroOutFormat_uid356_vecTranslateTest_q <= "000000000000000000";

    -- redist39(DELAY,460)
    redist39 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid31_vecTranslateTest_b, xout => redist39_q, clk => clk, aclr => areset );

    -- redist36(DELAY,457)
    redist36 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid50_vecTranslateTest_b, xout => redist36_q, clk => clk, aclr => areset );

    -- redist35(DELAY,456)
    redist35 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid69_vecTranslateTest_b, xout => redist35_q, clk => clk, aclr => areset );

    -- redist32(DELAY,453)
    redist32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid88_vecTranslateTest_b, xout => redist32_q, clk => clk, aclr => areset );

    -- redist31(DELAY,452)
    redist31 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid107_vecTranslateTest_b, xout => redist31_q, clk => clk, aclr => areset );

    -- redist28(DELAY,449)
    redist28 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid126_vecTranslateTest_b, xout => redist28_q, clk => clk, aclr => areset );

    -- redist27(DELAY,448)
    redist27 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid145_vecTranslateTest_b, xout => redist27_q, clk => clk, aclr => areset );

    -- redist24(DELAY,445)
    redist24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid166_vecTranslateTest_b, xout => redist24_q, clk => clk, aclr => areset );

    -- redist23(DELAY,444)
    redist23 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid183_vecTranslateTest_b, xout => redist23_q, clk => clk, aclr => areset );

    -- redist20(DELAY,441)
    redist20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid200_vecTranslateTest_b, xout => redist20_q, clk => clk, aclr => areset );

    -- redist19(DELAY,440)
    redist19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid217_vecTranslateTest_b, xout => redist19_q, clk => clk, aclr => areset );

    -- redist16(DELAY,437)
    redist16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid234_vecTranslateTest_b, xout => redist16_q, clk => clk, aclr => areset );

    -- redist15(DELAY,436)
    redist15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid251_vecTranslateTest_b, xout => redist15_q, clk => clk, aclr => areset );

    -- redist12(DELAY,433)
    redist12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid268_vecTranslateTest_b, xout => redist12_q, clk => clk, aclr => areset );

    -- redist11(DELAY,432)
    redist11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid285_vecTranslateTest_b, xout => redist11_q, clk => clk, aclr => areset );

    -- redist8(DELAY,429)
    redist8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid302_vecTranslateTest_b, xout => redist8_q, clk => clk, aclr => areset );

    -- redist7(DELAY,428)
    redist7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid319_vecTranslateTest_b, xout => redist7_q, clk => clk, aclr => areset );

    -- concSignVector_uid336_vecTranslateTest(BITJOIN,335)@9
    concSignVector_uid336_vecTranslateTest_q <= GND_q & redist39_q & redist36_q & redist35_q & redist32_q & redist31_q & redist28_q & redist27_q & redist24_q & redist23_q & redist20_q & redist19_q & redist16_q & redist15_q & redist12_q & redist11_q & redist8_q & redist7_q;

    -- is2_uid348_vecTranslateTest(BITSELECT,347)@9
    is2_uid348_vecTranslateTest_in <= concSignVector_uid336_vecTranslateTest_q(5 downto 0);
    is2_uid348_vecTranslateTest_b <= is2_uid348_vecTranslateTest_in(5 downto 0);

    -- table_l17_uid350_vecTranslateTest(LOOKUP,349)@9
    table_l17_uid350_vecTranslateTest_combproc: PROCESS (is2_uid348_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is2_uid348_vecTranslateTest_b) IS
            WHEN "000000" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "000001" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "000010" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "000011" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "000100" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "000101" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "000110" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "000111" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "001000" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "001001" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "001010" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "001011" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "001100" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "001101" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "001110" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "001111" => table_l17_uid350_vecTranslateTest_q <= "01";
            WHEN "010000" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "010001" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "010010" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "010011" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "010100" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "010101" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "010110" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "010111" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "011000" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "011001" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "011010" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "011011" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "011100" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "011101" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "011110" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "011111" => table_l17_uid350_vecTranslateTest_q <= "00";
            WHEN "100000" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "100001" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "100010" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "100011" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "100100" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "100101" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "100110" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "100111" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "101000" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "101001" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "101010" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "101011" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "101100" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "101101" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "101110" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "101111" => table_l17_uid350_vecTranslateTest_q <= "11";
            WHEN "110000" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "110001" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "110010" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "110011" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "110100" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "110101" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "110110" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "110111" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "111000" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "111001" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "111010" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "111011" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "111100" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "111101" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "111110" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN "111111" => table_l17_uid350_vecTranslateTest_q <= "10";
            WHEN OTHERS => -- unreachable
                           table_l17_uid350_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l17_uid349_vecTranslateTest(LOOKUP,348)@9
    table_l17_uid349_vecTranslateTest_combproc: PROCESS (is2_uid348_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is2_uid348_vecTranslateTest_b) IS
            WHEN "000000" => table_l17_uid349_vecTranslateTest_q <= "1111100000";
            WHEN "000001" => table_l17_uid349_vecTranslateTest_q <= "1110100000";
            WHEN "000010" => table_l17_uid349_vecTranslateTest_q <= "1101100000";
            WHEN "000011" => table_l17_uid349_vecTranslateTest_q <= "1100100000";
            WHEN "000100" => table_l17_uid349_vecTranslateTest_q <= "1011100000";
            WHEN "000101" => table_l17_uid349_vecTranslateTest_q <= "1010100000";
            WHEN "000110" => table_l17_uid349_vecTranslateTest_q <= "1001100000";
            WHEN "000111" => table_l17_uid349_vecTranslateTest_q <= "1000100000";
            WHEN "001000" => table_l17_uid349_vecTranslateTest_q <= "0111100000";
            WHEN "001001" => table_l17_uid349_vecTranslateTest_q <= "0110100000";
            WHEN "001010" => table_l17_uid349_vecTranslateTest_q <= "0101100000";
            WHEN "001011" => table_l17_uid349_vecTranslateTest_q <= "0100100000";
            WHEN "001100" => table_l17_uid349_vecTranslateTest_q <= "0011100000";
            WHEN "001101" => table_l17_uid349_vecTranslateTest_q <= "0010100000";
            WHEN "001110" => table_l17_uid349_vecTranslateTest_q <= "0001100000";
            WHEN "001111" => table_l17_uid349_vecTranslateTest_q <= "0000100000";
            WHEN "010000" => table_l17_uid349_vecTranslateTest_q <= "1111100000";
            WHEN "010001" => table_l17_uid349_vecTranslateTest_q <= "1110100000";
            WHEN "010010" => table_l17_uid349_vecTranslateTest_q <= "1101100000";
            WHEN "010011" => table_l17_uid349_vecTranslateTest_q <= "1100100000";
            WHEN "010100" => table_l17_uid349_vecTranslateTest_q <= "1011100000";
            WHEN "010101" => table_l17_uid349_vecTranslateTest_q <= "1010100000";
            WHEN "010110" => table_l17_uid349_vecTranslateTest_q <= "1001100000";
            WHEN "010111" => table_l17_uid349_vecTranslateTest_q <= "1000100000";
            WHEN "011000" => table_l17_uid349_vecTranslateTest_q <= "0111100000";
            WHEN "011001" => table_l17_uid349_vecTranslateTest_q <= "0110100000";
            WHEN "011010" => table_l17_uid349_vecTranslateTest_q <= "0101100000";
            WHEN "011011" => table_l17_uid349_vecTranslateTest_q <= "0100100000";
            WHEN "011100" => table_l17_uid349_vecTranslateTest_q <= "0011100000";
            WHEN "011101" => table_l17_uid349_vecTranslateTest_q <= "0010100000";
            WHEN "011110" => table_l17_uid349_vecTranslateTest_q <= "0001100000";
            WHEN "011111" => table_l17_uid349_vecTranslateTest_q <= "0000100000";
            WHEN "100000" => table_l17_uid349_vecTranslateTest_q <= "1111100000";
            WHEN "100001" => table_l17_uid349_vecTranslateTest_q <= "1110100000";
            WHEN "100010" => table_l17_uid349_vecTranslateTest_q <= "1101100000";
            WHEN "100011" => table_l17_uid349_vecTranslateTest_q <= "1100100000";
            WHEN "100100" => table_l17_uid349_vecTranslateTest_q <= "1011100000";
            WHEN "100101" => table_l17_uid349_vecTranslateTest_q <= "1010100000";
            WHEN "100110" => table_l17_uid349_vecTranslateTest_q <= "1001100000";
            WHEN "100111" => table_l17_uid349_vecTranslateTest_q <= "1000100000";
            WHEN "101000" => table_l17_uid349_vecTranslateTest_q <= "0111100000";
            WHEN "101001" => table_l17_uid349_vecTranslateTest_q <= "0110100000";
            WHEN "101010" => table_l17_uid349_vecTranslateTest_q <= "0101100000";
            WHEN "101011" => table_l17_uid349_vecTranslateTest_q <= "0100100000";
            WHEN "101100" => table_l17_uid349_vecTranslateTest_q <= "0011100000";
            WHEN "101101" => table_l17_uid349_vecTranslateTest_q <= "0010100000";
            WHEN "101110" => table_l17_uid349_vecTranslateTest_q <= "0001100000";
            WHEN "101111" => table_l17_uid349_vecTranslateTest_q <= "0000100000";
            WHEN "110000" => table_l17_uid349_vecTranslateTest_q <= "1111100000";
            WHEN "110001" => table_l17_uid349_vecTranslateTest_q <= "1110100000";
            WHEN "110010" => table_l17_uid349_vecTranslateTest_q <= "1101100000";
            WHEN "110011" => table_l17_uid349_vecTranslateTest_q <= "1100100000";
            WHEN "110100" => table_l17_uid349_vecTranslateTest_q <= "1011100000";
            WHEN "110101" => table_l17_uid349_vecTranslateTest_q <= "1010100000";
            WHEN "110110" => table_l17_uid349_vecTranslateTest_q <= "1001100000";
            WHEN "110111" => table_l17_uid349_vecTranslateTest_q <= "1000100000";
            WHEN "111000" => table_l17_uid349_vecTranslateTest_q <= "0111100000";
            WHEN "111001" => table_l17_uid349_vecTranslateTest_q <= "0110100000";
            WHEN "111010" => table_l17_uid349_vecTranslateTest_q <= "0101100000";
            WHEN "111011" => table_l17_uid349_vecTranslateTest_q <= "0100100000";
            WHEN "111100" => table_l17_uid349_vecTranslateTest_q <= "0011100000";
            WHEN "111101" => table_l17_uid349_vecTranslateTest_q <= "0010100000";
            WHEN "111110" => table_l17_uid349_vecTranslateTest_q <= "0001100000";
            WHEN "111111" => table_l17_uid349_vecTranslateTest_q <= "0000100000";
            WHEN OTHERS => -- unreachable
                           table_l17_uid349_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid351_vecTranslateTest(BITJOIN,350)@9
    os_uid351_vecTranslateTest_q <= table_l17_uid350_vecTranslateTest_q & table_l17_uid349_vecTranslateTest_q;

    -- is1_uid343_vecTranslateTest(BITSELECT,342)@9
    is1_uid343_vecTranslateTest_in <= concSignVector_uid336_vecTranslateTest_q(11 downto 0);
    is1_uid343_vecTranslateTest_b <= is1_uid343_vecTranslateTest_in(11 downto 6);

    -- table_l11_uid345_vecTranslateTest(LOOKUP,344)@9
    table_l11_uid345_vecTranslateTest_combproc: PROCESS (is1_uid343_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid343_vecTranslateTest_b) IS
            WHEN "000000" => table_l11_uid345_vecTranslateTest_q <= "01111101";
            WHEN "000001" => table_l11_uid345_vecTranslateTest_q <= "01111001";
            WHEN "000010" => table_l11_uid345_vecTranslateTest_q <= "01110101";
            WHEN "000011" => table_l11_uid345_vecTranslateTest_q <= "01110001";
            WHEN "000100" => table_l11_uid345_vecTranslateTest_q <= "01101101";
            WHEN "000101" => table_l11_uid345_vecTranslateTest_q <= "01101001";
            WHEN "000110" => table_l11_uid345_vecTranslateTest_q <= "01100101";
            WHEN "000111" => table_l11_uid345_vecTranslateTest_q <= "01100001";
            WHEN "001000" => table_l11_uid345_vecTranslateTest_q <= "01011101";
            WHEN "001001" => table_l11_uid345_vecTranslateTest_q <= "01011001";
            WHEN "001010" => table_l11_uid345_vecTranslateTest_q <= "01010101";
            WHEN "001011" => table_l11_uid345_vecTranslateTest_q <= "01010001";
            WHEN "001100" => table_l11_uid345_vecTranslateTest_q <= "01001101";
            WHEN "001101" => table_l11_uid345_vecTranslateTest_q <= "01001001";
            WHEN "001110" => table_l11_uid345_vecTranslateTest_q <= "01000101";
            WHEN "001111" => table_l11_uid345_vecTranslateTest_q <= "01000001";
            WHEN "010000" => table_l11_uid345_vecTranslateTest_q <= "00111101";
            WHEN "010001" => table_l11_uid345_vecTranslateTest_q <= "00111001";
            WHEN "010010" => table_l11_uid345_vecTranslateTest_q <= "00110101";
            WHEN "010011" => table_l11_uid345_vecTranslateTest_q <= "00110001";
            WHEN "010100" => table_l11_uid345_vecTranslateTest_q <= "00101101";
            WHEN "010101" => table_l11_uid345_vecTranslateTest_q <= "00101001";
            WHEN "010110" => table_l11_uid345_vecTranslateTest_q <= "00100101";
            WHEN "010111" => table_l11_uid345_vecTranslateTest_q <= "00100001";
            WHEN "011000" => table_l11_uid345_vecTranslateTest_q <= "00011101";
            WHEN "011001" => table_l11_uid345_vecTranslateTest_q <= "00011001";
            WHEN "011010" => table_l11_uid345_vecTranslateTest_q <= "00010101";
            WHEN "011011" => table_l11_uid345_vecTranslateTest_q <= "00010001";
            WHEN "011100" => table_l11_uid345_vecTranslateTest_q <= "00001101";
            WHEN "011101" => table_l11_uid345_vecTranslateTest_q <= "00001001";
            WHEN "011110" => table_l11_uid345_vecTranslateTest_q <= "00000101";
            WHEN "011111" => table_l11_uid345_vecTranslateTest_q <= "00000001";
            WHEN "100000" => table_l11_uid345_vecTranslateTest_q <= "11111110";
            WHEN "100001" => table_l11_uid345_vecTranslateTest_q <= "11111010";
            WHEN "100010" => table_l11_uid345_vecTranslateTest_q <= "11110110";
            WHEN "100011" => table_l11_uid345_vecTranslateTest_q <= "11110010";
            WHEN "100100" => table_l11_uid345_vecTranslateTest_q <= "11101110";
            WHEN "100101" => table_l11_uid345_vecTranslateTest_q <= "11101010";
            WHEN "100110" => table_l11_uid345_vecTranslateTest_q <= "11100110";
            WHEN "100111" => table_l11_uid345_vecTranslateTest_q <= "11100010";
            WHEN "101000" => table_l11_uid345_vecTranslateTest_q <= "11011110";
            WHEN "101001" => table_l11_uid345_vecTranslateTest_q <= "11011010";
            WHEN "101010" => table_l11_uid345_vecTranslateTest_q <= "11010110";
            WHEN "101011" => table_l11_uid345_vecTranslateTest_q <= "11010010";
            WHEN "101100" => table_l11_uid345_vecTranslateTest_q <= "11001110";
            WHEN "101101" => table_l11_uid345_vecTranslateTest_q <= "11001010";
            WHEN "101110" => table_l11_uid345_vecTranslateTest_q <= "11000110";
            WHEN "101111" => table_l11_uid345_vecTranslateTest_q <= "11000010";
            WHEN "110000" => table_l11_uid345_vecTranslateTest_q <= "10111110";
            WHEN "110001" => table_l11_uid345_vecTranslateTest_q <= "10111010";
            WHEN "110010" => table_l11_uid345_vecTranslateTest_q <= "10110110";
            WHEN "110011" => table_l11_uid345_vecTranslateTest_q <= "10110010";
            WHEN "110100" => table_l11_uid345_vecTranslateTest_q <= "10101110";
            WHEN "110101" => table_l11_uid345_vecTranslateTest_q <= "10101010";
            WHEN "110110" => table_l11_uid345_vecTranslateTest_q <= "10100110";
            WHEN "110111" => table_l11_uid345_vecTranslateTest_q <= "10100010";
            WHEN "111000" => table_l11_uid345_vecTranslateTest_q <= "10011110";
            WHEN "111001" => table_l11_uid345_vecTranslateTest_q <= "10011010";
            WHEN "111010" => table_l11_uid345_vecTranslateTest_q <= "10010110";
            WHEN "111011" => table_l11_uid345_vecTranslateTest_q <= "10010010";
            WHEN "111100" => table_l11_uid345_vecTranslateTest_q <= "10001110";
            WHEN "111101" => table_l11_uid345_vecTranslateTest_q <= "10001010";
            WHEN "111110" => table_l11_uid345_vecTranslateTest_q <= "10000110";
            WHEN "111111" => table_l11_uid345_vecTranslateTest_q <= "10000010";
            WHEN OTHERS => -- unreachable
                           table_l11_uid345_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l11_uid344_vecTranslateTest(LOOKUP,343)@9
    table_l11_uid344_vecTranslateTest_combproc: PROCESS (is1_uid343_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid343_vecTranslateTest_b) IS
            WHEN "000000" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "000001" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "000010" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "000011" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "000100" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "000101" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "000110" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "000111" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "001000" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "001001" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "001010" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "001011" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "001100" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "001101" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "001110" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "001111" => table_l11_uid344_vecTranslateTest_q <= "1111111010";
            WHEN "010000" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "010001" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "010010" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "010011" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "010100" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "010101" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "010110" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "010111" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "011000" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "011001" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "011010" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "011011" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "011100" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "011101" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "011110" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "011111" => table_l11_uid344_vecTranslateTest_q <= "1111111011";
            WHEN "100000" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "100001" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "100010" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "100011" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "100100" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "100101" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "100110" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "100111" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "101000" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "101001" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "101010" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "101011" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "101100" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "101101" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "101110" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "101111" => table_l11_uid344_vecTranslateTest_q <= "0000000101";
            WHEN "110000" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "110001" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "110010" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "110011" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "110100" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "110101" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "110110" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "110111" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "111000" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "111001" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "111010" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "111011" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "111100" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "111101" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "111110" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN "111111" => table_l11_uid344_vecTranslateTest_q <= "0000000110";
            WHEN OTHERS => -- unreachable
                           table_l11_uid344_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid346_vecTranslateTest(BITJOIN,345)@9
    os_uid346_vecTranslateTest_q <= table_l11_uid345_vecTranslateTest_q & table_l11_uid344_vecTranslateTest_q;

    -- is0_uid337_vecTranslateTest(BITSELECT,336)@9
    is0_uid337_vecTranslateTest_in <= concSignVector_uid336_vecTranslateTest_q;
    is0_uid337_vecTranslateTest_b <= is0_uid337_vecTranslateTest_in(17 downto 12);

    -- table_l5_uid340_vecTranslateTest(LOOKUP,339)@9
    table_l5_uid340_vecTranslateTest_combproc: PROCESS (is0_uid337_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid337_vecTranslateTest_b) IS
            WHEN "000000" => table_l5_uid340_vecTranslateTest_q <= "0110";
            WHEN "000001" => table_l5_uid340_vecTranslateTest_q <= "0110";
            WHEN "000010" => table_l5_uid340_vecTranslateTest_q <= "0110";
            WHEN "000011" => table_l5_uid340_vecTranslateTest_q <= "0110";
            WHEN "000100" => table_l5_uid340_vecTranslateTest_q <= "0101";
            WHEN "000101" => table_l5_uid340_vecTranslateTest_q <= "0101";
            WHEN "000110" => table_l5_uid340_vecTranslateTest_q <= "0101";
            WHEN "000111" => table_l5_uid340_vecTranslateTest_q <= "0101";
            WHEN "001000" => table_l5_uid340_vecTranslateTest_q <= "0100";
            WHEN "001001" => table_l5_uid340_vecTranslateTest_q <= "0100";
            WHEN "001010" => table_l5_uid340_vecTranslateTest_q <= "0100";
            WHEN "001011" => table_l5_uid340_vecTranslateTest_q <= "0100";
            WHEN "001100" => table_l5_uid340_vecTranslateTest_q <= "0011";
            WHEN "001101" => table_l5_uid340_vecTranslateTest_q <= "0011";
            WHEN "001110" => table_l5_uid340_vecTranslateTest_q <= "0011";
            WHEN "001111" => table_l5_uid340_vecTranslateTest_q <= "0011";
            WHEN "010000" => table_l5_uid340_vecTranslateTest_q <= "0011";
            WHEN "010001" => table_l5_uid340_vecTranslateTest_q <= "0010";
            WHEN "010010" => table_l5_uid340_vecTranslateTest_q <= "0010";
            WHEN "010011" => table_l5_uid340_vecTranslateTest_q <= "0010";
            WHEN "010100" => table_l5_uid340_vecTranslateTest_q <= "0010";
            WHEN "010101" => table_l5_uid340_vecTranslateTest_q <= "0001";
            WHEN "010110" => table_l5_uid340_vecTranslateTest_q <= "0001";
            WHEN "010111" => table_l5_uid340_vecTranslateTest_q <= "0001";
            WHEN "011000" => table_l5_uid340_vecTranslateTest_q <= "0001";
            WHEN "011001" => table_l5_uid340_vecTranslateTest_q <= "0000";
            WHEN "011010" => table_l5_uid340_vecTranslateTest_q <= "0000";
            WHEN "011011" => table_l5_uid340_vecTranslateTest_q <= "0000";
            WHEN "011100" => table_l5_uid340_vecTranslateTest_q <= "0000";
            WHEN "011101" => table_l5_uid340_vecTranslateTest_q <= "1111";
            WHEN "011110" => table_l5_uid340_vecTranslateTest_q <= "1111";
            WHEN "011111" => table_l5_uid340_vecTranslateTest_q <= "1111";
            WHEN "100000" => table_l5_uid340_vecTranslateTest_q <= "0000";
            WHEN "100001" => table_l5_uid340_vecTranslateTest_q <= "0000";
            WHEN "100010" => table_l5_uid340_vecTranslateTest_q <= "0000";
            WHEN "100011" => table_l5_uid340_vecTranslateTest_q <= "1111";
            WHEN "100100" => table_l5_uid340_vecTranslateTest_q <= "1111";
            WHEN "100101" => table_l5_uid340_vecTranslateTest_q <= "1111";
            WHEN "100110" => table_l5_uid340_vecTranslateTest_q <= "1111";
            WHEN "100111" => table_l5_uid340_vecTranslateTest_q <= "1110";
            WHEN "101000" => table_l5_uid340_vecTranslateTest_q <= "1110";
            WHEN "101001" => table_l5_uid340_vecTranslateTest_q <= "1110";
            WHEN "101010" => table_l5_uid340_vecTranslateTest_q <= "1110";
            WHEN "101011" => table_l5_uid340_vecTranslateTest_q <= "1101";
            WHEN "101100" => table_l5_uid340_vecTranslateTest_q <= "1101";
            WHEN "101101" => table_l5_uid340_vecTranslateTest_q <= "1101";
            WHEN "101110" => table_l5_uid340_vecTranslateTest_q <= "1101";
            WHEN "101111" => table_l5_uid340_vecTranslateTest_q <= "1100";
            WHEN "110000" => table_l5_uid340_vecTranslateTest_q <= "1100";
            WHEN "110001" => table_l5_uid340_vecTranslateTest_q <= "1100";
            WHEN "110010" => table_l5_uid340_vecTranslateTest_q <= "1100";
            WHEN "110011" => table_l5_uid340_vecTranslateTest_q <= "1100";
            WHEN "110100" => table_l5_uid340_vecTranslateTest_q <= "1011";
            WHEN "110101" => table_l5_uid340_vecTranslateTest_q <= "1011";
            WHEN "110110" => table_l5_uid340_vecTranslateTest_q <= "1011";
            WHEN "110111" => table_l5_uid340_vecTranslateTest_q <= "1011";
            WHEN "111000" => table_l5_uid340_vecTranslateTest_q <= "1010";
            WHEN "111001" => table_l5_uid340_vecTranslateTest_q <= "1010";
            WHEN "111010" => table_l5_uid340_vecTranslateTest_q <= "1010";
            WHEN "111011" => table_l5_uid340_vecTranslateTest_q <= "1010";
            WHEN "111100" => table_l5_uid340_vecTranslateTest_q <= "1001";
            WHEN "111101" => table_l5_uid340_vecTranslateTest_q <= "1001";
            WHEN "111110" => table_l5_uid340_vecTranslateTest_q <= "1001";
            WHEN "111111" => table_l5_uid340_vecTranslateTest_q <= "1001";
            WHEN OTHERS => -- unreachable
                           table_l5_uid340_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid339_vecTranslateTest(LOOKUP,338)@9
    table_l5_uid339_vecTranslateTest_combproc: PROCESS (is0_uid337_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid337_vecTranslateTest_b) IS
            WHEN "000000" => table_l5_uid339_vecTranslateTest_q <= "1101100100";
            WHEN "000001" => table_l5_uid339_vecTranslateTest_q <= "1001100100";
            WHEN "000010" => table_l5_uid339_vecTranslateTest_q <= "0101100101";
            WHEN "000011" => table_l5_uid339_vecTranslateTest_q <= "0001100101";
            WHEN "000100" => table_l5_uid339_vecTranslateTest_q <= "1101101001";
            WHEN "000101" => table_l5_uid339_vecTranslateTest_q <= "1001101001";
            WHEN "000110" => table_l5_uid339_vecTranslateTest_q <= "0101101010";
            WHEN "000111" => table_l5_uid339_vecTranslateTest_q <= "0001101010";
            WHEN "001000" => table_l5_uid339_vecTranslateTest_q <= "1110001101";
            WHEN "001001" => table_l5_uid339_vecTranslateTest_q <= "1010001101";
            WHEN "001010" => table_l5_uid339_vecTranslateTest_q <= "0110001110";
            WHEN "001011" => table_l5_uid339_vecTranslateTest_q <= "0010001110";
            WHEN "001100" => table_l5_uid339_vecTranslateTest_q <= "1110010010";
            WHEN "001101" => table_l5_uid339_vecTranslateTest_q <= "1010010011";
            WHEN "001110" => table_l5_uid339_vecTranslateTest_q <= "0110010011";
            WHEN "001111" => table_l5_uid339_vecTranslateTest_q <= "0010010011";
            WHEN "010000" => table_l5_uid339_vecTranslateTest_q <= "0010001110";
            WHEN "010001" => table_l5_uid339_vecTranslateTest_q <= "1110001110";
            WHEN "010010" => table_l5_uid339_vecTranslateTest_q <= "1010001111";
            WHEN "010011" => table_l5_uid339_vecTranslateTest_q <= "0110001111";
            WHEN "010100" => table_l5_uid339_vecTranslateTest_q <= "0010010011";
            WHEN "010101" => table_l5_uid339_vecTranslateTest_q <= "1110010011";
            WHEN "010110" => table_l5_uid339_vecTranslateTest_q <= "1010010100";
            WHEN "010111" => table_l5_uid339_vecTranslateTest_q <= "0110010100";
            WHEN "011000" => table_l5_uid339_vecTranslateTest_q <= "0010110111";
            WHEN "011001" => table_l5_uid339_vecTranslateTest_q <= "1110110111";
            WHEN "011010" => table_l5_uid339_vecTranslateTest_q <= "1010111000";
            WHEN "011011" => table_l5_uid339_vecTranslateTest_q <= "0110111000";
            WHEN "011100" => table_l5_uid339_vecTranslateTest_q <= "0010111100";
            WHEN "011101" => table_l5_uid339_vecTranslateTest_q <= "1110111100";
            WHEN "011110" => table_l5_uid339_vecTranslateTest_q <= "1010111101";
            WHEN "011111" => table_l5_uid339_vecTranslateTest_q <= "0110111101";
            WHEN "100000" => table_l5_uid339_vecTranslateTest_q <= "1001000010";
            WHEN "100001" => table_l5_uid339_vecTranslateTest_q <= "0101000010";
            WHEN "100010" => table_l5_uid339_vecTranslateTest_q <= "0001000011";
            WHEN "100011" => table_l5_uid339_vecTranslateTest_q <= "1101000011";
            WHEN "100100" => table_l5_uid339_vecTranslateTest_q <= "1001000111";
            WHEN "100101" => table_l5_uid339_vecTranslateTest_q <= "0101000111";
            WHEN "100110" => table_l5_uid339_vecTranslateTest_q <= "0001001000";
            WHEN "100111" => table_l5_uid339_vecTranslateTest_q <= "1101001000";
            WHEN "101000" => table_l5_uid339_vecTranslateTest_q <= "1001101011";
            WHEN "101001" => table_l5_uid339_vecTranslateTest_q <= "0101101011";
            WHEN "101010" => table_l5_uid339_vecTranslateTest_q <= "0001101100";
            WHEN "101011" => table_l5_uid339_vecTranslateTest_q <= "1101101100";
            WHEN "101100" => table_l5_uid339_vecTranslateTest_q <= "1001110000";
            WHEN "101101" => table_l5_uid339_vecTranslateTest_q <= "0101110001";
            WHEN "101110" => table_l5_uid339_vecTranslateTest_q <= "0001110001";
            WHEN "101111" => table_l5_uid339_vecTranslateTest_q <= "1101110001";
            WHEN "110000" => table_l5_uid339_vecTranslateTest_q <= "1101101100";
            WHEN "110001" => table_l5_uid339_vecTranslateTest_q <= "1001101100";
            WHEN "110010" => table_l5_uid339_vecTranslateTest_q <= "0101101101";
            WHEN "110011" => table_l5_uid339_vecTranslateTest_q <= "0001101101";
            WHEN "110100" => table_l5_uid339_vecTranslateTest_q <= "1101110001";
            WHEN "110101" => table_l5_uid339_vecTranslateTest_q <= "1001110001";
            WHEN "110110" => table_l5_uid339_vecTranslateTest_q <= "0101110010";
            WHEN "110111" => table_l5_uid339_vecTranslateTest_q <= "0001110010";
            WHEN "111000" => table_l5_uid339_vecTranslateTest_q <= "1110010101";
            WHEN "111001" => table_l5_uid339_vecTranslateTest_q <= "1010010101";
            WHEN "111010" => table_l5_uid339_vecTranslateTest_q <= "0110010110";
            WHEN "111011" => table_l5_uid339_vecTranslateTest_q <= "0010010110";
            WHEN "111100" => table_l5_uid339_vecTranslateTest_q <= "1110011010";
            WHEN "111101" => table_l5_uid339_vecTranslateTest_q <= "1010011010";
            WHEN "111110" => table_l5_uid339_vecTranslateTest_q <= "0110011011";
            WHEN "111111" => table_l5_uid339_vecTranslateTest_q <= "0010011011";
            WHEN OTHERS => -- unreachable
                           table_l5_uid339_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid338_vecTranslateTest(LOOKUP,337)@9
    table_l5_uid338_vecTranslateTest_combproc: PROCESS (is0_uid337_vecTranslateTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid337_vecTranslateTest_b) IS
            WHEN "000000" => table_l5_uid338_vecTranslateTest_q <= "1000101000";
            WHEN "000001" => table_l5_uid338_vecTranslateTest_q <= "1001111101";
            WHEN "000010" => table_l5_uid338_vecTranslateTest_q <= "0011010001";
            WHEN "000011" => table_l5_uid338_vecTranslateTest_q <= "0100100110";
            WHEN "000100" => table_l5_uid338_vecTranslateTest_q <= "1101001011";
            WHEN "000101" => table_l5_uid338_vecTranslateTest_q <= "1110100000";
            WHEN "000110" => table_l5_uid338_vecTranslateTest_q <= "0111110100";
            WHEN "000111" => table_l5_uid338_vecTranslateTest_q <= "1001001001";
            WHEN "001000" => table_l5_uid338_vecTranslateTest_q <= "1010110010";
            WHEN "001001" => table_l5_uid338_vecTranslateTest_q <= "1100000111";
            WHEN "001010" => table_l5_uid338_vecTranslateTest_q <= "0101011011";
            WHEN "001011" => table_l5_uid338_vecTranslateTest_q <= "0110110001";
            WHEN "001100" => table_l5_uid338_vecTranslateTest_q <= "1111010101";
            WHEN "001101" => table_l5_uid338_vecTranslateTest_q <= "0000101010";
            WHEN "001110" => table_l5_uid338_vecTranslateTest_q <= "1001111110";
            WHEN "001111" => table_l5_uid338_vecTranslateTest_q <= "1011010011";
            WHEN "010000" => table_l5_uid338_vecTranslateTest_q <= "0101011010";
            WHEN "010001" => table_l5_uid338_vecTranslateTest_q <= "0110101111";
            WHEN "010010" => table_l5_uid338_vecTranslateTest_q <= "0000000011";
            WHEN "010011" => table_l5_uid338_vecTranslateTest_q <= "0001011000";
            WHEN "010100" => table_l5_uid338_vecTranslateTest_q <= "1001111101";
            WHEN "010101" => table_l5_uid338_vecTranslateTest_q <= "1011010010";
            WHEN "010110" => table_l5_uid338_vecTranslateTest_q <= "0100100110";
            WHEN "010111" => table_l5_uid338_vecTranslateTest_q <= "0101111011";
            WHEN "011000" => table_l5_uid338_vecTranslateTest_q <= "0111100100";
            WHEN "011001" => table_l5_uid338_vecTranslateTest_q <= "1000111001";
            WHEN "011010" => table_l5_uid338_vecTranslateTest_q <= "0010001101";
            WHEN "011011" => table_l5_uid338_vecTranslateTest_q <= "0011100010";
            WHEN "011100" => table_l5_uid338_vecTranslateTest_q <= "1100000111";
            WHEN "011101" => table_l5_uid338_vecTranslateTest_q <= "1101011100";
            WHEN "011110" => table_l5_uid338_vecTranslateTest_q <= "0110110000";
            WHEN "011111" => table_l5_uid338_vecTranslateTest_q <= "1000000101";
            WHEN "100000" => table_l5_uid338_vecTranslateTest_q <= "1000111011";
            WHEN "100001" => table_l5_uid338_vecTranslateTest_q <= "1010010000";
            WHEN "100010" => table_l5_uid338_vecTranslateTest_q <= "0011100100";
            WHEN "100011" => table_l5_uid338_vecTranslateTest_q <= "0100111001";
            WHEN "100100" => table_l5_uid338_vecTranslateTest_q <= "1101011110";
            WHEN "100101" => table_l5_uid338_vecTranslateTest_q <= "1110110011";
            WHEN "100110" => table_l5_uid338_vecTranslateTest_q <= "1000000111";
            WHEN "100111" => table_l5_uid338_vecTranslateTest_q <= "1001011100";
            WHEN "101000" => table_l5_uid338_vecTranslateTest_q <= "1011000101";
            WHEN "101001" => table_l5_uid338_vecTranslateTest_q <= "1100011010";
            WHEN "101010" => table_l5_uid338_vecTranslateTest_q <= "0101101110";
            WHEN "101011" => table_l5_uid338_vecTranslateTest_q <= "0111000011";
            WHEN "101100" => table_l5_uid338_vecTranslateTest_q <= "1111101000";
            WHEN "101101" => table_l5_uid338_vecTranslateTest_q <= "0000111101";
            WHEN "101110" => table_l5_uid338_vecTranslateTest_q <= "1010010001";
            WHEN "101111" => table_l5_uid338_vecTranslateTest_q <= "1011100110";
            WHEN "110000" => table_l5_uid338_vecTranslateTest_q <= "0101101101";
            WHEN "110001" => table_l5_uid338_vecTranslateTest_q <= "0111000010";
            WHEN "110010" => table_l5_uid338_vecTranslateTest_q <= "0000010110";
            WHEN "110011" => table_l5_uid338_vecTranslateTest_q <= "0001101011";
            WHEN "110100" => table_l5_uid338_vecTranslateTest_q <= "1010001111";
            WHEN "110101" => table_l5_uid338_vecTranslateTest_q <= "1011100101";
            WHEN "110110" => table_l5_uid338_vecTranslateTest_q <= "0100111001";
            WHEN "110111" => table_l5_uid338_vecTranslateTest_q <= "0110001110";
            WHEN "111000" => table_l5_uid338_vecTranslateTest_q <= "0111110111";
            WHEN "111001" => table_l5_uid338_vecTranslateTest_q <= "1001001100";
            WHEN "111010" => table_l5_uid338_vecTranslateTest_q <= "0010100000";
            WHEN "111011" => table_l5_uid338_vecTranslateTest_q <= "0011110101";
            WHEN "111100" => table_l5_uid338_vecTranslateTest_q <= "1100011010";
            WHEN "111101" => table_l5_uid338_vecTranslateTest_q <= "1101101111";
            WHEN "111110" => table_l5_uid338_vecTranslateTest_q <= "0111000011";
            WHEN "111111" => table_l5_uid338_vecTranslateTest_q <= "1000011000";
            WHEN OTHERS => -- unreachable
                           table_l5_uid338_vecTranslateTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid341_vecTranslateTest(BITJOIN,340)@9
    os_uid341_vecTranslateTest_q <= table_l5_uid340_vecTranslateTest_q & table_l5_uid339_vecTranslateTest_q & table_l5_uid338_vecTranslateTest_q;

    -- lev1_a0_uid353_vecTranslateTest(ADD,352)@9
    lev1_a0_uid353_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => os_uid341_vecTranslateTest_q(23)) & os_uid341_vecTranslateTest_q));
    lev1_a0_uid353_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 18 => os_uid346_vecTranslateTest_q(17)) & os_uid346_vecTranslateTest_q));
    lev1_a0_uid353_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0_uid353_vecTranslateTest_a) + SIGNED(lev1_a0_uid353_vecTranslateTest_b));
    lev1_a0_uid353_vecTranslateTest_q <= lev1_a0_uid353_vecTranslateTest_o(24 downto 0);

    -- lev2_a0_uid354_vecTranslateTest(ADD,353)@9
    lev2_a0_uid354_vecTranslateTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => lev1_a0_uid353_vecTranslateTest_q(24)) & lev1_a0_uid353_vecTranslateTest_q));
    lev2_a0_uid354_vecTranslateTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 12 => os_uid351_vecTranslateTest_q(11)) & os_uid351_vecTranslateTest_q));
    lev2_a0_uid354_vecTranslateTest_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid354_vecTranslateTest_a) + SIGNED(lev2_a0_uid354_vecTranslateTest_b));
    lev2_a0_uid354_vecTranslateTest_q <= lev2_a0_uid354_vecTranslateTest_o(25 downto 0);

    -- atanRes_uid355_vecTranslateTest(BITSELECT,354)@9
    atanRes_uid355_vecTranslateTest_in <= STD_LOGIC_VECTOR(lev2_a0_uid354_vecTranslateTest_q(23 downto 0));
    atanRes_uid355_vecTranslateTest_b <= STD_LOGIC_VECTOR(atanRes_uid355_vecTranslateTest_in(23 downto 6));

    -- redist6(DELAY,427)
    redist6 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => atanRes_uid355_vecTranslateTest_b, xout => redist6_q, clk => clk, aclr => areset );

    -- xNotZero_uid8_vecTranslateTest(LOGICAL,7)@0
    xNotZero_uid8_vecTranslateTest_a <= x;
    xNotZero_uid8_vecTranslateTest_q <= "1" WHEN xNotZero_uid8_vecTranslateTest_a /= "000000000000" ELSE "0";

    -- xZero_uid9_vecTranslateTest(LOGICAL,8)@0
    xZero_uid9_vecTranslateTest_a <= xNotZero_uid8_vecTranslateTest_q;
    xZero_uid9_vecTranslateTest_q <= not (xZero_uid9_vecTranslateTest_a);

    -- yNotZero_uid6_vecTranslateTest(LOGICAL,5)@0
    yNotZero_uid6_vecTranslateTest_a <= y;
    yNotZero_uid6_vecTranslateTest_q <= "1" WHEN yNotZero_uid6_vecTranslateTest_a /= "000000000000" ELSE "0";

    -- yZero_uid7_vecTranslateTest(LOGICAL,6)@0
    yZero_uid7_vecTranslateTest_a <= yNotZero_uid6_vecTranslateTest_q;
    yZero_uid7_vecTranslateTest_q <= not (yZero_uid7_vecTranslateTest_a);

    -- concXZeroYZero_uid362_vecTranslateTest(BITJOIN,361)@0
    concXZeroYZero_uid362_vecTranslateTest_q <= xZero_uid9_vecTranslateTest_q & yZero_uid7_vecTranslateTest_q;

    -- redist5(DELAY,426)
    redist5 : dspba_delay
    GENERIC MAP ( width => 2, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => concXZeroYZero_uid362_vecTranslateTest_q, xout => redist5_q, clk => clk, aclr => areset );

    -- atanResPostExc_uid363_vecTranslateTest(MUX,362)@10
    atanResPostExc_uid363_vecTranslateTest_s <= redist5_q;
    atanResPostExc_uid363_vecTranslateTest_combproc: PROCESS (atanResPostExc_uid363_vecTranslateTest_s, redist6_q, cstZeroOutFormat_uid356_vecTranslateTest_q, cstPiO2OutFormat_mergedSignalTMB_uid360_vecTranslateTest_q)
    BEGIN
        CASE (atanResPostExc_uid363_vecTranslateTest_s) IS
            WHEN "00" => atanResPostExc_uid363_vecTranslateTest_q <= redist6_q;
            WHEN "01" => atanResPostExc_uid363_vecTranslateTest_q <= cstZeroOutFormat_uid356_vecTranslateTest_q;
            WHEN "10" => atanResPostExc_uid363_vecTranslateTest_q <= cstPiO2OutFormat_mergedSignalTMB_uid360_vecTranslateTest_q;
            WHEN "11" => atanResPostExc_uid363_vecTranslateTest_q <= cstZeroOutFormat_uid356_vecTranslateTest_q;
            WHEN OTHERS => atanResPostExc_uid363_vecTranslateTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- xOut(GPOUT,4)@10
    q <= atanResPostExc_uid363_vecTranslateTest_q;
    r <= outMag_uid371_vecTranslateTest_b(17 downto 0);

END normal;
