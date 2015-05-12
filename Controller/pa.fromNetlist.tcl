
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Controller -dir "Y:/Desktop/github/DigitalProject2/VGA/Controller/planAhead_run_2" -part xc7a100tcsg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "Y:/Desktop/github/DigitalProject2/VGA/Controller/testBigMod.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Y:/Desktop/github/DigitalProject2/VGA/Controller} {ipcore_dir} }
add_files [list {ipcore_dir/screenS.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/testScreen.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/testTileset.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/tilesetS.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "vgaTest.ucf" [current_fileset -constrset]
add_files [list {vgaTest.ucf}] -fileset [get_property constrset [current_run]]
link_design
