module flipflopD_tb();


reg clk, reset, enable, D;
wire Q;

reg clk1, reset1, enable1;
reg [1:0] D1;
wire [1:0] Q1;

//reg clk2, reset2, enable2;
//reg [3:0] D2;
//wire [3:0] Q2;


flipflopD f1(clk,reset,enable,D,Q);
flipflopD2 f2(clk1,reset1,enable1,D1,Q1);
//flipflopD4 f4(clk2,reset2,enable2,D2,Q2);

initial begin
   #10 $display(" ");
   $display(" ");
   $display("flipflop tipo D 1 bit");
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




  end

  initial begin
     #20 $display(" ");
     $display(" ");
     $display("flipflop tipo D 2 bits");
     $display("clk Reset Enable| D Q");
     $display("________________|_____");
     $monitor(" %b    %b     %b      %b %b  ", clk1, reset1, enable1 ,D1 ,Q1);
     end

     always
     #20 clk1 = ~clk1;

     initial begin
    clk1 = 0;
    enable1 = 0;
    reset1= 1;
    D1 = 2'b00;


      /////////////////////
    #20 enable1 = 1;
    #20 reset1 = 1;
    #20 D1 = 2'b01;
      /////////////////////
    #20   enable1 = 1;
    #20   reset1 = 0;
    #20 D1 = 2'b10;
      ///////////////////
    #20 enable1 = 1;
    #20 reset1 = 0;
    #20   D1 = 2'b00;
    /////////////////////
    #20   enable1 = 1;
    #20   reset1 = 0;
    #20 D1 = 2'b11;
    /////////////////////
    #20   enable1 = 1;
    #20   reset1 = 0;
    #20 D1 = 2'b10;
    /////////////////////
    #20   enable1 = 1;
    #20   reset1 = 0;
    #20 D1 = 2'b00;
    /////////////////////
    #20   enable1 = 1;
    #20   reset1 = 1;
    #20 D1 = 2'b11;



    #30 $finish;

    end



//  initial begin
  //  $dumpfile("Ejercicio_1_tb.vcd");
  //  $dumpvars(0,flipflopD_tb);
//  end

endmodule
