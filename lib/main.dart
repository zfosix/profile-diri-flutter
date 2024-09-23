import 'package:flutter/material.dart';
import 'page2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: home(),
));

class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                color: Color.fromARGB(255, 184, 156, 14),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("assets/self.jpeg")
                      ),
                      Text("Fajar Fauzian",
                      textAlign:TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ,color: Colors.black)
                      ),
                      Text("Wikrama Vocational High School Bogor",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ,color: Color.fromRGBO(
                            0, 0, 0, 0.9725490196078431))
                      ),

                       TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page2()),
                        );
                      }, child:Text('See More')
                      ),
                    ],
                  )
                ),
              ),
            )
          ]
        )

      )
    );
  }
}