String topLevelVariable = 'Top Level Variable';

void main() {

  String variableInsideMain = 'Variable Inside Main';

  void myFunction() {
    String variableInsideMyFunction = 'Variable Inside My Function';
    print('Inside My Function');

    void nestedFunction() {
      String variableInsideNestedFunction = 'Variable Inside Nested Function';
      print(topLevelVariable);
      print(variableInsideMain);
      print(variableInsideMyFunction);
      print(variableInsideNestedFunction);
      print('Inside Nested Function');
    }

    nestedFunction();
  }

  myFunction();

}