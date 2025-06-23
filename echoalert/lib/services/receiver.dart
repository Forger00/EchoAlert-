import 'package:flutter/material.dart';
import 'package:echoalert/components/navbar_screen.dart';
import 'package:echoalert/components/custom_appbar.dart';

class EmergencyAlertCard extends StatefulWidget {
  const EmergencyAlertCard({super.key});

  @override
  State<EmergencyAlertCard> createState() => _EmergencyAlertCardState();
}

class _EmergencyAlertCardState extends State<EmergencyAlertCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
<<<<<<< HEAD
      backgroundColor: const Color(0xFFD9D9D9),
      body: Center(
        child: Stack(
          children: [
=======
      backgroundColor: const Color(0xFFD9D9D9), 
      body: Center(
        child: Stack(
          children: [
            
>>>>>>> 21ec90811a35c664adc9eacfe1ce7aaf9d34366b
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
<<<<<<< HEAD
=======
                
>>>>>>> 21ec90811a35c664adc9eacfe1ce7aaf9d34366b
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
<<<<<<< HEAD
                  Icon(
                    Icons.warning_amber_rounded,

                    size: 80,
                    color: Color(0xFF830B2F),
                  ),
=======
                  Icon(Icons.warning_amber_rounded,
                  
                      size: 80, color: Color(0xFF830B2F)),
>>>>>>> 21ec90811a35c664adc9eacfe1ce7aaf9d34366b
                  SizedBox(height: 10),
                  Text(
                    "Emergency Alert!",
                    style: TextStyle(
                      color: Color(0xFF830B2F),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 60),
<<<<<<< HEAD
                  Text("From: John Doe", style: TextStyle(fontSize: 16)),
                  Text("House no.: 2269", style: TextStyle(fontSize: 16)),
                  Text(
                    "House name: Doe Residence",
                    style: TextStyle(fontSize: 16),
                  ),
=======
                  Text("From: John Doe",
                      style: TextStyle(fontSize: 16)),
                  Text("House no.: 2269",
                      style: TextStyle(fontSize: 16)),
                  Text("House name: Doe Residence",
                      style: TextStyle(fontSize: 16)),
>>>>>>> 21ec90811a35c664adc9eacfe1ce7aaf9d34366b
                  SizedBox(height: 20),
                  Text(
                    "!!Fire!!",
                    style: TextStyle(
                      color: Color(0xFF830B2F),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),

<<<<<<< HEAD
=======
            
>>>>>>> 21ec90811a35c664adc9eacfe1ce7aaf9d34366b
            Positioned(
              right: 50,
              top: 10,
              child: GestureDetector(
                onTap: () {
<<<<<<< HEAD
                  Navigator.pop(context);
=======
                  Navigator.pop(context); 
>>>>>>> 21ec90811a35c664adc9eacfe1ce7aaf9d34366b
                },
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.close, size: 14, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
<<<<<<< HEAD
      bottomNavigationBar: NavBarScreen(currentIndex: 1),
=======
       bottomNavigationBar: NavBarScreen(currentIndex: 1),
>>>>>>> 21ec90811a35c664adc9eacfe1ce7aaf9d34366b
    );
  }
}
