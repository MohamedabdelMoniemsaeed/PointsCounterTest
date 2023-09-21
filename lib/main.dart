import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoint = 0;

  int teamBpoint = 0;

  void add1point() {
    teamApoint++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Team A",
                          style: TextStyle(
                            fontSize: 45,
                          ),
                        ),
                        Text(
                          "$teamApoint",
                          style: TextStyle(
                            fontSize: 160,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoint++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoint += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoint += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    endIndent: 10,
                    indent: 10,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Team B",
                          style: TextStyle(
                            fontSize: 45,
                          ),
                        ),
                        Text(
                          "$teamBpoint",
                          style: TextStyle(
                            fontSize: 160,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoint++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoint += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoint += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                setState(() {
                  teamApoint = 0;
                  teamBpoint = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  String numberPoint;

  Button(this.numberPoint);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
      ),
      onPressed: () {},
      child: Text(
        "Add 1 Point",
        style: TextStyle(
          fontSize: 23,
          color: Colors.black,
        ),
      ),
    );
  }
}
