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
-- VHDL created on Fri Apr 27 21:35:33 2018


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
        x : in std_logic_vector(11 downto 0);  -- ufix12
        y : in std_logic_vector(11 downto 0);  -- ufix12
        q : out std_logic_vector(17 downto 0);  -- sfix18_en16
        clk : in std_logic;
        areset : in std_logic
    );
end ATAN2_CORDIC_0;

architecture normal of ATAN2_CORDIC_0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_1_uid14_atan2Test_a : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid14_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid14_atan2Test_o : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid14_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid15_atan2Test_a : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid15_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid15_atan2Test_o : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1_uid15_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_3CostZeroPaddingA_uid56_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xip1E_4CostZeroPaddingA_uid75_atan2Test_q : STD_LOGIC_VECTOR (2 downto 0);
    signal xip1E_5CostZeroPaddingA_uid94_atan2Test_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xip1E_6CostZeroPaddingA_uid113_atan2Test_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xip1E_7CostZeroPaddingA_uid132_atan2Test_q : STD_LOGIC_VECTOR (5 downto 0);
    signal cstZeroOutFormat_uid356_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal cstPiO2OutFormatL_uid357_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist0_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_q : STD_LOGIC_VECTOR (24 downto 0);
    signal redist6_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist10_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_q : STD_LOGIC_VECTOR (30 downto 0);
    signal redist18_q : STD_LOGIC_VECTOR (37 downto 0);
    signal redist19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_q : STD_LOGIC_VECTOR (29 downto 0);
    signal redist22_q : STD_LOGIC_VECTOR (34 downto 0);
    signal redist23_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist26_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist27_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist30_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist31_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concSignVector_uid336_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1_1_mergedSignalTM_uid22_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1E_2NA_uid38_atan2Test_q : STD_LOGIC_VECTOR (14 downto 0);
    signal cstPiO2OutFormat_mergedSignalTMB_uid360_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yNotZero_uid6_atan2Test_a : STD_LOGIC_VECTOR (11 downto 0);
    signal yNotZero_uid6_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid7_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid7_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid8_atan2Test_a : STD_LOGIC_VECTOR (11 downto 0);
    signal xNotZero_uid8_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid9_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid9_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal atanResPostExc_uid363_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid363_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xMSB_uid24_atan2Test_in : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid24_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_1_mergedSignalTM_uid28_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1E_4NA_uid76_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_4NA_uid79_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_8NA_uid154_atan2Test_q : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1E_8NA_uid157_atan2Test_q : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1E_6NA_uid114_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_6NA_uid117_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid285_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid285_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid290_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal twoToMiSiYip_uid290_atan2Test_b : STD_LOGIC_VECTOR (9 downto 0);
    signal twoToMiSiXip_uid289_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid289_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid251_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid251_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid256_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal twoToMiSiYip_uid256_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal twoToMiSiXip_uid255_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid255_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid217_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid217_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid222_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal twoToMiSiYip_uid222_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal twoToMiSiXip_uid221_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid221_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid183_atan2Test_in : STD_LOGIC_VECTOR (30 downto 0);
    signal xMSB_uid183_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid188_atan2Test_in : STD_LOGIC_VECTOR (30 downto 0);
    signal twoToMiSiYip_uid188_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal twoToMiSiXip_uid187_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid187_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xMSB_uid145_atan2Test_in : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid145_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid150_atan2Test_in : STD_LOGIC_VECTOR (29 downto 0);
    signal twoToMiSiYip_uid150_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiXip_uid149_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal twoToMiSiXip_uid149_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xMSB_uid107_atan2Test_in : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid107_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid118_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6sumAHighB_uid118_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6sumAHighB_uid118_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_6sumAHighB_uid118_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid118_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xMSB_uid69_atan2Test_in : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid69_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid80_atan2Test_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4sumAHighB_uid80_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4sumAHighB_uid80_atan2Test_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4sumAHighB_uid80_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid80_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal is0_uid337_atan2Test_in : STD_LOGIC_VECTOR (17 downto 0);
    signal is0_uid337_atan2Test_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is1_uid343_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal is1_uid343_atan2Test_b : STD_LOGIC_VECTOR (5 downto 0);
    signal is2_uid348_atan2Test_in : STD_LOGIC_VECTOR (5 downto 0);
    signal is2_uid348_atan2Test_b : STD_LOGIC_VECTOR (5 downto 0);
    signal concXZeroYZero_uid362_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xMSB_uid31_atan2Test_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid31_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2NA_uid41_atan2Test_q : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1E_8sumAHighB_uid158_atan2Test_a : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8sumAHighB_uid158_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8sumAHighB_uid158_atan2Test_o : STD_LOGIC_VECTOR (34 downto 0);
    signal yip1E_8sumAHighB_uid158_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8sumAHighB_uid158_atan2Test_q : STD_LOGIC_VECTOR (33 downto 0);
    signal invSignOfSelectionSignal_uid292_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid292_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid294_atan2Test_a : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_16_uid294_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_16_uid294_atan2Test_o : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_16_uid294_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_16_uid294_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1E_16_uid293_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_16_uid293_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_16_uid293_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_16_uid293_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_16_uid293_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid258_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid258_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid260_atan2Test_a : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_14_uid260_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_14_uid260_atan2Test_o : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1E_14_uid260_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_14_uid260_atan2Test_q : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_14_uid259_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_14_uid259_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_14_uid259_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_14_uid259_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_14_uid259_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid224_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid224_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid226_atan2Test_a : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_12_uid226_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_12_uid226_atan2Test_o : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1E_12_uid226_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid226_atan2Test_q : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_12_uid225_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_12_uid225_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_12_uid225_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_12_uid225_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_12_uid225_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid190_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid190_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid192_atan2Test_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_10_uid192_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_10_uid192_atan2Test_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_10_uid192_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid192_atan2Test_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_10_uid191_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_10_uid191_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_10_uid191_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_10_uid191_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid191_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid152_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid152_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid155_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_8sumAHighB_uid155_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_8sumAHighB_uid155_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_8sumAHighB_uid155_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8sumAHighB_uid155_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid112_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid112_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_6_uid124_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_6_uid124_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal invSignOfSelectionSignal_uid74_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid74_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_4_uid86_atan2Test_in : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_4_uid86_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal table_l5_uid338_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid339_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l5_uid340_atan2Test_q : STD_LOGIC_VECTOR (3 downto 0);
    signal table_l11_uid344_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l11_uid345_atan2Test_q : STD_LOGIC_VECTOR (7 downto 0);
    signal table_l17_uid349_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l17_uid350_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invSignOfSelectionSignal_uid36_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid36_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid42_atan2Test_a : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2sumAHighB_uid42_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2sumAHighB_uid42_atan2Test_o : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2sumAHighB_uid42_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid42_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1_8_uid164_atan2Test_in : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1_8_uid164_atan2Test_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1_16_uid300_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1_16_uid300_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1_16_uid299_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_16_uid299_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_14_uid266_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_14_uid266_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1_14_uid265_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_14_uid265_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_12_uid232_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1_12_uid232_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1_12_uid231_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_12_uid231_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_10_uid198_atan2Test_in : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1_10_uid198_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1_10_uid197_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_10_uid197_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_8_uid163_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_8_uid163_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_6sumAHighB_uid115_atan2Test_a : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_6sumAHighB_uid115_atan2Test_b : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_6sumAHighB_uid115_atan2Test_o : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1E_6sumAHighB_uid115_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6sumAHighB_uid115_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xMSB_uid126_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xMSB_uid126_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7NA_uid136_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_4sumAHighB_uid77_atan2Test_a : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_4sumAHighB_uid77_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_4sumAHighB_uid77_atan2Test_o : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1E_4sumAHighB_uid77_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4sumAHighB_uid77_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid88_atan2Test_in : STD_LOGIC_VECTOR (17 downto 0);
    signal xMSB_uid88_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5NA_uid98_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal os_uid341_atan2Test_q : STD_LOGIC_VECTOR (23 downto 0);
    signal os_uid346_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal os_uid351_atan2Test_q : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1E_2sumAHighB_uid39_atan2Test_a : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_2sumAHighB_uid39_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_2sumAHighB_uid39_atan2Test_o : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_2sumAHighB_uid39_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2sumAHighB_uid39_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_2_uid48_atan2Test_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_2_uid48_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid166_atan2Test_in : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid166_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid171_atan2Test_in : STD_LOGIC_VECTOR (31 downto 0);
    signal twoToMiSiYip_uid171_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid302_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid302_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid306_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid306_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal xMSB_uid268_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid268_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid273_atan2Test_in : STD_LOGIC_VECTOR (25 downto 0);
    signal twoToMiSiYip_uid273_atan2Test_b : STD_LOGIC_VECTOR (11 downto 0);
    signal twoToMiSiXip_uid272_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid272_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xMSB_uid234_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal xMSB_uid234_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid239_atan2Test_in : STD_LOGIC_VECTOR (27 downto 0);
    signal twoToMiSiYip_uid239_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal twoToMiSiXip_uid238_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid238_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal xMSB_uid200_atan2Test_in : STD_LOGIC_VECTOR (29 downto 0);
    signal xMSB_uid200_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiYip_uid205_atan2Test_in : STD_LOGIC_VECTOR (29 downto 0);
    signal twoToMiSiYip_uid205_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal twoToMiSiXip_uid204_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid204_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal twoToMiSiXip_uid170_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal twoToMiSiXip_uid170_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1_6_uid123_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_6_uid123_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal invSignOfSelectionSignal_uid131_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid131_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid137_atan2Test_a : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_7sumAHighB_uid137_atan2Test_b : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_7sumAHighB_uid137_atan2Test_o : STD_LOGIC_VECTOR (32 downto 0);
    signal yip1E_7sumAHighB_uid137_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7sumAHighB_uid137_atan2Test_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xip1_4_uid85_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1_4_uid85_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal invSignOfSelectionSignal_uid93_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid93_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid99_atan2Test_a : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_5sumAHighB_uid99_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_5sumAHighB_uid99_atan2Test_o : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_5sumAHighB_uid99_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid99_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lev1_a0_uid353_atan2Test_a : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0_uid353_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0_uid353_atan2Test_o : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0_uid353_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal lev2_a0_uid354_atan2Test_a : STD_LOGIC_VECTOR (25 downto 0);
    signal lev2_a0_uid354_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal lev2_a0_uid354_atan2Test_o : STD_LOGIC_VECTOR (25 downto 0);
    signal lev2_a0_uid354_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal xip1_2_uid47_atan2Test_in : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1_2_uid47_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid50_atan2Test_in : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid50_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3NA_uid60_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal invSignOfSelectionSignal_uid173_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid173_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid175_atan2Test_a : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_9_uid175_atan2Test_b : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_9_uid175_atan2Test_o : STD_LOGIC_VECTOR (33 downto 0);
    signal yip1E_9_uid175_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid175_atan2Test_q : STD_LOGIC_VECTOR (32 downto 0);
    signal xip1E_9_uid174_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_9_uid174_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_9_uid174_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_9_uid174_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid174_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal yip1E_17_uid311_atan2Test_a : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_17_uid311_atan2Test_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_17_uid311_atan2Test_o : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1E_17_uid311_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_17_uid311_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal invSignOfSelectionSignal_uid275_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid275_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid277_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_15_uid277_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_15_uid277_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal yip1E_15_uid277_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_15_uid277_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_15_uid276_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_15_uid276_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_15_uid276_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_15_uid276_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_15_uid276_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid241_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid241_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid243_atan2Test_a : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_13_uid243_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_13_uid243_atan2Test_o : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1E_13_uid243_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_13_uid243_atan2Test_q : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1E_13_uid242_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_13_uid242_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_13_uid242_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_13_uid242_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_13_uid242_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal invSignOfSelectionSignal_uid207_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid207_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid209_atan2Test_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_11_uid209_atan2Test_b : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_11_uid209_atan2Test_o : STD_LOGIC_VECTOR (31 downto 0);
    signal yip1E_11_uid209_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid209_atan2Test_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1E_11_uid208_atan2Test_a : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_11_uid208_atan2Test_b : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_11_uid208_atan2Test_o : STD_LOGIC_VECTOR (40 downto 0);
    signal xip1E_11_uid208_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid208_atan2Test_q : STD_LOGIC_VECTOR (39 downto 0);
    signal xip1E_7NA_uid133_atan2Test_q : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1E_7sumAHighB_uid134_atan2Test_a : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_7sumAHighB_uid134_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_7sumAHighB_uid134_atan2Test_o : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1E_7sumAHighB_uid134_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7sumAHighB_uid134_atan2Test_q : STD_LOGIC_VECTOR (36 downto 0);
    signal yip1_7_uid143_atan2Test_in : STD_LOGIC_VECTOR (29 downto 0);
    signal yip1_7_uid143_atan2Test_b : STD_LOGIC_VECTOR (29 downto 0);
    signal xip1E_5NA_uid95_atan2Test_q : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_5sumAHighB_uid96_atan2Test_a : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_5sumAHighB_uid96_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_5sumAHighB_uid96_atan2Test_o : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1E_5sumAHighB_uid96_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5sumAHighB_uid96_atan2Test_q : STD_LOGIC_VECTOR (25 downto 0);
    signal yip1_5_uid105_atan2Test_in : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_5_uid105_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal atanRes_uid355_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal atanRes_uid355_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1E_3NA_uid57_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_3sumAHighB_uid61_atan2Test_a : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3sumAHighB_uid61_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3sumAHighB_uid61_atan2Test_o : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3sumAHighB_uid61_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid61_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal invSignOfSelectionSignal_uid55_atan2Test_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid55_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_9_uid181_atan2Test_in : STD_LOGIC_VECTOR (30 downto 0);
    signal yip1_9_uid181_atan2Test_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xip1_9_uid180_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_9_uid180_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_17_uid317_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_17_uid317_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1_15_uid283_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_15_uid283_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_15_uid282_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_15_uid282_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_13_uid249_atan2Test_in : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1_13_uid249_atan2Test_b : STD_LOGIC_VECTOR (26 downto 0);
    signal xip1_13_uid248_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_13_uid248_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal yip1_11_uid215_atan2Test_in : STD_LOGIC_VECTOR (28 downto 0);
    signal yip1_11_uid215_atan2Test_b : STD_LOGIC_VECTOR (28 downto 0);
    signal xip1_11_uid214_atan2Test_in : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_11_uid214_atan2Test_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xip1_7_uid142_atan2Test_in : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_7_uid142_atan2Test_b : STD_LOGIC_VECTOR (34 downto 0);
    signal xip1_5_uid104_atan2Test_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1_5_uid104_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_3sumAHighB_uid58_atan2Test_a : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_3sumAHighB_uid58_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_3sumAHighB_uid58_atan2Test_o : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_3sumAHighB_uid58_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3sumAHighB_uid58_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_3_uid67_atan2Test_in : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1_3_uid67_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid319_atan2Test_in : STD_LOGIC_VECTOR (22 downto 0);
    signal xMSB_uid319_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1_3_uid66_atan2Test_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_3_uid66_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);

begin


    -- cstPiO2OutFormatL_uid357_atan2Test(CONSTANT,356)
    cstPiO2OutFormatL_uid357_atan2Test_q <= "1100100100010000";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- cstPiO2OutFormat_mergedSignalTMB_uid360_atan2Test(BITJOIN,359)@10
    cstPiO2OutFormat_mergedSignalTMB_uid360_atan2Test_q <= GND_q & cstPiO2OutFormatL_uid357_atan2Test_q & GND_q;

    -- cstZeroOutFormat_uid356_atan2Test(CONSTANT,355)
    cstZeroOutFormat_uid356_atan2Test_q <= "000000000000000000";

    -- xMSB_uid24_atan2Test(BITSELECT,23)@1
    xMSB_uid24_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_1_uid15_atan2Test_q);
    xMSB_uid24_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid24_atan2Test_in(12 downto 12));

    -- xIn(GPIN,3)@0

    -- yip1E_1_uid15_atan2Test(SUB,14)@0 + 1
    yip1E_1_uid15_atan2Test_a <= STD_LOGIC_VECTOR("0" & y);
    yip1E_1_uid15_atan2Test_b <= STD_LOGIC_VECTOR("0" & x);
    yip1E_1_uid15_atan2Test_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            yip1E_1_uid15_atan2Test_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            yip1E_1_uid15_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1_uid15_atan2Test_a) - UNSIGNED(yip1E_1_uid15_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_1_uid15_atan2Test_q <= yip1E_1_uid15_atan2Test_o(12 downto 0);

    -- yip1_1_mergedSignalTM_uid28_atan2Test(BITJOIN,27)@1
    yip1_1_mergedSignalTM_uid28_atan2Test_q <= xMSB_uid24_atan2Test_b & yip1E_1_uid15_atan2Test_q;

    -- xMSB_uid31_atan2Test(BITSELECT,30)@1
    xMSB_uid31_atan2Test_in <= STD_LOGIC_VECTOR(yip1_1_mergedSignalTM_uid28_atan2Test_q);
    xMSB_uid31_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid31_atan2Test_in(13 downto 13));

    -- redist32(DELAY,396)
    redist32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid31_atan2Test_b, xout => redist32_q, clk => clk, aclr => areset );

    -- xip1E_1_uid14_atan2Test(ADD,13)@0 + 1
    xip1E_1_uid14_atan2Test_a <= STD_LOGIC_VECTOR("0" & x);
    xip1E_1_uid14_atan2Test_b <= STD_LOGIC_VECTOR("0" & y);
    xip1E_1_uid14_atan2Test_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            xip1E_1_uid14_atan2Test_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            xip1E_1_uid14_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(xip1E_1_uid14_atan2Test_a) + UNSIGNED(xip1E_1_uid14_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_1_uid14_atan2Test_q <= xip1E_1_uid14_atan2Test_o(12 downto 0);

    -- xip1_1_mergedSignalTM_uid22_atan2Test(BITJOIN,21)@1
    xip1_1_mergedSignalTM_uid22_atan2Test_q <= GND_q & xip1E_1_uid14_atan2Test_q;

    -- yip1E_2NA_uid41_atan2Test(BITJOIN,40)@1
    yip1E_2NA_uid41_atan2Test_q <= yip1_1_mergedSignalTM_uid28_atan2Test_q & GND_q;

    -- yip1E_2sumAHighB_uid42_atan2Test(ADDSUB,41)@1
    yip1E_2sumAHighB_uid42_atan2Test_s <= xMSB_uid31_atan2Test_b;
    yip1E_2sumAHighB_uid42_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => yip1E_2NA_uid41_atan2Test_q(14)) & yip1E_2NA_uid41_atan2Test_q));
    yip1E_2sumAHighB_uid42_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_1_mergedSignalTM_uid22_atan2Test_q));
    yip1E_2sumAHighB_uid42_atan2Test_combproc: PROCESS (yip1E_2sumAHighB_uid42_atan2Test_a, yip1E_2sumAHighB_uid42_atan2Test_b, yip1E_2sumAHighB_uid42_atan2Test_s)
    BEGIN
        IF (yip1E_2sumAHighB_uid42_atan2Test_s = "1") THEN
            yip1E_2sumAHighB_uid42_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid42_atan2Test_a) + SIGNED(yip1E_2sumAHighB_uid42_atan2Test_b));
        ELSE
            yip1E_2sumAHighB_uid42_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid42_atan2Test_a) - SIGNED(yip1E_2sumAHighB_uid42_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_2sumAHighB_uid42_atan2Test_q <= yip1E_2sumAHighB_uid42_atan2Test_o(15 downto 0);

    -- yip1_2_uid48_atan2Test(BITSELECT,47)@1
    yip1_2_uid48_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_2sumAHighB_uid42_atan2Test_q(14 downto 0));
    yip1_2_uid48_atan2Test_b <= STD_LOGIC_VECTOR(yip1_2_uid48_atan2Test_in(14 downto 0));

    -- xMSB_uid50_atan2Test(BITSELECT,49)@1
    xMSB_uid50_atan2Test_in <= STD_LOGIC_VECTOR(yip1_2_uid48_atan2Test_b);
    xMSB_uid50_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid50_atan2Test_in(14 downto 14));

    -- redist31(DELAY,395)
    redist31 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid50_atan2Test_b, xout => redist31_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid36_atan2Test(LOGICAL,35)@1
    invSignOfSelectionSignal_uid36_atan2Test_a <= xMSB_uid31_atan2Test_b;
    invSignOfSelectionSignal_uid36_atan2Test_q <= not (invSignOfSelectionSignal_uid36_atan2Test_a);

    -- xip1E_2NA_uid38_atan2Test(BITJOIN,37)@1
    xip1E_2NA_uid38_atan2Test_q <= xip1_1_mergedSignalTM_uid22_atan2Test_q & GND_q;

    -- xip1E_2sumAHighB_uid39_atan2Test(ADDSUB,38)@1
    xip1E_2sumAHighB_uid39_atan2Test_s <= invSignOfSelectionSignal_uid36_atan2Test_q;
    xip1E_2sumAHighB_uid39_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_2NA_uid38_atan2Test_q));
    xip1E_2sumAHighB_uid39_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 14 => yip1_1_mergedSignalTM_uid28_atan2Test_q(13)) & yip1_1_mergedSignalTM_uid28_atan2Test_q));
    xip1E_2sumAHighB_uid39_atan2Test_combproc: PROCESS (xip1E_2sumAHighB_uid39_atan2Test_a, xip1E_2sumAHighB_uid39_atan2Test_b, xip1E_2sumAHighB_uid39_atan2Test_s)
    BEGIN
        IF (xip1E_2sumAHighB_uid39_atan2Test_s = "1") THEN
            xip1E_2sumAHighB_uid39_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid39_atan2Test_a) + SIGNED(xip1E_2sumAHighB_uid39_atan2Test_b));
        ELSE
            xip1E_2sumAHighB_uid39_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid39_atan2Test_a) - SIGNED(xip1E_2sumAHighB_uid39_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_2sumAHighB_uid39_atan2Test_q <= xip1E_2sumAHighB_uid39_atan2Test_o(16 downto 0);

    -- xip1_2_uid47_atan2Test(BITSELECT,46)@1
    xip1_2_uid47_atan2Test_in <= xip1E_2sumAHighB_uid39_atan2Test_q(14 downto 0);
    xip1_2_uid47_atan2Test_b <= xip1_2_uid47_atan2Test_in(14 downto 0);

    -- xip1E_3CostZeroPaddingA_uid56_atan2Test(CONSTANT,55)
    xip1E_3CostZeroPaddingA_uid56_atan2Test_q <= "00";

    -- yip1E_3NA_uid60_atan2Test(BITJOIN,59)@1
    yip1E_3NA_uid60_atan2Test_q <= yip1_2_uid48_atan2Test_b & xip1E_3CostZeroPaddingA_uid56_atan2Test_q;

    -- yip1E_3sumAHighB_uid61_atan2Test(ADDSUB,60)@1
    yip1E_3sumAHighB_uid61_atan2Test_s <= xMSB_uid50_atan2Test_b;
    yip1E_3sumAHighB_uid61_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => yip1E_3NA_uid60_atan2Test_q(16)) & yip1E_3NA_uid60_atan2Test_q));
    yip1E_3sumAHighB_uid61_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_2_uid47_atan2Test_b));
    yip1E_3sumAHighB_uid61_atan2Test_combproc: PROCESS (yip1E_3sumAHighB_uid61_atan2Test_a, yip1E_3sumAHighB_uid61_atan2Test_b, yip1E_3sumAHighB_uid61_atan2Test_s)
    BEGIN
        IF (yip1E_3sumAHighB_uid61_atan2Test_s = "1") THEN
            yip1E_3sumAHighB_uid61_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid61_atan2Test_a) + SIGNED(yip1E_3sumAHighB_uid61_atan2Test_b));
        ELSE
            yip1E_3sumAHighB_uid61_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid61_atan2Test_a) - SIGNED(yip1E_3sumAHighB_uid61_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_3sumAHighB_uid61_atan2Test_q <= yip1E_3sumAHighB_uid61_atan2Test_o(17 downto 0);

    -- yip1_3_uid67_atan2Test(BITSELECT,66)@1
    yip1_3_uid67_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_3sumAHighB_uid61_atan2Test_q(15 downto 0));
    yip1_3_uid67_atan2Test_b <= STD_LOGIC_VECTOR(yip1_3_uid67_atan2Test_in(15 downto 0));

    -- redist29(DELAY,393)
    redist29 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_3_uid67_atan2Test_b, xout => redist29_q, clk => clk, aclr => areset );

    -- xMSB_uid69_atan2Test(BITSELECT,68)@2
    xMSB_uid69_atan2Test_in <= STD_LOGIC_VECTOR(redist29_q);
    xMSB_uid69_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid69_atan2Test_in(15 downto 15));

    -- redist28(DELAY,392)
    redist28 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid69_atan2Test_b, xout => redist28_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid55_atan2Test(LOGICAL,54)@1
    invSignOfSelectionSignal_uid55_atan2Test_a <= xMSB_uid50_atan2Test_b;
    invSignOfSelectionSignal_uid55_atan2Test_q <= not (invSignOfSelectionSignal_uid55_atan2Test_a);

    -- xip1E_3NA_uid57_atan2Test(BITJOIN,56)@1
    xip1E_3NA_uid57_atan2Test_q <= xip1_2_uid47_atan2Test_b & xip1E_3CostZeroPaddingA_uid56_atan2Test_q;

    -- xip1E_3sumAHighB_uid58_atan2Test(ADDSUB,57)@1
    xip1E_3sumAHighB_uid58_atan2Test_s <= invSignOfSelectionSignal_uid55_atan2Test_q;
    xip1E_3sumAHighB_uid58_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_3NA_uid57_atan2Test_q));
    xip1E_3sumAHighB_uid58_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 15 => yip1_2_uid48_atan2Test_b(14)) & yip1_2_uid48_atan2Test_b));
    xip1E_3sumAHighB_uid58_atan2Test_combproc: PROCESS (xip1E_3sumAHighB_uid58_atan2Test_a, xip1E_3sumAHighB_uid58_atan2Test_b, xip1E_3sumAHighB_uid58_atan2Test_s)
    BEGIN
        IF (xip1E_3sumAHighB_uid58_atan2Test_s = "1") THEN
            xip1E_3sumAHighB_uid58_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid58_atan2Test_a) + SIGNED(xip1E_3sumAHighB_uid58_atan2Test_b));
        ELSE
            xip1E_3sumAHighB_uid58_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid58_atan2Test_a) - SIGNED(xip1E_3sumAHighB_uid58_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_3sumAHighB_uid58_atan2Test_q <= xip1E_3sumAHighB_uid58_atan2Test_o(18 downto 0);

    -- xip1_3_uid66_atan2Test(BITSELECT,65)@1
    xip1_3_uid66_atan2Test_in <= xip1E_3sumAHighB_uid58_atan2Test_q(16 downto 0);
    xip1_3_uid66_atan2Test_b <= xip1_3_uid66_atan2Test_in(16 downto 0);

    -- redist30(DELAY,394)
    redist30 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_3_uid66_atan2Test_b, xout => redist30_q, clk => clk, aclr => areset );

    -- xip1E_4CostZeroPaddingA_uid75_atan2Test(CONSTANT,74)
    xip1E_4CostZeroPaddingA_uid75_atan2Test_q <= "000";

    -- yip1E_4NA_uid79_atan2Test(BITJOIN,78)@2
    yip1E_4NA_uid79_atan2Test_q <= redist29_q & xip1E_4CostZeroPaddingA_uid75_atan2Test_q;

    -- yip1E_4sumAHighB_uid80_atan2Test(ADDSUB,79)@2
    yip1E_4sumAHighB_uid80_atan2Test_s <= xMSB_uid69_atan2Test_b;
    yip1E_4sumAHighB_uid80_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => yip1E_4NA_uid79_atan2Test_q(18)) & yip1E_4NA_uid79_atan2Test_q));
    yip1E_4sumAHighB_uid80_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist30_q));
    yip1E_4sumAHighB_uid80_atan2Test_combproc: PROCESS (yip1E_4sumAHighB_uid80_atan2Test_a, yip1E_4sumAHighB_uid80_atan2Test_b, yip1E_4sumAHighB_uid80_atan2Test_s)
    BEGIN
        IF (yip1E_4sumAHighB_uid80_atan2Test_s = "1") THEN
            yip1E_4sumAHighB_uid80_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid80_atan2Test_a) + SIGNED(yip1E_4sumAHighB_uid80_atan2Test_b));
        ELSE
            yip1E_4sumAHighB_uid80_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid80_atan2Test_a) - SIGNED(yip1E_4sumAHighB_uid80_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_4sumAHighB_uid80_atan2Test_q <= yip1E_4sumAHighB_uid80_atan2Test_o(19 downto 0);

    -- yip1_4_uid86_atan2Test(BITSELECT,85)@2
    yip1_4_uid86_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_4sumAHighB_uid80_atan2Test_q(17 downto 0));
    yip1_4_uid86_atan2Test_b <= STD_LOGIC_VECTOR(yip1_4_uid86_atan2Test_in(17 downto 0));

    -- xMSB_uid88_atan2Test(BITSELECT,87)@2
    xMSB_uid88_atan2Test_in <= STD_LOGIC_VECTOR(yip1_4_uid86_atan2Test_b);
    xMSB_uid88_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid88_atan2Test_in(17 downto 17));

    -- redist27(DELAY,391)
    redist27 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid88_atan2Test_b, xout => redist27_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid74_atan2Test(LOGICAL,73)@2
    invSignOfSelectionSignal_uid74_atan2Test_a <= xMSB_uid69_atan2Test_b;
    invSignOfSelectionSignal_uid74_atan2Test_q <= not (invSignOfSelectionSignal_uid74_atan2Test_a);

    -- xip1E_4NA_uid76_atan2Test(BITJOIN,75)@2
    xip1E_4NA_uid76_atan2Test_q <= redist30_q & xip1E_4CostZeroPaddingA_uid75_atan2Test_q;

    -- xip1E_4sumAHighB_uid77_atan2Test(ADDSUB,76)@2
    xip1E_4sumAHighB_uid77_atan2Test_s <= invSignOfSelectionSignal_uid74_atan2Test_q;
    xip1E_4sumAHighB_uid77_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_4NA_uid76_atan2Test_q));
    xip1E_4sumAHighB_uid77_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 16 => redist29_q(15)) & redist29_q));
    xip1E_4sumAHighB_uid77_atan2Test_combproc: PROCESS (xip1E_4sumAHighB_uid77_atan2Test_a, xip1E_4sumAHighB_uid77_atan2Test_b, xip1E_4sumAHighB_uid77_atan2Test_s)
    BEGIN
        IF (xip1E_4sumAHighB_uid77_atan2Test_s = "1") THEN
            xip1E_4sumAHighB_uid77_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid77_atan2Test_a) + SIGNED(xip1E_4sumAHighB_uid77_atan2Test_b));
        ELSE
            xip1E_4sumAHighB_uid77_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid77_atan2Test_a) - SIGNED(xip1E_4sumAHighB_uid77_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_4sumAHighB_uid77_atan2Test_q <= xip1E_4sumAHighB_uid77_atan2Test_o(21 downto 0);

    -- xip1_4_uid85_atan2Test(BITSELECT,84)@2
    xip1_4_uid85_atan2Test_in <= xip1E_4sumAHighB_uid77_atan2Test_q(19 downto 0);
    xip1_4_uid85_atan2Test_b <= xip1_4_uid85_atan2Test_in(19 downto 0);

    -- xip1E_5CostZeroPaddingA_uid94_atan2Test(CONSTANT,93)
    xip1E_5CostZeroPaddingA_uid94_atan2Test_q <= "0000";

    -- yip1E_5NA_uid98_atan2Test(BITJOIN,97)@2
    yip1E_5NA_uid98_atan2Test_q <= yip1_4_uid86_atan2Test_b & xip1E_5CostZeroPaddingA_uid94_atan2Test_q;

    -- yip1E_5sumAHighB_uid99_atan2Test(ADDSUB,98)@2
    yip1E_5sumAHighB_uid99_atan2Test_s <= xMSB_uid88_atan2Test_b;
    yip1E_5sumAHighB_uid99_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 22 => yip1E_5NA_uid98_atan2Test_q(21)) & yip1E_5NA_uid98_atan2Test_q));
    yip1E_5sumAHighB_uid99_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_4_uid85_atan2Test_b));
    yip1E_5sumAHighB_uid99_atan2Test_combproc: PROCESS (yip1E_5sumAHighB_uid99_atan2Test_a, yip1E_5sumAHighB_uid99_atan2Test_b, yip1E_5sumAHighB_uid99_atan2Test_s)
    BEGIN
        IF (yip1E_5sumAHighB_uid99_atan2Test_s = "1") THEN
            yip1E_5sumAHighB_uid99_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid99_atan2Test_a) + SIGNED(yip1E_5sumAHighB_uid99_atan2Test_b));
        ELSE
            yip1E_5sumAHighB_uid99_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid99_atan2Test_a) - SIGNED(yip1E_5sumAHighB_uid99_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_5sumAHighB_uid99_atan2Test_q <= yip1E_5sumAHighB_uid99_atan2Test_o(22 downto 0);

    -- yip1_5_uid105_atan2Test(BITSELECT,104)@2
    yip1_5_uid105_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_5sumAHighB_uid99_atan2Test_q(20 downto 0));
    yip1_5_uid105_atan2Test_b <= STD_LOGIC_VECTOR(yip1_5_uid105_atan2Test_in(20 downto 0));

    -- redist25(DELAY,389)
    redist25 : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_5_uid105_atan2Test_b, xout => redist25_q, clk => clk, aclr => areset );

    -- xMSB_uid107_atan2Test(BITSELECT,106)@3
    xMSB_uid107_atan2Test_in <= STD_LOGIC_VECTOR(redist25_q);
    xMSB_uid107_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid107_atan2Test_in(20 downto 20));

    -- redist24(DELAY,388)
    redist24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid107_atan2Test_b, xout => redist24_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid93_atan2Test(LOGICAL,92)@2
    invSignOfSelectionSignal_uid93_atan2Test_a <= xMSB_uid88_atan2Test_b;
    invSignOfSelectionSignal_uid93_atan2Test_q <= not (invSignOfSelectionSignal_uid93_atan2Test_a);

    -- xip1E_5NA_uid95_atan2Test(BITJOIN,94)@2
    xip1E_5NA_uid95_atan2Test_q <= xip1_4_uid85_atan2Test_b & xip1E_5CostZeroPaddingA_uid94_atan2Test_q;

    -- xip1E_5sumAHighB_uid96_atan2Test(ADDSUB,95)@2
    xip1E_5sumAHighB_uid96_atan2Test_s <= invSignOfSelectionSignal_uid93_atan2Test_q;
    xip1E_5sumAHighB_uid96_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_5NA_uid95_atan2Test_q));
    xip1E_5sumAHighB_uid96_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => yip1_4_uid86_atan2Test_b(17)) & yip1_4_uid86_atan2Test_b));
    xip1E_5sumAHighB_uid96_atan2Test_combproc: PROCESS (xip1E_5sumAHighB_uid96_atan2Test_a, xip1E_5sumAHighB_uid96_atan2Test_b, xip1E_5sumAHighB_uid96_atan2Test_s)
    BEGIN
        IF (xip1E_5sumAHighB_uid96_atan2Test_s = "1") THEN
            xip1E_5sumAHighB_uid96_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid96_atan2Test_a) + SIGNED(xip1E_5sumAHighB_uid96_atan2Test_b));
        ELSE
            xip1E_5sumAHighB_uid96_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid96_atan2Test_a) - SIGNED(xip1E_5sumAHighB_uid96_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_5sumAHighB_uid96_atan2Test_q <= xip1E_5sumAHighB_uid96_atan2Test_o(25 downto 0);

    -- xip1_5_uid104_atan2Test(BITSELECT,103)@2
    xip1_5_uid104_atan2Test_in <= xip1E_5sumAHighB_uid96_atan2Test_q(23 downto 0);
    xip1_5_uid104_atan2Test_b <= xip1_5_uid104_atan2Test_in(23 downto 0);

    -- redist26(DELAY,390)
    redist26 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_5_uid104_atan2Test_b, xout => redist26_q, clk => clk, aclr => areset );

    -- xip1E_6CostZeroPaddingA_uid113_atan2Test(CONSTANT,112)
    xip1E_6CostZeroPaddingA_uid113_atan2Test_q <= "00000";

    -- yip1E_6NA_uid117_atan2Test(BITJOIN,116)@3
    yip1E_6NA_uid117_atan2Test_q <= redist25_q & xip1E_6CostZeroPaddingA_uid113_atan2Test_q;

    -- yip1E_6sumAHighB_uid118_atan2Test(ADDSUB,117)@3
    yip1E_6sumAHighB_uid118_atan2Test_s <= xMSB_uid107_atan2Test_b;
    yip1E_6sumAHighB_uid118_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => yip1E_6NA_uid117_atan2Test_q(25)) & yip1E_6NA_uid117_atan2Test_q));
    yip1E_6sumAHighB_uid118_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & redist26_q));
    yip1E_6sumAHighB_uid118_atan2Test_combproc: PROCESS (yip1E_6sumAHighB_uid118_atan2Test_a, yip1E_6sumAHighB_uid118_atan2Test_b, yip1E_6sumAHighB_uid118_atan2Test_s)
    BEGIN
        IF (yip1E_6sumAHighB_uid118_atan2Test_s = "1") THEN
            yip1E_6sumAHighB_uid118_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid118_atan2Test_a) + SIGNED(yip1E_6sumAHighB_uid118_atan2Test_b));
        ELSE
            yip1E_6sumAHighB_uid118_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid118_atan2Test_a) - SIGNED(yip1E_6sumAHighB_uid118_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_6sumAHighB_uid118_atan2Test_q <= yip1E_6sumAHighB_uid118_atan2Test_o(26 downto 0);

    -- yip1_6_uid124_atan2Test(BITSELECT,123)@3
    yip1_6_uid124_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_6sumAHighB_uid118_atan2Test_q(24 downto 0));
    yip1_6_uid124_atan2Test_b <= STD_LOGIC_VECTOR(yip1_6_uid124_atan2Test_in(24 downto 0));

    -- xMSB_uid126_atan2Test(BITSELECT,125)@3
    xMSB_uid126_atan2Test_in <= STD_LOGIC_VECTOR(yip1_6_uid124_atan2Test_b);
    xMSB_uid126_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid126_atan2Test_in(24 downto 24));

    -- redist23(DELAY,387)
    redist23 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid126_atan2Test_b, xout => redist23_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid112_atan2Test(LOGICAL,111)@3
    invSignOfSelectionSignal_uid112_atan2Test_a <= xMSB_uid107_atan2Test_b;
    invSignOfSelectionSignal_uid112_atan2Test_q <= not (invSignOfSelectionSignal_uid112_atan2Test_a);

    -- xip1E_6NA_uid114_atan2Test(BITJOIN,113)@3
    xip1E_6NA_uid114_atan2Test_q <= redist26_q & xip1E_6CostZeroPaddingA_uid113_atan2Test_q;

    -- xip1E_6sumAHighB_uid115_atan2Test(ADDSUB,114)@3
    xip1E_6sumAHighB_uid115_atan2Test_s <= invSignOfSelectionSignal_uid112_atan2Test_q;
    xip1E_6sumAHighB_uid115_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_6NA_uid114_atan2Test_q));
    xip1E_6sumAHighB_uid115_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 21 => redist25_q(20)) & redist25_q));
    xip1E_6sumAHighB_uid115_atan2Test_combproc: PROCESS (xip1E_6sumAHighB_uid115_atan2Test_a, xip1E_6sumAHighB_uid115_atan2Test_b, xip1E_6sumAHighB_uid115_atan2Test_s)
    BEGIN
        IF (xip1E_6sumAHighB_uid115_atan2Test_s = "1") THEN
            xip1E_6sumAHighB_uid115_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid115_atan2Test_a) + SIGNED(xip1E_6sumAHighB_uid115_atan2Test_b));
        ELSE
            xip1E_6sumAHighB_uid115_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid115_atan2Test_a) - SIGNED(xip1E_6sumAHighB_uid115_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_6sumAHighB_uid115_atan2Test_q <= xip1E_6sumAHighB_uid115_atan2Test_o(30 downto 0);

    -- xip1_6_uid123_atan2Test(BITSELECT,122)@3
    xip1_6_uid123_atan2Test_in <= xip1E_6sumAHighB_uid115_atan2Test_q(28 downto 0);
    xip1_6_uid123_atan2Test_b <= xip1_6_uid123_atan2Test_in(28 downto 0);

    -- xip1E_7CostZeroPaddingA_uid132_atan2Test(CONSTANT,131)
    xip1E_7CostZeroPaddingA_uid132_atan2Test_q <= "000000";

    -- yip1E_7NA_uid136_atan2Test(BITJOIN,135)@3
    yip1E_7NA_uid136_atan2Test_q <= yip1_6_uid124_atan2Test_b & xip1E_7CostZeroPaddingA_uid132_atan2Test_q;

    -- yip1E_7sumAHighB_uid137_atan2Test(ADDSUB,136)@3
    yip1E_7sumAHighB_uid137_atan2Test_s <= xMSB_uid126_atan2Test_b;
    yip1E_7sumAHighB_uid137_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 31 => yip1E_7NA_uid136_atan2Test_q(30)) & yip1E_7NA_uid136_atan2Test_q));
    yip1E_7sumAHighB_uid137_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & xip1_6_uid123_atan2Test_b));
    yip1E_7sumAHighB_uid137_atan2Test_combproc: PROCESS (yip1E_7sumAHighB_uid137_atan2Test_a, yip1E_7sumAHighB_uid137_atan2Test_b, yip1E_7sumAHighB_uid137_atan2Test_s)
    BEGIN
        IF (yip1E_7sumAHighB_uid137_atan2Test_s = "1") THEN
            yip1E_7sumAHighB_uid137_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid137_atan2Test_a) + SIGNED(yip1E_7sumAHighB_uid137_atan2Test_b));
        ELSE
            yip1E_7sumAHighB_uid137_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7sumAHighB_uid137_atan2Test_a) - SIGNED(yip1E_7sumAHighB_uid137_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_7sumAHighB_uid137_atan2Test_q <= yip1E_7sumAHighB_uid137_atan2Test_o(31 downto 0);

    -- yip1_7_uid143_atan2Test(BITSELECT,142)@3
    yip1_7_uid143_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_7sumAHighB_uid137_atan2Test_q(29 downto 0));
    yip1_7_uid143_atan2Test_b <= STD_LOGIC_VECTOR(yip1_7_uid143_atan2Test_in(29 downto 0));

    -- redist21(DELAY,385)
    redist21 : dspba_delay
    GENERIC MAP ( width => 30, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_7_uid143_atan2Test_b, xout => redist21_q, clk => clk, aclr => areset );

    -- xMSB_uid145_atan2Test(BITSELECT,144)@4
    xMSB_uid145_atan2Test_in <= STD_LOGIC_VECTOR(redist21_q);
    xMSB_uid145_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid145_atan2Test_in(29 downto 29));

    -- redist20(DELAY,384)
    redist20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid145_atan2Test_b, xout => redist20_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid131_atan2Test(LOGICAL,130)@3
    invSignOfSelectionSignal_uid131_atan2Test_a <= xMSB_uid126_atan2Test_b;
    invSignOfSelectionSignal_uid131_atan2Test_q <= not (invSignOfSelectionSignal_uid131_atan2Test_a);

    -- xip1E_7NA_uid133_atan2Test(BITJOIN,132)@3
    xip1E_7NA_uid133_atan2Test_q <= xip1_6_uid123_atan2Test_b & xip1E_7CostZeroPaddingA_uid132_atan2Test_q;

    -- xip1E_7sumAHighB_uid134_atan2Test(ADDSUB,133)@3
    xip1E_7sumAHighB_uid134_atan2Test_s <= invSignOfSelectionSignal_uid131_atan2Test_q;
    xip1E_7sumAHighB_uid134_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_7NA_uid133_atan2Test_q));
    xip1E_7sumAHighB_uid134_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 25 => yip1_6_uid124_atan2Test_b(24)) & yip1_6_uid124_atan2Test_b));
    xip1E_7sumAHighB_uid134_atan2Test_combproc: PROCESS (xip1E_7sumAHighB_uid134_atan2Test_a, xip1E_7sumAHighB_uid134_atan2Test_b, xip1E_7sumAHighB_uid134_atan2Test_s)
    BEGIN
        IF (xip1E_7sumAHighB_uid134_atan2Test_s = "1") THEN
            xip1E_7sumAHighB_uid134_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid134_atan2Test_a) + SIGNED(xip1E_7sumAHighB_uid134_atan2Test_b));
        ELSE
            xip1E_7sumAHighB_uid134_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7sumAHighB_uid134_atan2Test_a) - SIGNED(xip1E_7sumAHighB_uid134_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_7sumAHighB_uid134_atan2Test_q <= xip1E_7sumAHighB_uid134_atan2Test_o(36 downto 0);

    -- xip1_7_uid142_atan2Test(BITSELECT,141)@3
    xip1_7_uid142_atan2Test_in <= xip1E_7sumAHighB_uid134_atan2Test_q(34 downto 0);
    xip1_7_uid142_atan2Test_b <= xip1_7_uid142_atan2Test_in(34 downto 0);

    -- redist22(DELAY,386)
    redist22 : dspba_delay
    GENERIC MAP ( width => 35, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_7_uid142_atan2Test_b, xout => redist22_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid149_atan2Test(BITSELECT,148)@4
    twoToMiSiXip_uid149_atan2Test_in <= redist22_q;
    twoToMiSiXip_uid149_atan2Test_b <= twoToMiSiXip_uid149_atan2Test_in(34 downto 4);

    -- yip1E_8NA_uid157_atan2Test(BITJOIN,156)@4
    yip1E_8NA_uid157_atan2Test_q <= redist21_q & xip1E_4CostZeroPaddingA_uid75_atan2Test_q;

    -- yip1E_8sumAHighB_uid158_atan2Test(ADDSUB,157)@4
    yip1E_8sumAHighB_uid158_atan2Test_s <= xMSB_uid145_atan2Test_b;
    yip1E_8sumAHighB_uid158_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => yip1E_8NA_uid157_atan2Test_q(32)) & yip1E_8NA_uid157_atan2Test_q));
    yip1E_8sumAHighB_uid158_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid149_atan2Test_b));
    yip1E_8sumAHighB_uid158_atan2Test_combproc: PROCESS (yip1E_8sumAHighB_uid158_atan2Test_a, yip1E_8sumAHighB_uid158_atan2Test_b, yip1E_8sumAHighB_uid158_atan2Test_s)
    BEGIN
        IF (yip1E_8sumAHighB_uid158_atan2Test_s = "1") THEN
            yip1E_8sumAHighB_uid158_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid158_atan2Test_a) + SIGNED(yip1E_8sumAHighB_uid158_atan2Test_b));
        ELSE
            yip1E_8sumAHighB_uid158_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8sumAHighB_uid158_atan2Test_a) - SIGNED(yip1E_8sumAHighB_uid158_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_8sumAHighB_uid158_atan2Test_q <= yip1E_8sumAHighB_uid158_atan2Test_o(33 downto 0);

    -- yip1_8_uid164_atan2Test(BITSELECT,163)@4
    yip1_8_uid164_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_8sumAHighB_uid158_atan2Test_q(31 downto 0));
    yip1_8_uid164_atan2Test_b <= STD_LOGIC_VECTOR(yip1_8_uid164_atan2Test_in(31 downto 0));

    -- xMSB_uid166_atan2Test(BITSELECT,165)@4
    xMSB_uid166_atan2Test_in <= STD_LOGIC_VECTOR(yip1_8_uid164_atan2Test_b);
    xMSB_uid166_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid166_atan2Test_in(31 downto 31));

    -- redist19(DELAY,383)
    redist19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid166_atan2Test_b, xout => redist19_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid152_atan2Test(LOGICAL,151)@4
    invSignOfSelectionSignal_uid152_atan2Test_a <= xMSB_uid145_atan2Test_b;
    invSignOfSelectionSignal_uid152_atan2Test_q <= not (invSignOfSelectionSignal_uid152_atan2Test_a);

    -- twoToMiSiYip_uid150_atan2Test(BITSELECT,149)@4
    twoToMiSiYip_uid150_atan2Test_in <= STD_LOGIC_VECTOR(redist21_q);
    twoToMiSiYip_uid150_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid150_atan2Test_in(29 downto 4));

    -- xip1E_8NA_uid154_atan2Test(BITJOIN,153)@4
    xip1E_8NA_uid154_atan2Test_q <= redist22_q & xip1E_4CostZeroPaddingA_uid75_atan2Test_q;

    -- xip1E_8sumAHighB_uid155_atan2Test(ADDSUB,154)@4
    xip1E_8sumAHighB_uid155_atan2Test_s <= invSignOfSelectionSignal_uid152_atan2Test_q;
    xip1E_8sumAHighB_uid155_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1E_8NA_uid154_atan2Test_q));
    xip1E_8sumAHighB_uid155_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 26 => twoToMiSiYip_uid150_atan2Test_b(25)) & twoToMiSiYip_uid150_atan2Test_b));
    xip1E_8sumAHighB_uid155_atan2Test_combproc: PROCESS (xip1E_8sumAHighB_uid155_atan2Test_a, xip1E_8sumAHighB_uid155_atan2Test_b, xip1E_8sumAHighB_uid155_atan2Test_s)
    BEGIN
        IF (xip1E_8sumAHighB_uid155_atan2Test_s = "1") THEN
            xip1E_8sumAHighB_uid155_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid155_atan2Test_a) + SIGNED(xip1E_8sumAHighB_uid155_atan2Test_b));
        ELSE
            xip1E_8sumAHighB_uid155_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8sumAHighB_uid155_atan2Test_a) - SIGNED(xip1E_8sumAHighB_uid155_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_8sumAHighB_uid155_atan2Test_q <= xip1E_8sumAHighB_uid155_atan2Test_o(39 downto 0);

    -- xip1_8_uid163_atan2Test(BITSELECT,162)@4
    xip1_8_uid163_atan2Test_in <= xip1E_8sumAHighB_uid155_atan2Test_q(37 downto 0);
    xip1_8_uid163_atan2Test_b <= xip1_8_uid163_atan2Test_in(37 downto 0);

    -- twoToMiSiXip_uid170_atan2Test(BITSELECT,169)@4
    twoToMiSiXip_uid170_atan2Test_in <= xip1_8_uid163_atan2Test_b;
    twoToMiSiXip_uid170_atan2Test_b <= twoToMiSiXip_uid170_atan2Test_in(37 downto 8);

    -- yip1E_9_uid175_atan2Test(ADDSUB,174)@4
    yip1E_9_uid175_atan2Test_s <= xMSB_uid166_atan2Test_b;
    yip1E_9_uid175_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => yip1_8_uid164_atan2Test_b(31)) & yip1_8_uid164_atan2Test_b));
    yip1E_9_uid175_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid170_atan2Test_b));
    yip1E_9_uid175_atan2Test_combproc: PROCESS (yip1E_9_uid175_atan2Test_a, yip1E_9_uid175_atan2Test_b, yip1E_9_uid175_atan2Test_s)
    BEGIN
        IF (yip1E_9_uid175_atan2Test_s = "1") THEN
            yip1E_9_uid175_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid175_atan2Test_a) + SIGNED(yip1E_9_uid175_atan2Test_b));
        ELSE
            yip1E_9_uid175_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid175_atan2Test_a) - SIGNED(yip1E_9_uid175_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_9_uid175_atan2Test_q <= yip1E_9_uid175_atan2Test_o(32 downto 0);

    -- yip1_9_uid181_atan2Test(BITSELECT,180)@4
    yip1_9_uid181_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_9_uid175_atan2Test_q(30 downto 0));
    yip1_9_uid181_atan2Test_b <= STD_LOGIC_VECTOR(yip1_9_uid181_atan2Test_in(30 downto 0));

    -- redist17(DELAY,381)
    redist17 : dspba_delay
    GENERIC MAP ( width => 31, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_9_uid181_atan2Test_b, xout => redist17_q, clk => clk, aclr => areset );

    -- xMSB_uid183_atan2Test(BITSELECT,182)@5
    xMSB_uid183_atan2Test_in <= STD_LOGIC_VECTOR(redist17_q);
    xMSB_uid183_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid183_atan2Test_in(30 downto 30));

    -- redist16(DELAY,380)
    redist16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid183_atan2Test_b, xout => redist16_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid173_atan2Test(LOGICAL,172)@4
    invSignOfSelectionSignal_uid173_atan2Test_a <= xMSB_uid166_atan2Test_b;
    invSignOfSelectionSignal_uid173_atan2Test_q <= not (invSignOfSelectionSignal_uid173_atan2Test_a);

    -- twoToMiSiYip_uid171_atan2Test(BITSELECT,170)@4
    twoToMiSiYip_uid171_atan2Test_in <= STD_LOGIC_VECTOR(yip1_8_uid164_atan2Test_b);
    twoToMiSiYip_uid171_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid171_atan2Test_in(31 downto 8));

    -- xip1E_9_uid174_atan2Test(ADDSUB,173)@4
    xip1E_9_uid174_atan2Test_s <= invSignOfSelectionSignal_uid173_atan2Test_q;
    xip1E_9_uid174_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_8_uid163_atan2Test_b));
    xip1E_9_uid174_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 24 => twoToMiSiYip_uid171_atan2Test_b(23)) & twoToMiSiYip_uid171_atan2Test_b));
    xip1E_9_uid174_atan2Test_combproc: PROCESS (xip1E_9_uid174_atan2Test_a, xip1E_9_uid174_atan2Test_b, xip1E_9_uid174_atan2Test_s)
    BEGIN
        IF (xip1E_9_uid174_atan2Test_s = "1") THEN
            xip1E_9_uid174_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid174_atan2Test_a) + SIGNED(xip1E_9_uid174_atan2Test_b));
        ELSE
            xip1E_9_uid174_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid174_atan2Test_a) - SIGNED(xip1E_9_uid174_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_9_uid174_atan2Test_q <= xip1E_9_uid174_atan2Test_o(39 downto 0);

    -- xip1_9_uid180_atan2Test(BITSELECT,179)@4
    xip1_9_uid180_atan2Test_in <= xip1E_9_uid174_atan2Test_q(37 downto 0);
    xip1_9_uid180_atan2Test_b <= xip1_9_uid180_atan2Test_in(37 downto 0);

    -- redist18(DELAY,382)
    redist18 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_9_uid180_atan2Test_b, xout => redist18_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid187_atan2Test(BITSELECT,186)@5
    twoToMiSiXip_uid187_atan2Test_in <= redist18_q;
    twoToMiSiXip_uid187_atan2Test_b <= twoToMiSiXip_uid187_atan2Test_in(37 downto 9);

    -- yip1E_10_uid192_atan2Test(ADDSUB,191)@5
    yip1E_10_uid192_atan2Test_s <= xMSB_uid183_atan2Test_b;
    yip1E_10_uid192_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 31 => redist17_q(30)) & redist17_q));
    yip1E_10_uid192_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid187_atan2Test_b));
    yip1E_10_uid192_atan2Test_combproc: PROCESS (yip1E_10_uid192_atan2Test_a, yip1E_10_uid192_atan2Test_b, yip1E_10_uid192_atan2Test_s)
    BEGIN
        IF (yip1E_10_uid192_atan2Test_s = "1") THEN
            yip1E_10_uid192_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid192_atan2Test_a) + SIGNED(yip1E_10_uid192_atan2Test_b));
        ELSE
            yip1E_10_uid192_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid192_atan2Test_a) - SIGNED(yip1E_10_uid192_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_10_uid192_atan2Test_q <= yip1E_10_uid192_atan2Test_o(31 downto 0);

    -- yip1_10_uid198_atan2Test(BITSELECT,197)@5
    yip1_10_uid198_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_10_uid192_atan2Test_q(29 downto 0));
    yip1_10_uid198_atan2Test_b <= STD_LOGIC_VECTOR(yip1_10_uid198_atan2Test_in(29 downto 0));

    -- xMSB_uid200_atan2Test(BITSELECT,199)@5
    xMSB_uid200_atan2Test_in <= STD_LOGIC_VECTOR(yip1_10_uid198_atan2Test_b);
    xMSB_uid200_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid200_atan2Test_in(29 downto 29));

    -- redist15(DELAY,379)
    redist15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid200_atan2Test_b, xout => redist15_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid190_atan2Test(LOGICAL,189)@5
    invSignOfSelectionSignal_uid190_atan2Test_a <= xMSB_uid183_atan2Test_b;
    invSignOfSelectionSignal_uid190_atan2Test_q <= not (invSignOfSelectionSignal_uid190_atan2Test_a);

    -- twoToMiSiYip_uid188_atan2Test(BITSELECT,187)@5
    twoToMiSiYip_uid188_atan2Test_in <= STD_LOGIC_VECTOR(redist17_q);
    twoToMiSiYip_uid188_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid188_atan2Test_in(30 downto 9));

    -- xip1E_10_uid191_atan2Test(ADDSUB,190)@5
    xip1E_10_uid191_atan2Test_s <= invSignOfSelectionSignal_uid190_atan2Test_q;
    xip1E_10_uid191_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist18_q));
    xip1E_10_uid191_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 22 => twoToMiSiYip_uid188_atan2Test_b(21)) & twoToMiSiYip_uid188_atan2Test_b));
    xip1E_10_uid191_atan2Test_combproc: PROCESS (xip1E_10_uid191_atan2Test_a, xip1E_10_uid191_atan2Test_b, xip1E_10_uid191_atan2Test_s)
    BEGIN
        IF (xip1E_10_uid191_atan2Test_s = "1") THEN
            xip1E_10_uid191_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid191_atan2Test_a) + SIGNED(xip1E_10_uid191_atan2Test_b));
        ELSE
            xip1E_10_uid191_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid191_atan2Test_a) - SIGNED(xip1E_10_uid191_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_10_uid191_atan2Test_q <= xip1E_10_uid191_atan2Test_o(39 downto 0);

    -- xip1_10_uid197_atan2Test(BITSELECT,196)@5
    xip1_10_uid197_atan2Test_in <= xip1E_10_uid191_atan2Test_q(37 downto 0);
    xip1_10_uid197_atan2Test_b <= xip1_10_uid197_atan2Test_in(37 downto 0);

    -- twoToMiSiXip_uid204_atan2Test(BITSELECT,203)@5
    twoToMiSiXip_uid204_atan2Test_in <= xip1_10_uid197_atan2Test_b;
    twoToMiSiXip_uid204_atan2Test_b <= twoToMiSiXip_uid204_atan2Test_in(37 downto 10);

    -- yip1E_11_uid209_atan2Test(ADDSUB,208)@5
    yip1E_11_uid209_atan2Test_s <= xMSB_uid200_atan2Test_b;
    yip1E_11_uid209_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => yip1_10_uid198_atan2Test_b(29)) & yip1_10_uid198_atan2Test_b));
    yip1E_11_uid209_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid204_atan2Test_b));
    yip1E_11_uid209_atan2Test_combproc: PROCESS (yip1E_11_uid209_atan2Test_a, yip1E_11_uid209_atan2Test_b, yip1E_11_uid209_atan2Test_s)
    BEGIN
        IF (yip1E_11_uid209_atan2Test_s = "1") THEN
            yip1E_11_uid209_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid209_atan2Test_a) + SIGNED(yip1E_11_uid209_atan2Test_b));
        ELSE
            yip1E_11_uid209_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid209_atan2Test_a) - SIGNED(yip1E_11_uid209_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_11_uid209_atan2Test_q <= yip1E_11_uid209_atan2Test_o(30 downto 0);

    -- yip1_11_uid215_atan2Test(BITSELECT,214)@5
    yip1_11_uid215_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_11_uid209_atan2Test_q(28 downto 0));
    yip1_11_uid215_atan2Test_b <= STD_LOGIC_VECTOR(yip1_11_uid215_atan2Test_in(28 downto 0));

    -- redist13(DELAY,377)
    redist13 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_11_uid215_atan2Test_b, xout => redist13_q, clk => clk, aclr => areset );

    -- xMSB_uid217_atan2Test(BITSELECT,216)@6
    xMSB_uid217_atan2Test_in <= STD_LOGIC_VECTOR(redist13_q);
    xMSB_uid217_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid217_atan2Test_in(28 downto 28));

    -- redist12(DELAY,376)
    redist12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid217_atan2Test_b, xout => redist12_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid207_atan2Test(LOGICAL,206)@5
    invSignOfSelectionSignal_uid207_atan2Test_a <= xMSB_uid200_atan2Test_b;
    invSignOfSelectionSignal_uid207_atan2Test_q <= not (invSignOfSelectionSignal_uid207_atan2Test_a);

    -- twoToMiSiYip_uid205_atan2Test(BITSELECT,204)@5
    twoToMiSiYip_uid205_atan2Test_in <= STD_LOGIC_VECTOR(yip1_10_uid198_atan2Test_b);
    twoToMiSiYip_uid205_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid205_atan2Test_in(29 downto 10));

    -- xip1E_11_uid208_atan2Test(ADDSUB,207)@5
    xip1E_11_uid208_atan2Test_s <= invSignOfSelectionSignal_uid207_atan2Test_q;
    xip1E_11_uid208_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_10_uid197_atan2Test_b));
    xip1E_11_uid208_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 20 => twoToMiSiYip_uid205_atan2Test_b(19)) & twoToMiSiYip_uid205_atan2Test_b));
    xip1E_11_uid208_atan2Test_combproc: PROCESS (xip1E_11_uid208_atan2Test_a, xip1E_11_uid208_atan2Test_b, xip1E_11_uid208_atan2Test_s)
    BEGIN
        IF (xip1E_11_uid208_atan2Test_s = "1") THEN
            xip1E_11_uid208_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid208_atan2Test_a) + SIGNED(xip1E_11_uid208_atan2Test_b));
        ELSE
            xip1E_11_uid208_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid208_atan2Test_a) - SIGNED(xip1E_11_uid208_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_11_uid208_atan2Test_q <= xip1E_11_uid208_atan2Test_o(39 downto 0);

    -- xip1_11_uid214_atan2Test(BITSELECT,213)@5
    xip1_11_uid214_atan2Test_in <= xip1E_11_uid208_atan2Test_q(37 downto 0);
    xip1_11_uid214_atan2Test_b <= xip1_11_uid214_atan2Test_in(37 downto 0);

    -- redist14(DELAY,378)
    redist14 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_11_uid214_atan2Test_b, xout => redist14_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid221_atan2Test(BITSELECT,220)@6
    twoToMiSiXip_uid221_atan2Test_in <= redist14_q;
    twoToMiSiXip_uid221_atan2Test_b <= twoToMiSiXip_uid221_atan2Test_in(37 downto 11);

    -- yip1E_12_uid226_atan2Test(ADDSUB,225)@6
    yip1E_12_uid226_atan2Test_s <= xMSB_uid217_atan2Test_b;
    yip1E_12_uid226_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 29 => redist13_q(28)) & redist13_q));
    yip1E_12_uid226_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid221_atan2Test_b));
    yip1E_12_uid226_atan2Test_combproc: PROCESS (yip1E_12_uid226_atan2Test_a, yip1E_12_uid226_atan2Test_b, yip1E_12_uid226_atan2Test_s)
    BEGIN
        IF (yip1E_12_uid226_atan2Test_s = "1") THEN
            yip1E_12_uid226_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid226_atan2Test_a) + SIGNED(yip1E_12_uid226_atan2Test_b));
        ELSE
            yip1E_12_uid226_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid226_atan2Test_a) - SIGNED(yip1E_12_uid226_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_12_uid226_atan2Test_q <= yip1E_12_uid226_atan2Test_o(29 downto 0);

    -- yip1_12_uid232_atan2Test(BITSELECT,231)@6
    yip1_12_uid232_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_12_uid226_atan2Test_q(27 downto 0));
    yip1_12_uid232_atan2Test_b <= STD_LOGIC_VECTOR(yip1_12_uid232_atan2Test_in(27 downto 0));

    -- xMSB_uid234_atan2Test(BITSELECT,233)@6
    xMSB_uid234_atan2Test_in <= STD_LOGIC_VECTOR(yip1_12_uid232_atan2Test_b);
    xMSB_uid234_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid234_atan2Test_in(27 downto 27));

    -- redist11(DELAY,375)
    redist11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid234_atan2Test_b, xout => redist11_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid224_atan2Test(LOGICAL,223)@6
    invSignOfSelectionSignal_uid224_atan2Test_a <= xMSB_uid217_atan2Test_b;
    invSignOfSelectionSignal_uid224_atan2Test_q <= not (invSignOfSelectionSignal_uid224_atan2Test_a);

    -- twoToMiSiYip_uid222_atan2Test(BITSELECT,221)@6
    twoToMiSiYip_uid222_atan2Test_in <= STD_LOGIC_VECTOR(redist13_q);
    twoToMiSiYip_uid222_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid222_atan2Test_in(28 downto 11));

    -- xip1E_12_uid225_atan2Test(ADDSUB,224)@6
    xip1E_12_uid225_atan2Test_s <= invSignOfSelectionSignal_uid224_atan2Test_q;
    xip1E_12_uid225_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist14_q));
    xip1E_12_uid225_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 18 => twoToMiSiYip_uid222_atan2Test_b(17)) & twoToMiSiYip_uid222_atan2Test_b));
    xip1E_12_uid225_atan2Test_combproc: PROCESS (xip1E_12_uid225_atan2Test_a, xip1E_12_uid225_atan2Test_b, xip1E_12_uid225_atan2Test_s)
    BEGIN
        IF (xip1E_12_uid225_atan2Test_s = "1") THEN
            xip1E_12_uid225_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid225_atan2Test_a) + SIGNED(xip1E_12_uid225_atan2Test_b));
        ELSE
            xip1E_12_uid225_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_12_uid225_atan2Test_a) - SIGNED(xip1E_12_uid225_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_12_uid225_atan2Test_q <= xip1E_12_uid225_atan2Test_o(39 downto 0);

    -- xip1_12_uid231_atan2Test(BITSELECT,230)@6
    xip1_12_uid231_atan2Test_in <= xip1E_12_uid225_atan2Test_q(37 downto 0);
    xip1_12_uid231_atan2Test_b <= xip1_12_uid231_atan2Test_in(37 downto 0);

    -- twoToMiSiXip_uid238_atan2Test(BITSELECT,237)@6
    twoToMiSiXip_uid238_atan2Test_in <= xip1_12_uid231_atan2Test_b;
    twoToMiSiXip_uid238_atan2Test_b <= twoToMiSiXip_uid238_atan2Test_in(37 downto 12);

    -- yip1E_13_uid243_atan2Test(ADDSUB,242)@6
    yip1E_13_uid243_atan2Test_s <= xMSB_uid234_atan2Test_b;
    yip1E_13_uid243_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => yip1_12_uid232_atan2Test_b(27)) & yip1_12_uid232_atan2Test_b));
    yip1E_13_uid243_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid238_atan2Test_b));
    yip1E_13_uid243_atan2Test_combproc: PROCESS (yip1E_13_uid243_atan2Test_a, yip1E_13_uid243_atan2Test_b, yip1E_13_uid243_atan2Test_s)
    BEGIN
        IF (yip1E_13_uid243_atan2Test_s = "1") THEN
            yip1E_13_uid243_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid243_atan2Test_a) + SIGNED(yip1E_13_uid243_atan2Test_b));
        ELSE
            yip1E_13_uid243_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_13_uid243_atan2Test_a) - SIGNED(yip1E_13_uid243_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_13_uid243_atan2Test_q <= yip1E_13_uid243_atan2Test_o(28 downto 0);

    -- yip1_13_uid249_atan2Test(BITSELECT,248)@6
    yip1_13_uid249_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_13_uid243_atan2Test_q(26 downto 0));
    yip1_13_uid249_atan2Test_b <= STD_LOGIC_VECTOR(yip1_13_uid249_atan2Test_in(26 downto 0));

    -- redist9(DELAY,373)
    redist9 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_13_uid249_atan2Test_b, xout => redist9_q, clk => clk, aclr => areset );

    -- xMSB_uid251_atan2Test(BITSELECT,250)@7
    xMSB_uid251_atan2Test_in <= STD_LOGIC_VECTOR(redist9_q);
    xMSB_uid251_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid251_atan2Test_in(26 downto 26));

    -- redist8(DELAY,372)
    redist8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid251_atan2Test_b, xout => redist8_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid241_atan2Test(LOGICAL,240)@6
    invSignOfSelectionSignal_uid241_atan2Test_a <= xMSB_uid234_atan2Test_b;
    invSignOfSelectionSignal_uid241_atan2Test_q <= not (invSignOfSelectionSignal_uid241_atan2Test_a);

    -- twoToMiSiYip_uid239_atan2Test(BITSELECT,238)@6
    twoToMiSiYip_uid239_atan2Test_in <= STD_LOGIC_VECTOR(yip1_12_uid232_atan2Test_b);
    twoToMiSiYip_uid239_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid239_atan2Test_in(27 downto 12));

    -- xip1E_13_uid242_atan2Test(ADDSUB,241)@6
    xip1E_13_uid242_atan2Test_s <= invSignOfSelectionSignal_uid241_atan2Test_q;
    xip1E_13_uid242_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_12_uid231_atan2Test_b));
    xip1E_13_uid242_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 16 => twoToMiSiYip_uid239_atan2Test_b(15)) & twoToMiSiYip_uid239_atan2Test_b));
    xip1E_13_uid242_atan2Test_combproc: PROCESS (xip1E_13_uid242_atan2Test_a, xip1E_13_uid242_atan2Test_b, xip1E_13_uid242_atan2Test_s)
    BEGIN
        IF (xip1E_13_uid242_atan2Test_s = "1") THEN
            xip1E_13_uid242_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid242_atan2Test_a) + SIGNED(xip1E_13_uid242_atan2Test_b));
        ELSE
            xip1E_13_uid242_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_13_uid242_atan2Test_a) - SIGNED(xip1E_13_uid242_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_13_uid242_atan2Test_q <= xip1E_13_uid242_atan2Test_o(39 downto 0);

    -- xip1_13_uid248_atan2Test(BITSELECT,247)@6
    xip1_13_uid248_atan2Test_in <= xip1E_13_uid242_atan2Test_q(37 downto 0);
    xip1_13_uid248_atan2Test_b <= xip1_13_uid248_atan2Test_in(37 downto 0);

    -- redist10(DELAY,374)
    redist10 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_13_uid248_atan2Test_b, xout => redist10_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid255_atan2Test(BITSELECT,254)@7
    twoToMiSiXip_uid255_atan2Test_in <= redist10_q;
    twoToMiSiXip_uid255_atan2Test_b <= twoToMiSiXip_uid255_atan2Test_in(37 downto 13);

    -- yip1E_14_uid260_atan2Test(ADDSUB,259)@7
    yip1E_14_uid260_atan2Test_s <= xMSB_uid251_atan2Test_b;
    yip1E_14_uid260_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => redist9_q(26)) & redist9_q));
    yip1E_14_uid260_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid255_atan2Test_b));
    yip1E_14_uid260_atan2Test_combproc: PROCESS (yip1E_14_uid260_atan2Test_a, yip1E_14_uid260_atan2Test_b, yip1E_14_uid260_atan2Test_s)
    BEGIN
        IF (yip1E_14_uid260_atan2Test_s = "1") THEN
            yip1E_14_uid260_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid260_atan2Test_a) + SIGNED(yip1E_14_uid260_atan2Test_b));
        ELSE
            yip1E_14_uid260_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_14_uid260_atan2Test_a) - SIGNED(yip1E_14_uid260_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_14_uid260_atan2Test_q <= yip1E_14_uid260_atan2Test_o(27 downto 0);

    -- yip1_14_uid266_atan2Test(BITSELECT,265)@7
    yip1_14_uid266_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_14_uid260_atan2Test_q(25 downto 0));
    yip1_14_uid266_atan2Test_b <= STD_LOGIC_VECTOR(yip1_14_uid266_atan2Test_in(25 downto 0));

    -- xMSB_uid268_atan2Test(BITSELECT,267)@7
    xMSB_uid268_atan2Test_in <= STD_LOGIC_VECTOR(yip1_14_uid266_atan2Test_b);
    xMSB_uid268_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid268_atan2Test_in(25 downto 25));

    -- redist7(DELAY,371)
    redist7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid268_atan2Test_b, xout => redist7_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid258_atan2Test(LOGICAL,257)@7
    invSignOfSelectionSignal_uid258_atan2Test_a <= xMSB_uid251_atan2Test_b;
    invSignOfSelectionSignal_uid258_atan2Test_q <= not (invSignOfSelectionSignal_uid258_atan2Test_a);

    -- twoToMiSiYip_uid256_atan2Test(BITSELECT,255)@7
    twoToMiSiYip_uid256_atan2Test_in <= STD_LOGIC_VECTOR(redist9_q);
    twoToMiSiYip_uid256_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid256_atan2Test_in(26 downto 13));

    -- xip1E_14_uid259_atan2Test(ADDSUB,258)@7
    xip1E_14_uid259_atan2Test_s <= invSignOfSelectionSignal_uid258_atan2Test_q;
    xip1E_14_uid259_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist10_q));
    xip1E_14_uid259_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 14 => twoToMiSiYip_uid256_atan2Test_b(13)) & twoToMiSiYip_uid256_atan2Test_b));
    xip1E_14_uid259_atan2Test_combproc: PROCESS (xip1E_14_uid259_atan2Test_a, xip1E_14_uid259_atan2Test_b, xip1E_14_uid259_atan2Test_s)
    BEGIN
        IF (xip1E_14_uid259_atan2Test_s = "1") THEN
            xip1E_14_uid259_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid259_atan2Test_a) + SIGNED(xip1E_14_uid259_atan2Test_b));
        ELSE
            xip1E_14_uid259_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_14_uid259_atan2Test_a) - SIGNED(xip1E_14_uid259_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_14_uid259_atan2Test_q <= xip1E_14_uid259_atan2Test_o(39 downto 0);

    -- xip1_14_uid265_atan2Test(BITSELECT,264)@7
    xip1_14_uid265_atan2Test_in <= xip1E_14_uid259_atan2Test_q(37 downto 0);
    xip1_14_uid265_atan2Test_b <= xip1_14_uid265_atan2Test_in(37 downto 0);

    -- twoToMiSiXip_uid272_atan2Test(BITSELECT,271)@7
    twoToMiSiXip_uid272_atan2Test_in <= xip1_14_uid265_atan2Test_b;
    twoToMiSiXip_uid272_atan2Test_b <= twoToMiSiXip_uid272_atan2Test_in(37 downto 14);

    -- yip1E_15_uid277_atan2Test(ADDSUB,276)@7
    yip1E_15_uid277_atan2Test_s <= xMSB_uid268_atan2Test_b;
    yip1E_15_uid277_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => yip1_14_uid266_atan2Test_b(25)) & yip1_14_uid266_atan2Test_b));
    yip1E_15_uid277_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid272_atan2Test_b));
    yip1E_15_uid277_atan2Test_combproc: PROCESS (yip1E_15_uid277_atan2Test_a, yip1E_15_uid277_atan2Test_b, yip1E_15_uid277_atan2Test_s)
    BEGIN
        IF (yip1E_15_uid277_atan2Test_s = "1") THEN
            yip1E_15_uid277_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid277_atan2Test_a) + SIGNED(yip1E_15_uid277_atan2Test_b));
        ELSE
            yip1E_15_uid277_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_15_uid277_atan2Test_a) - SIGNED(yip1E_15_uid277_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_15_uid277_atan2Test_q <= yip1E_15_uid277_atan2Test_o(26 downto 0);

    -- yip1_15_uid283_atan2Test(BITSELECT,282)@7
    yip1_15_uid283_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_15_uid277_atan2Test_q(24 downto 0));
    yip1_15_uid283_atan2Test_b <= STD_LOGIC_VECTOR(yip1_15_uid283_atan2Test_in(24 downto 0));

    -- redist5(DELAY,369)
    redist5 : dspba_delay
    GENERIC MAP ( width => 25, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_15_uid283_atan2Test_b, xout => redist5_q, clk => clk, aclr => areset );

    -- xMSB_uid285_atan2Test(BITSELECT,284)@8
    xMSB_uid285_atan2Test_in <= STD_LOGIC_VECTOR(redist5_q);
    xMSB_uid285_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid285_atan2Test_in(24 downto 24));

    -- redist4(DELAY,368)
    redist4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid285_atan2Test_b, xout => redist4_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid275_atan2Test(LOGICAL,274)@7
    invSignOfSelectionSignal_uid275_atan2Test_a <= xMSB_uid268_atan2Test_b;
    invSignOfSelectionSignal_uid275_atan2Test_q <= not (invSignOfSelectionSignal_uid275_atan2Test_a);

    -- twoToMiSiYip_uid273_atan2Test(BITSELECT,272)@7
    twoToMiSiYip_uid273_atan2Test_in <= STD_LOGIC_VECTOR(yip1_14_uid266_atan2Test_b);
    twoToMiSiYip_uid273_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid273_atan2Test_in(25 downto 14));

    -- xip1E_15_uid276_atan2Test(ADDSUB,275)@7
    xip1E_15_uid276_atan2Test_s <= invSignOfSelectionSignal_uid275_atan2Test_q;
    xip1E_15_uid276_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & xip1_14_uid265_atan2Test_b));
    xip1E_15_uid276_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 12 => twoToMiSiYip_uid273_atan2Test_b(11)) & twoToMiSiYip_uid273_atan2Test_b));
    xip1E_15_uid276_atan2Test_combproc: PROCESS (xip1E_15_uid276_atan2Test_a, xip1E_15_uid276_atan2Test_b, xip1E_15_uid276_atan2Test_s)
    BEGIN
        IF (xip1E_15_uid276_atan2Test_s = "1") THEN
            xip1E_15_uid276_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid276_atan2Test_a) + SIGNED(xip1E_15_uid276_atan2Test_b));
        ELSE
            xip1E_15_uid276_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_15_uid276_atan2Test_a) - SIGNED(xip1E_15_uid276_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_15_uid276_atan2Test_q <= xip1E_15_uid276_atan2Test_o(39 downto 0);

    -- xip1_15_uid282_atan2Test(BITSELECT,281)@7
    xip1_15_uid282_atan2Test_in <= xip1E_15_uid276_atan2Test_q(37 downto 0);
    xip1_15_uid282_atan2Test_b <= xip1_15_uid282_atan2Test_in(37 downto 0);

    -- redist6(DELAY,370)
    redist6 : dspba_delay
    GENERIC MAP ( width => 38, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_15_uid282_atan2Test_b, xout => redist6_q, clk => clk, aclr => areset );

    -- twoToMiSiXip_uid289_atan2Test(BITSELECT,288)@8
    twoToMiSiXip_uid289_atan2Test_in <= redist6_q;
    twoToMiSiXip_uid289_atan2Test_b <= twoToMiSiXip_uid289_atan2Test_in(37 downto 15);

    -- yip1E_16_uid294_atan2Test(ADDSUB,293)@8
    yip1E_16_uid294_atan2Test_s <= xMSB_uid285_atan2Test_b;
    yip1E_16_uid294_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 25 => redist5_q(24)) & redist5_q));
    yip1E_16_uid294_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid289_atan2Test_b));
    yip1E_16_uid294_atan2Test_combproc: PROCESS (yip1E_16_uid294_atan2Test_a, yip1E_16_uid294_atan2Test_b, yip1E_16_uid294_atan2Test_s)
    BEGIN
        IF (yip1E_16_uid294_atan2Test_s = "1") THEN
            yip1E_16_uid294_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid294_atan2Test_a) + SIGNED(yip1E_16_uid294_atan2Test_b));
        ELSE
            yip1E_16_uid294_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_16_uid294_atan2Test_a) - SIGNED(yip1E_16_uid294_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_16_uid294_atan2Test_q <= yip1E_16_uid294_atan2Test_o(25 downto 0);

    -- yip1_16_uid300_atan2Test(BITSELECT,299)@8
    yip1_16_uid300_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_16_uid294_atan2Test_q(23 downto 0));
    yip1_16_uid300_atan2Test_b <= STD_LOGIC_VECTOR(yip1_16_uid300_atan2Test_in(23 downto 0));

    -- xMSB_uid302_atan2Test(BITSELECT,301)@8
    xMSB_uid302_atan2Test_in <= STD_LOGIC_VECTOR(yip1_16_uid300_atan2Test_b);
    xMSB_uid302_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid302_atan2Test_in(23 downto 23));

    -- redist3(DELAY,367)
    redist3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid302_atan2Test_b, xout => redist3_q, clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid292_atan2Test(LOGICAL,291)@8
    invSignOfSelectionSignal_uid292_atan2Test_a <= xMSB_uid285_atan2Test_b;
    invSignOfSelectionSignal_uid292_atan2Test_q <= not (invSignOfSelectionSignal_uid292_atan2Test_a);

    -- twoToMiSiYip_uid290_atan2Test(BITSELECT,289)@8
    twoToMiSiYip_uid290_atan2Test_in <= STD_LOGIC_VECTOR(redist5_q);
    twoToMiSiYip_uid290_atan2Test_b <= STD_LOGIC_VECTOR(twoToMiSiYip_uid290_atan2Test_in(24 downto 15));

    -- xip1E_16_uid293_atan2Test(ADDSUB,292)@8
    xip1E_16_uid293_atan2Test_s <= invSignOfSelectionSignal_uid292_atan2Test_q;
    xip1E_16_uid293_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00" & redist6_q));
    xip1E_16_uid293_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 10 => twoToMiSiYip_uid290_atan2Test_b(9)) & twoToMiSiYip_uid290_atan2Test_b));
    xip1E_16_uid293_atan2Test_combproc: PROCESS (xip1E_16_uid293_atan2Test_a, xip1E_16_uid293_atan2Test_b, xip1E_16_uid293_atan2Test_s)
    BEGIN
        IF (xip1E_16_uid293_atan2Test_s = "1") THEN
            xip1E_16_uid293_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid293_atan2Test_a) + SIGNED(xip1E_16_uid293_atan2Test_b));
        ELSE
            xip1E_16_uid293_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_16_uid293_atan2Test_a) - SIGNED(xip1E_16_uid293_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_16_uid293_atan2Test_q <= xip1E_16_uid293_atan2Test_o(39 downto 0);

    -- xip1_16_uid299_atan2Test(BITSELECT,298)@8
    xip1_16_uid299_atan2Test_in <= xip1E_16_uid293_atan2Test_q(37 downto 0);
    xip1_16_uid299_atan2Test_b <= xip1_16_uid299_atan2Test_in(37 downto 0);

    -- twoToMiSiXip_uid306_atan2Test(BITSELECT,305)@8
    twoToMiSiXip_uid306_atan2Test_in <= xip1_16_uid299_atan2Test_b;
    twoToMiSiXip_uid306_atan2Test_b <= twoToMiSiXip_uid306_atan2Test_in(37 downto 16);

    -- yip1E_17_uid311_atan2Test(ADDSUB,310)@8
    yip1E_17_uid311_atan2Test_s <= xMSB_uid302_atan2Test_b;
    yip1E_17_uid311_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => yip1_16_uid300_atan2Test_b(23)) & yip1_16_uid300_atan2Test_b));
    yip1E_17_uid311_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & twoToMiSiXip_uid306_atan2Test_b));
    yip1E_17_uid311_atan2Test_combproc: PROCESS (yip1E_17_uid311_atan2Test_a, yip1E_17_uid311_atan2Test_b, yip1E_17_uid311_atan2Test_s)
    BEGIN
        IF (yip1E_17_uid311_atan2Test_s = "1") THEN
            yip1E_17_uid311_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid311_atan2Test_a) + SIGNED(yip1E_17_uid311_atan2Test_b));
        ELSE
            yip1E_17_uid311_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_17_uid311_atan2Test_a) - SIGNED(yip1E_17_uid311_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_17_uid311_atan2Test_q <= yip1E_17_uid311_atan2Test_o(24 downto 0);

    -- yip1_17_uid317_atan2Test(BITSELECT,316)@8
    yip1_17_uid317_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_17_uid311_atan2Test_q(22 downto 0));
    yip1_17_uid317_atan2Test_b <= STD_LOGIC_VECTOR(yip1_17_uid317_atan2Test_in(22 downto 0));

    -- xMSB_uid319_atan2Test(BITSELECT,318)@8
    xMSB_uid319_atan2Test_in <= STD_LOGIC_VECTOR(yip1_17_uid317_atan2Test_b);
    xMSB_uid319_atan2Test_b <= STD_LOGIC_VECTOR(xMSB_uid319_atan2Test_in(22 downto 22));

    -- redist2(DELAY,366)
    redist2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid319_atan2Test_b, xout => redist2_q, clk => clk, aclr => areset );

    -- concSignVector_uid336_atan2Test(BITJOIN,335)@9
    concSignVector_uid336_atan2Test_q <= GND_q & redist32_q & redist31_q & redist28_q & redist27_q & redist24_q & redist23_q & redist20_q & redist19_q & redist16_q & redist15_q & redist12_q & redist11_q & redist8_q & redist7_q & redist4_q & redist3_q & redist2_q;

    -- is2_uid348_atan2Test(BITSELECT,347)@9
    is2_uid348_atan2Test_in <= concSignVector_uid336_atan2Test_q(5 downto 0);
    is2_uid348_atan2Test_b <= is2_uid348_atan2Test_in(5 downto 0);

    -- table_l17_uid350_atan2Test(LOOKUP,349)@9
    table_l17_uid350_atan2Test_combproc: PROCESS (is2_uid348_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is2_uid348_atan2Test_b) IS
            WHEN "000000" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "000001" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "000010" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "000011" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "000100" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "000101" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "000110" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "000111" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "001000" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "001001" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "001010" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "001011" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "001100" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "001101" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "001110" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "001111" => table_l17_uid350_atan2Test_q <= "01";
            WHEN "010000" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "010001" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "010010" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "010011" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "010100" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "010101" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "010110" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "010111" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "011000" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "011001" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "011010" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "011011" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "011100" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "011101" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "011110" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "011111" => table_l17_uid350_atan2Test_q <= "00";
            WHEN "100000" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "100001" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "100010" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "100011" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "100100" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "100101" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "100110" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "100111" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "101000" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "101001" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "101010" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "101011" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "101100" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "101101" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "101110" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "101111" => table_l17_uid350_atan2Test_q <= "11";
            WHEN "110000" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "110001" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "110010" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "110011" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "110100" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "110101" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "110110" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "110111" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "111000" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "111001" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "111010" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "111011" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "111100" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "111101" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "111110" => table_l17_uid350_atan2Test_q <= "10";
            WHEN "111111" => table_l17_uid350_atan2Test_q <= "10";
            WHEN OTHERS => -- unreachable
                           table_l17_uid350_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l17_uid349_atan2Test(LOOKUP,348)@9
    table_l17_uid349_atan2Test_combproc: PROCESS (is2_uid348_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is2_uid348_atan2Test_b) IS
            WHEN "000000" => table_l17_uid349_atan2Test_q <= "1111100000";
            WHEN "000001" => table_l17_uid349_atan2Test_q <= "1110100000";
            WHEN "000010" => table_l17_uid349_atan2Test_q <= "1101100000";
            WHEN "000011" => table_l17_uid349_atan2Test_q <= "1100100000";
            WHEN "000100" => table_l17_uid349_atan2Test_q <= "1011100000";
            WHEN "000101" => table_l17_uid349_atan2Test_q <= "1010100000";
            WHEN "000110" => table_l17_uid349_atan2Test_q <= "1001100000";
            WHEN "000111" => table_l17_uid349_atan2Test_q <= "1000100000";
            WHEN "001000" => table_l17_uid349_atan2Test_q <= "0111100000";
            WHEN "001001" => table_l17_uid349_atan2Test_q <= "0110100000";
            WHEN "001010" => table_l17_uid349_atan2Test_q <= "0101100000";
            WHEN "001011" => table_l17_uid349_atan2Test_q <= "0100100000";
            WHEN "001100" => table_l17_uid349_atan2Test_q <= "0011100000";
            WHEN "001101" => table_l17_uid349_atan2Test_q <= "0010100000";
            WHEN "001110" => table_l17_uid349_atan2Test_q <= "0001100000";
            WHEN "001111" => table_l17_uid349_atan2Test_q <= "0000100000";
            WHEN "010000" => table_l17_uid349_atan2Test_q <= "1111100000";
            WHEN "010001" => table_l17_uid349_atan2Test_q <= "1110100000";
            WHEN "010010" => table_l17_uid349_atan2Test_q <= "1101100000";
            WHEN "010011" => table_l17_uid349_atan2Test_q <= "1100100000";
            WHEN "010100" => table_l17_uid349_atan2Test_q <= "1011100000";
            WHEN "010101" => table_l17_uid349_atan2Test_q <= "1010100000";
            WHEN "010110" => table_l17_uid349_atan2Test_q <= "1001100000";
            WHEN "010111" => table_l17_uid349_atan2Test_q <= "1000100000";
            WHEN "011000" => table_l17_uid349_atan2Test_q <= "0111100000";
            WHEN "011001" => table_l17_uid349_atan2Test_q <= "0110100000";
            WHEN "011010" => table_l17_uid349_atan2Test_q <= "0101100000";
            WHEN "011011" => table_l17_uid349_atan2Test_q <= "0100100000";
            WHEN "011100" => table_l17_uid349_atan2Test_q <= "0011100000";
            WHEN "011101" => table_l17_uid349_atan2Test_q <= "0010100000";
            WHEN "011110" => table_l17_uid349_atan2Test_q <= "0001100000";
            WHEN "011111" => table_l17_uid349_atan2Test_q <= "0000100000";
            WHEN "100000" => table_l17_uid349_atan2Test_q <= "1111100000";
            WHEN "100001" => table_l17_uid349_atan2Test_q <= "1110100000";
            WHEN "100010" => table_l17_uid349_atan2Test_q <= "1101100000";
            WHEN "100011" => table_l17_uid349_atan2Test_q <= "1100100000";
            WHEN "100100" => table_l17_uid349_atan2Test_q <= "1011100000";
            WHEN "100101" => table_l17_uid349_atan2Test_q <= "1010100000";
            WHEN "100110" => table_l17_uid349_atan2Test_q <= "1001100000";
            WHEN "100111" => table_l17_uid349_atan2Test_q <= "1000100000";
            WHEN "101000" => table_l17_uid349_atan2Test_q <= "0111100000";
            WHEN "101001" => table_l17_uid349_atan2Test_q <= "0110100000";
            WHEN "101010" => table_l17_uid349_atan2Test_q <= "0101100000";
            WHEN "101011" => table_l17_uid349_atan2Test_q <= "0100100000";
            WHEN "101100" => table_l17_uid349_atan2Test_q <= "0011100000";
            WHEN "101101" => table_l17_uid349_atan2Test_q <= "0010100000";
            WHEN "101110" => table_l17_uid349_atan2Test_q <= "0001100000";
            WHEN "101111" => table_l17_uid349_atan2Test_q <= "0000100000";
            WHEN "110000" => table_l17_uid349_atan2Test_q <= "1111100000";
            WHEN "110001" => table_l17_uid349_atan2Test_q <= "1110100000";
            WHEN "110010" => table_l17_uid349_atan2Test_q <= "1101100000";
            WHEN "110011" => table_l17_uid349_atan2Test_q <= "1100100000";
            WHEN "110100" => table_l17_uid349_atan2Test_q <= "1011100000";
            WHEN "110101" => table_l17_uid349_atan2Test_q <= "1010100000";
            WHEN "110110" => table_l17_uid349_atan2Test_q <= "1001100000";
            WHEN "110111" => table_l17_uid349_atan2Test_q <= "1000100000";
            WHEN "111000" => table_l17_uid349_atan2Test_q <= "0111100000";
            WHEN "111001" => table_l17_uid349_atan2Test_q <= "0110100000";
            WHEN "111010" => table_l17_uid349_atan2Test_q <= "0101100000";
            WHEN "111011" => table_l17_uid349_atan2Test_q <= "0100100000";
            WHEN "111100" => table_l17_uid349_atan2Test_q <= "0011100000";
            WHEN "111101" => table_l17_uid349_atan2Test_q <= "0010100000";
            WHEN "111110" => table_l17_uid349_atan2Test_q <= "0001100000";
            WHEN "111111" => table_l17_uid349_atan2Test_q <= "0000100000";
            WHEN OTHERS => -- unreachable
                           table_l17_uid349_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid351_atan2Test(BITJOIN,350)@9
    os_uid351_atan2Test_q <= table_l17_uid350_atan2Test_q & table_l17_uid349_atan2Test_q;

    -- is1_uid343_atan2Test(BITSELECT,342)@9
    is1_uid343_atan2Test_in <= concSignVector_uid336_atan2Test_q(11 downto 0);
    is1_uid343_atan2Test_b <= is1_uid343_atan2Test_in(11 downto 6);

    -- table_l11_uid345_atan2Test(LOOKUP,344)@9
    table_l11_uid345_atan2Test_combproc: PROCESS (is1_uid343_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid343_atan2Test_b) IS
            WHEN "000000" => table_l11_uid345_atan2Test_q <= "01111101";
            WHEN "000001" => table_l11_uid345_atan2Test_q <= "01111001";
            WHEN "000010" => table_l11_uid345_atan2Test_q <= "01110101";
            WHEN "000011" => table_l11_uid345_atan2Test_q <= "01110001";
            WHEN "000100" => table_l11_uid345_atan2Test_q <= "01101101";
            WHEN "000101" => table_l11_uid345_atan2Test_q <= "01101001";
            WHEN "000110" => table_l11_uid345_atan2Test_q <= "01100101";
            WHEN "000111" => table_l11_uid345_atan2Test_q <= "01100001";
            WHEN "001000" => table_l11_uid345_atan2Test_q <= "01011101";
            WHEN "001001" => table_l11_uid345_atan2Test_q <= "01011001";
            WHEN "001010" => table_l11_uid345_atan2Test_q <= "01010101";
            WHEN "001011" => table_l11_uid345_atan2Test_q <= "01010001";
            WHEN "001100" => table_l11_uid345_atan2Test_q <= "01001101";
            WHEN "001101" => table_l11_uid345_atan2Test_q <= "01001001";
            WHEN "001110" => table_l11_uid345_atan2Test_q <= "01000101";
            WHEN "001111" => table_l11_uid345_atan2Test_q <= "01000001";
            WHEN "010000" => table_l11_uid345_atan2Test_q <= "00111101";
            WHEN "010001" => table_l11_uid345_atan2Test_q <= "00111001";
            WHEN "010010" => table_l11_uid345_atan2Test_q <= "00110101";
            WHEN "010011" => table_l11_uid345_atan2Test_q <= "00110001";
            WHEN "010100" => table_l11_uid345_atan2Test_q <= "00101101";
            WHEN "010101" => table_l11_uid345_atan2Test_q <= "00101001";
            WHEN "010110" => table_l11_uid345_atan2Test_q <= "00100101";
            WHEN "010111" => table_l11_uid345_atan2Test_q <= "00100001";
            WHEN "011000" => table_l11_uid345_atan2Test_q <= "00011101";
            WHEN "011001" => table_l11_uid345_atan2Test_q <= "00011001";
            WHEN "011010" => table_l11_uid345_atan2Test_q <= "00010101";
            WHEN "011011" => table_l11_uid345_atan2Test_q <= "00010001";
            WHEN "011100" => table_l11_uid345_atan2Test_q <= "00001101";
            WHEN "011101" => table_l11_uid345_atan2Test_q <= "00001001";
            WHEN "011110" => table_l11_uid345_atan2Test_q <= "00000101";
            WHEN "011111" => table_l11_uid345_atan2Test_q <= "00000001";
            WHEN "100000" => table_l11_uid345_atan2Test_q <= "11111110";
            WHEN "100001" => table_l11_uid345_atan2Test_q <= "11111010";
            WHEN "100010" => table_l11_uid345_atan2Test_q <= "11110110";
            WHEN "100011" => table_l11_uid345_atan2Test_q <= "11110010";
            WHEN "100100" => table_l11_uid345_atan2Test_q <= "11101110";
            WHEN "100101" => table_l11_uid345_atan2Test_q <= "11101010";
            WHEN "100110" => table_l11_uid345_atan2Test_q <= "11100110";
            WHEN "100111" => table_l11_uid345_atan2Test_q <= "11100010";
            WHEN "101000" => table_l11_uid345_atan2Test_q <= "11011110";
            WHEN "101001" => table_l11_uid345_atan2Test_q <= "11011010";
            WHEN "101010" => table_l11_uid345_atan2Test_q <= "11010110";
            WHEN "101011" => table_l11_uid345_atan2Test_q <= "11010010";
            WHEN "101100" => table_l11_uid345_atan2Test_q <= "11001110";
            WHEN "101101" => table_l11_uid345_atan2Test_q <= "11001010";
            WHEN "101110" => table_l11_uid345_atan2Test_q <= "11000110";
            WHEN "101111" => table_l11_uid345_atan2Test_q <= "11000010";
            WHEN "110000" => table_l11_uid345_atan2Test_q <= "10111110";
            WHEN "110001" => table_l11_uid345_atan2Test_q <= "10111010";
            WHEN "110010" => table_l11_uid345_atan2Test_q <= "10110110";
            WHEN "110011" => table_l11_uid345_atan2Test_q <= "10110010";
            WHEN "110100" => table_l11_uid345_atan2Test_q <= "10101110";
            WHEN "110101" => table_l11_uid345_atan2Test_q <= "10101010";
            WHEN "110110" => table_l11_uid345_atan2Test_q <= "10100110";
            WHEN "110111" => table_l11_uid345_atan2Test_q <= "10100010";
            WHEN "111000" => table_l11_uid345_atan2Test_q <= "10011110";
            WHEN "111001" => table_l11_uid345_atan2Test_q <= "10011010";
            WHEN "111010" => table_l11_uid345_atan2Test_q <= "10010110";
            WHEN "111011" => table_l11_uid345_atan2Test_q <= "10010010";
            WHEN "111100" => table_l11_uid345_atan2Test_q <= "10001110";
            WHEN "111101" => table_l11_uid345_atan2Test_q <= "10001010";
            WHEN "111110" => table_l11_uid345_atan2Test_q <= "10000110";
            WHEN "111111" => table_l11_uid345_atan2Test_q <= "10000010";
            WHEN OTHERS => -- unreachable
                           table_l11_uid345_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l11_uid344_atan2Test(LOOKUP,343)@9
    table_l11_uid344_atan2Test_combproc: PROCESS (is1_uid343_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is1_uid343_atan2Test_b) IS
            WHEN "000000" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "000001" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "000010" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "000011" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "000100" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "000101" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "000110" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "000111" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "001000" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "001001" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "001010" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "001011" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "001100" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "001101" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "001110" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "001111" => table_l11_uid344_atan2Test_q <= "1111111010";
            WHEN "010000" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "010001" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "010010" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "010011" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "010100" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "010101" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "010110" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "010111" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "011000" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "011001" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "011010" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "011011" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "011100" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "011101" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "011110" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "011111" => table_l11_uid344_atan2Test_q <= "1111111011";
            WHEN "100000" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "100001" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "100010" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "100011" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "100100" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "100101" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "100110" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "100111" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "101000" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "101001" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "101010" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "101011" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "101100" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "101101" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "101110" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "101111" => table_l11_uid344_atan2Test_q <= "0000000101";
            WHEN "110000" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "110001" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "110010" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "110011" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "110100" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "110101" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "110110" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "110111" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "111000" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "111001" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "111010" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "111011" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "111100" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "111101" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "111110" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN "111111" => table_l11_uid344_atan2Test_q <= "0000000110";
            WHEN OTHERS => -- unreachable
                           table_l11_uid344_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid346_atan2Test(BITJOIN,345)@9
    os_uid346_atan2Test_q <= table_l11_uid345_atan2Test_q & table_l11_uid344_atan2Test_q;

    -- is0_uid337_atan2Test(BITSELECT,336)@9
    is0_uid337_atan2Test_in <= concSignVector_uid336_atan2Test_q;
    is0_uid337_atan2Test_b <= is0_uid337_atan2Test_in(17 downto 12);

    -- table_l5_uid340_atan2Test(LOOKUP,339)@9
    table_l5_uid340_atan2Test_combproc: PROCESS (is0_uid337_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid337_atan2Test_b) IS
            WHEN "000000" => table_l5_uid340_atan2Test_q <= "0110";
            WHEN "000001" => table_l5_uid340_atan2Test_q <= "0110";
            WHEN "000010" => table_l5_uid340_atan2Test_q <= "0110";
            WHEN "000011" => table_l5_uid340_atan2Test_q <= "0110";
            WHEN "000100" => table_l5_uid340_atan2Test_q <= "0101";
            WHEN "000101" => table_l5_uid340_atan2Test_q <= "0101";
            WHEN "000110" => table_l5_uid340_atan2Test_q <= "0101";
            WHEN "000111" => table_l5_uid340_atan2Test_q <= "0101";
            WHEN "001000" => table_l5_uid340_atan2Test_q <= "0100";
            WHEN "001001" => table_l5_uid340_atan2Test_q <= "0100";
            WHEN "001010" => table_l5_uid340_atan2Test_q <= "0100";
            WHEN "001011" => table_l5_uid340_atan2Test_q <= "0100";
            WHEN "001100" => table_l5_uid340_atan2Test_q <= "0011";
            WHEN "001101" => table_l5_uid340_atan2Test_q <= "0011";
            WHEN "001110" => table_l5_uid340_atan2Test_q <= "0011";
            WHEN "001111" => table_l5_uid340_atan2Test_q <= "0011";
            WHEN "010000" => table_l5_uid340_atan2Test_q <= "0011";
            WHEN "010001" => table_l5_uid340_atan2Test_q <= "0010";
            WHEN "010010" => table_l5_uid340_atan2Test_q <= "0010";
            WHEN "010011" => table_l5_uid340_atan2Test_q <= "0010";
            WHEN "010100" => table_l5_uid340_atan2Test_q <= "0010";
            WHEN "010101" => table_l5_uid340_atan2Test_q <= "0001";
            WHEN "010110" => table_l5_uid340_atan2Test_q <= "0001";
            WHEN "010111" => table_l5_uid340_atan2Test_q <= "0001";
            WHEN "011000" => table_l5_uid340_atan2Test_q <= "0001";
            WHEN "011001" => table_l5_uid340_atan2Test_q <= "0000";
            WHEN "011010" => table_l5_uid340_atan2Test_q <= "0000";
            WHEN "011011" => table_l5_uid340_atan2Test_q <= "0000";
            WHEN "011100" => table_l5_uid340_atan2Test_q <= "0000";
            WHEN "011101" => table_l5_uid340_atan2Test_q <= "1111";
            WHEN "011110" => table_l5_uid340_atan2Test_q <= "1111";
            WHEN "011111" => table_l5_uid340_atan2Test_q <= "1111";
            WHEN "100000" => table_l5_uid340_atan2Test_q <= "0000";
            WHEN "100001" => table_l5_uid340_atan2Test_q <= "0000";
            WHEN "100010" => table_l5_uid340_atan2Test_q <= "0000";
            WHEN "100011" => table_l5_uid340_atan2Test_q <= "1111";
            WHEN "100100" => table_l5_uid340_atan2Test_q <= "1111";
            WHEN "100101" => table_l5_uid340_atan2Test_q <= "1111";
            WHEN "100110" => table_l5_uid340_atan2Test_q <= "1111";
            WHEN "100111" => table_l5_uid340_atan2Test_q <= "1110";
            WHEN "101000" => table_l5_uid340_atan2Test_q <= "1110";
            WHEN "101001" => table_l5_uid340_atan2Test_q <= "1110";
            WHEN "101010" => table_l5_uid340_atan2Test_q <= "1110";
            WHEN "101011" => table_l5_uid340_atan2Test_q <= "1101";
            WHEN "101100" => table_l5_uid340_atan2Test_q <= "1101";
            WHEN "101101" => table_l5_uid340_atan2Test_q <= "1101";
            WHEN "101110" => table_l5_uid340_atan2Test_q <= "1101";
            WHEN "101111" => table_l5_uid340_atan2Test_q <= "1100";
            WHEN "110000" => table_l5_uid340_atan2Test_q <= "1100";
            WHEN "110001" => table_l5_uid340_atan2Test_q <= "1100";
            WHEN "110010" => table_l5_uid340_atan2Test_q <= "1100";
            WHEN "110011" => table_l5_uid340_atan2Test_q <= "1100";
            WHEN "110100" => table_l5_uid340_atan2Test_q <= "1011";
            WHEN "110101" => table_l5_uid340_atan2Test_q <= "1011";
            WHEN "110110" => table_l5_uid340_atan2Test_q <= "1011";
            WHEN "110111" => table_l5_uid340_atan2Test_q <= "1011";
            WHEN "111000" => table_l5_uid340_atan2Test_q <= "1010";
            WHEN "111001" => table_l5_uid340_atan2Test_q <= "1010";
            WHEN "111010" => table_l5_uid340_atan2Test_q <= "1010";
            WHEN "111011" => table_l5_uid340_atan2Test_q <= "1010";
            WHEN "111100" => table_l5_uid340_atan2Test_q <= "1001";
            WHEN "111101" => table_l5_uid340_atan2Test_q <= "1001";
            WHEN "111110" => table_l5_uid340_atan2Test_q <= "1001";
            WHEN "111111" => table_l5_uid340_atan2Test_q <= "1001";
            WHEN OTHERS => -- unreachable
                           table_l5_uid340_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid339_atan2Test(LOOKUP,338)@9
    table_l5_uid339_atan2Test_combproc: PROCESS (is0_uid337_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid337_atan2Test_b) IS
            WHEN "000000" => table_l5_uid339_atan2Test_q <= "1101100100";
            WHEN "000001" => table_l5_uid339_atan2Test_q <= "1001100100";
            WHEN "000010" => table_l5_uid339_atan2Test_q <= "0101100101";
            WHEN "000011" => table_l5_uid339_atan2Test_q <= "0001100101";
            WHEN "000100" => table_l5_uid339_atan2Test_q <= "1101101001";
            WHEN "000101" => table_l5_uid339_atan2Test_q <= "1001101001";
            WHEN "000110" => table_l5_uid339_atan2Test_q <= "0101101010";
            WHEN "000111" => table_l5_uid339_atan2Test_q <= "0001101010";
            WHEN "001000" => table_l5_uid339_atan2Test_q <= "1110001101";
            WHEN "001001" => table_l5_uid339_atan2Test_q <= "1010001101";
            WHEN "001010" => table_l5_uid339_atan2Test_q <= "0110001110";
            WHEN "001011" => table_l5_uid339_atan2Test_q <= "0010001110";
            WHEN "001100" => table_l5_uid339_atan2Test_q <= "1110010010";
            WHEN "001101" => table_l5_uid339_atan2Test_q <= "1010010011";
            WHEN "001110" => table_l5_uid339_atan2Test_q <= "0110010011";
            WHEN "001111" => table_l5_uid339_atan2Test_q <= "0010010011";
            WHEN "010000" => table_l5_uid339_atan2Test_q <= "0010001110";
            WHEN "010001" => table_l5_uid339_atan2Test_q <= "1110001110";
            WHEN "010010" => table_l5_uid339_atan2Test_q <= "1010001111";
            WHEN "010011" => table_l5_uid339_atan2Test_q <= "0110001111";
            WHEN "010100" => table_l5_uid339_atan2Test_q <= "0010010011";
            WHEN "010101" => table_l5_uid339_atan2Test_q <= "1110010011";
            WHEN "010110" => table_l5_uid339_atan2Test_q <= "1010010100";
            WHEN "010111" => table_l5_uid339_atan2Test_q <= "0110010100";
            WHEN "011000" => table_l5_uid339_atan2Test_q <= "0010110111";
            WHEN "011001" => table_l5_uid339_atan2Test_q <= "1110110111";
            WHEN "011010" => table_l5_uid339_atan2Test_q <= "1010111000";
            WHEN "011011" => table_l5_uid339_atan2Test_q <= "0110111000";
            WHEN "011100" => table_l5_uid339_atan2Test_q <= "0010111100";
            WHEN "011101" => table_l5_uid339_atan2Test_q <= "1110111100";
            WHEN "011110" => table_l5_uid339_atan2Test_q <= "1010111101";
            WHEN "011111" => table_l5_uid339_atan2Test_q <= "0110111101";
            WHEN "100000" => table_l5_uid339_atan2Test_q <= "1001000010";
            WHEN "100001" => table_l5_uid339_atan2Test_q <= "0101000010";
            WHEN "100010" => table_l5_uid339_atan2Test_q <= "0001000011";
            WHEN "100011" => table_l5_uid339_atan2Test_q <= "1101000011";
            WHEN "100100" => table_l5_uid339_atan2Test_q <= "1001000111";
            WHEN "100101" => table_l5_uid339_atan2Test_q <= "0101000111";
            WHEN "100110" => table_l5_uid339_atan2Test_q <= "0001001000";
            WHEN "100111" => table_l5_uid339_atan2Test_q <= "1101001000";
            WHEN "101000" => table_l5_uid339_atan2Test_q <= "1001101011";
            WHEN "101001" => table_l5_uid339_atan2Test_q <= "0101101011";
            WHEN "101010" => table_l5_uid339_atan2Test_q <= "0001101100";
            WHEN "101011" => table_l5_uid339_atan2Test_q <= "1101101100";
            WHEN "101100" => table_l5_uid339_atan2Test_q <= "1001110000";
            WHEN "101101" => table_l5_uid339_atan2Test_q <= "0101110001";
            WHEN "101110" => table_l5_uid339_atan2Test_q <= "0001110001";
            WHEN "101111" => table_l5_uid339_atan2Test_q <= "1101110001";
            WHEN "110000" => table_l5_uid339_atan2Test_q <= "1101101100";
            WHEN "110001" => table_l5_uid339_atan2Test_q <= "1001101100";
            WHEN "110010" => table_l5_uid339_atan2Test_q <= "0101101101";
            WHEN "110011" => table_l5_uid339_atan2Test_q <= "0001101101";
            WHEN "110100" => table_l5_uid339_atan2Test_q <= "1101110001";
            WHEN "110101" => table_l5_uid339_atan2Test_q <= "1001110001";
            WHEN "110110" => table_l5_uid339_atan2Test_q <= "0101110010";
            WHEN "110111" => table_l5_uid339_atan2Test_q <= "0001110010";
            WHEN "111000" => table_l5_uid339_atan2Test_q <= "1110010101";
            WHEN "111001" => table_l5_uid339_atan2Test_q <= "1010010101";
            WHEN "111010" => table_l5_uid339_atan2Test_q <= "0110010110";
            WHEN "111011" => table_l5_uid339_atan2Test_q <= "0010010110";
            WHEN "111100" => table_l5_uid339_atan2Test_q <= "1110011010";
            WHEN "111101" => table_l5_uid339_atan2Test_q <= "1010011010";
            WHEN "111110" => table_l5_uid339_atan2Test_q <= "0110011011";
            WHEN "111111" => table_l5_uid339_atan2Test_q <= "0010011011";
            WHEN OTHERS => -- unreachable
                           table_l5_uid339_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l5_uid338_atan2Test(LOOKUP,337)@9
    table_l5_uid338_atan2Test_combproc: PROCESS (is0_uid337_atan2Test_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid337_atan2Test_b) IS
            WHEN "000000" => table_l5_uid338_atan2Test_q <= "1000101000";
            WHEN "000001" => table_l5_uid338_atan2Test_q <= "1001111101";
            WHEN "000010" => table_l5_uid338_atan2Test_q <= "0011010001";
            WHEN "000011" => table_l5_uid338_atan2Test_q <= "0100100110";
            WHEN "000100" => table_l5_uid338_atan2Test_q <= "1101001011";
            WHEN "000101" => table_l5_uid338_atan2Test_q <= "1110100000";
            WHEN "000110" => table_l5_uid338_atan2Test_q <= "0111110100";
            WHEN "000111" => table_l5_uid338_atan2Test_q <= "1001001001";
            WHEN "001000" => table_l5_uid338_atan2Test_q <= "1010110010";
            WHEN "001001" => table_l5_uid338_atan2Test_q <= "1100000111";
            WHEN "001010" => table_l5_uid338_atan2Test_q <= "0101011011";
            WHEN "001011" => table_l5_uid338_atan2Test_q <= "0110110001";
            WHEN "001100" => table_l5_uid338_atan2Test_q <= "1111010101";
            WHEN "001101" => table_l5_uid338_atan2Test_q <= "0000101010";
            WHEN "001110" => table_l5_uid338_atan2Test_q <= "1001111110";
            WHEN "001111" => table_l5_uid338_atan2Test_q <= "1011010011";
            WHEN "010000" => table_l5_uid338_atan2Test_q <= "0101011010";
            WHEN "010001" => table_l5_uid338_atan2Test_q <= "0110101111";
            WHEN "010010" => table_l5_uid338_atan2Test_q <= "0000000011";
            WHEN "010011" => table_l5_uid338_atan2Test_q <= "0001011000";
            WHEN "010100" => table_l5_uid338_atan2Test_q <= "1001111101";
            WHEN "010101" => table_l5_uid338_atan2Test_q <= "1011010010";
            WHEN "010110" => table_l5_uid338_atan2Test_q <= "0100100110";
            WHEN "010111" => table_l5_uid338_atan2Test_q <= "0101111011";
            WHEN "011000" => table_l5_uid338_atan2Test_q <= "0111100100";
            WHEN "011001" => table_l5_uid338_atan2Test_q <= "1000111001";
            WHEN "011010" => table_l5_uid338_atan2Test_q <= "0010001101";
            WHEN "011011" => table_l5_uid338_atan2Test_q <= "0011100010";
            WHEN "011100" => table_l5_uid338_atan2Test_q <= "1100000111";
            WHEN "011101" => table_l5_uid338_atan2Test_q <= "1101011100";
            WHEN "011110" => table_l5_uid338_atan2Test_q <= "0110110000";
            WHEN "011111" => table_l5_uid338_atan2Test_q <= "1000000101";
            WHEN "100000" => table_l5_uid338_atan2Test_q <= "1000111011";
            WHEN "100001" => table_l5_uid338_atan2Test_q <= "1010010000";
            WHEN "100010" => table_l5_uid338_atan2Test_q <= "0011100100";
            WHEN "100011" => table_l5_uid338_atan2Test_q <= "0100111001";
            WHEN "100100" => table_l5_uid338_atan2Test_q <= "1101011110";
            WHEN "100101" => table_l5_uid338_atan2Test_q <= "1110110011";
            WHEN "100110" => table_l5_uid338_atan2Test_q <= "1000000111";
            WHEN "100111" => table_l5_uid338_atan2Test_q <= "1001011100";
            WHEN "101000" => table_l5_uid338_atan2Test_q <= "1011000101";
            WHEN "101001" => table_l5_uid338_atan2Test_q <= "1100011010";
            WHEN "101010" => table_l5_uid338_atan2Test_q <= "0101101110";
            WHEN "101011" => table_l5_uid338_atan2Test_q <= "0111000011";
            WHEN "101100" => table_l5_uid338_atan2Test_q <= "1111101000";
            WHEN "101101" => table_l5_uid338_atan2Test_q <= "0000111101";
            WHEN "101110" => table_l5_uid338_atan2Test_q <= "1010010001";
            WHEN "101111" => table_l5_uid338_atan2Test_q <= "1011100110";
            WHEN "110000" => table_l5_uid338_atan2Test_q <= "0101101101";
            WHEN "110001" => table_l5_uid338_atan2Test_q <= "0111000010";
            WHEN "110010" => table_l5_uid338_atan2Test_q <= "0000010110";
            WHEN "110011" => table_l5_uid338_atan2Test_q <= "0001101011";
            WHEN "110100" => table_l5_uid338_atan2Test_q <= "1010001111";
            WHEN "110101" => table_l5_uid338_atan2Test_q <= "1011100101";
            WHEN "110110" => table_l5_uid338_atan2Test_q <= "0100111001";
            WHEN "110111" => table_l5_uid338_atan2Test_q <= "0110001110";
            WHEN "111000" => table_l5_uid338_atan2Test_q <= "0111110111";
            WHEN "111001" => table_l5_uid338_atan2Test_q <= "1001001100";
            WHEN "111010" => table_l5_uid338_atan2Test_q <= "0010100000";
            WHEN "111011" => table_l5_uid338_atan2Test_q <= "0011110101";
            WHEN "111100" => table_l5_uid338_atan2Test_q <= "1100011010";
            WHEN "111101" => table_l5_uid338_atan2Test_q <= "1101101111";
            WHEN "111110" => table_l5_uid338_atan2Test_q <= "0111000011";
            WHEN "111111" => table_l5_uid338_atan2Test_q <= "1000011000";
            WHEN OTHERS => -- unreachable
                           table_l5_uid338_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- os_uid341_atan2Test(BITJOIN,340)@9
    os_uid341_atan2Test_q <= table_l5_uid340_atan2Test_q & table_l5_uid339_atan2Test_q & table_l5_uid338_atan2Test_q;

    -- lev1_a0_uid353_atan2Test(ADD,352)@9
    lev1_a0_uid353_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => os_uid341_atan2Test_q(23)) & os_uid341_atan2Test_q));
    lev1_a0_uid353_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 18 => os_uid346_atan2Test_q(17)) & os_uid346_atan2Test_q));
    lev1_a0_uid353_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0_uid353_atan2Test_a) + SIGNED(lev1_a0_uid353_atan2Test_b));
    lev1_a0_uid353_atan2Test_q <= lev1_a0_uid353_atan2Test_o(24 downto 0);

    -- lev2_a0_uid354_atan2Test(ADD,353)@9
    lev2_a0_uid354_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => lev1_a0_uid353_atan2Test_q(24)) & lev1_a0_uid353_atan2Test_q));
    lev2_a0_uid354_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 12 => os_uid351_atan2Test_q(11)) & os_uid351_atan2Test_q));
    lev2_a0_uid354_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid354_atan2Test_a) + SIGNED(lev2_a0_uid354_atan2Test_b));
    lev2_a0_uid354_atan2Test_q <= lev2_a0_uid354_atan2Test_o(25 downto 0);

    -- atanRes_uid355_atan2Test(BITSELECT,354)@9
    atanRes_uid355_atan2Test_in <= STD_LOGIC_VECTOR(lev2_a0_uid354_atan2Test_q(23 downto 0));
    atanRes_uid355_atan2Test_b <= STD_LOGIC_VECTOR(atanRes_uid355_atan2Test_in(23 downto 6));

    -- redist1(DELAY,365)
    redist1 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => atanRes_uid355_atan2Test_b, xout => redist1_q, clk => clk, aclr => areset );

    -- xNotZero_uid8_atan2Test(LOGICAL,7)@0
    xNotZero_uid8_atan2Test_a <= x;
    xNotZero_uid8_atan2Test_q <= "1" WHEN xNotZero_uid8_atan2Test_a /= "000000000000" ELSE "0";

    -- xZero_uid9_atan2Test(LOGICAL,8)@0
    xZero_uid9_atan2Test_a <= xNotZero_uid8_atan2Test_q;
    xZero_uid9_atan2Test_q <= not (xZero_uid9_atan2Test_a);

    -- yNotZero_uid6_atan2Test(LOGICAL,5)@0
    yNotZero_uid6_atan2Test_a <= y;
    yNotZero_uid6_atan2Test_q <= "1" WHEN yNotZero_uid6_atan2Test_a /= "000000000000" ELSE "0";

    -- yZero_uid7_atan2Test(LOGICAL,6)@0
    yZero_uid7_atan2Test_a <= yNotZero_uid6_atan2Test_q;
    yZero_uid7_atan2Test_q <= not (yZero_uid7_atan2Test_a);

    -- concXZeroYZero_uid362_atan2Test(BITJOIN,361)@0
    concXZeroYZero_uid362_atan2Test_q <= xZero_uid9_atan2Test_q & yZero_uid7_atan2Test_q;

    -- redist0(DELAY,364)
    redist0 : dspba_delay
    GENERIC MAP ( width => 2, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => concXZeroYZero_uid362_atan2Test_q, xout => redist0_q, clk => clk, aclr => areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- atanResPostExc_uid363_atan2Test(MUX,362)@10
    atanResPostExc_uid363_atan2Test_s <= redist0_q;
    atanResPostExc_uid363_atan2Test_combproc: PROCESS (atanResPostExc_uid363_atan2Test_s, redist1_q, cstZeroOutFormat_uid356_atan2Test_q, cstPiO2OutFormat_mergedSignalTMB_uid360_atan2Test_q)
    BEGIN
        CASE (atanResPostExc_uid363_atan2Test_s) IS
            WHEN "00" => atanResPostExc_uid363_atan2Test_q <= redist1_q;
            WHEN "01" => atanResPostExc_uid363_atan2Test_q <= cstZeroOutFormat_uid356_atan2Test_q;
            WHEN "10" => atanResPostExc_uid363_atan2Test_q <= cstPiO2OutFormat_mergedSignalTMB_uid360_atan2Test_q;
            WHEN "11" => atanResPostExc_uid363_atan2Test_q <= cstZeroOutFormat_uid356_atan2Test_q;
            WHEN OTHERS => atanResPostExc_uid363_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- xOut(GPOUT,4)@10
    q <= atanResPostExc_uid363_atan2Test_q;

END normal;
