interface ha_interface(input logic clk);
	logic a;
	logic b;
	logic sum;
	logic carry;


//clocking blocks
//for drv
  clocking drv_cb @(posedge clk);
    default input #0 output #1;
	output a;
	output b;
	input sum;
	input carry;
endclocking

//for monitor
clocking mon_cb @(posedge clk);
   default input #1;
  
	input a;
	input b;
	input sum;
	input carry;
endclocking

endinterface



