# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Each dflipflop divides the clock length by two so by running the signal through a dflipflop for **Count** amount of times
you are effectively dividing by 2 times **Count**.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

We start our t-flipflop at 1'b1 which forces all the tflipflops output signal to be 1.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

Given 100MHZ we would need a 100000 width ring counter for 1khz. Because 100,000,000/100,000 = 1000.

