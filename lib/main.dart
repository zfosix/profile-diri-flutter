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
          image: DecorationImage(
            image: AssetImage("assets/backgroundbaru.jpeg"),
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Color.fromARGB(105, 2, 71, 34),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("assets/self.jpeg")
                      ),
                      Text(
                        "Fajar Fauzian",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22, 
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                      ),
                      Text(
                        "Wikrama Vocational High School Bogor",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15, 
                          fontWeight: FontWeight.w400, 
                          color: Color.fromRGBO(255, 255, 255, 0.973)
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => page2()),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(246, 4, 131, 63), 
                          foregroundColor: Colors.white, 
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text('See More'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
