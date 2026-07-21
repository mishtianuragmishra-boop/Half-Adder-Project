module half_adder;
reg a,b;
wire sum,carry;

assign sum=a ^ b;

assign carry=a & b;

initial begin
    $display("a b | sum carry");

    a=0; b=0; #1 $display("%d %d |  %d    %d",a,b,sum,carry);
    a=0; b=1; #1 $display("%d %d |  %d    %d",a,b,sum,carry);
    a=1; b=0; #1 $display("%d %d |  %d    %d",a,b,sum,carry);
    a=1; b=1; #1 $display("%d %d |  %d    %d",a,b,sum,carry);

    $finish;
end

endmodule


