
s
Command: %s
1870*	planAhead2>
*open_checkpoint mcs_top_vanilla_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.039 . Memory (MB): peak = 231.699 ; gain = 0.0002default:defaulth px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3002default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
z
Netlist was created with %s %s291*project2
Vivado2default:default2
2018.2.22default:defaultZ1-479h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:002default:default2 
00:00:00.4772default:default2
1145.8522default:default2
0.0002default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.4772default:default2
1145.8522default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 175 instances were transformed.
  LUT6_2 => LUT6_2 (LUT5, LUT6): 79 instances
  RAM32X1D => RAM32X1D (RAMD32, RAMD32): 64 instances
  RAM64M => RAM64M (RAMD64E, RAMD64E, RAMD64E, RAMD64E): 16 instances
  RAM64X1D => RAM64X1D (RAMD64E, RAMD64E): 16 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2-
Vivado v2018.2.2 (64-bit)2default:default2
23484942default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:272default:default2
00:00:342default:default2
1145.8522default:default2
922.2582default:defaultZ17-268h px� 
o
Command: %s
53*	vivadotcl2>
*write_bitstream -force mcs_top_vanilla.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
u
"Loaded Vivado IP repository '%s'.
1332*coregen2,
D:/Vivado/2018.2/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
�
�LUT equation term check: Used physical LUT pin 'A3' of cell %s is not included in the LUT equation: 'O5=((~A1))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A3' of cell %s is not included in the LUT equation: 'O6=((~A1)*A2*(~A6))+((~A1)*(~A2))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A4' of cell %s is not included in the LUT equation: 'O5=((~A1))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A4' of cell %s is not included in the LUT equation: 'O6=((~A1)*A2*(~A6))+((~A1)*(~A2))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*(~A3)*(~A4))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
ocpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/BYTE_0_1_I/Using_FPGA.Native/LUT5	ocpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/BYTE_0_1_I/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A3*(~A6))+(A1*A2*(~A3))+(A1*(~A2)*A3*A6)+(A1*(~A2)*(~A3))+((~A1)*(~A3)*(~A4))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
ocpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/BYTE_0_1_I/Using_FPGA.Native/LUT6	ocpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/BYTE_0_1_I/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*(~A3)*(~A4))+((~A1)*A2)+((~A1)*(~A2)*(~A3))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
ocpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/BYTE_2_3_I/Using_FPGA.Native/LUT5	ocpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/BYTE_2_3_I/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*(~A3)*(~A4))+((~A1)*A2*A3*(~A6))+((~A1)*A2*(~A3))+((~A1)*(~A2)*A3*A6)+((~A1)*(~A2)*(~A3))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
ocpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/BYTE_2_3_I/Using_FPGA.Native/LUT6	ocpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/BYTE_2_3_I/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=((~A1))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=((~A1)*A2*(~A6))+((~A1)*(~A2))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Byte_Doublet_Handle_I/Use_Dynamic_Bus_Sizing.Not_Using_Reverse_Mem_Instr.WRITE_MSB_SEL_I/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[0].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[0].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[0].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[0].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[10].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[10].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[10].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[10].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[11].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[11].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[11].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[11].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[12].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[12].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[12].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[12].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[13].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[13].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[13].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[13].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[14].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[14].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[14].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[14].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[15].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[15].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[15].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[15].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[16].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[16].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[16].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[16].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[17].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[17].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[17].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[17].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[18].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[18].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[18].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[18].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[19].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[19].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[19].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[19].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[1].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[1].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[1].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[1].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[20].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[20].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[20].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[20].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[21].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[21].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[21].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[21].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[22].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[22].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[22].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[22].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[23].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[23].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[23].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[23].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[24].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[24].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[24].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[24].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[25].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[25].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[25].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[25].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[26].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[26].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[26].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[26].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[27].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[27].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[27].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[27].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[28].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[28].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[28].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[28].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[29].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[29].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[29].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[29].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[2].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[2].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[2].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[2].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[30].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[30].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[30].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[30].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[31].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[31].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[31].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[31].Operand_Select_Bit_I/Both_PC_and_MSR.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[3].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[3].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[3].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[3].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[4].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[4].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[4].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[4].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[5].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[5].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[5].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[5].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[6].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[6].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[6].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[6].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[7].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[7].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[7].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[7].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[8].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[8].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[8].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[8].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O5=(A1*A2)+(A1*(~A2)*(~A3))+((~A1)*A2*A3)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[9].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT5	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[9].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s is not included in the LUT equation: 'O6=(A1*A2*A4)+(A1*A2*(~A4)*(~A6))+(A1*(~A2)*A3*A4*A6)+(A1*(~A2)*(~A3)*A4)+(A1*(~A2)*(~A3)*(~A4)*(~A6))+((~A1)*A2*A3*A4)+((~A1)*A2*A3*(~A4)*(~A6))+((~A1)*A2*(~A3)*A4*A6)+((~A1)*(~A2)*A4*A6)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[9].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT6	�cpu_unit/U0/microblaze_I/U0/MicroBlaze_Core_I/Area.Core/Data_Flow_I/Operand_Select_I/OpSelect_Bits[9].Operand_Select_Bit_I/Only_PC.Op1_LUT6/Using_FPGA.Native/LUT62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 75 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
�
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2�
�C:/Users/runne/Desktop/Soc_FPGA/7seg/HDL/seven_seg_proj/seven_seg_proj.srcs/sources_1/imports/code_listing_sv/build/elf/vanilla_test.elf 2default:defaultZ28-144h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
f
%Bitstream compression saved %s bits.
26*	bitstream2
230101442default:defaultZ40-26h px� 
f
Writing bitstream %s...
11*	bitstream2)
./mcs_top_vanilla.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
�
�'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2�
oC:/Users/runne/Desktop/Soc_FPGA/7seg/HDL/seven_seg_proj/seven_seg_proj.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Thu Dec 13 10:38:57 20182default:default2B
.D:/Vivado/2018.2/doc/webtalk_introduction.html2default:defaultZ17-186h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
242default:default2
752default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:352default:default2
00:00:342default:default2
1634.1132default:default2
488.2622default:defaultZ17-268h px� 


End Record