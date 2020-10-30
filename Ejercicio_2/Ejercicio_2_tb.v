module flipflopD_tb();


reg clk, reset, enable, D;
wire Q;

flipflopD f1(clk,reset,enable,D,Q);

initial begin
   #10 $display(" ");
   $display(" ");
   $display("flipflop tipo T");
   $display("clk Reset Enable| D Q");
   $display("________________|_____");
   $monitor(" %b    %b     %b      %b %b  ", clk, reset, enable ,D ,Q);
   end

   always
   #10 clk = ~clk;

   initial begin
 clk = 0;
 enable = 1;
 reset= 1;
 D = 1;

    /////////////////////
  #10 enable = 1;
  #10 reset = 1;
  #10 D = 0;
    /////////////////////
  #10   enable = 1;
  #10   reset = 0;
  #10 D = 1;
    ///////////////////
  #10 enable = 1;
  #10 reset = 0;
  #10   D = 0;


   $finish;

  end


  initial begin
    $dumpfile("Ejercicio_2_tb.vcd");
    $dumpvars(0,flipflopD_tb);
  end

endmodule
