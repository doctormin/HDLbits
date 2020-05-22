module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] t1, t2;
    wire cout;
    add16 adder1(a[15:0], b[15:0], 1'b0, t1, cout);
    add16 adder2(a[31:16], b[31:16], cout, t2, 0);
    assign sum = {t2, t1};
endmodule
