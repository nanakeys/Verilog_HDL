// d flip flop

module D_flip_flop(output reg Q, input clk,D);
    always @(posedge clk)
	Q <= D;
endmodule

// test bench code

module test_D_flip_flop();
    wire Q;
    reg clk,D;
    D_flip_flop G(Q,clk,D);
    initial
	begin
	    clk=1;D=0;
	    #100 clk=0;D=0;
            #100 D=1;
	    #100 D=0;
	    #100 clk=1;D=1;
	    #100 clk=0;
	    #100 D=1;
	    #100 clk=1;
	    #100 clk=0;D=0;
	    #100 clk=1;D=1;
	end
endmodule
