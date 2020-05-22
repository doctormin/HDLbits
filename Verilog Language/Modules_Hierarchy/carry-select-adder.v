module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] r1, r2, r3;
    wire t;
    wire cout;
    add16 adder1(a[31:16], b[31:16], 0, r1, t);
    add16 adder2(a[31:16], b[31:16], 1, r2, t);
    add16 adder3(a[15:0], b[15:0], 0, r3, cout);
    always @(*) begin
        case(cout)
            1 : sum = {r2, r3};
            0 : sum = {r1, r3};
        endcase 
    end
endmodule