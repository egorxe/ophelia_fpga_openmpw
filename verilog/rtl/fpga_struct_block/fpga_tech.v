module gf180mcu_fd_sc_mcu7t5v0__dffrnq_1( CLK, D, RN, Q );
input CLK, D, RN;
output Q;
endmodule

module gf180mcu_fd_sc_mcu7t5v0__buf_1( I, Z );
input I;
output Z;
endmodule

module gf180mcu_fd_sc_mcu7t5v0__clkbuf_1( I, Z );
input I;
output Z;
endmodule

module fpga_tech_register
  (input  clk_i,
   input  rstn_i,
   input  config_i_rst_polarity,
   input  config_i_rst_value,
   input  data_i,
   output data_o);

  gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 register (
    .CLK(clk_i),
    .D( data_i ),
    .Q( data_o ),
    .RN(rstn_i)
  );
endmodule


module fpga_tech_buffer
  (input  i,
   output z);
  wire buf_X;
  assign z = buf_X;

  gf180mcu_fd_sc_mcu7t5v0__buf_1 tech_buf (
    .I(i),
    .Z(buf_X));
endmodule


module fpga_tech_clkbuffer
  (input  i,
   output z);
   
  gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 tech_buf (
    .I(i),
    .Z(buf_X));
endmodule
