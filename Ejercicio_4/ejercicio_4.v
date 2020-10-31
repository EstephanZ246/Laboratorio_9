module triestate(a,enable,salida);

input wire [3:0] a;
input wire enable;
output reg [3:0] salida;

assign salida = enable ? a : 4'bz;
endmodule
