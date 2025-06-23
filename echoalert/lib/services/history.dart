import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert History',
      home: AlertHistoryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AlertHistoryScreen extends StatelessWidget {
  final List<Map<String, String>> alerts = [
    {
      'type': 'Fire alert',
      'icon': '🔥',
      'houseNo': '2239',
      'houseName': 'abc Gurung',
      'date': '2025/10/09',
    },
    {
      'type': 'Theft alert',
      'icon': '🚨',
      'houseNo': '2260',
      'houseName': 'abc Basnet',
      'date': '2025/09/09',
    },
    {
      'type': 'Fire alert',
      'icon': '🔥',
      'houseNo': '22387',
      'houseName': 'abc Shrepa',
      'date': '2025/07/24',
    },
    {
      'type': 'Fire alert',
      'icon': '🔥',
      'houseNo': '1139',
      'houseName': 'abc Shrestha',
      'date': '2025/06/02',
    },
    {
      'type': 'Fire alert',
      'icon': '🔥',
      'houseNo': '2039',
      'houseName': 'abc Basnet',
      'date': '2025/05/31',
    },
    {
      'type': 'Theft alert',
      'icon': '🚨',
      'houseNo': '1093',
      'houseName': 'abc Sayami',
      'date': '2025/01/09',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Colors.red.shade700,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: alerts.length,
        itemBuilder: (context, index) {
          final alert = alerts[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Text(
                alert['icon']!,
                style: TextStyle(fontSize: 32),
              ),
              title: Text(
                alert['type']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sent from house no.: ${alert['houseNo']}'),
                  Text('House name: ${alert['houseName']}'),
                  Text('Date: ${alert['date']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}