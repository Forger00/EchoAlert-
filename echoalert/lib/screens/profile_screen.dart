import 'package:echoalert/components/custom_appbar.dart';
import 'package:echoalert/components/navbar_screen.dart';
import 'package:echoalert/services/profile_tab.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  get userName => null;
  
  String? get userPhone => null;
  
  String? get useremail => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Profile Details",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF830B2F),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 250,
                child: Text(
                  "Your Name, House Name, House Number will be visible when you send alert.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            //profile icon
            const SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person_2_outlined,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            //user details
            const _InputLabel(text: 'Name'),
            _buildInfoText(userName),

            const _InputLabel(text: 'Phone Number'),
            _buildInfoText(userPhone),

            const _InputLabel(text: 'Email'),
            _buildInfoText(useremail),
          ],
        ),
      ),
      bottomNavigationBar: NavBarScreen(currentIndex: 1),
    );
  }

  Widget _buildInfoText(String? data) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      margin: const EdgeInsets.only(left: 30, bottom: 10, right: 50),
      constraints: const BoxConstraints(maxWidth: 220),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        border: Border.all(color: Color(0xFFD9D9D9)),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(data ?? 'Loading...', style: const TextStyle(fontSize: 16)),
    );
  }
}
class _InputLabel extends StatelessWidget {
  final String text;
  const _InputLabel({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 6.0, left: 50.0),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}



