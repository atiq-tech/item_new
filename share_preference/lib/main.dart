import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _textEditingController = TextEditingController();

  String data = "No data";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 241, 218, 149),
          centerTitle: true,
          title: Text(
            'Share Preference App',
            style: myStyle(25, Colors.black, FontWeight.w800),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(width: 4, color: Colors.greenAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(width: 4, color: Colors.greenAccent),
                      ),
                      hintText: "Enter something your choose",
                      hintStyle: myStyle(18, Colors.black, FontWeight.w600),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 243, 200, 184),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                            )),
                        onPressed: () async {
                          SharedPreferences ShprncIntnc1 =
                              await SharedPreferences.getInstance();
                          bool dataSaved = await ShprncIntnc1.setString(
                              "settings", _textEditingController.text);
                          if (dataSaved) {
                            print("Successfully get data");
                          } else {
                            print("Not found data");
                          }
                        },
                        child: Text(
                          "Save data",
                          style: myStyle(20, Color.fromARGB(255, 7, 7, 7),
                              FontWeight.w600),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 236, 189, 172),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                            )),
                        onPressed: () async {
                          SharedPreferences ShprncIntnc2 =
                              await SharedPreferences.getInstance();
                          String? Shpdata = ShprncIntnc2.getString("settings");
                          setState(() {
                            data = Shpdata ?? "Failed data";
                          });
                        },
                        child: Text(
                          "Show data",
                          style: myStyle(20, Color.fromARGB(255, 7, 7, 7),
                              FontWeight.w600),
                        )),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 236, 189, 172),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                        )),
                    onPressed: () async {
                      SharedPreferences ShprncIntnc2 =
                          await SharedPreferences.getInstance();
                      String? Shpdata = ShprncIntnc2.getString("settings");
                      setState(() {
                        // ShprncIntnc2.setString("settings", "");
                        ShprncIntnc2.clear();
                        data = "";
                      });
                    },
                    child: Text(
                      "Delete data",
                      style: myStyle(
                          20, Color.fromARGB(255, 7, 7, 7), FontWeight.w600),
                    )),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5, 10),
                            color: Color.fromARGB(221, 3, 3, 3),
                            spreadRadius: 10,
                            blurRadius: 10)
                      ],
                      border: Border.all(
                          color: Color.fromARGB(255, 226, 4, 208), width: 4),
                      color: Color.fromARGB(255, 231, 243, 126),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )),
                  child: Center(
                    child: Text(
                      "$data",
                      style: myStyle(
                          30, Color.fromARGB(255, 7, 7, 7), FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

myStyle(double fsize, Color color, [FontWeight? fw]) {
  return GoogleFonts.lato(fontSize: fsize, color: color, fontWeight: fw);
}
