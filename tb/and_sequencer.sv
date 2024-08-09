class and_sequencer extends uvm_sequencer#(and_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_component_utils(and_sequencer)  
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="and_sequencer",uvm_component parent);  
    super.new(name,parent);
  endfunction
  //----------------------------------------------------------------------------
endclass:and_sequencer

