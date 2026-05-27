module test;
  reg [3:0] a,b;
  reg [2:0] sel;
  wire carry;
  wire [7:0] out;
  
  ALU uuut(a,b,sel,out,carry);
 initial
   begin
     $dumpfile("dump.vcd");
     $dumpvars(0,test);
     $monitor("a=%b,b=%b,sel=%b,carry=%b,out=%b",a,b,sel,carry,out);
     
     a=4'b1010; b=4'b1110;
     #10 sel=3'b000;
     #10 sel=3'b001;
     #10 sel=3'b010;
     #10 sel=3'b011; 
     #10 sel=3'b100;
     #10 sel=3'b101;
     #10 sel=3'b110;
     #10 sel=3'b111;
     
     #20 $finish;
   end
endmodule
