import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../component/color.dart';
  
class Pdf extends StatelessWidget {
  const Pdf({super.key, required this.pdfPath});
  final String pdfPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      backgroundColor: AppColors.background,
      body: SizedBox.expand(child: SfPdfViewer.asset(pdfPath)),
    );
  } 
}