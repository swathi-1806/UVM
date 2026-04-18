//calling uvm_resource_tb set in top module to store the value count as 200;
//calling uvm_resource_tb set in a test_class build_phase to store the value name as "VLSI_GURU";
//calling uvm_resource_db read_by_nmae in build_phase of driver class to reteive integer count
//calling uvm_resource_db read_by_name in build_phase agent class to retrive string name
module tb;
//`include "uvm_pkg.sv"
import uvm_pkg::*;

//just for eda
`include "uvm_macros.svh"
//----------------------------

`include "mem_tx.sv"
`include "mem_drv.sv"
`include "mem_sqr.sv"
`include "mem_agent.sv"
`include "mem_env.sv"
`include "mem_base_test.sv"

module tb;
reg clk,rst;
int count;
//clk generation
	initial begin
		clk=0;
		forever #5 clk=~clk;
	end

//rst generation
	initial begin
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
	end

//declaring run_test()
	initial begin
		run_test("mem_base_test");
	end
//-----------------------------------------------------------------------------------------------

//calling uvm_resource_tb set in top module to store the value count as 200;

initial begin
count=200
uvm_resource_db #(int)::set("INT","INT_COUNT",count,null);
end
//-----------------------------------------------------------------------------------------------
eth_pkt pkt_h;
	initial begin
	pkt_h=eth_pkt::type_id::create("pkt_h");
	assert(pkt_h.randomize());

	uvm_resource_db(eth_pkt)::set("ETH_SCOPE","ETH_PKT",pkt_h,null);
	end


/*TODO:
-->store the value of count as 200 in driver connect_phase 
retrive the value of count in env connect_phase
-----------------------------------------------------------
-->create a eth_pkt class having properties as
	rand bit [7:0]sa;
	rand bit [7:0]da;

randomize the eth_pkt in top module and store the eth_pkt handle into uvm_resource_db
retrive the eth_pkt handle in driver run_phase



*/

endmodule
