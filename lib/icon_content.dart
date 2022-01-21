import 'package:flutter/cupertino.dart';

import 'constants.dart';

const iconSize = 80.0;

const sizedBox = SizedBox(
  height: 15.0,
);

class iconContent extends StatelessWidget {
  iconContent({@required this.icon, @required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        sizedBox,
        Text(
          '$label',
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
