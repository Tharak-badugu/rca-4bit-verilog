`timescale 1ns/1ps

module tb_rca_4bit;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    rca_4bit DUT (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin

        $dumpfile("rca.vcd");
        $dumpvars(0, tb_rca_4bit);

    end

    initial begin

        a=4'd0;  b=4'd0;  cin=0; #10;
        a=4'd5;  b=4'd3;  cin=0; #10;
        a=4'd9;  b=4'd7;  cin=0; #10;
        a=4'd15; b=4'd15; cin=1; #10;
        a=4'd6;  b=4'd4;  cin=1; #10;
        $finish;
    end
    
endmodule