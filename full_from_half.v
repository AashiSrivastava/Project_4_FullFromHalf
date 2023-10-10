//Developed by: Aashi Srivastava
// TITLE: Full adder from Half Adder
// Date: 10.10.23, 9:44 IST
module full_from_half (sum,carry_out,in1,in2,carry_in);
    input in1,in2,carry_in;
    output sum,carry_out;
    wire wire1,wire2,wire3;

    half_adder_CA h1(wire1,wire2,in1,in2);
    half_adder_CA h2(sum,wire3,wire1,carry_in);
    or o1(carry_out,wire2,wire3);

endmodule
module half_adder_CA(
    sum,carry,in1,in2
);
input in1,in2;
output sum, carry;

assign sum=in1^in2; //Sum of half adder is given by xor of the two inputs
assign carry=in1 & in2; // carry of the two half adder is given by the and of the two inputs
endmodule