import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';
import 'dart:io';

class NewServiceApplicationDetailsAttachmentsScreen extends StatefulWidget {
  const NewServiceApplicationDetailsAttachmentsScreen({super.key});

  @override
  State<NewServiceApplicationDetailsAttachmentsScreen> createState() =>
      _NewServiceApplicationDetailsAttachmentsScreenState();
}

class _NewServiceApplicationDetailsAttachmentsScreenState
    extends State<NewServiceApplicationDetailsAttachmentsScreen> {
  // String? _filePath; // Store the selected file path

  // Future<void> _pickFile() async {
  //   try {
  //     // Open the file picker
  //     FilePickerResult? result = await FilePicker.platform.pickFiles();

  //     if (result != null && result.files.isNotEmpty) {
  //       setState(() {
  //         _filePath = result.files.single.path;
  //       });
  //     } else {
  //       // User canceled the picker
  //       setState(() {
  //         _filePath = null;
  //       });
  //     }
  //   } catch (e) {
  //     print("File picker error: $e");
  //   }
  // }

  String? _proofOfOwnershipPath;
  String? _proofOfBillingPath;
  String? _barangayCertificatePath;

  Future<void> _pickProofOfOwnership() async {
    try {
      //Open the file picker
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null && result.files.isNotEmpty) {
        setState(() {
          _proofOfOwnershipPath = result.files.single.path;
        });
      } else {
        // User canceled the picker
        setState(() {
          _proofOfOwnershipPath = null;
        });
      }
    } catch (e) {
      print("ERROR: $e");
    }
  }

  Future<void> _pickProofOfBillingPath() async {
    try {
      //Open the file picker
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null && result.files.isNotEmpty) {
        setState(() {
          _proofOfBillingPath = result.files.single.path;
        });
      } else {
        // User canceled the picker
        setState(() {
          _proofOfBillingPath = null;
        });
      }
    } catch (e) {
      print("ERROR: $e");
    }
  }

  Future<void> _pickBarangayCertificatePath() async {
    try {
      //Open the file picker
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null && result.files.isNotEmpty) {
        setState(() {
          _barangayCertificatePath = result.files.single.path;
        });
      } else {
        // User canceled the picker
        setState(() {
          _barangayCertificatePath = null;
        });
      }
    } catch (e) {
      print("ERROR: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Service Application')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text("Proof of Ownership"),
            // ListTile(
            //     leading: const CircleAvatar(child: Text('A')),
            //     title: _proofOfOwnershipPath != null
            //         ? const Text("")
            //         : const Text('Proof of Ownership'),
            //     subtitle: const Text("Please attach a file"),
            //     trailing: TextButton(
            //       onPressed: () {},
            //       child: const Icon(
            //         Icons.file_upload_rounded,
            //         size: 30,
            //       ),
            //     )),
            const Text("Proof of Ownership"),
            ListTile(
                contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                tileColor: Colors.grey[100],
                leading: const Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('lib/common/image/gallery.png')),
                title: _getTitle(_proofOfOwnershipPath),
                // proofOfOwnershipPath != null
                //     ?  ( String basename = basename)
                //     : const Text('No file selected.'),
                subtitle: _proofOfOwnershipPath != null
                    ? Text((File(_proofOfOwnershipPath!).lengthSync() /
                            1000 /
                            1000)
                        .toString())
                    : const Text("Please attach a file"),
                trailing: IconButton.outlined(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.blue)),
                    color: Colors.blue,
                    icon: const Icon(Icons.file_upload_rounded),
                    onPressed: _pickProofOfOwnership)),
            const Text("Proof of Billing"),
            ListTile(
                contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                tileColor: Colors.grey[100],
                leading: const Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('lib/common/image/gallery.png')),
                title: _proofOfBillingPath != null
                    ? const Text("")
                    : const Text('No file selected.'),
                subtitle: const Text("Please attach a file"),
                trailing: IconButton.outlined(
                  icon: const Icon(Icons.file_upload_rounded),
                  onPressed: () {},
                )),
            const Text("Barangay Certificate"),
            ListTile(
                contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                tileColor: Colors.grey[100],
                leading: const Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('lib/common/image/gallery.png')),
                title: _barangayCertificatePath != null
                    ? const Text("")
                    : const Text('No file selected.'),
                subtitle: const Text("Please attach a file"),
                trailing: IconButton.outlined(
                  icon: const Icon(Icons.file_upload_rounded),
                  onPressed: () {},
                )),
            // const Text("Proof of Billing"),
            // ListTile(
            //   leading: const CircleAvatar(child: Text('A')),
            //   title: const Text('Headline'),
            //   subtitle: const Text("Supporting text"),
            //   trailing: const Icon(Icons.favorite_rounded),
            // ),
            // Text("Proof of Billing"),
            // ListTile(
            //   leading: CircleAvatar(child: Text('A')),
            //   title: Text('Headline'),
            //   subtitle: Text("Supporting text"),
            //   trailing: Icon(Icons.favorite_rounded),
            // ),
            // Text("Barangay Certificate"),
            // Container(
            //   color: Colors.white,
            //   height: 90,
            //   width: MediaQuery.of(context).size.width,
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text("data"),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text("Title"),
            //               Text("Subtitle"),
            //             ],
            //           ),
            //           TextButton(
            //             onPressed: () {},
            //             child: const Icon(
            //               Icons.file_upload_rounded,
            //               size: 30,
            //             ),
            //           )
            //         ],
            //       )
            //     ],
            //   ),
            // )
            // ElevatedButton(
            //   onPressed: _pickFile,
            //   child: const Text('Pick a File'),
            // ),
            // const SizedBox(height: 20),
            // _filePath != null
            //     ? Column(
            //         children: [
            //           const Text('Selected File:',
            //               style: TextStyle(fontWeight: FontWeight.bold)),
            //           const SizedBox(height: 10),
            //           Text(
            //             _filePath!,
            //             style: const TextStyle(color: Colors.blue),
            //           ),
            //           const SizedBox(height: 20),
            //           ElevatedButton(
            //             onPressed: () {
            //               if (_filePath != null) {
            //                 File file = File(_filePath!);
            //                 // Add your file handling logic here
            //                 print("File size: ${file.lengthSync()} bytes");
            //               }
            //             },
            //             child: const Text('Handle File'),
            //           ),
            //         ],
            //       )
            //     : const Text('No file selected.'),
          ],
        ),
      ),
    );
  }
}

Widget _getTitle(String? path) {
  String title = "";

  if (path != null) {
    File file = File(path);
    String filename = basename(file.path);
  }

  return Text(title);
}
