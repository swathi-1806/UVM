class consumer_2 extends uvm_component;

  `uvm_component_utils(consumer_2)
  `NEW_COMP

  uvm_analysis_imp#(my_tx, consumer_2) consumer2_ap_h;
  my_tx tx;

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    consumer2_ap_h = new("consumer2_ap_h", this);
  endfunction

  function void write(my_tx t);
    $cast(tx, t);

    `uvm_info("consumer_2",
              $sformatf("SBD tx is %s", tx.sprint()),
              UVM_NONE)
  endfunction

endclass

