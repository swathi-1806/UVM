class consumer_2 extends uvm_subscriber#(my_tx);

`uvm_component_utils(consumer_2)
my_tx tx;

`NEW_COMP

    //implementation of write method
	//this write method is a pure virtual method in the uvm base class i.e uvm_sunscriber
	//wkt since consumer_2 is inherited from uvm_subscriber class, consumer_2  should have compulsory the definition for these pure methos
	//method i.e write
   // Proper implementation of write()
  virtual function void write(my_tx t);
    $cast(tx, t);

    `uvm_info("consumer_2",
              $sformatf("sbd tx is %s", tx.sprint()),
              UVM_NONE)
  endfunction


endclass

