# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Group 11: Kaden Fong and Ethan Mix

## Summary

We learned how latches work and how they can be used to store data in a circuit. We started by making a D latch that stores a value when it's enabled and keeps that value when it's disabled. After that, we used eight latches to make a byte of memory. Then we combined four of those memory blocks with multiplexers and demultiplexers to make a larger memory system.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

Technically, latches can be built using structural Verilog, but it's more complicated because they need feedback to remember their previous value. This can cause problems with how the circuit is interpreted by the software. Using an always block makes it easier to describe when the latch should store a new value and when it should keep the old one.

### What is the meaning of always @(*) in a sensitivity block?

`always @(*)` means the block will run whenever any of the signals used inside it change. The `*` auto includes all the signals, so we don't have to list them one by one by one. This is mainly used for combinational logic, like the multiplexers and demultiplexers in this lab.

### What importance is memory to digital circuits?

Memory is important because it allows digital circuits to store information and use it later. Without memory, circuits would only be able to respond to their current inputs and unable to remember anything from before. Things like computers need memory to store data and other information.