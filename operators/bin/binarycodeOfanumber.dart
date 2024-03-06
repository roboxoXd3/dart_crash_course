// ignore: file_names
void main(List<String> args) {
  int n = 20;
  String binaryCode = '';
  while (n > 0) {
    binaryCode = (n % 2).toString() + binaryCode;
    n = n ~/ 2;
  }
  print(binaryCode);
}
