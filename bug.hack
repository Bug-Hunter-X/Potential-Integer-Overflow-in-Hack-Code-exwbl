function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
}

This code appears to be correct at first glance, but it might cause an unexpected behavior or error when it is executed with specific inputs.

Consider the following: if an overflow occurs within `foo` or `bar`, that is, the result of the arithmetic operation is out of the range of representable values for the integer type, the behaviour is undefined. For example, if the integer type is 32 bits and if x is 2147483647, `foo` will produce an overflow. 