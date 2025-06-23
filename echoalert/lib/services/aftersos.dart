import 'package:flutter/material.dart';



  class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  final option = [index];
                  return ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(option['icon'], size: 40, color:Color(0xFF830B2F)),
                        SizedBox(height: 10),
                        Text(
                          option['label'],
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xFF830B2F)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add alert logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF830B2F),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text('SEND ALERT'),
            ),
          ],
        ),
      ),
      
    );
  }
}