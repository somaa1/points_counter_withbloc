import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: PointsCounter());
  }
}
/*
class firstExm extends StatefulWidget {
  const firstExm({super.key});

  @override
  State<firstExm> createState() => _firstExmState();
}

class _firstExmState extends State<firstExm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(child: Column(

      ),),
      body:Container(
        child: Text('Welcome'),
      ) ,
    );
  }
}
*/

class CardBusiness extends StatelessWidget {
  const CardBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B475E),
      appBar: AppBar(
        title: Text("CardBusiness"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 122,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg'),
            ),
          ),
          Text(
            "Ismail Rabie",
            style: TextStyle(
                fontFamily: 'Pacifico', color: Colors.white, fontSize: 30),
          ),
          Divider(
            color: Colors.white,
            thickness: 1.2,
            endIndent: 60,
            indent: 60,
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Icon(
                      Icons.phone,
                      color: Color(0xFF2B475E),
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "(+970)597186355",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Icon(
                      Icons.mail,
                      color: Color(0xFF2B475E),
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "ismailRabie@gmail.com",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PointsCounter'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Team A ",
                      style: TextStyle(fontSize: 45, color: Colors.black),
                    ),
                    Text(
                      ' $TeamAPoints',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            TeamAPoints++;
                          });
                        },
                        child: Text(
                          "Add 1 points",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            TeamAPoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 points",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            TeamAPoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 points",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                  ],
                ),
              ),
              Container(
                height: 500,
                child: VerticalDivider(
                  thickness: 1,
                  endIndent: 20,
                ),
              ),
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Team B ",
                      style: TextStyle(fontSize: 45, color: Colors.black),
                    ),
                    Text(
                      "$TeamBPoints",
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            TeamBPoints += 1;
                          });
                        },
                        child: Text(
                          "Add 1 points",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            TeamBPoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 points",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            TeamBPoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 points",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                setState(() {
                  TeamAPoints = 0;
                  TeamBPoints = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
        ],
      ),
    );
  }
}
