import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarTextLeadingWidget extends StatelessWidget{
  final String title;
  AppBarTextLeadingWidget({@required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(title,style: TextStyle(
              fontSize: ScreenUtil().setSp(26),
              color: Colors.black
            ),maxLines: 1,
            overflow: TextOverflow.ellipsis,)
          ],
        ),
      ],
      ),
    );
  }
}