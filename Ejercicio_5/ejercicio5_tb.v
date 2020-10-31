module ROM_tb();

reg [6:0] entrada;
wire [12:0] salida;

ROM r1(entrada, salida);

initial begin
   #1 $display(" ");
   $display(" ");
   $display("ROM con cases");
   $display("Entada  Salida");
   $display("_______|_____");
   $monitor(" %b    %b    ", entrada, salida);
   end

initial begin

 entrada =7'b1111110 ;

#10 entrada =7'b0000111 ;
#10 entrada =7'b0000001 ;
#10 entrada =7'b0001111 ;
#10 entrada =7'b0001011 ;
#10 entrada =7'b0010111 ;
#10 entrada =7'b0011001 ;
#10 entrada =7'b0100101 ;
#10 entrada =7'b0101111 ;
#10 entrada =7'b0110001 ;
#10 entrada =7'b0111111 ;
#10 entrada =7'b1000111 ;
#10 entrada =7'b1000101 ;
#10 entrada =7'b1001011 ;
#10 entrada =7'b1001101 ;
#10 entrada =7'b1010101 ;
#10 entrada =7'b1011111 ;
#10 entrada =7'b1100011 ;
#10 entrada =7'b1101001 ;
#10 entrada =7'b1110111 ;
#10 entrada =7'b1111111 ;
#10 entrada =7'b0101010 ;
#10 entrada =7'b1000011 ;
#10 entrada =7'b1101111 ;
#10 entrada =7'b0001111 ;
#10 entrada =7'b1110111 ;
#10 entrada =7'b1100111 ;
#10 entrada =7'b1000000 ;
#10 entrada =7'b1001111 ;
#10 entrada =7'b0101110 ;
#10 entrada =7'b0000001 ;
#10 entrada =7'b0010000 ;


 #10 $finish;
end


  initial begin
   $dumpfile("ejercicio5_tb.vcd");
    $dumpvars(0,ROM_tb);
  end


endmodule
