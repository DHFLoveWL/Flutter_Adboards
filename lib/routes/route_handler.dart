import 'package:adboardstest/pages/campaigns_no_page.dart';
import 'package:adboardstest/pages/category_page.dart';
import 'package:adboardstest/pages/expertise_level_page.dart';
import 'package:adboardstest/pages/login_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

//根目录
var rootHandler =
Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  return LoginPage();
});

// 设置页
var expertiseLevelHandler =
Handler(
    handlerFunc: (BuildContext context, Map<String,dynamic> params){
      return ExpertiseLevelPage();
    }
);
// 介绍页
var startCampaginsHandler = Handler(
  handlerFunc: (BuildContext context,Map<String,dynamic>params){
    return CampaignsNonePage();
  }
  );
var categoryHandler = Handler(

  handlerFunc: (BuildContext context,Map<String,dynamic>params){
    return CategroyPage();
  }
);