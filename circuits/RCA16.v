module FA (
    input a, 
    input b, 
    input cin, 
    output sum,
    output cout );

    assign sum = 
        cin ^ (a ^ b);
    assign cout = 
        a & b | (cin & (a ^ b));

endmodule
module RCA16 (
    input cin, 
    input a0, 
    input b0,   
    input a1,    
    input b1,  
    input a2,     
    input b2, 
    input a3,    
    input b3,
    input a4,    
    input b4,
    input a5,     
    input b5, 
    input a6,    
    input b6,
    input a7,     
    input b7, 
    input a8,    
    input b8,
    input a9,     
    input b9, 
    input a10,    
    input b10,
    input a11,     
    input b11, 
    input a12,    
    input b12,
    input a13,    
    input b13,
    input a14,
    input b14,
    input a15,
    input b15,
    output sum0, 
    output sum1, 
    output sum2, 
    output sum3,
    output sum4,
    output sum5, 
    output sum6,
    output sum7, 
    output sum8,
    output sum9, 
    output sum10,
    output sum11, 
    output sum12,
    output sum13,
    output sum14,
    output sum15,
    output cout );

    wire carry [15:0];
    FA fa0(.a(a0), .b(b0), .cin(cin), .sum(sum0), .cout(carry[0]));
    FA fa1(.a(a1), .b(b1), .cin(carry[0]), .sum(sum1), .cout(carry[1]));
    FA fa2(.a(a2), .b(b2), .cin(carry[1]), .sum(sum2), .cout(carry[2]));
    FA fa3(.a(a3), .b(b3), .cin(carry[2]), .sum(sum3), .cout(carry[3]));
    FA fa4(.a(a4), .b(b4), .cin(carry[3]), .sum(sum4), .cout(carry[4]));
    FA fa5(.a(a5), .b(b5), .cin(carry[4]), .sum(sum5), .cout(carry[5]));
    FA fa6(.a(a6), .b(b6), .cin(carry[5]), .sum(sum6), .cout(carry[6]));
    FA fa7(.a(a7), .b(b7), .cin(carry[6]), .sum(sum7), .cout(carry[7]));
    FA fa8(.a(a8), .b(b8), .cin(carry[7]), .sum(sum8), .cout(carry[8]));
    FA fa9(.a(a9), .b(b9), .cin(carry[8]), .sum(sum9), .cout(carry[9]));
    FA fa10(.a(a10), .b(b10), .cin(carry[9]), .sum(sum10), .cout(carry[10]));
    FA fa11(.a(a11), .b(b11), .cin(carry[10]), .sum(sum11), .cout(carry[11]));
    FA fa12(.a(a12), .b(b12), .cin(carry[11]), .sum(sum12), .cout(carry[12]));
    FA fa13(.a(a13), .b(b13), .cin(carry[12]), .sum(sum13), .cout(carry[13]));
    FA fa14(.a(a14), .b(b14), .cin(carry[13]), .sum(sum14), .cout(carry[14]));
    FA fa15(.a(a15), .b(b15), .cin(carry[14]), .sum(sum15), .cout(cout));
endmodule
