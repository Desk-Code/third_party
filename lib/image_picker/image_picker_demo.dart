import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({super.key});

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  final ImagePicker pickImageData = ImagePicker();
  File? file;

  Future<void> selectImageFromGallary() async {
    XFile? xFile = await pickImageData.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
    file = xFile != null ? File(xFile.path) : null;
    setState(() {});
  }

  Future<void> selectImageFromCamera() async {
    XFile? xFile = await pickImageData.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
    );
    file = xFile != null ? File(xFile.path) : null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: file != null
                    ? FileImage(file!)
                    : const NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1689564003745-946f35267ffe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                      ) as ImageProvider,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () async {
                  await selectImageFromGallary();
                },
                child: const Text("Upload from Galary"),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () async {
                  await selectImageFromCamera();
                },
                child: const Text("Take Picture"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
