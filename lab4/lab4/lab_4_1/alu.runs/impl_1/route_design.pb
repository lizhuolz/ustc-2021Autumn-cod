
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
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
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 1e23c8c40
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:32 ; elapsed = 00:00:29 . Memory (MB): peak = 2518.316 ; gain = 0.000 ; free physical = 580 ; free virtual = 13282default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 1e23c8c40
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:32 ; elapsed = 00:00:29 . Memory (MB): peak = 2538.973 ; gain = 20.656 ; free physical = 548 ; free virtual = 12962default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 1e23c8c40
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:32 ; elapsed = 00:00:29 . Memory (MB): peak = 2571.973 ; gain = 53.656 ; free physical = 513 ; free virtual = 12612default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 1e23c8c40
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:32 ; elapsed = 00:00:29 . Memory (MB): peak = 2571.973 ; gain = 53.656 ; free physical = 513 ; free virtual = 12612default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
B
-Phase 2.4 Update Timing | Checksum: f722de39
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:33 ; elapsed = 00:00:30 . Memory (MB): peak = 2585.238 ; gain = 66.922 ; free physical = 504 ; free virtual = 12522default:defaulth px? 
H
3Phase 2 Router Initialization | Checksum: f722de39
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:33 ; elapsed = 00:00:30 . Memory (MB): peak = 2585.238 ; gain = 66.922 ; free physical = 503 ; free virtual = 12512default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
B
-Phase 3 Initial Routing | Checksum: abc49dc5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:35 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 19e04402e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:35 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 502 ; free virtual = 12502default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1b6594c6e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:35 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 501 ; free virtual = 12492default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
G
2Phase 10 Post Router Timing | Checksum: 1b6594c6e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:35 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 501 ; free virtual = 12492default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:35 ; elapsed = 00:00:31 . Memory (MB): peak = 2589.086 ; gain = 70.770 ; free physical = 539 ; free virtual = 12862default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
572default:default2
52default:default2
42default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:372default:default2
00:00:332default:default2
2597.4532default:default2
104.4802default:default2
5372default:default2
12842default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2597.4532default:default2
0.0002default:default2
5372default:default2
12852default:defaultZ17-722h px? 
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
00:00:00.352default:default2
00:00:00.192default:default2
2597.4532default:default2
0.0002default:default2
5312default:default2
12822default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2\
H/home/ubuntu/桌面/new_lab/lab_4_1/alu.runs/impl_1/SglCirCPU_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
pExecuting : report_drc -file SglCirCPU_drc_routed.rpt -pb SglCirCPU_drc_routed.pb -rpx SglCirCPU_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2w
creport_drc -file SglCirCPU_drc_routed.rpt -pb SglCirCPU_drc_routed.pb -rpx SglCirCPU_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
L/home/ubuntu/桌面/new_lab/lab_4_1/alu.runs/impl_1/SglCirCPU_drc_routed.rptL/home/ubuntu/桌面/new_lab/lab_4_1/alu.runs/impl_1/SglCirCPU_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file SglCirCPU_methodology_drc_routed.rpt -pb SglCirCPU_methodology_drc_routed.pb -rpx SglCirCPU_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file SglCirCPU_methodology_drc_routed.rpt -pb SglCirCPU_methodology_drc_routed.pb -rpx SglCirCPU_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
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
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
X/home/ubuntu/桌面/new_lab/lab_4_1/alu.runs/impl_1/SglCirCPU_methodology_drc_routed.rptX/home/ubuntu/桌面/new_lab/lab_4_1/alu.runs/impl_1/SglCirCPU_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file SglCirCPU_power_routed.rpt -pb SglCirCPU_power_summary_routed.pb -rpx SglCirCPU_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
sreport_power -file SglCirCPU_power_routed.rpt -pb SglCirCPU_power_summary_routed.pb -rpx SglCirCPU_power_routed.rpx2default:defaultZ4-113h px? 
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
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
712default:default2
52default:default2
42default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2s
_Executing : report_route_status -file SglCirCPU_route_status.rpt -pb SglCirCPU_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file SglCirCPU_timing_summary_routed.rpt -pb SglCirCPU_timing_summary_routed.pb -rpx SglCirCPU_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
%s4*runtcl2f
RExecuting : report_incremental_reuse -file SglCirCPU_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2f
RExecuting : report_clock_utilization -file SglCirCPU_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file SglCirCPU_bus_skew_routed.rpt -pb SglCirCPU_bus_skew_routed.pb -rpx SglCirCPU_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record