# Assignment 3 - MARS Fundamentals
# Program 3: Sum of the even integers from 1 through 100
# Name: Hiram Mora Sauceda   RedID: 132765669
# Starts at 2 and adds every even number up to 100.
# Expected answer: 2 + 4 + ... + 100 = 2550

        .data
label:      .asciiz "Sum of the even integers from 1 through 100: "
newline:    .asciiz "\n"

        .text
main:
        li   $t0, 2              # $t0 = current even number (first one is 2)
        li   $t1, 100            # $t1 = limit
        li   $t2, 0              # $t2 = running sum

loop:
        bgt  $t0, $t1, done      # past the limit, stop
        add  $t2, $t2, $t0       # sum += current
        addi $t0, $t0, 2         # next even number
        j    loop

done:
        li   $v0, 4              # print the label
        la   $a0, label
        syscall

        li   $v0, 1              # print the sum
        move $a0, $t2
        syscall

        li   $v0, 4              # newline
        la   $a0, newline
        syscall

        li   $v0, 10             # exit
        syscall
