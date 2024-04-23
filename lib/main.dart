import 'package:flutter/material.dart';
import 'sections/about_section.dart';
import 'sections/contact_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Tab> tabs = [
    const Tab(
      text: "Tentang Saya",
      icon: Icon(
        Icons.account_box,
        color: Colors.white,
      ),
    ),
    const Tab(
      text: "Kontak",
      icon: Icon(
        Icons.account_box,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 196, 107, 72),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 223, 0, 0),
          ),
          toolbarHeight: 230,
          title: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: profilePhotos()),
                Center(child: profileName()),
                Center(child: nim()),
              ],
            ),
          ),
          bottom: TabBar(
            tabs: tabs,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(
          children: [
            const SingleChildScrollView(
              child: AboutSection(),
            ),
            SingleChildScrollView(
              child: contactSection(),
            ),
          ],
        ),
      ),
    );
  }

  Padding profileName() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "Nur Kholiq",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 48, 41, 41),
        ),
      ),
    );
  }

  Padding nim() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "STI202102234",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 48, 41, 41),
        ),
      ),
    );
  }

  Container profilePhotos() {
    return Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        width: 150,
        height: 150,
        alignment: Alignment.center,
        child: CircleAvatar(
          radius: 75,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(
            'img/k.jpg',
          ),
        ));
  }
}
