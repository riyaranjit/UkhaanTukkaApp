import 'package:flutter/material.dart';
import 'package:ukhaan_tukka/screens/ukhanData.dart';

class UkhanTukka extends StatefulWidget {
  const UkhanTukka({Key? key}) : super(key: key);

  @override
  _UkhanTukkaState createState() => _UkhanTukkaState();
}

class _UkhanTukkaState extends State<UkhanTukka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('नेपाली  उखान र  टुक्का हरु'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'क\n बाट सुरु हुने उखान र टुक्काहरु ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Divider(height: 2, thickness: 2),
                const SizedBox(
                  height: 20,
                ),
                ...Ukhan.ukhans.map((ukhan) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          ukhan,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        tileColor: Colors.red.shade400,
                      ),
                    ],
                  );
                }).toList(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
