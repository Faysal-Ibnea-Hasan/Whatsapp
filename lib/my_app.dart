import 'package:flutter/material.dart';
import 'package:whatsapp_settings/body_settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Settings',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
              iconSize: 28,
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            iconSize: 28,
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 25, 120, 66),
        ),
        body: const SettingsBody(),
      ),
    );
  }
}
