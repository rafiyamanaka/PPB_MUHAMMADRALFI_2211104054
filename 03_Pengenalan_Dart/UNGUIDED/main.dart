// UNGUIDED
// Soal Nomer 1
// void main(){
//   // menggunakan if else
//   var nilai = 50;
//   if (nilai > 70) {
//     print('Nilai A');
//   } else if(nilai <= 70){
//     print('Nilai B');
//   } else if(nilai <= 40){
//     print('Nilai C');
//   } else{
//     print('Masukan Nilai dari 0-100 dengan tepat');
//   } // output Nilai B

//   // menggunakan switch case
//   switch(nilai){
//     case > 70:
//       print('Nilai A');
//     break;
//     case <= 70:
//       print('Nilai B');
//     break;
//     case <= 40:
//       print('Nilai C');
//     break;
//     default:
//       print('Masukan nilai dengan benar bung!');
//   } // output Nilai B
// }

//UNGUIDED
//soal 2 membuat triangle
/*
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
*/

// UNGUIDED
// Soal no 3
import 'dart:io';
void main(){
  stdout.write('Masukkan bilangan bulat: ');  
  int? number = int.tryParse(stdin.readLineSync() ?? '');  

  if (number == null) {  
    print('Input tidak valid. Harap masukkan bilangan bulat.');  
  } else {  
    // Memeriksa apakah bilangan tersebut bilangan prima  
    bool isPrime = true;  

    if (number <= 1) {  
      isPrime = false; // Bilangan kurang dari 2 bukan bilangan prima  
    } else {  
      for (int i = 2; i * i <= number; i++) {  
        if (number % i == 0) {  
          isPrime = false; // Dapat dibagi oleh bilangan lain, bukan prima  
          break;  
        }  
      }  
    }  

    if (isPrime) {  
      print('$number adalah bilangan prima.');  
    } else {  
      print('$number bukan bilangan prima.');  
    }  
  }
}
