
import 'package:echoalert/screens/profile.dart' show ProfileTab;
import 'package:echoalert/screens/profile_screen.dart';
import 'package:echoalert/services/setting_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedDrawerIndex = 0;

  final List<Widget> _tabs = const [ProfileTab(), SettingsScreen()];
  final List<String> _titles = ['My profile', 'Settings'];

  void _onSelectDrawerItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
      Navigator.pop(context);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF98211F),
        title: Text(
          _titles[_selectedDrawerIndex],
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      
      
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 40),
            children: [
              const DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.account_circle,
                    size: 80,
                    color: Colors.white,
                    
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person, color: Colors.white),
                title:  const Text(
                  'Profile',
                  style: TextStyle(color: Colors.white,
                  ),

                ),
              onTap: () => _onSelectDrawerItem(0),

              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => _onSelectDrawerItem(1),
              )
            ],
          ),
        ),
      ),
      body: _tabs[_selectedDrawerIndex],
    );
  }
}
