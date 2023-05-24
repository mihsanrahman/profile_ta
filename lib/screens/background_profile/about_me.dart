import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF146C94),
        title: Text('Tentang Saya'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/foto-profile.jpg'),
              ),
              SizedBox(height: 16),
              Text(
                'Muhammad Ihsan Rahman',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Mahasiswa Universitas Pakuan',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 24),
              Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deskripsi:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Mahasiswa Ilmu Komputer dari Universitas Pakuan semester 6. Memiliki ketertarikan besar dalam bidang Analis Data dan membangun Aplikasi Mobile dan Website. Mampu berpikir kritis, berkomunikasi baik dan bekerja dalam kelompok, kritis terhadap suatu masalah, problem solving dan memiliki inisiatif tinggi',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pendidikan:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '- SMA Kosgoro Kota Bogor : 2017-2020\n  Nilai rata-rata akhir : 85,53\n \n- Universitas Pakuan : 2020 - ....\n   IPK : 3,77',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Organisasi:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'IEEE Student Branch\nJabatan : Bendahara\n\nTugas:\n - Menyusun rencana anggaran\n - Melaksanakan pengelolaan keuangan dan pengadaan kebutuhan acara organisasi\n - Memfasilitasi kebutuhan pembiayaan program kerja dan roda organisasi\n - Menyusun Laporan dan Pembukuan) ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
