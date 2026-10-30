module memory_system (
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] data0, data1, data2, data3;
    wire store0, store1, store2, store3;
    wire [7:0] byte0, byte1, byte2, byte3;
    
    demux#(.WIDTH(8)) data_demux (
        .data(data),
        .sel(addr),
        .A(data0),
        .B(data1),
        .C(data2),
        .D(data3)
    );
    
    demux#(.WIDTH(1)) store_demux (
        .data(store),
        .sel(addr),
        .A(store0),
        .B(store1),
        .C(store2),
        .D(store3)
    );
    
    byte_memory memory0 (
        .data(data0),
        .store(store0),
        .memory(byte0)
    );
    
    byte_memory memory1 (
        .data(data1),
        .store(store1),
        .memory(byte1)
    );
    
    byte_memory memory2 (
        .data(data2),
        .store(store2),
        .memory(byte2)
    );
    
    byte_memory memory3 (
        .data(data3),
        .store(store3),
        .memory(byte3)
    );
    
    mux output_mux (
        .A(byte0),
        .B(byte1),
        .C(byte2),
        .D(byte3),
        .sel(addr),
        .data_out(memory)
    );

endmodule