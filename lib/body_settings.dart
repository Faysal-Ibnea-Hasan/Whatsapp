import 'package:flutter/material.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});
  final double containerHeight = 80;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.1),
            ),
          ),
          height: 100,
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage('lib/assets/images/Portfolio_image.jpg'),
                radius: 35,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    'Faysal Ibnea Hasan',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '+880 1673-724510',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 122, 122, 122),
                    ),
                  ),
                  Text(
                    'Stay Alive',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 122, 122, 122),
                    ),
                  ),
                ],
              ),
              
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.qr_code),
                    padding: EdgeInsets.zero,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                    
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Row(
                  children: [
                    Icon(
                      Icons.key_outlined,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        Text(
                          'Account',
                        ),
                        Text(
                          'Security notifications, change number',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        Text(
                          'Privacy',
                        ),
                        Text(
                          'Block contacts, disappearing messages',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Row(
                  children: [
                    Icon(
                      Icons.emoji_emotions,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        Text(
                          'Avatar',
                        ),
                        Text(
                          'Create, edit, profile photo',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Row(
                  children: [
                    Icon(
                      Icons.chat,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        Text(
                          'Chats',
                        ),
                        Text(
                          'Theme, wallpapers, chat history',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        Text(
                          'Notifications',
                        ),
                        Text(
                          'Message, group & call tones',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Row(
                  children: [
                    Icon(
                      Icons.storage,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        Text(
                          'Storage and data',
                        ),
                        Text(
                          'Network usage, auto-download',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Row(
                  children: [
                    Icon(
                      Icons.language,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        Text(
                          'App language',
                        ),
                        Text(
                          'English (device`s language)',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Row(
                  children: [
                    Icon(
                      Icons.help_outline,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                        ),
                        Text(
                          'Help',
                        ),
                        Text(
                          'Help center, contact us, privacy policy',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Row(
                  children: [
                    Icon(
                      Icons.group,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                          ),
                        ),
                        Text(
                          'Invite a friend',
                        ),
                        
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: containerHeight,
                child: const Center(
                  child: Column(
                    children: [
                      Text(
                        'from',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(Icons.facebook_outlined),
                      Text(
                        'Meta',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
