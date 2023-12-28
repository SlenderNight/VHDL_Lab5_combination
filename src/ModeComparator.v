module ModeComparator (a, b, m, y);
    input     [7:0]    a, b;
    input              m;
    output    [7:0]    y;

    // 创建比较器实例
    wire agb;
    comp  #(.n(8))comp_inst(.a(a), .b(b), .agb(agb), .aeb(), .alb());
    //创建数据选择器实例
    mux_2to1  #(.n(8))mux1(.out(y), .in0(a), .in1(b), .addr((~m && ~agb) || (m && agb)));
endmodule