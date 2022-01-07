import 'package:flutter/material.dart';
import 'package:ukhaan_tukka/screens/constant.dart';
import 'package:ukhaan_tukka/screens/drawer.dart';
import 'package:ukhaan_tukka/screens/ukhaan.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "उखान टुक्का ",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      drawer: const DrawerSlide(),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    ...AtoZ.azdata.map((atozdata) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(atozdata,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            textColor: Colors.white,
                            tileColor: Colors.red.shade400,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UkhanTukka()),
                              );
                            },
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
                    }).toList()
                  ],
                )
              ],
            )),
      ),
    );
  }
}
