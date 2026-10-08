# Assignment 3 - MARS Fundamentals
# Program 5: FizzBuzz (1 through 100)
# Name: Hiram Mora Sauceda   RedID: 132765669
# Multiple of 15 -> FizzBuzz, multiple of 3 -> Fizz,
# multiple of 5 -> Buzz, otherwise print the number.
# The 15 check has to come first or FizzBuzz would never print.

        .data
fizz:       .asciiz "Fizz"
buzz:       .asciiz "Buzz"
newline:    .asciiz "\n"

        .text
main:
        li   $t0, 1              # $t0 = current number
        li   $t1, 100            # $t1 = last number
        li   $t5, 3
        li   $t6, 5
        li   $t7, 15

loop:
        bgt  $t0, $t1, done

        div  $t0, $t7            # number / 15, remainder goes to HI
        mfhi $t2
        beq  $t2, $zero, print_fizzbuzz

        div  $t0, $t5            # number / 3
        mfhi $t2
        beq  $t2, $zero, print_fizz

        div  $t0, $t6            # number / 5
        mfhi $t2
        beq  $t2, $zero, print_buzz

        li   $v0, 1              # not a multiple of 3 or 5, print the number
        move $a0, $t0
        syscall
        j    next

print_fizzbuzz:
        li   $v0, 4
        la   $a0, fizz
        syscall
        li   $v0, 4
        la   $a0, buzz
        syscall
        j    next

print_fizz:
        li   $v0, 4
        la   $a0, fizz
        syscall
        j    next

print_buzz:
        li   $v0, 4
        la   $a0, buzz
        syscall

next:
        li   $v0, 4              # newline after every line
        la   $a0, newline
        syscall

        addi $t0, $t0, 1
        j    loop

done:
        li   $v0, 10             # exit
        syscall
