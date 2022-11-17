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
          // centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              mText(25, widget.title),
              ElevatedButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  backgroundColor: mWhite,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.5),
                  )
                ),
                child: mIcon(Icons.settings, color: mGreen),
              )
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                child: mText(20, 'Choose from the following category and start the test.', color: mGreen, align: TextAlign.center),
              ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {
  
                  },
                  child: mText(20, 'Level 1 Alphabet  \u003E', color: mBlack),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 2 Mathematics  \u003E', color: mBlack),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 3 Geometry  \u003E', color: mBlack),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 4 Physic  \u003E', color: mBlack),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 5 Chemistry  \u003E', color: mBlack),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    // foregroundColor: mGreen,
                    backgroundColor: mGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                    minimumSize: Size(wS(context, 1), 65),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {

                  },
                  child: mText(20, 'Level 6 English  \u003E', color: mBlack),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
