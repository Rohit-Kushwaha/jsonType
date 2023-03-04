
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_type/model/type2.dart';

class Type2 extends StatefulWidget {
  const Type2({super.key});

  @override
  State<Type2> createState() => _Type2State();
}

class _Type2State extends State<Type2> {
  @override
  void initState() {
    _readType2JsonData();
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
                      future: _readType2JsonData(),
                      builder: (context, snapshot) {
                        var data = snapshot.data;
                        if (snapshot.hasData) {
                          return Container(
                            color: Colors.amber,
                            height: MediaQuery.of(context).size.width * .3,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text(data!.id.toString()),
                                Text(data.employee.name.toString()),
                                Text(data.employee.salary.toString()),
                                Text(data.employee.married.toString()),
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

  Future<Type2Model> _readType2JsonData() async {
    final jsonString = await rootBundle.loadString("assets/json/type2.json");
    final jsonResponse = type2ModelFromJson(jsonString);
    return jsonResponse;
  }
}
