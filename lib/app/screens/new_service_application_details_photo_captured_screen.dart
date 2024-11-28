import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mapstudio/app/screens/new_service_application_details_attachments_screen.dart';
import 'package:mapstudio/app/screens/new_service_application_details_photo_screen.dart';

class NewServiceApplicationDetailsPhotoCapturedScreen extends StatelessWidget {
  final String imagePath;
  const NewServiceApplicationDetailsPhotoCapturedScreen(
      {super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('New Service Application')),
        // The image is stored as a file on the device. Use the `Image.file`
        // constructor with the given path to display the image.
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              SizedBox(child: Image.file(File(imagePath))),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Retake"),
                  )),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NewServiceApplicationDetailsAttachmentsScreen()),
                        );
                      },
                      child: const Text("Proceed",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  )
                ],
              ),
              // Expanded(
              //     child: Align(
              //   alignment: Alignment.bottomCenter,
              //   child: SizedBox(
              //     width: MediaQuery.of(context).size.width,
              //     child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //           backgroundColor: Colors.blue,
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(16))),
              //       onPressed: () async {},
              //       child: const Text("Proceed",
              //           style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 18,
              //               letterSpacing: 3)),
              //     ),
              //   ),
              // ))
            ],
          ),
        )
        // Container(
        //     decoration: ,
        //     padding: EdgeInsets.all(50), child: Image.file(File(imagePath))),
        );
  }
}
