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