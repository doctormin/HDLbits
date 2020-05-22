module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire [31:0] b_out;
    wire cout;
    assign b_out = b[31:0] ^ {32{sub}};
    add16 adder1(a[15:0], b_out[15:0], sub, sum[15:0], cout);
    add16 adder2(a[31:16], b_out[31:16], cout, sum[31:16], 0);
endmodule