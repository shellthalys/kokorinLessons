void main() {
//Exception
//Error
try {
  // var list = [double.parse('3.14'), 2, 3];
  var list = [double.parse('3,14'), 2, 3];
  // print('Result: ${list[5]}');
  print('Result: $list');

} on RangeError {
  print('Out of bond of list');
} catch(element, stack) {
  print('Stack Trace: $stack');
  print('The exception is $element');
} finally {
  print('This is Finally and is always executed');  
}


}