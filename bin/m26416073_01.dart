import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukan N: ");
  String? dtInput = stdin.readLineSync();
  int angka = int.parse(dtInput!); //convert ke int

  for (int i = 1; i <= angka; i++) {
    if (angka % i == 0) {
      print(i);
    }
  }
}
