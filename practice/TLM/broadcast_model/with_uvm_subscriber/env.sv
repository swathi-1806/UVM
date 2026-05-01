class env extends uvm_env;

`uvm_component_utils(env)
`NEW_COMP

//instantiate env
producer producer_h;
consumer_1 c1_h;
consumer_2 c2_h;

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	producer_h=producer::type_id::create("producer_h",this);
	c1_h=consumer_1::type_id::create("c1_h",this);
	c2_h=consumer_2::type_id::create("c2_h",this);
endfunction

function void connect_phase(uvm_phase phase);
	//connect producer and consumer
	//1.producer's tlm to consumer_1 tlm
	producer_h.producer_ap_h.connect(c1_h.analysis_export);
	//2.producer's tlm to consumer_2 tlm
	producer_h.producer_ap_h.connect(c2_h.analysis_export);

endfunction

endclass
