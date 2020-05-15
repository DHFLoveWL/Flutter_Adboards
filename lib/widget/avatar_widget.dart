import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget
{
  final String avatarAsset = 'resources/img/avatar.png';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.only(right: 20),
        child: CircleAvatar(
          child: Image.asset(avatarAsset,height: 45,),
        ),
      ),

    );
  }


}