import 'package:flutter/material.dart';

import 'package:astest/gtl.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key, required this.title});

  final String title;

  @override
  State<PageHome> createState() => _PageHome();
}

class _PageHome extends State<PageHome> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mGreen,
          title: mText(25, widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {
  
                  },
                  child: mText(20, 'Level 1 Alphabet'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 2 Mathematics'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 3 Geometry'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 4 Physic'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 5 Chemistry'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 6 English'),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
