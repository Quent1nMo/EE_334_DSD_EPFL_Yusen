set_property SRC_FILE_INFO {cfile:C:/Users/yusen/Desktop/courses_epfl_fall/EE_334_Digital_System_Design/EE_334_DSD_EPFL_Yusen/Lab/lab02/lab02_colorled_handout/lab/constr/PYNQ-Z2_v1.0.xdc rfile:../../../../../lab02_colorled_handout/lab/constr/PYNQ-Z2_v1.0.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y7  IOSTANDARD LVCMOS33 } [get_ports { CLKxCI }]
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { LedBluexSO }]; #IO_L22N_T3_AD7N_35 Sch=led4_b
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { LedGreenxSO }]; #IO_L16P_T2_35 Sch=led4_g
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { LedRedxSO }]; #IO_L21P_T3_DQS_AD14P_35 Sch=led4_r
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { RSTxRI }]; #IO_L4P_T0_35 Sch=btn[0]
set_property src_info {type:XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { PushBluexSI }]; #IO_L4N_T0_35 Sch=btn[1]
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { PushGreenxSI }]; #IO_L9N_T1_DQS_AD3N_35 Sch=btn[2]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { PushRedxSI }]; #IO_L9P_T1_DQS_AD3P_35 Sch=btn[3]
