module top_module ( input clk, input d, output q );
    wire t1, t2;
    my_dff instance1 (clk, d, t1);
    my_dff instance2 (clk, t1, t2);
    my_dff instance3 (clk, t2, q);
endmodule