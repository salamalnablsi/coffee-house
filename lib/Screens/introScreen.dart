import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/Screens/IUScreen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introScreen extends StatefulWidget {
  static String id="introScreen";
  PageDecoration decoration;
  AssetImage image;
  @override
  _introScreenState createState() => _introScreenState();
}

class _introScreenState extends State<introScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor:Colors.brown[50],
      skip:Text('Skip',style: TextStyle(color:Colors.brown),),
      done:Text('Done',style: TextStyle(color:Colors.brown),),
      onDone:() {
        Navigator.popAndPushNamed(context,IUScreen.id);
      },
      next:Icon(Icons.arrow_forward,color:Colors.brown),
      showNextButton: true,
      showSkipButton: true,
      pages: [
        PageViewModel(
          decoration:const PageDecoration(
            imagePadding:const EdgeInsets.all(50),
          ),
          image:Image.asset('images/shop now.png'),
          title: "Shop Now !",
          body: "All You need in one place.",
        ),
        PageViewModel(
          decoration:const PageDecoration(
            imagePadding:const EdgeInsets.only(top: 70.0),
          ),
          image:Image.asset('images/best exprinece.png'),
          title: "Best Experience",
          body: "Best Experience in shopping.",
        )
      ],
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color:Colors.brown,
        activeColor:Colors.black,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
