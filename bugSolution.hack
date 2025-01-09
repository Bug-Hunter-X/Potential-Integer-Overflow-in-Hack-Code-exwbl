function foo(x: int): int {
  if (x > 2147483646) {
    return -1; //Or throw an exception
  } else {
    return x + 1;
  }
}

function bar(x: int): int {
  if (x > 1073741823) {
    return -1; //Or throw an exception
  } else {
    return foo(x) * 2;
  }
}

function baz(x: int): int {
  if (x > 1073741824) {
    return -1; //Or throw an exception
  } else {
    return bar(x) - 1;
  }
}

function main(): void {
  echo baz(5);
}

This revised version adds checks to handle the overflow situations. If an overflow is detected, the function returns -1 (or could throw an exception for more robust error handling). 