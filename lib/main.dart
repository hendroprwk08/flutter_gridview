import 'package:flutter/material.dart';
import 'package:flutter_submission_01/DetilMakanan.dart';
import 'package:flutter_submission_01/Makanan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nama Makanan',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  List<Makanan> mkn;

  void genMakanan(){
    mkn = new List();
    mkn.add(new Makanan(gambar: "images/bakcang.jpg", nama: "Bakcang", deskripsi: "Deskripsi Bacang"));
    mkn.add(new Makanan(gambar: "images/bakpia.jpg", nama: "Bakpia", deskripsi: "Deskripsi Bakpia"));
    mkn.add(new Makanan(gambar: "images/batagor.jpg", nama: "Batagor", deskripsi: "Deskripsi Batagor"));
    mkn.add(new Makanan(gambar: "images/bubur_ayam.jpg", nama: "Bubur Ayam", deskripsi: "Deskripsi Bubur Ayam"));
    mkn.add(new Makanan(gambar: "images/gado.jpg", nama: "Gado gado", deskripsi: "Deskripsi Gado gado"));
    mkn.add(new Makanan(gambar: "images/pempek.jpg", nama: "Pempek", deskripsi: "Deskripsi Pempek"));
    mkn.add(new Makanan(gambar: "images/rujak_cingur.jpg", nama: "Rujak Cingur", deskripsi: "Deskripsi Rujak Cingur"));
    mkn.add(new Makanan(gambar: "images/sop_buntut.jpg", nama: "Sop Buntut", deskripsi: "Deskripsi Sop Buntut"));
    mkn.add(new Makanan(gambar: "images/mi_goreng.jpg", nama: "Mi Goreng", deskripsi: "Deskripsi Mi Goreng"));
    mkn.add(new Makanan(gambar: "images/jengkol.jpg", nama: "Jengkol", deskripsi: "Deskripsi Semur Jengkol"));
    mkn.add(new Makanan(gambar: "images/gulai_ayam.jpg", nama: "Gulai Ayam", deskripsi: "Deskripsi Gulai Ayam"));
    mkn.add(new Makanan(gambar: "images/sate.jpg", nama: "Sate", deskripsi: "Deskripsi Sate"));
    mkn.add(new Makanan(gambar: "images/bakso_keju.webp", nama: "Bakso Keju", deskripsi: "Deskripsi Bakso Keju"));
    mkn.add(new Makanan(gambar: "images/pangsit_goreng.jpg", nama: "Pangsit Goreng", deskripsi: "Deskripsi Pangsit Goreng"));
    mkn.add(new Makanan(gambar: "images/rendang.jpg", nama: "Rendang", deskripsi: "Deskripsi Rendang"));
  }

  @override
  Widget build(BuildContext context) {
    genMakanan();

    return Scaffold(
        appBar: new AppBar(
        title:  new Text("Nama Makanan"),
    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new GridView.count(
          crossAxisCount: 2,
          children: List.generate(mkn.length, (index){
            return new GestureDetector(

              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(
                  builder: (context)  =>
                    DetilMakanan(
                      gambar: mkn[index].gambar.trim(),
                      makanan: mkn[index].nama.trim(),
                      deskripsi: mkn[index].deskripsi.trim(),
                    )
                  )
                );
                },

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                  child: new Container(
                    decoration: new BoxDecoration(
                      color: Colors.grey[100],
                    ),
                    child: new Column(
                      children: <Widget>[
                        //isi container
                        new Image.asset(mkn[index].gambar.trim(), width: 160.0, height: 120.0, fit: BoxFit.cover,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(mkn[index].nama.trim()),
                        ),
                      ],
                    ),
                  ),
                ),
              );
          }),
        ),
      ),
    );
  }
}
