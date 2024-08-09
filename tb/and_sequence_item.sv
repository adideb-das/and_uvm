class and_sequence_item extends uvm_sequence_item;

  //------------ i/p || o/p field declaration-----------------

  rand logic  a;  //i/p
  rand logic  b;

  logic out;      //o/p
  
  //---------------- register and_sequence_item class with factory --------
  `uvm_object_utils_begin(and_sequence_item) 
     `uvm_field_int( a   ,UVM_ALL_ON)
     `uvm_field_int( b   ,UVM_ALL_ON)
     `uvm_field_int( out ,UVM_ALL_ON)
  `uvm_object_utils_end
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="and_sequence_item");
    super.new(name);
  endfunction
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // write DUT inputs here for printing
  function string input2string();
    return($sformatf(" a=%0b  b=%0b",a,b));
  endfunction
  
  // write DUT outputs here for printing
  function string output2string();
    return($sformatf(" out=%0b", out));
  endfunction
    
  function string convert2string();
    return($sformatf({input2string(), " || ", output2string()}));
  endfunction
  //----------------------------------------------------------------------------

endclass:and_sequence_item
