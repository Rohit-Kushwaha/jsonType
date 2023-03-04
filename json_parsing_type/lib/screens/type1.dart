import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_type/model/type1.dart';

class Type1 extends StatefulWidget {
  const Type1({super.key});

  @override
  State<Type1> createState() => _Type1State();
}

class _Type1State extends State<Type1> {
  @override
  void initState() {
    _readType1JsonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * .3,
                  child: FutureBuilder(
                      future: _readType1JsonData(),
                      builder: (context, snapshot) {
                        var data = snapshot.data;
                        if (snapshot.hasData) {
                          return Container(
                            color: Colors.amber,
                            height: MediaQuery.of(context).size.width * .3,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text(data!.firstName.toString()),
                                Text(data.lastName.toString()),
                                Text(data.age.toString()),
                              ],
                            ),
                          );
                        } else {
                          return const Center(
                            child: Text("Something went wrong"),
                          );
                        }
                      }),
                ),
              ]),
        ),
      ),
    );
  }

  Future<Type1Model> _readType1JsonData() async {
    final jsonString = await rootBundle.loadString("assets/json/type1.json");
    final jsonResponse = type1ModelFromJson(jsonString);
    return jsonResponse;
  }
}
