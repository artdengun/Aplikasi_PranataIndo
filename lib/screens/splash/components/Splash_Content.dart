import 'package:flutter/material.dart';

import '../../../Constants.dart';
import '../../../Size_config.dart';

// 42 kita copy paste apa yang kita ketika di body dari Class SplashContent
class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              Spacer(),
              Text(
                "E-LEARNING PRANATA",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(27),
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
              Spacer(
                flex: 3,
              ),
              Image.asset(
                image,
                height: getProportionateScreenHeight(265),
                width: getProportionateScreenWidth(300),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
