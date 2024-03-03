import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 10),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/logo.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, bottom: 30),
                    child: Text(
                      'Gapura UB',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFFFAF0E6),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'GAPURA Mobile adalah sebuah aplikasi sistem informasi layanan terpadu yang memberikan kemudahan akses akan informasi dan layanan bagi seluruh pengguna layanan Sistem Informasi Universitas Brawijaya yang menggunakan perangkat mobile.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'ID Card',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              trailing: Icon(Icons.credit_card_outlined),
              onTap: () {
                return;
              },
            ),
            ListTile(
              title: Text(
                'Kode QR',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              trailing: Icon(Icons.qr_code),
              onTap: () {
                return;
              },
            ),
            ListTile(
              title: Text(
                'Cek Update Aplikasi',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              trailing: Icon(Icons.update),
              onTap: () {
                return;
              },
            ),
            ListTile(
              title: Text(
                'Keluar',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              trailing: Icon(Icons.exit_to_app),
              onTap: () {
                return;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 185),
              child: ListTile(
                title: Text(
                  'Gapura UB Versi: YNTKTS',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
      body: Center(
        child: Text('Some text here!'),
      ),
    );
  }
}