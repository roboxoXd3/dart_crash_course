// Mutating variable(variable those value can be changed)

void main(List<String> args) {
  var address = "123 rocco hunter Nagar";
  print(address);
  address = '321 rocco hunter Nagar';
  print(address);
  address = address.replaceAll('rocco', 'bokko');
  print(address);
}
