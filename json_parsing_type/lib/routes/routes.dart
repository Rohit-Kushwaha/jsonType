import 'package:flutter/material.dart';
import 'package:json_parsing_type/constant/app_constant.dart';
import 'package:json_parsing_type/screens/home.dart';
import 'package:json_parsing_type/screens/type1.dart';
import 'package:json_parsing_type/screens/type2.dart';
import 'package:json_parsing_type/screens/type3.dart';
import 'package:json_parsing_type/screens/type4.dart';


class Routes {
  static const String home = "/";
  static const String type1 = "/type1";
  static const String type2 = "/type2";
  static const String type3 = "/type3";
  static const String type4 = "/type4";
}

class RouteGenerators {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(
            builder: (_) => JsonParsingHome(
                  title: homeAppBarText,
                ));
      case Routes.type1:
        return MaterialPageRoute(builder: (_) => const Type1());
         case Routes.type2:
        return MaterialPageRoute(builder: (_) => const Type2());
         case Routes.type3:
        return MaterialPageRoute(builder: (_) => const Type3());
         case Routes.type4:
        return MaterialPageRoute(builder: (_) => const Type4());
       
        
      default:
        return undefindedRoute();
    }
  }

  static Route<dynamic> undefindedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(noRouteFound),
        ),
        body: Center(child: Text(noRouteFound)),
      ),
    );
  }
}
