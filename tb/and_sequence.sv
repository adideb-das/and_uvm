
/***************************************************
** class name  : and_sequence
** description : generate a==b for DUT
***************************************************/
class and_sequence extends uvm_sequence#(and_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_object_utils(and_sequence)            
  //----------------------------------------------------------------------------

  and_sequence_item txn;
  int unsigned LOOP=50;

  //----------------------------------------------------------------------------
  function new(string name="and_sequence");  
    super.new(name);
  endfunction
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  virtual task body();
  repeat(LOOP) begin 
    txn=and_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.a==txn.b;};
    #5;
    finish_item(txn);
  end
  endtask:body
  //----------------------------------------------------------------------------
endclass:and_sequence

/***************************************************
** class name  : sequence_2
** description : generate a!=b for DUT
***************************************************/
class sequence_2 extends and_sequence;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(sequence_2)      
  //----------------------------------------------------------------------------
  
  and_sequence_item txn;
  int unsigned LOOP = 50;
  
  //----------------------------------------------------------------------------
  function new(string name="sequence_2");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    repeat(LOOP) begin 
    txn=and_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.a != txn.b;};
    #5;
    finish_item(txn);
  end
  endtask:body
  //----------------------------------------------------------------------------
  
endclass : sequence_2