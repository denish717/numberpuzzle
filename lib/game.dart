import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: demo(),
    debugShowCheckedModeBanner: false,
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  List l = ["", "1", "2", "3", "4", "5", "6", "7", "8"];
  List<bool> temp = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];
  int cnt = 0;

  void initState() {
    super.initState();
    l.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Number Puzzle",
            style: TextStyle(fontSize: 35, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color(0xFFF52403),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () => myfun(0),
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "${l[0]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 100),
                            ),
                            alignment: Alignment.center,
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () => myfun(1),
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "${l[1]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 100),
                            ),
                            alignment: Alignment.center,
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () => myfun(2),
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "${l[2]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 100),
                            ),
                            alignment: Alignment.center,
                          ),
                        )),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () => myfun(3),
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "${l[3]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 100),
                            ),
                            alignment: Alignment.center,
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () => myfun(4),
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "${l[4]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 100),
                            ),
                            alignment: Alignment.center,
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () => myfun(5),
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "${l[5]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 100),
                            ),
                            alignment: Alignment.center,
                          ),
                        )),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () => myfun(6),
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "${l[6]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 100),
                            ),
                            alignment: Alignment.center,
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () => myfun(7),
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "${l[7]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 100),
                            ),
                            alignment: Alignment.center,
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () => myfun(8),
                          child: Container(
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "${l[8]}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 100),
                            ),
                            alignment: Alignment.center,
                          ),
                        )),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  myfun(int a) {
    {
      setState(() {
        if (a == 0) {
          if (l[1] == "") {
            l[1] = l[0];
            l[0] = "";
          }
          if (l[3] == "") {
            l[3] = l[0];
            l[0] = "";
          }
        }
        if (a == 1) {
          if (l[0] == "") {
            l[0] = l[1];
            l[1] = "";
          }
          if (l[2] == "") {
            l[2] = l[1];
            l[1] = "";
          }
          if (l[4] == "") {
            l[4] = l[1];
            l[1] = "";
          }
        }
        if (a == 2) {
          if (l[1] == "") {
            l[1] = l[2];
            l[2] = "";
          }
          if (l[5] == "") {
            l[5] = l[2];
            l[2] = "";
          }
        }
        if (a == 3) {
          if (l[0] == "") {
            l[0] = l[3];
            l[3] = "";
          }
          if (l[4] == "") {
            l[4] = l[3];
            l[3] = "";
          }
          if (l[6] == "") {
            l[6] = l[3];
            l[3] = "";
          }
        }
        if (a == 4) {
          if (l[1] == "") {
            l[1] = l[4];
            l[4] = "";
          }
          if (l[3] == "") {
            l[3] = l[4];
            l[4] = "";
          }
          if (l[5] == "") {
            l[5] = l[4];
            l[4] = "";
          }
          if (l[7] == "") {
            l[7] = l[4];
            l[4] = "";
          }
        }
        if (a == 5) {
          if (l[2] == "") {
            l[2] = l[5];
            l[5] = "";
          }
          if (l[4] == "") {
            l[4] = l[5];
            l[5] = "";
          }
          if (l[8] == "") {
            l[8] = l[5];
            l[5] = "";
          }
        }
        if (a == 6) {
          if (l[3] == "") {
            l[3] = l[6];
            l[6] = "";
          }
          if (l[7] == "") {
            l[7] = l[6];
            l[6] = "";
          }
        }
        if (a == 7) {
          if (l[4] == "") {
            l[4] = l[7];
            l[7] = "";
          }
          if (l[6] == "") {
            l[6] = l[7];
            l[7] = "";
          }
          if (l[8] == "") {
            l[8] = l[7];
            l[7] = "";
          }
        }
        if (a == 8) {
          if (l[5] == "") {
            l[5] = l[8];
            l[8] = "";
          }
          if (l[7] == "") {
            l[7] = l[8];
            l[8] = "";
          }
        }
      });
    }
  }
}
