import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MultiImageSelect extends StatefulWidget {
  const MultiImageSelect({super.key});

  @override
  State<MultiImageSelect> createState() => _MultiImageSelectState();
}

class _MultiImageSelectState extends State<MultiImageSelect> {
  final ImagePicker pickImages = ImagePicker();
  List<File>? files = [];

  Future<void> selectedImagesFromGallary() async {
    List<XFile> xFile = await pickImages.pickMultiImage(
      imageQuality: 100,
    );
    for (var element in xFile) {
      files!.add(File(element.path));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ElevatedButton(
          onPressed: () async {
            await selectedImagesFromGallary();
          },
          child: const Text("Pick Images"),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                itemCount: files!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 3,
                ),
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    backgroundImage: FileImage(files![index]),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
