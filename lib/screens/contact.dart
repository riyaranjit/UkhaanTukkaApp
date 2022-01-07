// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final controllerto = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllermessage = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contact Us"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 3),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            height: 50,
                            width: double.infinity,
                            child: Row(
                              children: const [
                                Text(
                                  "हामी हौ -",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "ठुलो टेक्नोलोजी",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )),
                        Container(
                            height: 50,
                            width: double.infinity,
                            // color: Colors.blueGrey[50],
                            child: Row(
                              children: const [
                                Text(
                                  "ठेगाना  -",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 23,
                                ),
                                Text(
                                  "पोखरा, नेपाल ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )),
                        Container(
                            height: 50,
                            width: double.infinity,
                            // color: Colors.blueGrey[50],
                            child: Row(
                              children: const [
                                Text(
                                  "इमेल   -",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 29,
                                ),
                                Text(
                                  "thulotechnology@gmail.com",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )),
                        Container(
                            height: 50,
                            width: double.infinity,
                            // color: Colors.blueGrey[50],
                            child: Row(
                              children: const [
                                Text(
                                  "सम्पर्क  -",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "43253689, 9887366745",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                buildTextField(
                    title: "Message",
                    controller: controllermessage,
                    maxLines: 5),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50)),
                    onPressed: () =>
                        launchEmail(message: controllermessage.text),
                    child: Text("SEND"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future launchEmail({
  required String message,
  String? toEmail,
  String? subject,
}) async {
  final url =
      'mailto:$toEmail?subject=${Uri.encodeFull(subject!)}&body=${Uri.encodeFull(message)}';

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Widget buildTextField({
  required String title,
  required TextEditingController controller,
  int maxLines = 1,
}) =>
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(width: 15),
            TextField(
              controller: controller,
              maxLines: maxLines,
              decoration: InputDecoration(border: OutlineInputBorder()),
            )
          ],
        ),
      ),
    );
