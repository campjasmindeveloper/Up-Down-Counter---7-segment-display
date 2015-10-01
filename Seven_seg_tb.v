module Seven_seg_tb();
    reg [3:0] SW;
    reg CLK;
    wire [7:0] SSEG_CA;
    wire [7:0] SSEG_AN;
    wire [3:0] LED;
    
    Seven_seg uut(SW, CLK, SSEG_CA, SSEG_AN, LED);

    initial begin
        SW = 4'b1111;
        CLK = 1;
    end

    always
        #5 CLK = ~CLK;

    always @ (posedge CLK)begin
        SW = 4'b0000;
        SW = 4'b0001;
        SW = 4'b0010;
        SW = 4'b0011;
        SW = 4'b0100;
        SW = 4'b0101;
        SW = 4'b0110;
        SW = 4'b0111;
        SW = 4'b1000;
        SW = 4'b1010;
        SW = 4'b1011;
        SW = 4'b1100;
        SW = 4'b1101;
        SW = 4'b1110;
        SW = 4'b1111;
    end
endmodule
