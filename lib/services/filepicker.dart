import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Filepicker {
  static List<File> files = [];
  pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      files.add(File(result.files.first.path!));
    }
  }

  getfiles() {
    return files;
  }
}
