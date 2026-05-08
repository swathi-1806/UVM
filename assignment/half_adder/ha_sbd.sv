class ha_sbd extends uvm_subscriber#(ha_tx);
`uvm_component_utils(ha_sbd)

 `NEW_COMP

  virtual function void write(ha_tx t);
        bit exp_sum;
        bit exp_carry;

        exp_sum   = t.a ^ t.b;
        exp_carry = t.a & t.b;

        if(t.sum == exp_sum && t.carry == exp_carry)
            `uvm_info("sbd", "PASS", UVM_LOW)
        else
            `uvm_error("sbd", $sformatf("FAIL a=%0b b=%0b",t.a,t.b))
    endfunction

endclass
