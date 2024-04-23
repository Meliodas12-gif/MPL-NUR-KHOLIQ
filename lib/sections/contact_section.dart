import 'package:flutter/material.dart';
class ContactSection extends StatelessWidget {
  const ContactSection({super.key});
  @override
  Widget build(BuildContext context) {
    return contactSection();
  }
}

Column contactSection() {
  return Column(
    children: [
      contactDetail(),
    ],
  );
}
Card contactDetail() {
  return Card(
    margin: const EdgeInsets.all(20),
    color: Colors.white,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      child: const Column(
        children: [
          
          ListTile(
            iconColor: Colors.blueGrey,
            textColor: Colors.blueGrey,
            leading: Icon(Icons.phone_android),
            title: Text(
              "Nomor Handphone",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "+62 82243368803",
              style: TextStyle(color: Colors.black),
            ),
            dense: true,
          ),
          ListTile(
            iconColor: Colors.blueGrey,
            textColor: Colors.blueGrey,
            leading: Icon(Icons.mail),
            title: Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "kholiq120103@gmail.com",
              style: TextStyle(color: Colors.black),
            ),
            dense: true,
          ),
          ListTile(
            iconColor: Colors.blueGrey,
            textColor: Colors.blueGrey,
            leading: Icon(Icons.web_asset),
            title: Text(
              "Alamat",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Ciberem RT 02/02, Sumbang, Banyumas",
              style: TextStyle(color: Colors.black),
            ),
            dense: true,
          ),
        ],
      ),
    ),
  );
}
