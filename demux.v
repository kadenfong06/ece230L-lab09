module demux #(
    parameter WIDTH = 8
) (
    input [WIDTH - 1:0] data,
    input [1:0] sel,
    output reg [WIDTH - 1:0] A,
    output reg [WIDTH - 1:0] B,
    output reg [WIDTH - 1:0] C,
    output reg [WIDTH - 1:0] D
);

    always @(*) begin
        A <= 0;
        B <= 0;
        C <= 0;
        D <= 0;
        
        case(sel)
            2'b00: A <= data;
            2'b01: B <= data;
            2'b10: C <= data;
            2'b11: D <= data;
        endcase
    end
endmodule