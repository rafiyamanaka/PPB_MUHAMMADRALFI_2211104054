// mendeklarasikan fungsi

void cetakPesan(String pesan){
  print(pesan);
}

// mengembalikan nilai dengan return
int multiply(int a, int b){
  return a * b;
}

void main() {
  int hasil = multiply(5, 6);
  print(hasil);
  cetakPesan('Kapal Lawd');
}


/*
void main() {
  // Deklarasi Variabel
  // Variabel bisa di deklarasikan dengan atau tampa mendeklarasikan tipe data nya
  var namaMahasiswa = 'Budiono Siregar';
  // mendeklarsikan variabel dengan tipe data nya
  String citaCita = 'Kapal Lawd';
  // Memanggil variabel menggunakan $
  // Mencentak variabel
  print('Nama saya $namaMahasiswa, cita-cita saya $citaCita');

  // Kondisi if else
  if (citaCita == 'Kapal Lawd') {
    print('Budiono Siregar berhasil menggapai cita citanya!');
  } else {
    print('Budiono Siregar gagal mennggapai cita citanya');
  }

  // kondisi switch case
  var day = 4;
  switch (day) {
    case 1:
      print('Hari ini adalah hari senin');
      break;
    case 2:
      print('Hari ini adalah hari selasa');
      break;
    case 3:
      print('Hari ini adalah hari rabu');
      break;
    case 4:
      print('Hari ini adalah hari kamis');
      break;
    case 5:
      print('Hari ini adalah hari jumat');
      break;
    case 6:
      print('Hari ini adalah hari sabtu');
      break;
    case 7:
      print('Hari ini adalah hari minggu');
      break;
    default:
      print('Masukan input hari yg benar!');
  }

  // perulangan menggunakan for
  for (int i = 1; i <= 5; i++) {
    print('Balonku ada $i');
  }

  // perulangan menggunakan while
  int i = 1;

  while (i <= 5) {
    print('Angka: $i');
    i++;
  }

  // List
  // Fixed List, list yg nilainya hanya dapat diubah tapi tidak dapat dihapus / ditambahkan
  List<int> fixedList =
      List.filled(3, 0); // List dengan 3 elemen, semua diinisialisasi ke 0
  // Mengubah elemen dalam list
  fixedList[0] = 10;
  fixedList[1] = 20;
  fixedList[2] = 30;
  print('Fixed Length List: $fixedList'); // Output: [10, 20, 0, 0, 0]

  // Menambah atau menghapus elemen tidak diperbolehkan
  // fixedList.add(30); // Ini akan menimbulkan error
  // fixedList.removeAt(0); // Ini juga akan menimbulkan error

  // Membuat growable list (panjangnya bisa berubah)
  List<int> growableList = [];
  // Menambahkan elemen baru ke dalam list
  growableList.add(10);
  growableList.add(20);
  growableList.add(30);
  print('Growable List setelah menambah elemen: $growableList'); //Output: [10, 20, 30]
  // Menambahkan lebih banyak elemen
  growableList.add(40);
  growableList.add(50);
  print(growableList); // Output: [10, 20, 30, 40, 50]
  // Menghapus elemen dari list
  growableList.remove(20);
  print('Growable List setelah menghapus elemen: $growableList'); // Output: [10, 30, 40, 50]

  // FUNGSI
  
}
*/
