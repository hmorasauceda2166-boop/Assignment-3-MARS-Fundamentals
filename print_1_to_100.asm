# Assignment 3 - MARS Fundamentals
# Program 2: Print the integers 1 through 100
# Name: Hiram Mora Sauceda   RedID: 132765669
# Counts from 1 to 100 with a loop and prints each number on its own line.

        .data
newline:    .asciiz "\n"

        .text
main:
        li   $t0, 1              # $t0 = counter, starts at 1
        li   $t1, 100            # $t1 = last number to print

loop:
        bgt  $t0, $t1, done      # if counter > 100, stop

        li   $v0, 1              # syscall 1 = print integer
        move $a0, $t0            # number to print
        syscall

        li   $v0, 4              # syscall 4 = print string
        la   $a0, newline
        syscall

        addi $t0, $t0, 1         # counter++
        j    loop

done:
        li   $v0, 10             # exit
        syscall
