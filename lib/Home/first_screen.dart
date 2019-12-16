import 'package:flutter/material.dart';
import 'package:howareu/statics/color.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final FlatButton signinBtn = FlatButton(
    child: Text('Signin'),
    onPressed: () => {},
    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
  );
  List<Slide> slides = new List();
  @override
  void initState() {
    slides.add(
      new Slide(
        title: "มูด ทูเดย์",
        description: "แอพพลิเคชั่น",
        pathImage: "assets/images/smile.png",
        backgroundColor: MixinColor.darkBlue,
      ),
    );
    slides.add(
      new Slide(
        title: "PENCIL",
        description:
            "Ye indulgence unreserved connection alteration appearance",
        pathImage: "assets/images/smile.png",
        backgroundColor: MixinColor.darkBlue,
      ),
    );
    slides.add(
      new Slide(
        title: "RULER",
        widgetDescription: signinBtn,
        pathImage: "assets/images/smile.png",
        backgroundColor: MixinColor.darkBlue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      isShowPrevBtn: false,
      isShowSkipBtn: false,
      isShowDoneBtn: false,
      slides: this.slides,
    );
  }
}
