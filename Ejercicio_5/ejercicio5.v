module  ROM(entrada,salida);

input  [6:0] entrada;
output  [12:0] salida;
reg [12:0] salida;

always @(entrada)
begin
  case (entrada)
    7'bxxxxxx0 : salida <= 13'b1000000001000;
    7'b00001_1 : salida <= 13'b0100000001000;
    7'b00000X1 : salida <= 13'b1000000001000;
    7'b00011X1 : salida <= 13'b1000000001000;
    7'b00010x1 : salida <= 13'b0100000001000;
    7'b0010xx1 : salida <= 13'b0001001000010;
    7'b0011??1 : salida <= 13'b1001001100000;
    7'b0100??1 : salida <= 13'b0011010000010;
    7'b0101??1 : salida <= 13'b0011010000100;
    7'b0110??1 : salida <= 13'b1011010100000;
    7'b0111??1 : salida <= 13'b1000000111000;
    7'b1000?11 : salida <= 13'b0100000001000;
    7'b1000?01 : salida <= 13'b1000000001000;
    7'b1001?11 : salida <= 13'b1000000001000;
    7'b1001?01 : salida <= 13'b0100000001000;
    7'b1010??1 : salida <= 13'b0011011000010;
    7'b1011??1 : salida <= 13'b1011011100000;
    7'b1100??1 : salida <= 13'b0100000001000;
    7'b1101??1 : salida <= 13'b0000000001001;
    7'b1110??1 : salida <= 13'b0011100000010;
    7'b1111??1 : salida <= 13'b1011100100000;
    default : salida =13'b0000000000000;

endcase
end



endmodule
