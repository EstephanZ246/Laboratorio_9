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
  Q <= D;
  end
  end
end
endmodule

module flipflopD2(clk,reset,enable,D,Q);

input wire clk;
input wire reset;
input wire enable;
input wire [1:0] D;
output reg [1:0] Q;


always @(posedge clk , posedge reset)

begin:flipflopD2bit
 if (clk) begin
  if (reset)  begin
    Q<= 2'b00;
  end
  else if(enable) begin
  Q <= D;
  end
  end
end
endmodule
/*
module flipflopD4(clk,reset,enable,D,Q);

input wire clk;
input wire reset;
input wire enable;
input wire [3:0] D;
output reg [3:0] Q;


always @(posedge clk , posedge reset)

begin:flipflopD4bit
 if (clk) begin
  if (reset)  begin
    Q<= 4'b0000;
  end
  else if(enable) begin
  Q <= D;
  end
  end
end


endmodule
*/
