# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Wed Jul 02 12:14:45 EDT 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design ram4x1

group_path -weight 1.000000 -name C2C -from [list \
  [get_cells dout_reg]  \
  [get_cells {mem_reg[1]}]  \
  [get_cells {mem_reg[0]}]  \
  [get_cells {mem_reg[3]}]  \
  [get_cells {mem_reg[2]}] ] -to [list \
  [get_cells dout_reg]  \
  [get_cells {mem_reg[1]}]  \
  [get_cells {mem_reg[0]}]  \
  [get_cells {mem_reg[3]}]  \
  [get_cells {mem_reg[2]}] ]
group_path -weight 1.000000 -name C2O -from [list \
  [get_cells dout_reg]  \
  [get_cells {mem_reg[1]}]  \
  [get_cells {mem_reg[0]}]  \
  [get_cells {mem_reg[3]}]  \
  [get_cells {mem_reg[2]}] ] -to [get_ports dout]
group_path -weight 1.000000 -name I2C -from [list \
  [get_ports clk]  \
  [get_ports we]  \
  [get_ports {addr[1]}]  \
  [get_ports {addr[0]}]  \
  [get_ports din] ] -to [list \
  [get_cells dout_reg]  \
  [get_cells {mem_reg[1]}]  \
  [get_cells {mem_reg[0]}]  \
  [get_cells {mem_reg[3]}]  \
  [get_cells {mem_reg[2]}] ]
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports clk]  \
  [get_ports we]  \
  [get_ports {addr[1]}]  \
  [get_ports {addr[0]}]  \
  [get_ports din] ] -to [get_ports dout]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
