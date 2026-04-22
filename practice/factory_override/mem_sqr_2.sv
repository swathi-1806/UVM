/*
functionality of mem_sqr
	-sqr should get the tx from sequence and drive those tx to drv
	-this logic is same for evry tb
	-so uvm has this logic preimplemented in uvm_sequencer base_class
	- we just need to use typedef and create a user defined sqr class such as mem_sqr
*/

typedef uvm_sequencer#(mem_err_tx) mem_sqr_2;
