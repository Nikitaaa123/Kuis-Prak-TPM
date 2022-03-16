import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Tampilan_Aps.dart';

void main() {
  runApp(
    new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/page1' : (BuildContext context) => new Home(),
      '/page2' : (BuildContext context) => new Tampilanaps(),
    },
  ),
  );
}

class Home extends StatelessWidget {
  String teks='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('PlayStore'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.person_outline),
              onPressed: (){
                Navigator.pushNamed(context, '/page2');
              }
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              child: Image.asset('images/favicon.png',
              fit: BoxFit.fitWidth,
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(50.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                      hintText: 'Masukan Lokasi Anda Sekarang',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/page2');
              },
              padding: EdgeInsets.all(10.0),
              color: Colors.blueAccent,
              textColor: Colors.white,
              child: Text(
                'Search',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}