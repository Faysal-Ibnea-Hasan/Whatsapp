import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_settings/body_settings.dart';
import 'package:whatsapp_settings/provider_screen.dart';
import 'package:whatsapp_settings/providers/counter_provider.dart';
import 'package:whatsapp_settings/providers/user_provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/provider': (context) => const ProviderScreen(),
          '/home': (context) => const MyApp()
        },
        debugShowCheckedModeBanner: false,
        title: 'Settings',
        home: Builder(builder: (context) {
          return Scaffold(
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
                    print(context);
                    Navigator.pushNamed(context, '/provider');
                  }),
              title: const Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: const Color.fromARGB(255, 25, 120, 66),
            ),
            body: const SettingsBody(),
          );
        }),
      ),
    );
  }
}
