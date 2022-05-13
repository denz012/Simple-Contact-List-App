import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';

class sh {
  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> _getLocalFile() async {
    final localPath = await _localPath;
    return File("$localPath/userinfo.txt");
  }

  static Future<File> writeToFile(String info) async {
    File file = await _getLocalFile();
    return file.writeAsString(info);
  }
}
