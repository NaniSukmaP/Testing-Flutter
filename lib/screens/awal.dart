import 'package:flutter/material.dart';
import 'package:tugas_1/assets/models/alats.dart';
import 'package:tugas_1/screens/penjelasan.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Alat> alats = [];
  @override
  void initState() {
    alats.add(Alat(
        title: "Behance",
        download: "231,2W",
        urlGambar: "lib/assets/behance_color.png",
        subTitle:
            "Behance was founded in 2006 in the design community. The above can show their work",
        warna1: Colors.indigo[100],
        warnaDasar: Colors.indigo[200],
        warnaUtama: Colors.indigo));
    alats.add(Alat(
        title: "Dribbble",
        download: "150W",
        urlGambar: "lib/assets/dribbble_11.png",
        subTitle: "The World's best UI work platform",
        warna1: Colors.pink[100],
        warnaDasar: Colors.pink[200],
        warnaUtama: Colors.pink));
    alats.add(Alat(
        title: "Pinterest",
        download: "164,2W",
        urlGambar: "lib/assets/pinterest_1.png",
        subTitle: "---------------------",
        warna1: Colors.red[100],
        warnaDasar: Colors.red[200],
        warnaUtama: Colors.red));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Mine",
          style: TextStyle(color: Colors.grey),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.search, color: Colors.black)),
        ],
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Penjelasan(
                          alat: alats[0],
                        ))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.indigo[400], Colors.indigo[200]],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          alats[0].urlGambar,
                          width: 60,
                          height: 60,
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          Text(
                            alats[0].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(alats[0].download + " downloads",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              )),
                          Text(""),
                          Text(alats[0].subTitle,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ))
                        ])),
                    Container(
                      //padding: const EdgeInsets.only(right: 16.0   ),
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(65.0),
                              bottomLeft: Radius.circular(65.0)),
                          //color: Colors.indigo[400],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.indigo[100],
                              //blurRadius: 8.0,
                              //spreadRadius: 1.0,
                              //offset: Offset(-10.0, 0.0)
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.file_download, color: Colors.white),
                      ),

                      //decoration: ,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Penjelasan(
                          alat: alats[1],
                        ))),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.pink[400], Colors.pink[200]]),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Row(children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        alats[1].urlGambar,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(alats[1].title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                      Text(alats[1].download + " downloads",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          )),
                      Text(""),
                      Text(alats[1].subTitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          )),
                    ],
                  )),
                  Container(
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(65),
                              bottomLeft: Radius.circular(65)),
                          boxShadow: [BoxShadow(color: Colors.pink[100])]),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.file_download, color: Colors.white),
                      ))
                ]),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Penjelasan(
                          alat: alats[2],
                        ))),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red[400], Colors.red[200]],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Row(children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(alats[2].urlGambar,
                          width: 70, height: 70),
                    ),
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(alats[2].title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                      Text(alats[2].download,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          )),
                      Text(""),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Colors.red[200],
                          Colors.red[100],
                          Colors.red[400]
                        ])),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 3),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "11M",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Text(
                            "18.6M",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  )),
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(65),
                            bottomLeft: Radius.circular(65)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red[100],
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.pause, color: Colors.white),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
