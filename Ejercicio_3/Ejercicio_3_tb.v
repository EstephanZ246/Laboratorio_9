module Ejercicio_3_tb();


reg clk, reset, enable;
reg j,k;
wire q;

flipflopjk f1(clk,reset,enable,j,k,q);

initial begin
   #10 $display(" ");
   $display(" ");
   $display("flipflop tipo jk");
   $display("clk Reset Enable J K | Q");
   $display("_____________________");
   $monitor(" %b    %b      %b    %b %b | %b  ", clk, reset, enable ,k ,j, q);
   end

   always
   #10 clk = ~clk;

   initial begin
 clk = 0;
 enable = 1;
 reset= 1;

 j=0;
 k=0;

 ///////////////////////

 #10
 reset=1;
 enable=1;
 reset=0;
 j=0;
 k=0;

 #10
 reset=1;
 enable=1;
 reset=0;
 j=1;
 k=0;
 /////////////
 #10
 reset=1;
 enable=1;
 reset=0;
 j=0;
 k=1;

#10
 /////////////

 reset=1;
 enable=1;
 reset=0;
 j=1;
 k=1;
 #10

 reset=1;
 enable=1;
 reset=0;
 j=0;
 k=0;
 /////////////
 #10
 reset=1;
 enable=1;
 reset=0;
 j=1;
 k=0;
 #10



 reset=1;
 enable=1;
 reset=0;
 j=1;
 k=1;
#10
reset=1;

  #10 $finish;

  end


  initial begin
    $dumpfile("Ejercicio_3_tb.vcd");
    $dumpvars(0,Ejercicio_3_tb);
  end

endmodule
