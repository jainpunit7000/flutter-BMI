import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReuseableCard extends StatelessWidget {
  //used for animations
//  const ReuasbleCard({
//    Key key,
//  }) : super(key: key);

  ReuseableCard({@required this.color, this.cardChild});
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
