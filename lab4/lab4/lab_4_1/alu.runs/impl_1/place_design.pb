
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2492.9732default:default2
0.0002default:default2
7542default:default2
15012default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 19098133e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 754 ; free virtual = 15012default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2492.9732default:default2
0.0002default:default2
7542default:default2
15012default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2!
virtual_clock2default:default2]
G/home/ubuntu/桌面/new_lab/lab_4_1/alu.srcs/constrs_1/new/alu_cons.xdc2default:default2
432default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: bcded634
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.97 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 732 ; free virtual = 14792default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 10ad52d14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 732 ; free virtual = 14802default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 10ad52d14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 732 ; free virtual = 14802default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 10ad52d14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 732 ; free virtual = 14802default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 10ad52d14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 730 ; free virtual = 14782default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px? 
K
6Phase 2.2 Global Placement Core | Checksum: 14e1e8690
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 711 ; free virtual = 14592default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 14e1e8690
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 712 ; free virtual = 14592default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 14e1e8690
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 712 ; free virtual = 14592default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
Q
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 9965b729
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 711 ; free virtual = 14582default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
K
6Phase 3.3 Area Swap Optimization | Checksum: ea1a1fe5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 710 ; free virtual = 14572default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
S
>Phase 3.4 Pipeline Register Optimization | Checksum: ea1a1fe5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 710 ; free virtual = 14582default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 128be0f14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 709 ; free virtual = 14562default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 128be0f14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 709 ; free virtual = 14562default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 128be0f14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 709 ; free virtual = 14562default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 128be0f14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 709 ; free virtual = 14562default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 128be0f14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 709 ; free virtual = 14562default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 128be0f14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 711 ; free virtual = 14582default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 128be0f14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 710 ; free virtual = 14582default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2492.9732default:default2
0.0002default:default2
7102default:default2
14582default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1f5167a0d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 711 ; free virtual = 14582default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1f5167a0d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 711 ; free virtual = 14582default:defaulth px? 
>
)Ending Placer Task | Checksum: 17c233b19
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 711 ; free virtual = 14582default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
52default:default2
42default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:00:062default:default2
00:00:062default:default2
2492.9732default:default2
0.0002default:default2
7282default:default2
14752default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2492.9732default:default2
0.0002default:default2
7282default:default2
14752default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.232default:default2
00:00:00.152default:default2
2492.9732default:default2
0.0002default:default2
7212default:default2
14702default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2\
H/home/ubuntu/桌面/new_lab/lab_4_1/alu.runs/impl_1/SglCirCPU_placed.dcp2default:defaultZ17-1381h px? 
d
%s4*runtcl2H
4Executing : report_io -file SglCirCPU_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.11 ; elapsed = 00:00:00.24 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 720 ; free virtual = 1467
*commonh px? 
?
%s4*runtcl2~
jExecuting : report_utilization -file SglCirCPU_utilization_placed.rpt -pb SglCirCPU_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2e
QExecuting : report_control_sets -verbose -file SglCirCPU_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.19 . Memory (MB): peak = 2492.973 ; gain = 0.000 ; free physical = 726 ; free virtual = 1474
*commonh px? 


End Record