#----------------------------------------------------
#*** F:DN this file syntheizes an arch agnos design for a mul 
#         where the only contraint is the clk itself.
#----------------------------------------------------



#----------------------------------------------------
#*** F:DN Parameters
#----------------------------------------------------
#---- N: the following should be commented out if the tcl file is invoked by 
#-----   a python function
#set DATA_PATH_BITWIDTH 32;
#set CLKGATED_BITWIDTH 4; #numebr of apx bits
#set clk_period .7;#.63;#.68;#.7
#set ID 0
#----------------------------------------------------
#set OP_BITWIDTH $DATA_PATH_BITWIDTH; #operator bitwidth
puts $clk_period
set $long_clk .560



#----------------------------------------------------
#*** F:DN Variables
#----------------------------------------------------
set WDIR "/home/local/big/behzad/verilog_files/apx_operators/int_ops_apx/build/syn"
#~/behzad_local/verilog_files/synthesis
set RTLDIR  "/home/local/big/behzad/verilog_files/apx_operators/int_ops_apx/src/v_src"
#~/behzad_local/verilog_files/apx_operators/int_ops_apx
set REPORTS_DIR ${WDIR}/reports
set DESIGN_NAME conf_int_mul__noFF__arch_agnos__w_wrapper
set RESULTS_DIR ${WDIR}/results
set DCRM_FINAL_TIMING_REPORT timing.rpt
set DCRM_FINAL_AREA_REPORT area.rpt
set DCRM_FINAL_POWER_REPORT power.rpt
set search_path "${RTLDIR}"
set my_toplevel ${DESIGN_NAME}
#--- design dir
set design_dir_addr "/home/local/big/behzad/verilog_files/apx_operators/int_ops_apx/src/v_src"

#--- libraries
set lib_dir_1 "/usr/local/packages/synopsys_32.28_07292013/SAED32_EDK/lib"
set lib_dir_2 "/home/local/big/behzad/verilog_files/libraries"
#set lib_dir_3 "/home/polaris/behzad/behzad_local/verilog_files/libraries/germany_NanGate/db"
set lib_dir_3 "/home/local/big/behzad/verilog_files/libraries/germany_NanGate/db/various_temps__db__all_values"

set search_path [concat  $search_path $lib_dir_3]
set  std_library  "1.2V_25T.db"
#set  std_library  "noAging.db" 
set target_library $std_library; #$std_library_2" 
set link_library $std_library; #$std_library_2"
#...   ...    ..  ...  ..    ..    ...      ..
#*** F:AN deleting is necessary otherwise the synthesized design might be renamed
#         which results in problems while reading it (the synth design)
file delete -force WORK_1_${ID} ;#deleting so I won't have to deal with renaming
define_design_lib WORK -path ./WORK_1_${ID}
set verilogout_show_unconnected_pins "true"


#*** F:DN read the design
analyze -format verilog [list  ${design_dir_addr}/${DESIGN_NAME}.v]
elaborate $my_toplevel -parameters $OP_BITWIDTH,$DATA_PATH_BITWIDTH
check_design
link

#set_critical_range .6 "conf_int_mul__noFF__arch_agnos__w_wrapper_OP_BITWIDTH18_DATA_PATH_BITWIDTH26"
#set_critical_range .6 "conf_int_mul__noFF__arch_agnos_OP_BITWIDTH18_DATA_PATH_BITWIDTH26"
group_path -default -from [get_ports * -filter "direction == in"] -critical_range .6

#*** F:DN  set the optimization constraints 

#--- normal(or delay profile)
create_clock -name clk -period $clk_period [get_ports clk]
#--- duplicated version
#create_clock -name clk -period $long_clk [get_ports clk]

set_ideal_network -no_propagate [get_ports clk]


set_input_delay -max 0 -clock clk [get_ports * -filter "direction == in"]     
#set_input_delay  -max  .48 -clock clk  [get_ports d_internal__acc*]
#set_input_delay -max 0 -clock clk [get_ports *]     
set_dont_touch_network [get_clocks clk]

set hdlin_keep_signal_name user
#set enable_keep_signal_dt_net true
#set enable_keep_signal true

set compile_delete_unloaded_sequential_cells false
set compile_seqmap_propagate_constants false
set compile_enable_register_merging false
set compile_seqmap_enable_output_inversion false
set AC_NAME $DESIGN_NAME
#...   ...    ..  ...  ..    ..    ...      ..

#--- normal(or delay profile)
set_max_delay $clk_period -to [all_outputs]
#--- duplicated version
#set_max_delay $long_clk  -through mul__inst__acc 
#set_max_delay $clk_period -through mul__inst__apx



#*** F:DN compile
#set_dp_smartgen_options -mult_arch and
#set_dont_touch mul__inst__acc

compile_ultra -timing_high_effort_script -no_autoungroup 
compile_ultra -timing_high_effort_script -incremental -no_autoungroup
compile_ultra -timing_high_effort_script -incremental -no_autoungroup
compile_ultra -timing_high_effort_script -incremental -no_autoungroup

#---- flattening
#compile_ultra -timing_high_effort_script 
#compile_ultra -timing_high_effort_script -incremental 
#compile_ultra -timing_high_effort_script -incremental 
#compile_ultra -timing_high_effort_script -incremental 


#read_saif -auto_map_names -input ~/behzad_local/verilog_files/apx_operators/int_ops_apx/DUT.saif -instance test_bench_tb/acc_adder_u -verbose 


#*** F:DN report the results
set report_file__prefix  ${DESIGN_NAME}_OP_BITWIDTH${OP_BITWIDTH}_DATA_PATH_BITWIDTH${DATA_PATH_BITWIDTH}__only_clk_cons

#report_timing -sort_by slack -nworst 1000 -exclude [get_ports d_internal__acc*] -significant_digits 4 >  ${REPORTS_DIR}/${report_file__prefix}__timing.rpt

#--- normal(or delay profile)
report_timing -sort_by slack -nworst 1000 -significant_digits 4 >  ${REPORTS_DIR}/${report_file__prefix}__timing.rpt
#--- duplicated version
#report_timing -sort_by slack -through [get_object_name [get_pins -of_objects [get_object_name [get_cells -hierarchical -filter "full_name == mul__inst__apx"]]  -filter "direction == in"]] -significant_digits 4 > ${REPORTS_DIR}/${report_file__prefix}__timing.rpt



#report_timing -sort_by slack -nworst 1000 -through mul__inst__apx -significant_digits 4 >  ${REPORTS_DIR}/${report_file__prefix}__timing.rpt



report_area -hierarchy -nosplit > ${REPORTS_DIR}/${report_file__prefix}__area.rpt
report_power > ${REPORTS_DIR}/${report_file__prefix}__power.rpt
report_constraint -all_violators > ${REPORTS_DIR}/${report_file__prefix}__constraint_violators.rpt
#report_path_group > ${REPORTS_DIR}/path_groups__garbage_collect.rpt
#report_constraint > ${REPORTS_DIR}/constraint__garbage_collect.rpt
report_cell > ${REPORTS_DIR}/${report_file__prefix}__cells.rpt
report_resources -hierarchy > ${REPORTS_DIR}/${report_file__prefix}__resources.rpt
report_net


#*** F:DN save the design
set syn_name ${report_file__prefix} ;#syntheiszed file name
write -format ddc -hierarchy -output ${RESULTS_DIR}/${syn_name}_resynthesized${ID}.ddc
write -f verilog -hierarchy -output ${RESULTS_DIR}/${syn_name}_resynthesized${ID}.v
write_sdc ${RESULTS_DIR}/${syn_name}_resynthesized${ID}.sdc
write_sdf ${RESULTS_DIR}/${syn_name}_resynthesized${ID}.mapped.sdf; #switching activity file
remove_design -hierarchy


exit

