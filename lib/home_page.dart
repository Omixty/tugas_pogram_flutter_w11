import 'package:flutter/material.dart';
import 'package:tugaspogramflutter/tugas1.dart';
import 'package:tugaspogramflutter/tugas2.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('TUGAS PEMROGRAMAN'),),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent,width: 5.0,),
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                  colors: [Colors.amberAccent, Colors.amber],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          height: 180,
          width: 500,
          margin: EdgeInsets.fromLTRB(2, 20, 2, 20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => ProvideState(),
                  ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: Center(
                    child: Text('Provide State management',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => ProvideStateMulti(),
                  ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: Center(
                    child: Text('Flutter Fundamentals',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

