module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] t1, t2, t3;
    my_dff8 diff1 (clk, d, t1); 
    my_dff8 diff2 (clk, t1, t2);
    my_dff8 diff3 (clk, t2, t3);
	always@(*) begin  // This is a combinational circuit
        case (sel)
            0 : q = d;
            1 : q = t1;
            2 : q = t2;
            3 : q = t3;
        endcase
    end
endmodule