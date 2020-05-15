import 'package:adboardstest/routes/routes.dart';
import 'package:adboardstest/widget/main_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import '';

class LoginPage extends StatelessWidget{
  final String logoAsset = 'resources/img/logo.png';
  final String videoAsset = 'resources/img/login_video.png';
  final String accountAsset = 'resources/img/account_circle.png';
  final String forwardAsset = 'resources/img/arrow_forward.png';
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,width: 375 ,height: 667);
    // TODO: implement build
   return AnnotatedRegion<SystemUiOverlayStyle> (
     child: Scaffold(
       body: ListView(
         children: <Widget>[
           _topLogoWidget(),
           _centerVideoWidget(),
           _loginButtonWidget(context),
           SizedBox(height: 20,),
           _getStartedButtonWidget(context),

         ],
       ),
     ),
     value: SystemUiOverlayStyle(
       statusBarBrightness: Brightness.light
     ),


   );
  }
  Widget _topLogoWidget()
  {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Column(
        children: <Widget>[
          Image.asset(
            this.logoAsset,
            fit: BoxFit.contain,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(55),

          ),
          SizedBox(height: 10,),
          Text(
            'Adboards',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'Grow Your Business',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 18,
            ),
          ),



        ],
      ),

    );
  }
  Widget _centerVideoWidget ()
  {
    return Container(
      height: ScreenUtil().setHeight(364),
      child: Image.asset(this.videoAsset),
    );

  }
  Widget _loginButtonWidget(BuildContext context){
    return InkWell(
      onTap: (){},
      child: MainButtonWidget(icon: this.accountAsset,title: 'Login',),

    );
  }
  Widget _getStartedButtonWidget(BuildContext context){

    return InkWell(
      child: MainButtonWidget(icon: this.forwardAsset,isWhite: true, title: 'Get Started',),
      onTap: (){
        print('start demon');
        Routes.navigateTo(context, Routes.expertiseLevel);
      },
    );
  }

}

