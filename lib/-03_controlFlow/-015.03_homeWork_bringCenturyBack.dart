int countCentury(int year) {
  if (year <= 0) {
   return 0;
  }
  final dividedYear = year ~/ 100;
  return year - dividedYear * 100!= 0? dividedYear + 1: dividedYear;
  print('Number of century in ~/ dividedYear $dividedYear');
  //return ((year - 1) ~/ 100) + 1;
}

void main() {
  int year = 2023;
  int resultCountCentury = countCentury(year);
  print('Number of century in $year: $resultCountCentury');

}

