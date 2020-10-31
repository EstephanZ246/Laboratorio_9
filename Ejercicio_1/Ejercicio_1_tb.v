module flipflopD_tb();


reg clk, reset, enable, D;
wire Q;

reg clk1, reset1, enable1;
reg [1:0] D1;
wire [1:0] Q1;

reg clk2, reset2, enable2;
reg [3:0] D2;
wire [3:0] Q2;


flipflopD f1(clk,reset,enable,D,Q);
flipflopD2 f2(clk1,reset1,enable1,D1,Q1);
flipflopD4 f4(clk2,reset2,enable2,D2,Q2);

initial begin
   #1 $display(" ");
   $display(" ");
   $display("flipflop tipo D 1 bit");
   $display("clk Reset Enable  D Q");
   $display("________________|_____");
   $monitor(" %b    %b     %b      %b %b  ", clk, reset, enable ,D ,Q);
   end

   always
   #1 clk = ~clk;

   initial begin
 clk = 0;
 enable = 1;
 reset= 1;
 D = 1;

    /////////////////////
  #1 enable = 1;
  #1 reset = 1;
  #1 D = 0;
    /////////////////////
  #1   enable = 1;
  #1   reset = 0;
  #1 D = 1;
    ///////////////////
  #1 enable = 1;
  #1 reset = 0;
  #1   D = 0;




  end

  initial begin
     #10 $display(" ");
     $display(" ");
     $display("flipflop tipo D 2 bits");
     $display("clk Reset Enable  D   Q");
     $display("________________|_____");
     $monitor(" %b    %b     %b      %b %b  ", clk1, reset1, enable1 ,D1 ,Q1);
     end

     always
     #10 clk1 = ~clk1;

     initial begin
     clk1 = 0;
     enable1 = 0;
     reset1= 1;
     D1 = 2'b00;
      /////////////////////
    #10 enable1 = 1;
    #10reset1 = 1;
    #10 D1 = 2'b01;
      /////////////////////
    #10  enable1 = 1;
    #10  reset1 = 0;
    #10 D1 = 2'b10;
      ///////////////////
    #10 enable1 = 1;
    #10 reset1 = 0;
    #10 D1 = 2'b00;
    /////////////////////
    #10   enable1 = 1;
    #10   reset1 = 0;
    #10  D1 = 2'b11;
    /////////////////////
    #10 enable1 = 1;
    #10   reset1 = 0;
    #10 D1 = 2'b10;
    /////////////////////
    #10   enable1 = 1;
    #10   reset1 = 0;
    #10 D1 = 2'b00;
    /////////////////////
    #10   enable1 = 1;
    #10   reset1 = 1;
    #10  D1 = 2'b11;

    end




    initial begin
       #200 $display(" ");
       $display(" ");
       $display("flipflop tipo D 4 bits");
       $display("clk Reset Enable  D      Q");
       $display("________________|___________");
       $monitor(" %b    %b     %b      %b %b  ", clk2, reset2, enable2 ,D2 ,Q2);
       end

       always
       #20 clk2 = ~clk2;

       initial begin
       clk2 = 0;
       enable2 = 0;
       reset2= 1;
       D2 = 2'b0000;
        /////////////////////
      #20 enable2 = 1;
      #20 reset2 = 1;
      #20 D2 = 2'b0001;
        /////////////////////
      #20 enable2 = 1;
      #20 reset2 = 0;
      #20 D2 = 2'b1001;
        ///////////////////
      #20 enable2 = 1;
      #20 reset2 = 0;
      #20 D2 = 2'b0111;
      /////////////////////
      #20  enable2 = 1;
      #20  reset2 = 0;
      #20  D2 = 2'b1111;
      /////////////////////
      #20 enable2 = 1;
      #20  reset2 = 0;
      #20 D2 = 2'b1000;
      /////////////////////
      #20  enable2 = 1;
      #20  reset2 = 0;
      #20 D2 = 2'b010;
      /////////////////////
      #20  enable2 = 1;
      #20  reset2 = 1;
      #20  D2 = 2'b000;



      #100 $finish;

      end


  initial begin
   $dumpfile("Ejercicio_1_tb.vcd");
    $dumpvars(0,flipflopD_tb);
  end

endmodule
