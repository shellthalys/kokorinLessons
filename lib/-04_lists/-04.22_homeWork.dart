//Create List
void main() {
final list = [60, 999, 14, "dart1", 45, 95, "dart", 1];
var value1 = 'dart';
var value2 = 15;

print(list.contains(value1));
print(list.contains(value2));
}
// bool contains(Object? element) {
//   for (E e in this) {
//     if (e == element) return true;
//   }
//   return false;
//