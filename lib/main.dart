import 'package:flutter/material.dart';
import 'page2.dart';
import 'page3.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page3(),
    ));

class home extends StatelessWidget {
  final String username;
  final String role;
  final String school;
  final String description;

  const home({
    super.key,
    required this.username,
    required this.role,
    required this.school,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgroundbaru.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 20,
                  shadowColor: Colors.teal.withOpacity(0.5),
                  color: const Color.fromARGB(255, 26, 33, 48).withOpacity(0.9),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9, // Lebar card 90% dari layar
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 80.0,
                          backgroundImage: AssetImage("assets/self.jpeg"),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          username,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          role,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(225, 247, 245, 1),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          school,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(225, 247, 245, 1),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(225, 247, 245, 0.8),
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page2()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.teal,
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 10,
                          ),
                          child: const Text(
                            'See More',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}