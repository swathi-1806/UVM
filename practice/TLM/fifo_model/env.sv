class env extends uvm_env;

`uvm_component_utils(env)
`NEW_COMP

producer producer_h;
consumer consumer_h;

//uvm_tlm_fifo#(T) instance_name;
uvm_tlm_fifo#(my_tx) fifo_h;

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	producer_h=producer::type_id::create("producer_h",this);
	consumer_h=consumer::type_id::create("consumer_h",this);
	fifo_h = new("fifo_h",this);
endfunction

function void connect_phase(uvm_phase phase);
	//1.connect producer to fifo
	producer_h.producer_port_h.connect(fifo_h.put_export);
	//2.connect fifo to consumer
	consumer_h.consumer_port_h.connect(fifo_h.get_export);

	endfunction

endclass

