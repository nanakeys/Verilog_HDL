primitive my_and(c,a,b);
    output c;
    input a,b;
    table
    //  a    b	  :    c	
        0    0    :    0;
	0    1    :    0;
        1    0    :    0;
	1    1    :    1;
    endtable
endprimitive

module and_user_defined_model(c,a,b);
    output c;
    input a,b;
    my_and g(c,a,b);
endmodule

module test_and_user_defined_model();
    wire c;
    reg a,b;
    and_user_defined_model G(c,a,b);
    initial
 	begin
	    a=0;b=0;
	    #100 a=1;b=0;
	    #100 a=0;b=1;
	    #100 a=1;b=1;
	end
endmodule