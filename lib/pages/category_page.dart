import 'package:adboardstest/provider/category_provider.dart';
import 'package:adboardstest/widget/appbar_leading_widget.dart';
import 'package:adboardstest/widget/avatar_widget.dart';
import 'package:adboardstest/widget/main_button_widget.dart';
import 'package:adboardstest/widget/top_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CategroyPage extends StatelessWidget{
  final String checkMarkAsset = 'resources/img/check_mark.png';
  final String forwardAsset = 'resources/img/arrow_forward.png';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: AppBarLeadingWidget(isClose: false,isWhite: true,),
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        actions: <Widget>[
          AvatarWidget()
        ],
      ),
      body: Consumer<CategoryProvider>(
        builder: (context,provider,child){
         return Container(
           child: Stack(
             children: <Widget>[
               Positioned(
                   top: 0,
                   left: 0,
                   right: 0,
                   bottom: 90,
                   child: ListView(
                     children: <Widget>[
                       TopTextWidget(title: 'First',
                       desc: 'We need some information about your business. Start by selecting your business category. You can select more than one category.',
                       ),
                       _categoryListWidget(context, provider.categories)
                       


                     ],
                   ),


               ),
               Positioned(
                 top: 0,
                 left: 0,
                 right: 0,
                 child: _nextButtonWidget(),
               ),
//               Align(
//                 child: Inde,
//               ),
             ],
           ),
         ) ;
        }

      ),


    );
  }
Widget _categoryListWidget(BuildContext context,List<Map> categories){
    List<Widget> list = categories.map((value) {
      bool isSelect = value['select'];
      return InkWell(
        onTap: (){

        },
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
              Visibility(
                child: Image.asset(
                  checkMarkAsset,
                width:ScreenUtil().setWidth(24) ,
                ),
                visible: isSelect,
              ),
              SizedBox(
                width: isSelect?20:ScreenUtil().setWidth(24)+20,
              ),
              Text(
                value['title'],
                style: TextStyle(fontSize: ScreenUtil().setSp(16),
                color: isSelect?Color(0xff0AC4BA):Color(0xff444444)),
              )
            ],
          ),
        ),
      );

    }).toList();

    return Column(
      children: list,
    );

}

Widget _nextButtonWidget (){
 return Container(
   color: Colors.white,
   padding: EdgeInsets.only(bottom: 60),
   child: InkWell(
     onTap: (){

     },
     child: MainButtonWidget(icon: forwardAsset,title: 'Next',),
   ),

 ) ;

}





}