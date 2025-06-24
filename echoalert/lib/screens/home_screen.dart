import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:echoalert/components/custom_appbar.dart';
import 'package:echoalert/components/navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:pulsator/pulsator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance.collection('alerts').limit(1).snapshots().listen(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          final alert = snapshot.docs.first;
          _showPopupAlert(
            alert['name'],
            alert['houseNo'],
            alert['houseName'],
            alert['type'],
          );
        }
      },
    );
  }

  void _showPopupAlert(
    String name,
    String houseNo,
    String houseName,
    String type,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(Icons.emergency, size: 45),
        title: const Text('"Emergency Alert'),
        content: Text(
          "From: $name \n House No: $houseNo \n House Name: $houseName \n\n $type",
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("Dismiss"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Emergency help needed?',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Press the button',
                  style: TextStyle(fontSize: 12, color: Colors.brown),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Help will arrive soon",
                  style: TextStyle(fontSize: 12, color: Colors.brown),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/sos');
                  },
                  child: PulseIcon(
                    icon: Icons.sos,
                    pulseColor: Colors.red,
                    iconSize: 44.0,
                    pulseSize: 232.0,
                    innerSize: 65.0,
                  ),
                ),
        
                const SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.add_alert, size: 24),
                          SizedBox(width: 10),
                          const Text(
                            "Recent Alert Section",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(height: 10),
                          Icon(Icons.report_problem, size: 16),
                          SizedBox(width: 10),
                          const Text("Earthquake update"),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(height: 10),
                          Icon(Icons.push_pin, size: 16),
                          SizedBox(width: 10),
                          const Text("Location"),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(height: 10),
                          Icon(Icons.access_time_filled, size: 16),
                          SizedBox(width: 10),
                          const Text("Time"),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavBarScreen(currentIndex: 1),
    );
  }
}
