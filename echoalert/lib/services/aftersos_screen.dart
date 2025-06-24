import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:echoalert/components/custom_appbar.dart';
import 'package:echoalert/components/navbar_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AftersosScreen extends StatefulWidget {
  const AftersosScreen({super.key});

  @override
  State<AftersosScreen> createState() => _AftersosScreenState();
}

void _sendAlert(String type) async {
  final user = FirebaseAuth.instance.currentUser;
  final userInfo = await FirebaseFirestore.instance
      .collection('users')
      .doc(user!.uid)
      .get();

  final name = userInfo['name'];
  final houseNo = userInfo['houseNo'];
  final houseName = userInfo['houseName'];

  await FirebaseFirestore.instance.collection('alerts').add({
    'senderId': user.uid,
    'type': type,
    'name': name,
    'houseNo': houseNo,
    'houseName': houseName,
  });
}

class _AftersosScreenState extends State<AftersosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "What Happened",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
                children: [
                  GestureDetector(
                    onTap: () => _sendAlert("Fire Emergency"),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF830B2F)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            size: 46,
                            color: Color(0xFF830B2F),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Fire Emergency",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _sendAlert("Medical Emergency"),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF830B2F)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.health_and_safety,
                            size: 46,
                            color: Color(0xFF830B2F),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Medical Emergency",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _sendAlert("Theft"),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_police,
                            size: 46,
                            color: Color(0xFF830B2F),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Theft",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _sendAlert("Others"),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF830B2F)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            size: 46,
                            color: Color(0xFF830B2F),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Others",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBarScreen(currentIndex: 0),
    );
  }
}
