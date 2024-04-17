import 'package:flutter/material.dart';
import 'info_card.dart';

class HomePage extends StatelessWidget {
  static const String user = "Pathomphong Chaichuay";
  static const String email = "pangyesfam123@gmail.com";
  static const String phone = "0-123-456-789";
  static const String location = "Bangkok, Thailand";
  
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 80),
        child: Column(
          children: <Widget>[
            const CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/images/Pang.jpg'),
            ),
            _text(user, 18, FontWeight.bold),
            _text("User Information", 12, FontWeight.bold),
            _infoCard(user, Icons.supervised_user_circle_rounded),
            _infoCard(location, Icons.location_city),
            _infoCard(email, Icons.email),
            _infoCard(phone, Icons.phone),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _bottomNavItem('assets/images/Home.jpg'),
          _bottomNavItem('assets/images/Heart.jpg'),
          _bottomNavItem('assets/images/User.jpg'),
        ],
      ),
    );
  }

  Widget _text(String text, double fontSize, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.black,
        fontWeight: fontWeight,
        fontFamily: "Inter"
      ),
    );
  }

  Widget _infoCard(String text, IconData icon) => InfoCard(
    text: text, 
    icon: icon, 
    onPressed: () async {});
    BottomNavigationBarItem _bottomNavItem(String assetPath) => BottomNavigationBarItem(
      icon: Image.asset(
        assetPath, 
        width: 23, 
        height: 20
      ), 
    label: ''
  );
}
