import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Image.network(
            "https://media.voguebusiness.com/photos/63d166ce556052b43a26e09a/master/w_1600%2Cc_limit/TOP-10-MENS-SHOWS-VR-voguebus-photographer-month-22-story-inline-1.jpg"),
        fit: BoxFit.fill,
      ),
    );
  }
}
