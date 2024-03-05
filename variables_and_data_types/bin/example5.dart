//constant variable cant carry final variable but, vice-cersa is true;
void main(List<String> args) {
  //final variable can hold const variable
  const age = 20;
  final newAge = age;
  print(newAge);

//Todo: invalid code bacause constant cant be assigned non constant values
  // final number = 20;
  // const newNumber = number;
  // print(newNumber);
}
