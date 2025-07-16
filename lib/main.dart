import 'package:flutter/material.dart';
import 'package:ussd_advanced/ussd_advanced.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('USSD Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              try {
                final result = await UssdAdvanced.sendAdvancedUssd(
                  code: "#123#44172124360#",
                  subscriptionId: 1,
                );
                print("USSD result: $result");
              } catch (e) {
                print("Error: $e");
              }
            },
            child: const Text('Send USSD'),
          ),
        ),
      ),
    );
  }
}
