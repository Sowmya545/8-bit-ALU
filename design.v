module ALU(a,b,sel,out,carry);
  input [3:0] a,b;
  input [2:0] sel;
  output reg carry;
  output reg [7:0] out;
  
  always@(*)
    begin
      case(sel)
        3'b000: {carry,out}=a+b;
        3'b001:
          begin
            out=a-b;
            carry=0;
          end
        3'b010: {carry,out}=a+1;
        3'b011:
          begin
            out=a-1;
            carry=0;
          end
        3'b100:
          begin
            out=a&b;
            carry=0;
          end
        3'b101:
          begin
            out=a|b;
            carry=0;
          end
        3'b110:
          begin
          out=a^b;
            carry=0;
          end
        3'b111:
          begin
            out=~a;
            carry=0;
          end
      endcase
    end
endmodule
            
        
          
