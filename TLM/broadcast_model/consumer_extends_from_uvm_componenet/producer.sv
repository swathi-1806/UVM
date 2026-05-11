class producer extends uvm_component;

  `uvm_component_utils(producer)
  `NEW_COMP

  uvm_analysis_port#(my_tx) producer_ap_h;

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    producer_ap_h = new("producer_ap_h", this);
  endfunction

  task run_phase(uvm_phase phase);
    my_tx tx = my_tx::type_id::create("tx");
    tx.randomize();

    `uvm_info("producer",
              $sformatf("producer tx is %s", tx.sprint()),
              UVM_NONE)

    producer_ap_h.write(tx);
  endtask

endclass

