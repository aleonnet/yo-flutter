import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(YoApp());
}

class YoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yo!',
        theme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Color(0xFFF67280),
        ),
        home: Scaffold(
          body: Splash(),
        ));
  }
}

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var mastered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF6C5B7B),
      child: Center(
        child: Card(
          color: Colors.white,
          child: AnimatedContainer(
            constraints: BoxConstraints.tight(Size(340, mastered ? 430 : 400)),
            curve: Curves.easeInOutCubic,
            duration: Duration(milliseconds: 200),
            child: Padding(
              padding: EdgeInsets.all(48),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.network(
                    "https://flutter.school/assets/images/image01.png",
                    width: 96,
                    height: 96,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "flutter.school",
                      style: Theme.of(context).textTheme.display1.copyWith(
                          color: Colors.black87, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    "Welcome student!",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle
                        .copyWith(color: Colors.black45),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0),
                    child: mastered
                        ? WillPopScope(
                            child: Text(
                                "Congrationaltions 🎉\n\n\nYou've finished Lesson 1 ",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle
                                    .copyWith(color: Colors.black45)),
                            onWillPop: () {
                              setState(() {
                                mastered = false;
                              });
                            },
                          )
                        : FloatingActionButton(
                            child: Icon(Icons.arrow_forward_ios),
                            onPressed: () {
                              setState(() {
                                mastered = true;
                              });
                            },
                          ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
