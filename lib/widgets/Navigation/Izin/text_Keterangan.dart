
// ignore_for_file: file_names

import 'package:alterindo/component/color.dart';
import 'package:flutter/material.dart';

class TextKeterangan extends StatefulWidget {
  const TextKeterangan({super.key});

  @override
  State<TextKeterangan> createState() => _TextKeteranganState();
}

class _TextKeteranganState extends State<TextKeterangan> {
  final TextEditingController _keterangan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Keterangan',
                style:  TextStyle(color: Colors.black, fontSize: 14)),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(12)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: _keterangan,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        hintText: 'Saya Mengajukan Izin... \nDikarenakan...'),
                    minLines: 1,
                    maxLines: null,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
