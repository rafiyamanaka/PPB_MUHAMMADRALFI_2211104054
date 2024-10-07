import 'dart:io';
void main() {
  stdout.write('Enter your number: ');
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    for (int j = n; j > i; j--) {
      stdout.write("");
    }
    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write("*");
    }
    print('');
  }
}