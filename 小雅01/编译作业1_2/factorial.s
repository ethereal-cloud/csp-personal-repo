    .option nopic
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl main
    .type main, @function

main:
    addi    sp, sp, -48        # 建帧，留 48 字节
    sd      ra, 40(sp)         # 保存返回地址
    sd      s0, 32(sp)         # 保存 s0
    addi    s0, sp, 48         

    # n = getint();
    call    getint
    sw      a0, -4(s0)         

    # i = 2;
    li      t0, 2
    sw      t0, -8(s0)

    # f = 1;
    li      t0, 1
    sw      t0, -12(s0)

    # while (i <= n) {
loop_head:
    lw      t1, -8(s0)         # t1 = i
    lw      t2, -4(s0)         # t2 = n
    bgt     t1, t2, loop_end   # if i > n break

    lw      t3, -12(s0)        # t3 = f
    mulw    t3, t3, t1
    sw      t3, -12(s0)

    # i = i + 1
    addi    t1, t1, 1
    sw      t1, -8(s0)

    j       loop_head
    # }

loop_end:
    # putint(f);
    lw      a0, -12(s0)
    call    putint

    # putch(10);
    li      a0, 10
    call    putch

    # return 0;
    li      a0, 0
    sext.w  a0, a0            

    # 恢复栈帧
    ld      ra, 40(sp)
    ld      s0, 32(sp)
    addi    sp, sp, 48

    # 不使用 jr ra 返回
    li      a7, 93
    ecall

    .size main, .-main
