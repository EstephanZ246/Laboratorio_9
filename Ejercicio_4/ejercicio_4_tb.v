module triestate_tb();

reg [3:0] a;
reg enable;
wire [3:0] salida;

triestate t1(a,enable,salida);

initial begin
   #1 $display(" ");
   $display(" ");
   $display("tri-estado de 4 bits");
   $display("Entrada Enable Salida");
   $display("________________|_____");
   $monitor(" %b     %b     %b  ", a,enable,salida);
   end

   initial begin
   enable = 0;
   a=4'b0000;

   //////////////////////
   #10
   enable =1;
   a=4'b0111;
   ////////////////////
   #10
   enable =1;
   a=4'b0101;
/////////////////////////////
  #10
  enable=0;
  a=4'b0111;




   #1 $finish;

  end


     initial begin
      $dumpfile("ejercicio_4_tb.vcd");
       $dumpvars(0,triestate_tb);
    end

   endmodule
