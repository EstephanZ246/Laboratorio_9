module flipflopD(clk,reset,enable,D,Q);

input wire clk;
input wire reset;
input wire enable;
input wire D;
output reg Q;


always @(posedge clk , posedge reset)

begin:flipflopD1bit
 if (clk) begin
  if (reset)  begin
    Q<= 1'b0;
  end
  else if(enable) begin
  Q <= ~D;
  end
  end
end
endmodule
