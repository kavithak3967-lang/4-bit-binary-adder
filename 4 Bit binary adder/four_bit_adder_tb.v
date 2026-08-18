timescale 1ns/1ps

module four_bit_adder_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    // Instantiate the 4-bit adder
    four_bit_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Generate waveform
    initial begin
        $dumpfile("simulation/waveform.vcd");
        $dumpvars(0, four_bit_adder_tb);
    end

    // Test cases
    initial begin

        $monitor("Time=%0t | A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b",
                 $time, A, B, Cin, Sum, Cout);

        // Test 1
        A = 4'b0000;
        B = 4'b0000;
        Cin = 1'b0;
        #10;

        // Test 2
        A = 4'b0001;
        B = 4'b0010;
        Cin = 1'b0;
        #10;

        // Test 3
        A = 4'b0101;
        B = 4'b0011;
        Cin = 1'b0;
        #10;

        // Test 4 - Carry generated
        A = 4'b1111;
        B = 4'b0001;
        Cin = 1'b0;
        #10;

        // Test 5 - Carry generated
        A = 4'b1111;
        B = 4'b1111;
        Cin = 1'b0;
        #10;

        // Test 6 - Carry input
        A = 4'b1010;
        B = 4'b0101;
        Cin = 1'b1;
        #10;

        $finish;
    end

endmodule