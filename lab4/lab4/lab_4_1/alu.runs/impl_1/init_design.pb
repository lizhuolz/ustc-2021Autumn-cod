
v
Command: %s
53*	vivadotcl2E
1link_design -top SglCirCPU -part xc7a100tcsg324-12default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2h
T/home/ubuntu/new_lab/lab_4_0/alu.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1.dcp2default:default2#
cpu/Data_Memory2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2h
T/home/ubuntu/new_lab/lab_4_0/alu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp2default:default2*
cpu/instruction_memory2default:defaultZ1-454h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1352default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.12default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
Parsing XDC File [%s]
179*designutils2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default8Z20-179h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2!
virtual_clock2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
432default:default8@Z18-483h px? 
?
No ports matched '%s'.
584*	planAhead2
a[*]2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
442default:default8@Z12-584h px? 
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2#
set_input_delay2default:default2/
-objects [get_ports {a[*]}]2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
442default:default8@Z12-4739h px?
?
No ports matched '%s'.
584*	planAhead2
a[*]2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
452default:default8@Z12-584h px? 
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2#
set_input_delay2default:default2/
-objects [get_ports {a[*]}]2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
452default:default8@Z12-4739h px?
?
No ports matched '%s'.
584*	planAhead2
y[*]2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
462default:default8@Z12-584h px? 
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2$
set_output_delay2default:default2/
-objects [get_ports {y[*]}]2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
462default:default8@Z12-4739h px?
?
No ports matched '%s'.
584*	planAhead2
y[*]2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
472default:default8@Z12-584h px? 
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2$
set_output_delay2default:default2/
-objects [get_ports {y[*]}]2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
472default:default8@Z12-4739h px?
?
Finished Parsing XDC File [%s]
178*designutils2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default8Z20-178h px? 
?
Parsing XDC File [%s]
179*designutils2f
P/home/ubuntu/桌面/new_lab/lab_2/lab_2/lab_2.srcs/constrs_1/new/fpgaol_fifo.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2f
P/home/ubuntu/桌面/new_lab/lab_2/lab_2/lab_2.srcs/constrs_1/new/fpgaol_fifo.xdc2default:default8Z20-178h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1693.9842default:default2
0.0002default:default2
12652default:default2
20122default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 82 instances were transformed.
  RAM128X1D => RAM128X1D (RAMD64E, RAMD64E, MUXF7, MUXF7, RAMD64E, RAMD64E): 64 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 18 instances
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
102default:default2
42default:default2
42default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2!
link_design: 2default:default2
00:00:062default:default2
00:00:082default:default2
1693.9842default:default2
318.3552default:default2
12652default:default2
20122default:defaultZ17-722h px? 


End Record