`timescale 1ns / 1ns

module uart_top#(
    parameter PARTITION  = 1 //1- Golden 0-MultiBoot
)
(
input  sysclk_i,
output uart_tx_o //UART串口发送总线
);


wire     uart_rstn_i; //内部同步复位
wire     uart_wbusy;  //UART发送驱动器正忙
reg      t1s_dly_en;  //1S延迟
reg[1:0] S_UART_TX;   //UART 发送状态机
reg[4:0] tx_index;    //发送index计数器
reg      uart_wreq;   //UART发送请求  
reg[7:0] uart_wdata;  //UART发送数据寄存器 
reg[7:0] uart_tx_buf[0:19]; //发送缓存

reg [15:0]rst_cnt = 16'd0; //复位计数器
reg [28:0]delay_cnt = 29'd0; //延迟计数器

assign uart_rstn_i = rst_cnt[15]; //复位

//上电通过计数器计数，实现复位
always @(posedge sysclk_i)begin
    rst_cnt <= (rst_cnt[15] == 1'b0) ? (rst_cnt + 1'b1) : rst_cnt ;
end

//帧延迟计数器
always @(posedge sysclk_i)begin
	if(t1s_dly_en == 1'b0)
    	delay_cnt <=   'd0;
    else 
    	delay_cnt <= delay_cnt + 1'b1;
end


// 0-30 1-31
// 2-32 3-33
// 4-34 5-35
// 6-36 7-37
// 8-38 9-39

//数据发送状态机
always @(posedge sysclk_i)begin
    if(uart_rstn_i==1'b0)begin //初始化uart_tx_buf，为hello fpga等字符共计12 BYTES，以及其他寄存器
        uart_tx_buf[0]  <=8'h4D;//G-47 M-4D
        uart_tx_buf[1]  <=8'h20;//space
        uart_tx_buf[2]  <=8'h41;//A
        uart_tx_buf[3]  <=8'h44;//D
        uart_tx_buf[4]  <=8'h44;//D
        uart_tx_buf[5]  <=8'h52;//R
        uart_tx_buf[6]  <=8'h3A;//:
                
        uart_tx_buf[7]  <=8'h20;//space
        
        uart_tx_buf[8]  <=8'h30;//0
        uart_tx_buf[9]  <=8'h58;//x
        uart_tx_buf[10]  <=8'h30;//0   
        uart_tx_buf[11]  <=8'h30;//0 
        uart_tx_buf[12]  <=8'h38;//8 
        uart_tx_buf[13]  <=8'h30;//0 
        uart_tx_buf[14]  <=8'h30;//0 
        uart_tx_buf[15]  <=8'h30;//0 
        uart_tx_buf[16]  <=8'h30;//0 
        uart_tx_buf[17]  <=8'h30;//0      
        uart_tx_buf[18]  <=8'h0d;//Enter
        uart_tx_buf[19]  <=8'h0a;//newline

        uart_wdata      <= 8'd0;
        uart_wreq       <= 1'b0;
        S_UART_TX       <= 2'd0;
        t1s_dly_en      <= 1'b0;
        tx_index        <=  'd0;
    end
    else begin
        case(S_UART_TX)
        0:begin
            if(!uart_wbusy)begin//如果UART发送驱动器不忙
                uart_wdata <= uart_tx_buf[tx_index];//准备发送数据，发送tx_index所指向的数据
                uart_wreq <= 1'b1; //设置uart_wreq为高电平，请求发送数据
            end
            else begin //当总线忙
                uart_wreq <= 1'b0; //重置uart_wreq
                S_UART_TX <= 2'd1; //进入下一状态
            end
        end
        1:begin//该状态等待总线空闲
            S_UART_TX <= (uart_wbusy == 1'b0) ? 2'd2: S_UART_TX;
        end 
        2:begin//更新tx_index计数器
            if(tx_index < 19)begin //每一帧发送19个字节
                tx_index <= tx_index + 1'b1; //tx_index 加计数
                S_UART_TX  <= 2'd0; //进入下一状态
            end
            else begin //如果tx_index==11 代表所有数据发送完毕
                tx_index   <=  'd0; //重置tx_index
                t1s_dly_en <= 1'b1; //1s 延迟计数器开始计数
                S_UART_TX  <= 2'd3; //下一状态
            end 
        end
        3:begin//登台延迟计数器计数
            if(delay_cnt[28] == 1'b1)begin //这里的1S不是精确的，使用delay_cnt[24]可以节省逻辑资源
                S_UART_TX <= 2'd0;   //回到状态0
                t1s_dly_en <= 1'b0;  //关闭1S延迟计数器
            end
            else  //否则还是在当前状态等待
               S_UART_TX <= S_UART_TX;   
        end        
        endcase
    end   
    
end

//例化UART 发送驱动器模块
uiuart_tx#
(
.BAUD_DIV(200000000/115200-1)  //波特率计算    BAUD_DIV = 系统时钟/波特率-1
)
uart_tx_u 
(
.clk_i(sysclk_i),//系统时钟输入
.uart_rstn_i(uart_rstn_i), //系统复位输入
.uart_wreq_i(uart_wreq), //UART发送(写)数据请求
.uart_wdata_i(uart_wdata), //UART发送(写)数据
.uart_wbusy_o(uart_wbusy),//UART发送驱动器忙
.uart_tx_o(uart_tx_o) //UART 发送串行总线
);
    
endmodule