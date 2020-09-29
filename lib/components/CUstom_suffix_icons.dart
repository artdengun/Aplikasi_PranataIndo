import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CostumSuffixIcon extends StatelessWidget {
  const CostumSuffixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(10),
        getProportionateScreenWidth(10),
        getProportionateScreenWidth(10),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenHeight(10),
      ),
    );
  }
}
