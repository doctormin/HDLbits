module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout;
    add16 adder1(a[15:0], b[15:0], 1'b0, sum[15:0], cout);
    add16 adder2(a[31:16], b[31:16], cout, sum[31:16], 1'b0);
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign sum  = a^b^cin;
    assign cout = a&b|a&cin|b&cin;
endmodule