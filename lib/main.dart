import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text('Basketball Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(fontSize: 40),
                          ),
                          Text(
                            '$teamAPoints',
                            style: const TextStyle(fontSize: 120),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.black,
                                minimumSize: const Size(130, 40)),
                            child: Text(
                              'Add 1 point',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.black,
                                minimumSize: const Size(130, 40)),
                            child: Text(
                              'Add 2 point',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.black,
                                minimumSize: const Size(130, 40)),
                            child: Text(
                              'Add 3 point',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 450,
                      child: const VerticalDivider(
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    SizedBox(
                      height: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(fontSize: 40),
                          ),
                          Text(
                            '$teamBPoints',
                            style: const TextStyle(fontSize: 120),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.black,
                                minimumSize: const Size(130, 40)),
                            child: Text(
                              'Add 1 point',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.black,
                                minimumSize: const Size(130, 40)),
                            child: Text(
                              'Add 2 point',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.black,
                                minimumSize: const Size(130, 40)),
                            child: Text(
                              'Add 3 point',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamAPoints = 0;
                      teamBPoints = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.black,
                      minimumSize: const Size(130, 40)),
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            )));
  }
}
