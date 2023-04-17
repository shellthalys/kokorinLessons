void main() {
  //intersections
  final setA = {1, 2, 4, 3, 5};
  final setB = {3, 6, 7, 5};
  final intersection = setA.intersection(setB);
  print(intersection);

  //unions
  final union = setA.union(setB);
  print(union);

  //difference
  final differenceA = setA.difference(setB);
  print(differenceA);

  final differenceB = setB.difference(setA);
  print(differenceB);

}