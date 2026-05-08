class ha_seq extends uvm_sequence#(ha_tx);
`uvm_object_utils(ha_seq)
`NEW_OBJ
task pre_body();
endtask

  task body();
    ha_tx req;

    repeat (10) begin
      req = ha_tx::type_id::create("req");

      start_item(req);
        assert(req.randomize());
      finish_item(req);
    end
  endtask

endclass
/*
What uvm_do(req) internally does

Macro automatically performs:

1.req = ha_tx::type_id::create("req");
2.start_item(req);
3.assert(req.randomize());
4.finish_item(req);

*/

