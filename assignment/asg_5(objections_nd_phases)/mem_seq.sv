class mem_seq extends uvm_sequence#(mem_tx);
`uvm_object_utils(mem_seq)
`NEW_OBJ

	uvm_phase p;

	task pre_body;
		p=get_starting_phase;
		if(p!=null)begin
			p.raise_objection(this);
		end
	endtask
	task post_body;
		if(p!=null) p.drop_objection(this);
	endtask
endclass
