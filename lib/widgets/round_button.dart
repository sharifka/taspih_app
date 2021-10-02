import 'package:flutter/material.dart';

import '../constants.dart';

class RoundButton extends StatelessWidget {
 final IconData iconData;
 final Function()? onPressed;
 RoundButton({required this.iconData,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 13,right: 1),
      child: Row(
        children: [
          RawMaterialButton(
            onPressed: onPressed,
            child: 
            Icon(iconData,
            size: 70, 
            color: Colors.white,
            ),
            fillColor: KappbarandButtonsColour,
            shape: CircleBorder(),
          
            constraints: BoxConstraints.tightFor( 
              width: 180,
              height: 400,
            ),
          ),
        ],
      ),
    );
  }
}
