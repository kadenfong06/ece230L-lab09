module mux (
    input [7:0] A, B, C, D,
    input [1:0] sel,
    output reg [7:0] data_out
);

    always @(*) begin
        case ( sel)
            2'b00: data_out <= A;
            2'b01: data_out <= B;
            2'b10: data_out <= C;
            2'b11: data_out <= D;
            default: data_out = 8'b00000000;
        endcase
    end
endmodule
