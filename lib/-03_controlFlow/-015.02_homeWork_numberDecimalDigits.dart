int countDigits(int num) {
  int countDigits = 0;
while (num != 0) {
  countDigits += 1;
  num ~/= 10;
 }
  return countDigits;
}


void main() {
  int num1 = 7;
  int num2 = 555;
  int num3 = 236455;
  int digits1 = countDigits(num1);
  int digits2 = countDigits(num2);
  int digits3 = countDigits(num3);

  print('Number of digits in $num1: $digits1');
  print('Number of digits in $num2: $digits2');
  print('Number of digits in $num3: $digits3');
 }

