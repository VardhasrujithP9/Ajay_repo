// BINARY TO GARY CONVERTED ;

module graycoder(clk,bin_in,gray_out);  // module declartion

  input clk;                     //clk signal

  input [3:0]bin_in;             // binary input declartion

  output reg [3:0]gray_out;     // gray_out  declaration

always @(posedge clk)    // this runs when the risiging edge of clk signal
  
begin 
      // conversion binary to gray code  

    gray_out[3]  <=  bin_in[3] ;     // most significant bits
 
    gray_out[2]  <=   bin_in[3] ^  bin_in[2] ;  // bit 3 xor bit 2

    gray_out[1]  <=   bin_in[2] ^  bin_in[1] ; // bit 2 xor bit 1

    gray_out[0]  <=   bin_in[1] ^  bin_in[0] ; // bit 1  xor bit 0

end

endmodule