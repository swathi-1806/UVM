class consumer_1 extends uvm_component;

  `uvm_component_utils(consumer_1)
  `NEW_COMP

  // You MUST create this manually
  uvm_analysis_imp#(my_tx, consumer_1) consumer1_ap_h;

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    consumer1_ap_h= new("consumer1_ap_h", this);
  endfunction

  // write() is called through imp
  function void write(my_tx t);
    my_tx tx;
    $cast(tx, t);

    `uvm_info("consumer_1",
              $sformatf("COV tx is %s", tx.sprint()),
              UVM_NONE)
  endfunction

endclass
