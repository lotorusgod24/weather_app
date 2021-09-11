import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Pictures extends StatelessWidget {
  const Pictures({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 360,
          height: 360,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kBackgroundColor,
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: 20,
          child: SvgPicture.asset('assets/Vector 1weather.svg'),
        ),
      ],
    );
  }
}
