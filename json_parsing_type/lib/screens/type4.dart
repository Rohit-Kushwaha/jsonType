import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_type/model/type4.dart';

class Type4 extends StatefulWidget {
  const Type4({super.key});

  @override
  State<Type4> createState() => _Type4State();
}

class _Type4State extends State<Type4> {
  @override
  void initState() {
    _readType4JsonData();
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
                      future: _readType4JsonData(),
                      builder: (context, snapshot) {
                        var data = snapshot.data;
                        if (snapshot.hasData && data!.isNotEmpty) {
                          return Container(
                            color: Colors.amber,
                            height: MediaQuery.of(context).size.width * .3,
                            width: double.infinity,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.width * .3,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: data.length,
                                    itemBuilder: (context, index) {
                                    return Container(
                                      color: Colors.amber,
                                      child: Column(
                                        children: [
                                          Text(data[index].name),
                                          Text(data[index].age.toString()),
                                        ],
                                      ),
                                    );
                                  }),
                                )

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

  Future<List<Type4Model>> _readType4JsonData() async {
    final jsonString = await rootBundle.loadString("assets/json/type4.json");
    final jsonResponse = type4ModelFromJson(jsonString);
    return jsonResponse;
  }
}
