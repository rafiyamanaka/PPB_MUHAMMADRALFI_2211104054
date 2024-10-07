void main(){
  // menggunakan if else
  var nilai = 50;
  if (nilai > 70) {
    print('Nilai A');
  } else if(nilai <= 70){
    print('Nilai B');
  } else if(nilai <= 40){
    print('Nilai C');
  } else{
    print('Masukan Nilai dari 0-100 dengan tepat');
  } // output Nilai B

  // menggunakan switch case
  switch(nilai){
    case > 70:
      print('Nilai A');
    break;
    case <= 70:
      print('Nilai B');
    break;
    case <= 40:
      print('Nilai C');
    break;
    default:
      print('Masukan nilai dengan benar bung!');
  } // output Nilai B
}