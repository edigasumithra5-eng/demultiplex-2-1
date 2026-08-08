`timescale 1ns/1ps

//============================================================
// Testbench for 2-to-1 Demultiplexer
//============================================================

module demux2to1_tb;

    reg din;
    reg sel;

    wire y0;
    wire y1;

    integer errors;

    //========================================================
    // Instantiate Device Under Test
    //========================================================

    demux2to1 DUT (
        .din(din),
        .sel(sel),
        .y0(y0),
        .y1(y1)
    );

    //========================================================
    // Generate waveform
    //========================================================

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, demux2to1_tb);
    end

    //========================================================
    // Test cases
    //========================================================

    initial begin

        errors = 0;

        $display("======================================");
        $display("      2-to-1 DEMUX Testbench");
        $display("======================================");

        //----------------------------------------------------
        // Test Case 1
        // din = 0, sel = 0
        // Expected: y0 = 0, y1 = 0
        //----------------------------------------------------

        din = 0;
        sel = 0;

        #10;

        if ((y0 !== 0) || (y1 !== 0)) begin
            $display("FAIL: din=0 sel=0 | y0=%b y1=%b", y0, y1);
            errors = errors + 1;
        end
        else begin
            $display("PASS: din=0 sel=0 | y0=%b y1=%b", y0, y1);
        end

        //----------------------------------------------------
        // Test Case 2
        // din = 0, sel = 1
        // Expected: y0 = 0, y1 = 0
        //----------------------------------------------------

        din = 0;
        sel = 1;

        #10;

        if ((y0 !== 0) || (y1 !== 0)) begin
            $display("FAIL: din=0 sel=1 | y0=%b y1=%b", y0, y1);
            errors = errors + 1;
        end
        else begin
            $display("PASS: din=0 sel=1 | y0=%b y1=%b", y0, y1);
        end

        //----------------------------------------------------
        // Test Case 3
        // din = 1, sel = 0
        // Expected: y0 = 1, y1 = 0
        //----------------------------------------------------

        din = 1;
        sel = 0;

        #10;

        if ((y0 !== 1) || (y1 !== 0)) begin
            $display("FAIL: din=1 sel=0 | y0=%b y1=%b", y0, y1);
            errors = errors + 1;
        end
        else begin
            $display("PASS: din=1 sel=0 | y0=%b y1=%b", y0, y1);
        end

        //----------------------------------------------------
        // Test Case 4
        // din = 1, sel = 1
        // Expected: y0 = 0, y1 = 1
        //----------------------------------------------------

        din = 1;
        sel = 1;

        #10;

        if ((y0 !== 0) || (y1 !== 1)) begin
            $display("FAIL: din=1 sel=1 | y0=%b y1=%b", y0, y1);
            errors = errors + 1;
        end
        else begin
            $display("PASS: din=1 sel=1 | y0=%b y1=%b", y0, y1);
        end

        //----------------------------------------------------
        // Final result
        //----------------------------------------------------

        $display("--------------------------------------");

        if (errors == 0)
            $display("TEST PASSED: All test cases passed!");
        else
            $display("TEST FAILED: %0d errors found.", errors);

        $display("======================================");

        $finish;

    end

endmodule