// ignore_for_file: unused_import, unnecessary_string_escapes, unused_element

// ignore: avoid_web_libraries_in_flutter
import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'fileManager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  TextEditingController nametec = TextEditingController();
  TextEditingController cptec = TextEditingController();
  TextEditingController emailtec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weclome to my first Aplication',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome User'),
          ),
          body: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextField(
                controller: nametec,
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                ),
                keyboardType: TextInputType.text,
              ),
              TextField(
                controller: cptec,
                decoration: InputDecoration(
                  hintText: "Cellphone Number",
                  labelText: "Cp Number",
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: emailtec,
                decoration: InputDecoration(
                  hintText: "Email Address",
                  labelText: "Email",
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var name = nametec.text;
                      var cp = cptec.text;
                      var email = emailtec.text;

                      var all = name + ',' + cp + ',' + email;

                      sh.writeToFile(all);

                      print("Name:" + name);
                      print("Name:" + cp);
                      print("Name:" + email);
                    },
                    child: Text('Submit'),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
