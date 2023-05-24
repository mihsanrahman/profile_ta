import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';
import '../../utils/asset_locations.dart';
import '../../utils/dana_clone_theme.dart';
import 'gap.dart';
import 'image_loop_BP.dart';
import 'image_loop_ML.dart';
import 'image_loop_slider/image_loop_slider_widget.dart';

class CertificationPage extends StatelessWidget {
  const CertificationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text("Sertifikat"),
        centerTitle: true,
        backgroundColor: Color(0xFF146C94),
        systemOverlayStyle: const SystemUiOverlayStyle(
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sertifikat Data Science',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            const ImageLoopSliderWidget(),
            SizedBox(height: 50),
            Text(
              'Sertifikat Bahasa Pemrograman',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            const ImageLoopBP(),
            SizedBox(height: 50),
            Text(
              'Sertifikat Machine Learning',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            const ImageLoopML(),
          ],
        ),
      ),
    );
  }
}
