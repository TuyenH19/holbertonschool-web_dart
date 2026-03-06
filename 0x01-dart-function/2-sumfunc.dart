int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  
  var sum = add(a, b);
  var diff = sub(a, b);
  
  return 'Add $a + $b = $sum\nSub $a - $b = $diff';       
}
