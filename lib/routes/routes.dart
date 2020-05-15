import 'package:adboardstest/routes/route_handler.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

class Routes
{
  static Router router;
  static String root = '/'; // 根目录
  static String expertiseLevel = '/level'; // 设置页
  static String campaignsNone = '/campaignsNone';
  static String category = '/category'; // 分类
  static String form = '/form'; // form
  static String choose = '/choose'; // choose template
  static String details = '/details'; // choose template
  static String editor = '/editor'; // template editor
  static String select = '/select'; // template editor
  static String done = '/done'; // done page
  static String home = '/home'; //home page


  static void configureRoutes(Router router){
    router.notFoundHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
      return;
    });
    print('config router');
    router.define(root, handler: rootHandler);
    router.define(expertiseLevel, handler: expertiseLevelHandler);
    router.define(campaignsNone, handler: startCampaginsHandler);
    router.define(category, handler: categoryHandler);


  }
  //对参数进行encode, 解决参数中有特殊字符，影响fluro路由匹配
  static Future navigateTo(BuildContext context,String path,{Map<String,dynamic> params,TransitionType transition = TransitionType.native}){
    String query = '';
    print(params);
    if (params != null){
      int index = 0;
      for (var key in params.keys){
        var value = Uri.encodeComponent(params[key]);
        if(index == 0){
          query = '?';
        }else{
          query = query +'\&';
        }
        query += '$key=$value';
        index ++;
      }

    }
    print('我是navigateTo传递对参数：$query');
    path = path + query;
    return router.navigateTo(context, path,transition: transition);
  }





}

