import 'dart:ffi';
import 'dart:io';
import 'dart:core';
import 'dart:collection';

class Bukubiasa {
  int? id = 0;
  String? judul = "";
  int? harga = 0;
  String? isbn = "";
  String? penulis = "";
  get getId => this.id;
  set setId(id) => this.id = id;

  get getJudul => this.judul;

  set setJudul(judul) => this.judul = judul;

  get getHarga => this.harga;

  set setHarga(harga) => this.harga = harga;

  get getIsbn => this.isbn;

  set setIsbn(isbn) => this.isbn = isbn;

  get getPenulis => this.penulis;

  set setPenulis(penulis) => this.penulis = penulis;

  Bukubiasa(this.id, this.judul, this.harga, this.isbn, this.penulis);
  String toString() {
    return ' \n${this.id}, ${this.judul}, ${this.harga}, ${this.isbn}, ${this.penulis} \n';
  }
}

class Trvlguide {
  int id = 0;
  String? judul;
  int harga = 0;
  String? isbn;
  String? penulis;
  String? negara;

  get getId => this.id;

  set setId(id) => this.id = id;

  get getJudul => this.judul;

  set setJudul(judul) => this.judul = judul;

  get getHarga => this.harga;

  set setHarga(harga) => this.harga = harga;

  get getIsbn => this.isbn;

  set setIsbn(isbn) => this.isbn = isbn;

  get getPenulis => this.penulis;

  set setPenulis(penulis) => this.penulis = penulis;

  get getNegara => this.negara;

  set setNegara(negara) => this.negara = negara;

  Trvlguide(
      this.id, this.judul, this.harga, this.isbn, this.penulis, this.negara);
  String toString() {
    return ' \n${this.id}, ${this.judul}, ${this.harga}, ${this.isbn}, ${this.penulis}, ${this.negara} \n';
  }
}

class Cd {
  int id = 0;
  String? judul;
  int harga = 0;
  String? nama;
  String? artist;

  get getId => this.id;

  set setId(id) => this.id = id;

  get getJudul => this.judul;

  set setJudul(judul) => this.judul = judul;

  get getHarga => this.harga;

  set setHarga(harga) => this.harga = harga;
  get getNama => this.nama;

  set setNama(nama) => this.nama = nama;

  get getArtist => this.artist;

  set setArtist(artist) => this.artist = artist;
  Cd(this.id, this.judul, this.harga, this.nama, this.artist);
  String toString() {
    return ' \n${this.id}, ${this.judul}, ${this.harga}, ${this.nama}, ${this.artist} \n';
  }

  int toInt() {
    return this.harga;
  }
}

void main() {
  int idbiasa = 0, idtrvl = 0, idcd = 0;
  // Bukubiasa b1 = new Bukubiasa();

  List b1 = [];
  List b2 = [];
  List b3 = [];
  while (true) {
    print("1.Tambah Barang\n");
    print("2.Show Barang\n");
    print("3.Letakan Barang\n");
    print("4.Cari Barang sesuai jenis\n");
    print("5.Cari N ke range:\n");
    print("0.Exit\n");
    String? dtInput = stdin.readLineSync();
    int number = int.parse(dtInput!);
    if (number == 1) {
      print("Pilih jenis barang yang ditambahkan: ");
      print("1.CD\n");
      print("2.Buku Biasa\n");
      print("3.Travel Guide\n");
      print("0. Exit\n");
      String? inputjenis = stdin.readLineSync();
      int piljen = int.parse(inputjenis!);
      if (piljen == 1) {
        //cd
        ++idcd;
        print("Masukan Judul: ");
        String? inputjudulc = stdin.readLineSync();
        print("Masukan Harga: ");
        String? inputhargac = stdin.readLineSync();
        int hargac = int.parse(inputhargac!);
        print("Masukan Nama: ");
        String? inputnamac = stdin.readLineSync();
        print("Masukan penulis: ");
        String? inputpenulisc = stdin.readLineSync();
        b1.add(Cd(idcd, inputjudulc, hargac, inputnamac, inputpenulisc));
      } else if (piljen == 2) {
        //bukubiasa
        ++idbiasa;
        // b1.setId = ++idbiasa;
        print("Masukan Judul: ");
        String? inputjudul = stdin.readLineSync();
        // b1.setJudul = inputjudul;
        print("Masukan Harga: ");
        String? inputharga = stdin.readLineSync();
        int hargab = int.parse(inputharga!);
        // b1.setHarga = hargab;
        print("Masukan ISBN: ");
        String? inputisbn = stdin.readLineSync();
        // b1.setIsbn = inputisbn;
        print("Masukan penulis: ");
        String? inputpenulis = stdin.readLineSync();
        // b1.setPenulis = inputpenulis;
        b2.add(Bukubiasa(idbiasa, inputjudul, hargab, inputisbn, inputpenulis));
      } else if (piljen == 3) {
        ++idtrvl;
        print("Masukan Judul: ");
        String? inputjudult = stdin.readLineSync();
        print("Masukan Harga: ");
        String? inputhargat = stdin.readLineSync();
        int hargat = int.parse(inputhargat!);
        print("Masukan ISBN: ");
        String? inputisbnt = stdin.readLineSync();
        print("Masukan penulis: ");
        String? inputpenulist = stdin.readLineSync();
        print("Masukan negara: ");
        String? inputnegarat = stdin.readLineSync();
        b3.add(Trvlguide(idtrvl, inputjudult, hargat, inputisbnt, inputpenulist,
            inputnegarat));
      } else if (piljen == 0) {
        break;
      }
    } else if (number == 2) {
      print('Pilih Jenis Barang yang dicari : ');
      print("1. CD\n");
      print("2. buku biasa\n");
      print("3. travel guide\n");
      String? inputjenis = stdin.readLineSync();

      print('Masukan Id yang dicari: ');
      String? inputid = stdin.readLineSync();

      int piljen = int.parse(inputjenis!);
      int pilid = int.parse(inputid!);
      if (piljen == 1) {
        for (int i = 1; i <= idcd; i++) {
          if (pilid == i) {
            print(b1[i - 1]);
          }
        }
      }
      if (piljen == 2) {
        for (int i = 1; i <= idbiasa; i++) {
          if (pilid == i) {
            print(b2[i - 1]);
          }
        }
      }
      if (piljen == 3) {
        for (int i = 1; i <= idtrvl; i++) {
          if (pilid == i) {
            print(b3[i - 1]);
          }
        }
      }
    } else if (number == 4) {
      print('Pilih Kategori Barang yang dicari : ');
      print("1. CD\n");
      print("2. buku biasa\n");
      print("3. travel guide\n");
      String? inputjenis = stdin.readLineSync();

      int piljen = int.parse(inputjenis!);

      if (piljen == 1) {
        print(b1);
      }
      if (piljen == 2) {
        print(b2);
      }
      if (piljen == 3) {
        print(b3);
      }
    } else if (number == 0) {
      break;
    } else if (number == 5) {
      String? inputn = stdin.readLineSync();
      int pilin = int.parse(inputn!);
      String? hargaa = stdin.readLineSync();
      int hargaatas = int.parse(hargaa!);
      String? hargab = stdin.readLineSync();
      int hargabawah = int.parse(hargab!);
      for (int i = 1; i <= pilin; i++) {
        if (b1[i - 1].toInt() <= hargaatas && b1[i - 1].toInt() >= hargabawah) {
          print(b1[i - 1].toInt());
        }
      }
    }
  }
}
