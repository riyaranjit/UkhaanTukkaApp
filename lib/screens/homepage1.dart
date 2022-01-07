import 'package:flutter/material.dart';
import 'package:ukhaan_tukka/screens/constant.dart';
import 'package:ukhaan_tukka/screens/drawer.dart';
import 'package:ukhaan_tukka/screens/ukhaan.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
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
          child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              "https://png.pngtree.com/background/20210710/original/pngtree-app-mobile-interface-design-picture-image_1038367.jpg"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: ListData.allData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.red[400],
                      child: ListTile(
                        // tileColor: Colors.red[400],
                        title: Text(
                          '${ListData.allData[index].startfrom} ',
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(
                          '${ListData.allData[index].startfrom} बाट आउने उखान र टुक्काहरु ',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UkhanTukka(
                                      title: ListData.allData[index].startfrom,
                                      datas: ListData.allData[index].azdata)));
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              }),
        ),
      )),
    );
  }
}
