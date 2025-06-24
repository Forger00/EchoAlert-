import 'package:echoalert/components/custom_appbar.dart';
import 'package:echoalert/components/navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

void _callEmergency(String number) async {
  await FlutterPhoneDirectCaller.callNumber(number);
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Text(
                "Emergency Contact Number",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              GestureDetector(
                onTap: () => _callEmergency("100"),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/police.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Nepal Police - 100",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              GestureDetector(
                onTap: () => _callEmergency("101"),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/fire_brigade.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Fire Brigade - 101",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              GestureDetector(
                onTap: () => _callEmergency("102"),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/ambulance.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Ambulance - 102",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              GestureDetector(
                onTap: () => _callEmergency("104"),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/childern.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Child Helpline - 104",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              GestureDetector(
                onTap: () => _callEmergency("1145"),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/women.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 15),

                    Text(
                      "Women Helpline - 1145",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBarScreen(currentIndex: 3),
    );
  }
}
