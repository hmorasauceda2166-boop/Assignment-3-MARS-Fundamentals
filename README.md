# Assignment 3- MARS Fundamentals

## What's in here

- `hello_world.asm` - prints Hello, World!
- `print_1_to_100.asm` - loop that prints 1 through 100
- `sum_even.asm` - sums the even numbers from 1 through 100 (2550)
- `memory_add.asm` - loads two numbers from memory, adds them, stores the sum back
- `fizzbuzz.asm` - FizzBuzz for 1 through 100
- `Assignment3_MARS_Fundamentals.pdf` - the write-up I submitted (output, register traces, reflection)

## How to run it

Open MARS, go to File > Open and pick a .asm file. Press F3 to assemble, then F5 to run. The output shows in the Run I/O pane at the bottom and the registers are on the right.

## What I did

Each program uses a counter register and a branch that exits the loop, then a jump back to the top. For the memory one I used lw to load the two words, add to add them, and sw to store the result, then loaded it again to print it. In FizzBuzz I check 15 first so FizzBuzz prints right. I tested edge cases like different limits and negative numbers, and an overflow case where add traps but addu wraps.
