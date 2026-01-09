module tt_um_Contador_BCD_Finalisimo (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    assign uio_oe = 8'hFF;
    assign uio_out[7:4] = 4'h0;
    assign uo_out[7] = 1'b0;

    wire [6:0] cable_segmentos;
    wire [3:0] cable_anodos;

    assign uo_out[6:0] = cable_segmentos;
    assign uio_out[3:0] = cable_anodos;

Contador_BCD_Finalisimo Contador_BCD_Finalisimo_Unit (
        .clk(clk),
        .rst_n(rst_n),
        .salida_seg(cable_segmentos),
        .salida_an(cable_anodos)
    );

    wire _unused = &{ui_in, uio_in, ena, 1'b0};

endmodule
