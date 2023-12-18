import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

Future<void> pushScreenNavigation({
  required Widget widget,
  required BuildContext context,
}) {
  return Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ),
  );
}

Future<File?> pickImage() async {
  File? pickerImage;
  try {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      pickerImage = File(image.path);
    }
  } on PlatformException catch (e) {
    debugPrint(e.toString());
  }
  return pickerImage;
}
