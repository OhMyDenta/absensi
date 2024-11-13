// ignore_for_file: use_key_in_widget_constructors, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

import '../../../../component/color.dart';


class UploadFileCutiWidget extends StatefulWidget {
  @override
  _UploadFileCutiWidgetState createState() => _UploadFileCutiWidgetState();
}

class _UploadFileCutiWidgetState extends State<UploadFileCutiWidget> {
  Future<void> _pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      var file = result.files.single;
      print("Image selected: ${file.name}");
    }
  }

  Future<void> _pickPdf() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null) {
      var file = result.files.single;
      print("PDF selected: ${file.name}");
    }
  }

  void _showFileOptions() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text('Upload Gambar'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage();
                },
              ),
              ListTile(
                leading: const Icon(Icons.picture_as_pdf),
                title: const Text('Upload PDF'),
                onTap: () {
                  Navigator.pop(context);
                  _pickPdf();
                },
              ),
              ListTile(
                leading: const Icon(Icons.cancel),
                title: const Text('Batalkan'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("File Pendukung", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              icon: const Icon(Icons.upload_file_rounded, color: AppColors.secondary),
              label: const Text("Upload File", style: TextStyle(color: AppColors.secondary)),
              onPressed: _showFileOptions,
            ),
          ],
        ),
      ),
    );
  }
}
