//============================================================
// 2-to-1 Demultiplexer
//============================================================
// Input  : din
// Select : sel
// Outputs: y0, y1
//
// sel = 0 -> din is routed to y0
// sel = 1 -> din is routed to y1
//============================================================

module demux2to1 (
    input  wire din,
    input  wire sel,
    output wire y0,
    output wire y1
);

    assign y0 = din & ~sel;
    assign y1 = din & sel;

endmodule