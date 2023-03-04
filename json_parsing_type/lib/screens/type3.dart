
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_type/model/type3.dart';

class Type3 extends StatefulWidget {
  const Type3({super.key});

  @override
  State<Type3> createState() => _Type3State();
}

class _Type3State extends State<Type3> {
  @override
  void initState() {
    _readType3JsonData();
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
                      future: _readType3JsonData(),
                      builder: (context, snapshot) {
                        var data = snapshot.data;
                        if (snapshot.hasData) {
                          return Container(
                            color: Colors.amber,
                            height: MediaQuery.of(context).size.width * .3,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text(data![0]),
                                Text(data![1]),
                                Text(data![2]),
                              
                                // Text(data.age.toString()),
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

  Future _readType3JsonData() async {
    final jsonString = await rootBundle.loadString("assets/json/type3.json");
    final jsonResponse = type3ModelFromJson(jsonString);
    return jsonResponse;
  }
}
