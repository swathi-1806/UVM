class env extends uvm_env;

`uvm_component_utils(env)
`NEW_COMP

//instantiate env
producer producer_h;
consumer consumer_h;

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	producer_h=producer::type_id::create("producer_h",this);
	consumer_h=consumer::type_id::create("consumer_h",this);
endfunction

function void connect_phase(uvm_phase phase);
	//connect producer and consumer
	//master.connect(slave)/
	//the class which has the port is a master;
	consumer_h.consumer_port_h.connect(producer_h.producer_imp_h);
endfunction

endclass

