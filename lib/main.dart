import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Multi-Page Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/pertama': (context) => halamanpertama(),
        '/kedua': (context) => halamankedua(),
        '/ketiga': (context) => halamanketiga(),
        '/keempat': (context) => halamankeempat(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to halaman pertama'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => halamanpertama()));
          },
        ),
      ),
    );
  }
}

class halamanpertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('halaman pertama')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to halaman kedua'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => halamankedua()));
          },
        ),
      ),
    );
  }
}

class halamankedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('halaman kedua')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to halaman ketiga'),
          onPressed: () {
            Navigator.pushNamed(context, '/ketiga');
          },
        ),
      ),
    );
  }
}

class halamanketiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('halaman ketiga')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to halaman keempat'),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/keempat');
          },
        ),
      ),
    );
  }
}

class halamankeempat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('halaman keempat')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to kembali ke halaman kedua'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
