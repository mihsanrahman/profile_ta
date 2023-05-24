import 'package:flutter/material.dart';

class ContactMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF146C94),
        title: Text('Contact Me'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'mihsanrahman19@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    // Aksi ketika Email di-tap
                  },
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1000.0,
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    'Telepon',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    '+62-812-9401-5181',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    // Aksi ketika Telepon di-tap
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
