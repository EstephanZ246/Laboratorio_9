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

 entrada =7'b??????0 ;
#10 entrada =7'b??????0 ;
#10 entrada =7'b00001?1 ;
#10 entrada =7'b00000?1 ;
#10 entrada =7'b00011?1 ;
#10 entrada =7'b00010?1 ;
#10 entrada =7'b0010??1 ;
#10 entrada =7'b0011??1 ;
#10 entrada =7'b0100??1 ;
#10 entrada =7'b0101??1 ;
#10 entrada =7'b0110??1 ;
#10 entrada =7'b0111??1 ;
#10 entrada =7'b1000?11 ;
#10 entrada =7'b1000?01 ;
#10 entrada =7'b1001?11 ;
#10 entrada =7'b1001?01 ;
#10 entrada =7'b1010??1 ;
#10 entrada =7'b1011??1 ;
#10 entrada =7'b1100??1 ;
#10 entrada =7'b1101??1 ;
#10 entrada =7'b1110??1 ;
#10 entrada =7'b1111??1 ;


 #10 $finish;
end


  //initial begin
  // $dumpfile("ejercicio5_tb.vcd");
  //  $dumpvars(0,ROM_tb);
  //end


endmodule
