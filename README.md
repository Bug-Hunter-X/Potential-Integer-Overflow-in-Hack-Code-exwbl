# Hack Integer Overflow Bug

This repository demonstrates a potential integer overflow bug in a simple Hack program. The functions `foo`, `bar`, and `baz` perform arithmetic operations that can lead to unexpected results or errors if the input values are too large.

## Bug Description
The issue lies in the lack of overflow handling in the arithmetic operations.  If the intermediate results of these operations exceed the maximum representable value for the integer type, an integer overflow can occur.  This can lead to incorrect results or program crashes.

## Solution
The provided solution introduces checks to prevent overflow. The updated code explicitly checks the potential overflow scenarios before performing the arithmetic operations. 