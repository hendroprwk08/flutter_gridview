import 'package:flutter/material.dart';

class DetilMakanan extends StatelessWidget {
  DetilMakanan({Key key, this.makanan, this.gambar, this.deskripsi}): super(key: key);

  final String makanan, gambar, deskripsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detil Makanan"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false)
        ),
      ),
      body: Container(
        //padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(gambar, width: 1000, height: 400, fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(makanan, style: TextStyle(fontSize: 30.0)),
                ),
                Text(deskripsi),
              ],
            ),
          )
      ),
    );
  }
}