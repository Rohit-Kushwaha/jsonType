import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:json_parsing_type/constant/app_constant.dart';
import 'package:json_parsing_type/routes/routes.dart';

class JsonParsingHome extends StatelessWidget {
  const JsonParsingHome({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.type1);
                  },
                  child: Text(typeOneText)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.type2);
                  },
                  child: Text(typeTwoText)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.type3);
                  },
                  child: Text(typeThreeText)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.type4);
                  },
                  child: Text(typeFourText)),
            ],
          ),
        ),
      ),
      );
  }
}