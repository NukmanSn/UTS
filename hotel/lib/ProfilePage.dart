import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel/DashboardPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PROFIL',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("PROFIL"),
        backgroundColor: Colors.blueGrey,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/profil.jpg'),
            ),
            const SizedBox(height: 20),
            itemProfile('Nama', 'Nukman Solikhudin', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('NPM', '21670052', CupertinoIcons.tags),
            const SizedBox(height: 10),
            itemProfile('Telepon', '08561234', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Email', 'Nukman@gmail.com', CupertinoIcons.mail),
            ElevatedButton(
  onPressed: () {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const DashboardPage(), // Halaman dashboard
      ),
    );
  },
  child: const Text('kembali'),
),
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.deepPurpleAccent.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }
}