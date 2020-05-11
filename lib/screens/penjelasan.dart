import 'package:flutter/material.dart';
import 'package:tugas_1/assets/models/alats.dart';
class Penjelasan extends StatefulWidget {
  final Alat alat;
  const Penjelasan({Key key, this.alat}): super(key:key);
  @override
  _PenjelasanState createState() => _PenjelasanState();
}

class _PenjelasanState extends State<Penjelasan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(widget.alat.title ,style: TextStyle(color: Colors.grey),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_horiz, color: Colors.grey)
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0,0),
            padding: EdgeInsets.all(20.0),
            height: MediaQuery.of(context).size.height*0.5,
            alignment: FractionalOffset.center,
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),
            color: widget.alat.warnaDasar,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    child: Image.asset(widget.alat.urlGambar, width: 100,height: 100,),
                  ),
                  margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.0)),),
                SizedBox(
                  height: 16.0,
                ),
                Text(widget.alat.title, style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                Text(widget.alat.subTitle, style: TextStyle(fontSize: 16.0, color: Colors.white),textAlign: TextAlign.center,),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget>[
                      Column(children: <Widget>[
                        Text("21,12M", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Text("size", style: TextStyle(color: Colors.white, fontSize: 14.0, )),
                    ],),
                    Column(children: <Widget>[
                      Text("8.5", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Text("score", style: TextStyle(color: Colors.white, fontSize: 14.0, )),

                    ],),
                    Column(children: <Widget>[
                      Text(widget.alat.download, style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Text("popularity", style: TextStyle(color: Colors.white, fontSize: 14.0, )),

                    ],)
                    ]                    
                  ),
                )
            ]),
          ),
          ),
          Column(children: <Widget>[
            Container(color: widget.alat.warnaDasar, height: 16.0, margin: EdgeInsets.symmetric(horizontal: 40),),
            Container(color: widget.alat.warna1, height: 16.0, margin: EdgeInsets.symmetric(horizontal: 60)),
            SizedBox(height: 150.0),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(Icons.file_download, color: widget.alat.warnaDasar),
              ), 
              margin: EdgeInsets.symmetric(horizontal : 20.0),
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(border: Border.all(width: 2.0, color: widget.alat.warnaDasar),borderRadius: BorderRadius.circular(30.0), color: Colors.transparent,
              ), 
            )
          ],)  
        ],
      ),  
    );
  }
}


