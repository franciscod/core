`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2023 09:49:51 PM
// Design Name: 
// Module Name: plaquita
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module plaquita(
    input sysclk,
    input [3:0] sw,
    input [3:0] btn,
    output [3:0] led
);
    // TODO: hacer que convivan dut_alu y dut_core, y que sw[3] cambie entre uno y otro los sw/btn/led con muxes

    // TODO: encontrar alguna forma de que se pueda single steppear el core (ahora esta con el clock del sistema)

    // IDEA: un flag O (one) para ejecutar un ciclo y luego levantar el flag D (done), y una señal para limpiar done y levantar one
    // y otra señal para limpiar ambos y que ejecute normal?

    // alu dut(
    //     .op(sw), 
    //     .a({btn[1:0], 6'b0}), 
    //     .b({btn[3:2], 6'b0}), 
    //     .r({led[1:0], 6'b0}),
    //     .shift_logical(0),
    //     .shift_imm(0),
    //     .flags({Z, led[3], Z, led[2]})
    // );
    
    wire clk;
    assign clk = sysclk;
    
    wire rst;
    assign rst = sw[0];
    
    reg  [15:0] instruction;
    reg  [ 7:0] data_in;
    
    wire        en_store;
    wire        en_load;
    wire [ 7:0] data_out;
    wire [ 9:0] addr;
    wire [ 8:0] ip;

    wire [ 7:0] io_in;
    wire [ 7:0] io_out;

    assign io_in = sw & btn;
    assign io_out[3:0] = led;
 
    core dut(
        .clk(clk),
        .rst(rst),
        .instruction(instruction),
        .mem_load(data_in),
        
        .mem_en_store(en_store),    
        .mem_en_load(en_load),
        .mem_store(data_out),
        .mem_addr(addr),
        .instruction_addr(ip),

        .io_input(io_in),
        .io_output(io_out)
    );
    
    assign led[3:0] = data_out[3:0];
    reg [15:0] progvector [0:1000];
    
    initial begin
        $readmemb("plaquita_code.mem", progvector);
        $display("ola");
    end

    always @(posedge clk) begin
        instruction = progvector[ip];
        if (instruction === 'bX) begin
            $display("tried to fetch out of instruction bounds, finishing.");
            $finish;
        end
    end

    always @(negedge clk) begin
        if (en_store === 1'b1) begin
            $display("store: mem[%x] <- 0b%b == %d", addr, data_out, data_out);
        end 
    end
    
endmodule
