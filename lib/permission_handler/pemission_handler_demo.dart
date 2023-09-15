import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerDemo extends StatefulWidget {
  const PermissionHandlerDemo({super.key});

  @override
  State<PermissionHandlerDemo> createState() => _PermissionHandlerDemoState();
}

class _PermissionHandlerDemoState extends State<PermissionHandlerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Permission Handler"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.mic),
              ),
              title: const Text("Mic Permission"),
              subtitle: const Text("Status of Permissions"),
              onTap: () async {
                PermissionStatus micPermission =
                    await Permission.microphone.request();
                if (micPermission == PermissionStatus.granted) {
                  // permission is already granted that why do not perform any task
                }
                if (micPermission == PermissionStatus.denied) {
                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("MicroPhone Permission is recommonded")));
                }
                if (micPermission == PermissionStatus.permanentlyDenied) {
                  openAppSettings();
                }
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.camera),
              ),
              title: const Text("Camera Permission"),
              subtitle: const Text("Status of Permissions"),
              onTap: () async {
                PermissionStatus cameraPermission =
                    await Permission.camera.request();
                if (cameraPermission == PermissionStatus.granted) {
                  // permission is already granted that why do not perform any task
                }
                if (cameraPermission == PermissionStatus.denied) {
                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Camera Permission is recommonded")));
                }
                if (cameraPermission == PermissionStatus.permanentlyDenied) {
                  openAppSettings();
                }
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.folder),
              ),
              title: const Text("Storage Permission"),
              subtitle: const Text("Status of Permissions"),
              onTap: () async {
                PermissionStatus storagePermission =
                    await Permission.storage.request();
                if (storagePermission == PermissionStatus.granted) {
                  // permission is already granted that why do not perform any task
                }
                if (storagePermission == PermissionStatus.denied) {
                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Storage Permission is recommonded")));
                }
                if (storagePermission == PermissionStatus.permanentlyDenied) {
                  openAppSettings();
                }
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.app_registration),
              ),
              title: const Text("All Permission"),
              subtitle: const Text("Status of Permissions"),
              onTap: () async {
                Map<Permission, PermissionStatus> status = await [
                  Permission.camera,
                  Permission.microphone,
                  Permission.manageExternalStorage
                ].request();
                log(status.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}
