module triestate(a,enable,salida);

input  [3:0] a;
input  enable;
output  [3:0] salida;

assign salida = enable ? a : 4'bZZZZ;

endmodule
