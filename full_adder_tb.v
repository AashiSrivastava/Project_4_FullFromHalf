//Developed by: Aashi Srivastava
// TITLE: Full adder test bench
// Date: 10.10.23, 9:44 IST

module full_adder_tb (
    
);
    reg in1,in2,carry_in;
    wire sum,carry_out;

    full_from_half s(sum,carry_out,in1,in2,carry_in);

    initial begin
        $dumpfile("full_from_half.vcd");
        $dumpvars(0,full_adder_tb);
        $monitor($time, "sum=%b carry_out=%b in1=%b in2=%b carry_in=%b",sum,carry_out,in1,in2,carry_in);
        #40 $finish;
    end
    initial begin
        in1=0;
        #20 in1=~in1;
    end
    initial begin
        in2=0;
        repeat(3)
        #10 in2=~in2;
    end
    initial begin
        carry_in=0;
        repeat(7)
        #5 carry_in=~carry_in;
    end

endmodule