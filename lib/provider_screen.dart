import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_settings/providers/counter_provider.dart';
import 'package:whatsapp_settings/providers/user_provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    String userName = context.watch<UserProvider>().userName;
    String additionalText = "You are";
    return Builder(builder: (context) {
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
              Navigator.pushNamed(context, '/home');
            },
          ),
          title: const Text(
            'Provider',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 25, 120, 66),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Text('$additionalText $userName'),
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (ctx) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: controller,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context
                                  .read<UserProvider>()
                                  .changeUserName(newUserName: controller.text);
                              FocusManager.instance.primaryFocus?.unfocus();
                              controller.clear();
                              Navigator.pop(context);
                            },
                            child: const Text('Save'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text('Click Here'),
              ),
              Card(
                child: Text(
                  context.watch<CounterProvider>().value.toString(),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterProvider>().incrementCounter();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterProvider>().decrementCounter();
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      );
    });
  }
}
