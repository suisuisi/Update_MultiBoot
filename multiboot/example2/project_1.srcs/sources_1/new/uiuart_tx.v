`timescale 1ns / 1ns//����ʱ��̶�/����


module uiuart_tx#
(
 parameter integer BAUD_DIV     = 10416                           //���ò���ϵ�� ��ʱ��/������-1��
)
(
    input        clk_i,//ϵͳʱ������
    input        uart_rstn_i,//ϵͳ��λ����
    input        uart_wreq_i, //������������   
    input [7:0] uart_wdata_i, //��������      
    output      uart_wbusy_o,//����״̬æ���������ڷ�������   
    output      uart_tx_o//uart tx ��������
);

localparam  UART_LEN = 4'd10; //����uart ���͵�bit����Ϊ10������1bit��ʼλ��8bits����,1bitֹͣλ
wire        bps_en ; //����ʹ��
reg         uart_wreq_r   = 1'b0;//�Ĵ�һ��uart_wreq_i
reg         bps_start_en    = 1'b0; //�����ʼ���������ʹ�ܣ�Ҳ�Ƿ�������ʹ��
reg [13:0]  baud_div        = 14'd0;//�����ʼ�����
reg [9 :0]  uart_wdata_r  = 10'h3ff;//�Ĵ�uart_wreq_i
reg [3 :0]  tx_cnt          = 4'd0;//���������˶���bits

assign uart_tx_o = uart_wdata_r[0];//�����ϵ����ݣ�ʼ����uart_wdata_r[0]

assign uart_wbusy_o = bps_start_en;//����æ��־������bps_start_enΪ��Ч����������æ�ڷ��ͣ�����æ

// ����ʹ��
assign bps_en = (baud_div == BAUD_DIV);                 //����һ�η���ʹ���źţ�������baud_div == BAUD_DIV�������ʼ������

//�����ʼ�����
always@(posedge clk_i )begin
    if((uart_rstn_i== 1'b0) || (uart_wreq_i==1'b1&uart_wreq_r==1'b0))begin
        baud_div <= 14'd0;
    end
    else begin
        if(bps_start_en && baud_div < BAUD_DIV)        //bps_start_en���ź����ߣ���ʾ��ʼ���� 
           baud_div <= baud_div + 1'b1;                //��baud_div < BAUD_DIV�����ʼ��㣬δ�ﵽ������baud_div+1
        else 
            baud_div <= 14'd0;                         //�ﵽ����
    end
end

always@(posedge clk_i)begin
    uart_wreq_r <= uart_wreq_i;                           //�Ĵ�һ��uart_wreq_i�ź�
end

//��uart_wreq_i�ӵ͵�ƽ��Ϊ�ߵ�ƽ����������
always@(posedge clk_i)begin
    if(uart_rstn_i == 1'b0)
        bps_start_en    <= 1'b0;                           //��λ����������
    else if(uart_wreq_i==1'b1&uart_wreq_r==1'b0)          //uart_wreq_i�����ؼ���
        bps_start_en    <= 1'b1;                           //����� bps_start_en���ߣ����俪ʼ
    else if(tx_cnt == UART_LEN)                            //tx_cnt���ڼ�����ǰ���͵�bits���������ﵽԤ��ֵUART_LEN
        bps_start_en    <= 1'b0;                           //�� bps_start_en���ͣ��������
    else 
        bps_start_en    <= bps_start_en;                    
end

//����bits������
always@(posedge clk_i)begin
    if(((uart_rstn_i== 1'b0) || (uart_wreq_i==1'b1&uart_wreq_r==1'b0))||(tx_cnt == 10))//����λ���������͡�������ɣ�����tx_cnt
        tx_cnt <=4'd0;
    else if(bps_en && (tx_cnt < UART_LEN))   //tx_cnt��������ÿ����һ��bit��1
        tx_cnt <= tx_cnt + 1'b1;
end

//uart���Ͳ�����λ������
always@(posedge clk_i)begin
    if((uart_wreq_i==1'b1&uart_wreq_r==1'b0)) //������������Ч���Ĵ���Ҫ���͵����ݵ�uart_wdata_r
        uart_wdata_r  <= {1'b1,uart_wdata_i[7:0],1'b0};//�Ĵ���Ҫ���͵����ݣ�����1bit ��ʼλ��8bits���ݣ�1bitֹͣλ
    else if(bps_en && (tx_cnt < (UART_LEN - 1'b1)))                               //shift 9 bits
        uart_wdata_r <= {uart_wdata_r[0],uart_wdata_r[9:1]};                     //����ת�����������������δ���
    else 
        uart_wdata_r <= uart_wdata_r;
end   
endmodule
