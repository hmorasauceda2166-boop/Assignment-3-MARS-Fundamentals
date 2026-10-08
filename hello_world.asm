# Assignment 3 - MARS Fundamentals
# Program 1: Hello World
# Name: Hiram Mora Sauceda   RedID: 132765669
# Prints "Hello, World!" using syscall 4 (print string), then exits.

        .data
message:    .asciiz "Hello, World!\n"

        .text
main:
        li   $v0, 4              # syscall 4 = print string
        la   $a0, message        # $a0 = address of the string
        syscall

done:
        li   $v0, 10             # syscall 10 = exit
        syscall
