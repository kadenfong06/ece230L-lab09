module byte_memory (
    input [7:0] data,
    input store,
    output [7:0] memory
);

    genvar i;
    
    generate
        for (i = 0; i < 8; i = i + 1) begin
            wire unused_notq;
            
            d_latch latch_bit (
                .D(data[i]),
                .E(store),
                .Q(memory[i]),
                .NotQ(unused_notq)
            );
        end
    endgenerate
endmodule