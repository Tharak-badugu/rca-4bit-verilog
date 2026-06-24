module full_adder (input  a,input  b,input  cin,output sum output cout);
  
    wire sum_ab, carry_ab, carry_cin;

    half_adder HA1 (.a(a),.b(b),.sum(sum_ab),.carry(carry_ab));
    half_adder HA2 (.a(sum_ab),.b(cin),.sum(sum),.carry(carry_cin));

    assign cout = carry_ab | carry_cin;
endmodule
