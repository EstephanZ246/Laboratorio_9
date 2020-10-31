module FFD(input wire clk, reset, enable, D, output reg Q);

  always @(posedge clk or posedge reset or posedge enable)
    begin

      if (reset) Q <= 1'b0;
      else if (enable) Q <= D;
      else Q <= Q;
    end

endmodule



module flipflopjk(input wire clk,reset,enable,j,k, output wire Q);

FFD f1(clk,reset,enable,D,Q);

wire NOT1;
wire NOT2;
wire AND1;
wire AND2;

not not1(NOT1,k);
not not2(NOT2,Q);
and and1(AND1,NOT1,j);
and and2(AND2,NOT2,Q);
or or1(D,AND1,AND2);


endmodule
