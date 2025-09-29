.option nopic                          
.attribute arch, "rv64i2p1_m2p0_f2p2_d2p2"
.attribute unaligned_access, 0
.attribute stack_align, 16

.section .rodata
    .align 3
.scancf:  .string "%f"        
    .align 3
.avgstr:  .string "Average: " 
    .align 3
.printf:  .string "%.6f"      
    .align 2
.const3:  .word 1077936128    

.text
    .align 1
    .globl main
    .type main, @function

main:
    addi    sp, sp, -48
    sd      ra, 40(sp)
    sd      s0, 32(sp)
    addi    s0, sp, 48
    sw      zero, -20(s0)
    sw      zero, -24(s0)
    j       .loop_check

.loop_body:
    addi    a4, s0, -40
    lw      a5, -20(s0)
    slli    a5, a5, 2
    add     a5, a4, a5

    
    lla     a0, .scancf       
    mv      a1, a5
    call    scanf


    lw      a4, -20(s0)
    addi    a5, s0, -40
    slli    a4, a4, 2
    add     a5, a4, a5
    flw     fa5, 0(a5)
    flw     fa4, -24(s0)
    fadd.s  fa5, fa4, fa5
    fsw     fa5, -24(s0)


    lw      a5, -20(s0)
    addiw   a5, a5, 1
    sw      a5, -20(s0)

.loop_check:
    lw      a5, -20(s0)
    sext.w  a4, a5
    li      a5, 2
    ble     a4, a5, .loop_body


    flw     fa4, -24(s0)
    lla     a5, .const3     
    flw     fa5, 0(a5)
    fdiv.s  fa5, fa4, fa5
    fsw     fa5, -28(s0)


    lla     a0, .avgstr       
    call    printf

    flw     fa5, -28(s0)
    fcvt.d.s fa5, fa5
    fmv.x.d  a1, fa5
    lla     a0, .printf       
    call    printf

    li      a0, 10
    call    putchar

  
    li      a5, 0
    mv      a0, a5
    ld      ra, 40(sp)
    ld      s0, 32(sp)
    addi    sp, sp, 48
    jr      ra

.size main, .-main
