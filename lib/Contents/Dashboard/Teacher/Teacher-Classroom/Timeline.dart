import 'package:flutter/material.dart';
// import 'package:timelines/timelines.dart';

class Timeline extends StatelessWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // Timeline.tileBuilder(
        //   builder: TimelineTileBuilder.fromStyle(
        //     contentsAlign: ContentsAlign.alternating,
        //     contentsBuilder: (context, index) => Padding(
        //       padding: const EdgeInsets.all(24.0),
        //       child: Text('Timeline Event $index'),
        //     ),
        //     itemCount: 10,
        //   ),
        // );

        Container(
            child: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Card(
                margin: const EdgeInsets.all(20.0),
                child: Container(
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              bottom: 0.0,
              left: 35.0,
              child: Container(
                width: 1.0,
                color: Colors.grey,
              ),
            ),
            Positioned(
              top: 40.0,
              left: 15.0,
              child: Container(
                height: 60.0,
                width: 40.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(13),
                  child: const Text(
                    '1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
      itemCount: 5,
    ));
  }
}
