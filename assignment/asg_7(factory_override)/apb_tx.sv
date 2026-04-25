class apb_tx extends uvm_sequence_item;

  // APB Signals as transaction fields
  rand bit        pwrite;     // 1 = write, 0 = read
  rand bit [31:0] paddr;      // address
  rand bit [31:0] pwdata;     // write data
       bit [31:0] prdata;     // read data (from DUT)
  rand bit        psel;
  rand bit        penable;


  // Factory registration

  `uvm_object_utils_begin(apb_tx)
    `uvm_field_int(pwrite,  UVM_ALL_ON)
    `uvm_field_int(paddr,   UVM_ALL_ON)
    `uvm_field_int(pwdata,  UVM_ALL_ON)
    `uvm_field_int(prdata,  UVM_ALL_ON)
    `uvm_field_int(psel,    UVM_ALL_ON)
    `uvm_field_int(penable, UVM_ALL_ON)
  `uvm_object_utils_end

  
  // Constraints
  constraint apb_valid_c {
    psel    == 1;
    penable == 1;
    paddr inside {[32'h0000_0000 : 32'h0000_FFFF]};
  }

  //constructot
  `NEW_OBJ

endclass
class apb_err_tx extends apb_tx;

  rand bit        pwrite;     // 1 = write, 0 = read
  rand bit [31:0] paddr;      // address
  rand bit [31:0] pwdata;     // write data

  // Factory registration
  `uvm_object_utils_begin(apb_err_tx)
  
    `uvm_field_int(pwrite,  UVM_ALL_ON)
    `uvm_field_int(paddr,   UVM_ALL_ON)
    `uvm_field_int(pwdata,  UVM_ALL_ON)
  `uvm_object_utils_end

  // Constructor
  `NEW_OBJ

 endclass

