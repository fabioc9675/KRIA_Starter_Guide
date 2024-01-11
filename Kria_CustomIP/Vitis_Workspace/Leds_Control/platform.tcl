# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Users\Kria_CustomIP\Vitis_Workspace\Leds_Control\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Users\Kria_CustomIP\Vitis_Workspace\Leds_Control\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Leds_Control}\
-hw {D:\Users\Kria_CustomIP\Fab_LedCounter\design_leds_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {device_tree} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {D:/Users/Kria_CustomIP/Vitis_Workspace}

platform write
platform generate -domains 
platform active {Leds_Control}
platform generate
platform generate -domains device_tree_domain 
