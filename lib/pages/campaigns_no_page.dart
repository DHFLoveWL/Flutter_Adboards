import 'package:adboardstest/routes/routes.dart';
import 'package:adboardstest/widget/appbar_text_leading.dart';
import 'package:adboardstest/widget/avatar_widget.dart';
import 'package:adboardstest/widget/main_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class CampaignsNonePage extends StatelessWidget{
  final centrLogoAsset = 'resources/img/undraw_winter_magic_5xu2.png';
  final headAsset = '';
  final String addAsset = 'resources/img/add.png';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: AppBarTextLeadingWidget(title: 'Campaigns'),

        actions: <Widget>[
          AvatarWidget()
        ],

        brightness: Brightness.light ,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          _bodyImageWidget(),
        _centTextWidget(),
          _creatCampaignsButtonWidget(context),

        ],
      ),
    );

  
  }

  Widget _bodyImageWidget (){
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white,Color.fromARGB(1, 250, 250, 250)],
              begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
      ),
      padding: EdgeInsets.fromLTRB(38, 90, 38, 60),
      child: Image.asset(centrLogoAsset),


    );
  }
  Widget _centTextWidget (){
    return Container(
      padding: EdgeInsets.only(left: 35,right: 35,bottom: 90),
      child: Column(
        children: <Widget>[
          Text(
            'Start by Creating a Campaign',
            style: TextStyle(
              fontSize: ScreenUtil().setSp(28),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12,),
          Text(
            'Don’t worry, It’s easy & takes only a few minutes',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(15),
              color: Color.fromRGBO(68, 68, 68, 0.6),
            ),
          ),
        ],
      ),

    );
  }
  Widget _creatCampaignsButtonWidget(BuildContext context){
   return InkWell(
     onTap: (){
       Routes.navigateTo(context, Routes.category);

     },
     child: MainButtonWidget(icon: addAsset,title: 'Create a Campaign',),
   );

  }




}