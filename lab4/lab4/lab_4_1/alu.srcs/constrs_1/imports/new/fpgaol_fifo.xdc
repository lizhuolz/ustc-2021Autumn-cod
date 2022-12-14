## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }];

##Switches
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { in[0]}];
set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { in[1]}];
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { in[2]}];
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { in[3]}];
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { in[4]}];
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { valid}];
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports {run}];
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { rst}];

##Buttons
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33     } [get_ports { step }];

##LEDs
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { out0[0] }];
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { out0[1] }];
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { out0[2] }];
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { out0[3] }];
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { out0[4] }];
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { check[0] }];
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { check[1] }];
set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { ready }];

#7-Segment Display
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33     } [get_ports { seg[0] }]; #IO_L9N_T1_DQS_AD3N_15 Sch=xa_n[1]
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33     } [get_ports { seg[1] }]; #IO_L9P_T1_DQS_AD3P_15 Sch=xa_p[1]
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33     } [get_ports { seg[2] }]; #IO_L8N_T1_AD10N_15 Sch=xa_n[2]
set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33     } [get_ports { seg[3] }]; #IO_L8P_T1_AD10P_15 Sch=xa_p[2]
set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33     } [get_ports { an[0] }]; #IO_L7N_T1_AD2N_15 Sch=xa_n[3]
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33     } [get_ports { an[1] }]; #IO_L7P_T1_AD2P_15 Sch=xa_p[3]
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33     } [get_ports { an[2] }]; #IO_L10N_T1_AD11N_15 Sch=xa_n[4]