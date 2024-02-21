
module top (
  input clk,
  output led_green,
  output pmod_a1,
);

  localparam N = 22;

  reg [N:0] counter;

  always @(posedge clk) begin
    counter <= counter + 1;
  end

  assign led_green = counter[N];
  assign pmod_a1 = counter[N];

endmodule
