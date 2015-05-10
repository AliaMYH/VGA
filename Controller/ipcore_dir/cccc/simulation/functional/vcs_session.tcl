gui_open_window Wave
gui_sg_create cccc_group
gui_list_add_group -id Wave.1 {cccc_group}
gui_sg_addsignal -group cccc_group {cccc_tb.test_phase}
gui_set_radix -radix {ascii} -signals {cccc_tb.test_phase}
gui_sg_addsignal -group cccc_group {{Input_clocks}} -divider
gui_sg_addsignal -group cccc_group {cccc_tb.CLK_IN1}
gui_sg_addsignal -group cccc_group {{Output_clocks}} -divider
gui_sg_addsignal -group cccc_group {cccc_tb.dut.clk}
gui_list_expand -id Wave.1 cccc_tb.dut.clk
gui_sg_addsignal -group cccc_group {{Status_control}} -divider
gui_sg_addsignal -group cccc_group {cccc_tb.RESET}
gui_sg_addsignal -group cccc_group {{Counters}} -divider
gui_sg_addsignal -group cccc_group {cccc_tb.COUNT}
gui_sg_addsignal -group cccc_group {cccc_tb.dut.counter}
gui_list_expand -id Wave.1 cccc_tb.dut.counter
gui_zoom -window Wave.1 -full
