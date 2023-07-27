import 'package:flutter/material.dart';
import 'package:quiz/screens/main_menu.dart';
import 'package:quiz/ui/shared/color.dart';

// ignore: must_be_immutable
class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "Your Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainMenu(),
                  ),
                );
              },
              style: TextButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: AppColor.secondaryColor,
              ),
              child: Text(
                "Repeat the quiz",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
