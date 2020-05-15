
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarLeadingWidget extends StatelessWidget
{
  final String backAsset = 'resources/img/arrow_back_ios.png';
  final String closeAsset = 'resources/img/close.png';

  final bool isWhite ;
  final bool isClose ;
  AppBarLeadingWidget({this.isWhite = false,this.isClose = false});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){Navigator.of(context).pop();},
      child: Container(
        padding: EdgeInsets.only(top: 15,bottom: 15),
        child: Image.asset(this.isClose? closeAsset:backAsset,color: this.isWhite?Colors.white:Color(0xff323643),),

        width: 24,
        height: 24,

      ),
    );
  }


}
