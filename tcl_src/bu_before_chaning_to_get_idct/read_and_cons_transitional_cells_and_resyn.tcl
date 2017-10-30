#----------------------------------------------------
#*** F:DN this file syntheizes an arch agnos design for a mac 
#         ,cons cells that transition and 
#         resyn 
#----------------------------------------------------

proc make-reg_l {reg_na reg_lower_bound reg_up_bound} {
    set reg_l {}
    set num_l {}
    for {set a $reg_lower_bound} {$a < $reg_up_bound} {incr a} {
        lappend num_l $a
    }
    foreach el $num_l {
        #append concat_res reg_a_reg $el 
        lappend reg_l  "${reg_na}\[${el}\]"
        #reg_a_reg[${el}]
    }
    set reg_l_flattened [join $reg_l]
    return $reg_l_flattened
}

#----------------------------------------------------
#*** F:DN Parameters
#----------------------------------------------------
#---- N: the following should be commented out if the tcl file is invoked by 
#-----   a python function
#set DATA_PATH_BITWIDTH 32;
#set CLKGATED_BITWIDTH 4; #numebr of apx bits
#set clk_period .61;#.63;#.68;#.7
#set DESIGN_NAME conf_int_mac__noFF__arch_agnos__w_wrapper_OP_BITWIDTH32_DATA_PATH_BIT32_3
#set synth_file__na conf_int_mac__noFF__arch_agnos__w_wrapper_32Bit_32Bit__only_clk_cons_synthesized.v 
#set transition_cells__base_addr  "/home/polaris/behzad/behzad_local/verilog_files/apx_operators/int_ops_apx/src/py_src"
#set transitioning_cells__log__na "transitioning_cells.txt"
#set Pn 28
#set acc_max_delay .43
#set attempt__iter__c 0
#set ID 0
#set delays_striving_for__f__na "blah"
#set clk_period 0.7;set DATA_PATH_BITWIDTH 5;set CLKGATED_BITWIDTH 2;set DESIGN_NAME conf_int_mac__noFF__arch_agnos__w_wrapper_OP_BITWIDTH5_DATA_PATH_BITWIDTH5;set synth_file__na conf_int_mac__noFF__arch_agnos__w_wrapper_OP_BITWIDTH5_DATA_PATH_BITWIDTH5__only_clk_cons_resynthesizedSCBSD.v;set transition_cells__base_addr  /home/polaris/behzad/behzad_local/verilog_files/apx_operators/int_ops_apx/src/py_src;set transitioning_cells__log__na transitioning_cells_after_resynSCBSD.txt ;set Pn 4;set acc_max_delay 0.236;set attempt__iter__c 1;set ID SCBSD;set precisions_striving_for__f__na precisions_striving_forSCBSD.txt;set all_data__file__addr /home/polaris/behzad/behzad_local/verilog_files/apx_operators/int_ops_apx/build/syn/reports/data_collected/SCBSD/2017_04_01__21_47_52/mac_5__clk_0.7__acc_max_del_0.236__Pn_4__atmpt_1__id_SCBSD__evol_log.txt;set delays_striving_for__f__na delays_striving_forSCBSD.txt;
#
##----------------------------------------------------
#set op_type mac;# change this to add when doing add, it is used in the 
                # the log file name and inside the log file for identification
#set OP_BITWIDTH $DATA_PATH_BITWIDTH; #operator bitwidth
puts $clk_period
#----------------------------------------------------
#*** F:DN Variables
#----------------------------------------------------
set WDIR "/home/local/big/behzad/verilog_files/apx_operators/int_ops_apx/build/syn"
#~/behzad_local/verilog_files/synthesis
set RTLDIR  "/home/local/big/behzad/verilog_files/apx_operators/int_ops_apx/src/v_src"
#~/behzad_local/verilog_files/apx_operators/int_ops_apx
set REPORTS_DIR ${WDIR}/reports
#set DESIGN_NAME conf_int_mac__noFF__arch_agnospper
set RESULTS_DIR ${WDIR}/results
set DCRM_FINAL_TIMING_REPORT timing.rpt
set DCRM_FINAL_AREA_REPORT area.rpt
set DCRM_FINAL_POWER_REPORT power.rpt
set search_path "${RTLDIR}"
set my_toplevel ${DESIGN_NAME}

#--- design dir
set design_dir_addr "/home/local/big/behzad/verilog_files/apx_operators/int_ops_apx/build/syn/results" 
set synth__file ${design_dir_addr}/$synth_file__na

#--- libraries
set lib_dir_1 "/usr/local/packages/synopsys_32.28_07292013/SAED32_EDK/lib"
set lib_dir_2 "/home/local/big/behzad/verilog_files/libraries"
#set lib_dir_3 "/home/polaris/behzad/behzad_local/verilog_files/libraries/germany_NanGate/db"
set lib_dir_3 "/home/local/big/behzad/verilog_files/libraries/germany_NanGate/db/various_temps__db__all_values"
set search_path [concat  $search_path $lib_dir_3]
#set  std_library  "noAging.db" 
set  std_library  "1.2V_25T.db"

set target_library $std_library; #$std_library_2" 
set link_library $std_library; #$std_library_2"
#...   ...    ..  ...  ..    ..    ...      ..
#*** F:AN deleting is necessary otherwise the synthesized design might be renamed
#         which results in problems while reading it (the synth design)
file delete -force WORK_1_${ID} ;#deleting so I won't have to deal with renaming
define_design_lib WORK -path ./WORK_1_${ID}
set verilogout_show_unconnected_pins "true"


#*** F:AN this is applicable to an FFed design. use the other 
#         code (bellow for noFFed version
#----------------------------------------------------
#*** F:AN noFF=>FF
#
#if {$op_type == "mac"} {
#    set input_name_1 "a_reg_reg"
#    set input_name_2 "b_reg_reg"
#    set input_name_3 "c_reg_reg"
#}
#if {$op_type == "mul"} {
#    set input_name_1 "a_reg_reg"
#    set input_name_2 "b_reg_reg"
#    set input_name_3 "c_reg_reg"
#}
#if {$op_type == "add"} {
#   set input_name_1 "a_reg_reg"
#    set input_name_2 "b_reg_reg"
#    set input_name_3 "c_reg_reg"
#}
#....................................................
#*** F:AN FF=>noFF
set input_name_1 "a"
set input_name_2 "b"
set input_name_3 "c"
set output_name_1 "d"
#

#*** F:DN lumping registers (wires) together
set all_reg_a_l [make-reg_l $input_name_1 0 $DATA_PATH_BITWIDTH]
set all_reg_b_l [make-reg_l $input_name_2 0 $DATA_PATH_BITWIDTH]
set all_reg_c_l [make-reg_l $input_name_3 0 $DATA_PATH_BITWIDTH]
#set all_reg_d_l [make-reg_l $output_name_1 0 $DATA_PATH_BITWIDTH]
set all_reg_a_b_joined [concat $all_reg_a_l $all_reg_b_l]
set all_reg_a_b_c_joined [concat $all_reg_a_b_joined $all_reg_c_l]
#---    ---      ---       ---       ---       ---
set a_and_b_apx_bit__upper_bound [expr $DATA_PATH_BITWIDTH - $Pn] 
set c_and_d_apx_bit__upper_bound [ expr 2 * [expr $DATA_PATH_BITWIDTH - $Pn]] 
set apx_reg_a_l [make-reg_l $input_name_1 0 $a_and_b_apx_bit__upper_bound]
set apx_reg_b_l [make-reg_l $input_name_2 0 $a_and_b_apx_bit__upper_bound]
set apx_reg_c_l [make-reg_l $input_name_3 0 $c_and_d_apx_bit__upper_bound]
#set apx_reg_d_l [make-reg_l $output_name_1 0 $c_and_d_apx_bit__upper_bound]
set apx_reg_a_b_joined [concat $apx_reg_a_l $apx_reg_b_l]
set apx_reg_a_b_c_joined [concat $apx_reg_a_b_joined $apx_reg_c_l]
#---    ---      ---       ---       ---       ---
set acc_reg_a_l [make-reg_l $input_name_1 $a_and_b_apx_bit__upper_bound $DATA_PATH_BITWIDTH]
set acc_reg_b_l [make-reg_l $input_name_2 $a_and_b_apx_bit__upper_bound $DATA_PATH_BITWIDTH]
set acc_reg_c_l [make-reg_l $input_name_3 $c_and_d_apx_bit__upper_bound $DATA_PATH_BITWIDTH]
#set acc_reg_d_l [make-reg_l $output_name_1  $c_and_d_apx_bit__upper_bound $DATA_PATH_BITWIDTH]
set acc_reg_a_b_joined [concat $acc_reg_a_l $acc_reg_b_l]

#echo $acc_reg_a_b_joined > "my_blah.txt"

set acc_reg_a_b_c_joined [concat $acc_reg_a_b_joined $acc_reg_c_l]


#*** F:AN I got rid of c b/c now it doesn't show up in any of the designs
set all_input__pt [concat $all_reg_a_b_joined]
#set all_input__pt [concat $all_reg_a_b_c_joined]




#---    ---      ---       ---       ---       ---
puts $apx_reg_a_b_c_joined 
puts $apx_reg_a_b_c_joined
#puts $apx_reg_d_l
puts $acc_reg_a_b_c_joined 
puts $acc_reg_a_b_c_joined
#puts $acc_reg_d_l
#----------------------------------------------------

#*** get delays striving for
set fp_1 [open $transition_cells__base_addr/$delays_striving_for__f__na]
set file_data [read $fp_1]
close $fp_1
set delays_striving_for__l__string [split $file_data "\n"]
set delays_striving_for__l [split $delays_striving_for__l__string " "]
set fp [open $transition_cells__base_addr/$transitioning_cells__log__na r]
set file_data [read $fp]
close $fp
set transition_cells__l__string [split $file_data "\n"]
set transition_cells__l__string__length [llength transition_cells__l__string]
#***F:DN need to manipulate the list b/c it has an extra {} at the end
set transition_cells__l__string [lrange  $transition_cells__l__string  0 [expr $transition_cells__l__string__length -2]]
set transition_cells__l__string__length [llength transition_cells__l__string]


#set transition_cells__l [split $transition_cells__l__string " "]

#*** F:DN get transitioning cells list
set fp [open $transition_cells__base_addr/none_$transitioning_cells__log__na r]
set file_data [read $fp]
close $fp

set non_transition_cells__l__string [split $file_data "\n"]
set non_transition_cells__l__string__length [llength $non_transition_cells__l__string]
#***F:DN need to manipulate the list b/c it has an extra {} at the end
set non_transition_cells__l__string [lrange  $non_transition_cells__l__string  0 [expr $non_transition_cells__l__string__length -2]]
set non_transition_cells__l__string__length [llength $non_transition_cells__l__string]

set fp_2 [open $transition_cells__base_addr/$precisions_striving_for__f__na]
set file_data_2 [read $fp_2]
close $fp_2
set Pn__l__string [split $file_data_2 "\n"]
set Pn__l [split $Pn__l__string " "]

#puts [lindex $non_transition_cells__l__string 0]
#exit
#set non_transition_cells__l [split $non_transition_cells__l__string " "]

#*** F:DN read the design
read_file  $synth__file -autoread -top $my_toplevel -library WORK_1_${ID}
check_design


#*** F:DN  set the optimization constraints 
create_clock -name clk -period $clk_period [get_ports clk]
set_ideal_network -no_propagate [get_ports clk]
#set_input_delay -max 0 -clock clk [get_ports *]     
set_input_delay -max 0 -clock clk [get_ports * -filter "direction == in"] 
set_dont_touch_network [get_clocks clk]

set hdlin_keep_signal_name user
#set enable_keep_signal_dt_net true
#set enable_keep_signal true
set compile_delete_unloaded_sequential_cells false
set compile_seqmap_propagate_constants false
set compile_enable_register_merging false
set compile_seqmap_enable_output_inversion false
set AC_NAME $DESIGN_NAME

#*** F:AN noFF=>FF
#if {$op_type == "mac"} {
#    #set outputs_of_interest [get_object_name [get_pins -of_objects c_reg_reg* -filter "direction == in"]]
#    set outputs_of_interest [get_object_name [get_pins -of_objects [get_object_name [get_cells -hierarchical -filter "full_name != mac__inst"]]  -filter "direction == in"]]
#}
#if {$op_type == "mul"} {
#    #set outputs_of_interest [get_object_name [get_cells -hierarchical -filter "full_name != mul__inst"]]
#    #set outputs_of_interest [get_object_name [get_pins -of_objects c_reg_reg* -filter "direction == in"]]
#    #set outputs_of_interest [get_object_name [get_pins -of_objects [get_object_name [get_cells -hierarchical -filter "full_name == *reg*"]]  -filter "direction == in"]]
#    set outputs_of_interest [get_object_name [get_pins -of_objects [get_object_name [get_cells -hierarchical "*reg*"]]  -filter "direction == in"]]
#}
#if {$op_type == "add"} {
#    #set outputs_of_interest [get_object_name [get_pins -of_objects c_reg_reg* -filter "direction == in"]]
#    set outputs_of_interest [get_object_name [get_pins -of_objects [get_object_name [get_cells -hierarchical -filter "full_name != add__inst"]]  -filter "direction == in"]]
#}
# *** F:AN FF=>noFF
set outputs_of_interest [get_object_name [all_outputs]]


#----------------------------------------------------
#**** F:DN collect data before increasing pressure(time wise) on the design
#----------------------------------------------------
#set all_data__file__na ${op_type}_${DATA_PATH_BITWIDTH}__clk_${clk_period}__acc_max_delay_${acc_max_delay}__Pn_${Pn}__log.txt
#set all_data__file__na ${op_type}_${DATA_PATH_BITWIDTH}__clk_${clk_period}__acc_max_del_${acc_max_delay}__Pn_${Pn}__atmpt_${attempt__iter__c}__id_${ID}__evol_log.txt

set_max_delay $clk_period -to $outputs_of_interest ;#modifying the constraint to makesure


echo "**************** " > $all_data__file__addr
echo "*** F:DN before putting pressure " >> $all_data__file__addr
#echo "**************** " >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#echo "*** F:DN all paths" >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#report_timing -sort_by slack -significant_digits 4 >>  ${REPORTS_DIR}/data_collected/${all_data__file__na}
#
#echo "**************** " >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#echo "*** F: after putting pressure " >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#echo "**************** " >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#----------------------------------------------------




#***F:DN before constrainting
#*** probing in. Note that probing into the design for timing requires 
##               a different way as opposed to imposing
echo "*** F:DN transitional cells" >> $all_data__file__addr
set const [expr [lindex $delays_striving_for__l 1]]
#echo $const >> "my_blah.txt"

set counter 1

foreach non_transition_cells__l__e $non_transition_cells__l__string {
    reset_path -to  $outputs_of_interest ;# need this b/c ow the other set_max_delays 
    set const [expr [lindex $delays_striving_for__l $counter]]
    set_max_delay $const -to $outputs_of_interest
    set non_transition_cells__l [split  $non_transition_cells__l__e " "]
    set_max_delay $clk_period -through $non_transition_cells__l -to $outputs_of_interest
    
    #*** F:DN probing in 
    set precision_to_be_shown [lindex $Pn__l $counter]
    set my_string  ***PRECISION:$precision_to_be_shown 
    echo $my_string >> $all_data__file__addr
    report_timing -sort_by slack -exclude $non_transition_cells__l -significant_digits 4 >>  $all_data__file__addr

    #echo $first_el >> non_transition_cells__l__acquired__in_tcl
    incr counter
}
reset_path -to  $outputs_of_interest ;# need this b/c ow the other set_max_delays 
set_max_delay $clk_period -to $outputs_of_interest ;#modifying the constraint to makesure


echo "*** F:DN all paths report" >> $all_data__file__addr
report_timing -sort_by slack -significant_digits 4 >>  $all_data__file__addr

# *** AN: for sanity check
#echo "*** F:DN start of sanity check" >> $all_data__file__addr
#report_timing -sort_by slack -nworst 1000 -significant_digits 4 >>  $all_data__file__addr
#echo "*** F:DN end of sanity check" >> $all_data__file__addr
# *** AN: end of for sanity check

echo "*** F:DN power report" >> $all_data__file__addr
report_power >>  $all_data__file__addr
report_area -hierarchy -nosplit >>  $all_data__file__addr


#***F:DN now imposing the constraints
reset_path -to  $outputs_of_interest ;# need this b/c ow the other set_max_delays 


#*** F:AN I got rid of c b/c now it doesn't show up in any of the designs
#set priority_array  $acc_reg_a_b_c_joined 
set priority_array  $acc_reg_a_b_joined 
#
foreach pt $all_input__pt { 
    if {[lsearch -exact $priority_array $pt] >= 0} {
        group_path -name priority -from $pt -critical_range 0.5 -priority 100 -weight 100
    } else {
        group_path -name non_priority -from $pt -critical_range 0.5 -priority 1 -weight 1
    }
}




#*** F:DN constrain according to the constaints
set const [expr [lindex $delays_striving_for__l 1]]
set_max_delay $const -to $outputs_of_interest
set counter 2

#group_path -name priority_$counter -to $outputs_of_interest -critical_range .8 -weight [expr 5 - $counter]

#**** F:DN change to this for proper constraining (as opposed to naive constraining which is more conservative)
#not naive
#foreach non_transition_cells__l__e $non_transition_cells__l__string {
#    set non_transition_cells__l [split  $non_transition_cells__l__e " "]
#    set const [expr [lindex $delays_striving_for__l $counter]]
#    
##    group_path -name priority_$counter -to $outputs_of_interest -critical_range .5 -weight [expr 5 - $counter]
##    group_path -default -through $non_transition_cells__l -to $outputs_of_interest
#    
#    set_max_delay $const -through $non_transition_cells__l -to $outputs_of_interest 
#    #set_max_delay $const -group_path priority_$counter -to $outputs_of_interest
#    #echo $first_el >> non_transition_cells__l__acquired__in_tcl
#    incr counter
#}
#*** F:DN naive constraining
set_max_delay $clk_period -to $outputs_of_interest 
set_max_delay $const -from $acc_reg_a_b_joined -to $outputs_of_interest 




#set offset [expr $non_transition_cells__l__string__length - 1]
##*** F:report the timing for transitional cells
#echo "*** F:DN transitional cells" >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#set counter 1
#foreach non_transition_cells__l__e $non_transition_cells__l__string {
#    set non_transition_cells__l [split  $non_transition_cells__l__e " "]
#    set precision_to_be_shown [lindex $Pn__l $counter]
#    #set precision_to_be_shown [expr $Pn - $offset]
#    set my_string  ***PRECISION:$precision_to_be_shown 
#    echo $my_string >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#    #set offset [expr $offset - 1] 
#    incr counter
#    report_timing -sort_by slack -exclude $non_transition_cells__l -significant_digits 4 >>  ${REPORTS_DIR}/data_collected/${all_data__file__na}
#}
#



#*** F:DN compile
#set_dp_smartgen_options -mult_arch and
compile_ultra -timing_high_effort_script -no_autoungroup 
compile_ultra -timing_high_effort_script -incremental -no_autoungroup
compile_ultra -timing_high_effort_script -incremental -no_autoungroup

#compile_ultra -timing_high_effort_script -incremental -no_autoungroup
#compile_ultra -timing_high_effort_script -incremental -no_autoungroup
#optimize_netlist -area
#compile_ultra -timing_high_effort_script -incremental -no_autoungroup
#read_saif -auto_map_names -input ~/behzad_local/verilog_files/apx_operators/int_ops_apx/DUT.saif -instance test_bench_tb/acc_adder_u -verbose 

#echo "**************** " >> $all_data__file__addr
#echo "*** F:DN showing slack based on group for fun" >> $all_data__file__addr
#report_timing -sort_by group -significant_digits 4 >>  $all_data__file__addr
report_constraint -all_violators  -verbose > ${all_data__file__addr}__consts
report_design  > ${all_data__file__addr}__consts
#*** F:DN report the results
set report_file__prefix  ${DESIGN_NAME}__only_clk_cons
#report_timing -sort_by group -nworst 1000 -significant_digits 4 >  ${REPORTS_DIR}/${report_file__prefix}__timing.rpt
report_timing -sort_by group -significant_digits 4 >  ${REPORTS_DIR}/${report_file__prefix}__timing.rpt
echo "now through and exclude" >> ${REPORTS_DIR}/${report_file__prefix}__timing.rpt
echo "*** transitioning cells" >> ${REPORTS_DIR}/${report_file__prefix}__timing.rpt

#report_timing -sort_by slack -exclude $non_transition_cells__l -significant_digits 4 >>  ${REPORTS_DIR}/${report_file__prefix}__timing.rpt

#...   ...    ..  ...  ..    ..    ...      ..
echo "*** non transitioning cells" >> ${REPORTS_DIR}/${report_file__prefix}__timing.rpt
#report_timing -sort_by slack -exclude $transition_cells__l -nworst 30000 -significant_digits 4 >>  ${REPORTS_DIR}/${report_file__prefix}__timing.rpt
#report_timing -sort_by slack -from a[0] -to [$outputs_of_interest] >>  ${REPORTS_DIR}/${report_file__prefix}__timing.rpt
#....................................................
report_area -hierarchy -nosplit > ${REPORTS_DIR}/${report_file__prefix}__area.rpt
report_power > ${REPORTS_DIR}/${report_file__prefix}__power.rpt
#report_constraint -all_violators > ${REPORTS_DIR}/${report_file__prefix}__constraint_violators.rpt
report_constraint > ${REPORTS_DIR}/${report_file__prefix}__constraints.rpt
#report_path_group > ${REPORTS_DIR}/path_groups__garbage_collect.rpt
#report_constraint > ${REPORTS_DIR}/constraint__garbage_collect.rpt
report_cell > ${REPORTS_DIR}/${report_file__prefix}__cells.rpt
report_resources > ${REPORTS_DIR}/${report_file__prefix}__resources.rpt
report_net
#....................................................
#*** F:DN dumping the result in one log file
#set all_data__file__na ${op_type}_${DATA_PATH_BITWIDTH}__clk_${clk_period}__acc_max_delay_${acc_max_delay}__Pn_${Pn}__log.txt
#echo $all_data__file__na >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#echo "*** F:DN transitional cells report" >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#report_timing -sort_by slack -exclude $non_transition_cells__l -significant_digits 4 >>  ${REPORTS_DIR}/data_collected/${all_data__file__na}
#set_max_delay $clk_period -to [$outputs_of_interest] ;#modifying the constraint to makesure
#                                             #all paths meet the clk
#echo "*** F:DN all cells report" >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#report_timing -sort_by slack -significant_digits 4 >>  ${REPORTS_DIR}/data_collected/${all_data__file__na}
#echo "*** F:DN power report" >> ${REPORTS_DIR}/data_collected/${all_data__file__na}
#report_power >>  ${REPORTS_DIR}/data_collected/${all_data__file__na}
#

#*** F:DN save the design
set syn_name ${report_file__prefix} ;#syntheiszed file name
write -format ddc -hierarchy -output ${RESULTS_DIR}/${syn_name}_resynthesized${ID}.ddc
write -f verilog -hierarchy -output ${RESULTS_DIR}/${syn_name}_resynthesized${ID}.v
write_sdc ${RESULTS_DIR}/${syn_name}_resynthesized${ID}.sdc
write_sdf ${RESULTS_DIR}/${syn_name}_resynthesized${ID}.mapped.sdf; #switching activity file
remove_design -hierarchy


exit
#