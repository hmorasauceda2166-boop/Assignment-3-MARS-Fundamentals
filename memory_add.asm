# Assignment 3 - MARS Fundamentals
# Program 4: Load two integers from memory, add them, store the result back
# Name: Hiram Mora Sauceda   RedID: 132765669
# num1 and num2 are loaded into registers, added, and the sum is stored
# in the "result" word. The result is then loaded again and printed to
# confirm it really was written to memory.

        .data
num1:       .word 25
num2:       .word 17
result:     .word 0
msg:        .asciiz "Result stored in memory: "
newline:    .asciiz "\n"

        .text
main:
        lw   $t0, num1           # $t0 = num1
        lw   $t1, num2           # $t1 = num2
        add  $t2, $t0, $t1       # $t2 = num1 + num2
        sw   $t2, result         # store the sum back to memory

        lw   $t3, result         # load it back to check

        li   $v0, 4              # print label
        la   $a0, msg
        syscall

        li   $v0, 1              # print the value we read from memory
        move $a0, $t3
        syscall

        li   $v0, 4              # newline
        la   $a0, newline
        syscall

done:
        li   $v0, 10             # exit
        syscall
