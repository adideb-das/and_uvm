
`ifndef TB_PKG
`define TB_PKG
`include "uvm_macros.svh"
package tb_pkg;
 import uvm_pkg::*;
 `include "and_sequence_item.sv"        // transaction class
 `include "and_sequence.sv"             // sequence class
 `include "and_sequencer.sv"            // sequencer class
 `include "and_driver.sv"               // driver class
 `include "and_monitor.sv"              // monitor class
 `include "and_agent.sv"                // agent class  
 `include "and_coverage.sv"             // coverage class
 `include "and_scoreboard.sv"           // scoreboard class
 `include "and_env.sv"                  // environment class

 `include "and_test.sv"                         // test1
 //`include "test2.sv"
 //`include "test3.sv"

endpackage
`endif 


