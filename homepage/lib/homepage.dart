import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Front Page'),
          backgroundColor: const Color(0xFF606c38),
          foregroundColor: Colors.white,
          //leading: IconButton(onPressed: (() {}), icon: const Icon(Icons.menu)),
          actions: [
            IconButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              icon: const Icon(
                Icons.logout,
              ),
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xFFe9edc9),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 150,
                child: DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Color(0xFF606c38),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/dp.jpg'),
                          maxRadius: 23,
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: const Text(
                            'Username',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                      ],
                    )),
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favorites'),
                onTap: (() {}),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Friends'),
                onTap: (() {}),
              ),
              ListTile(
                leading: const Icon(Icons.share),
                title: const Text('Share'),
                onTap: (() {}),
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text('Request'),
                onTap: (() {}),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.description),
                title: const Text('Policies'),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: const Text('Exit'),
                leading: const Icon(Icons.exit_to_app),
                onTap: () {},
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xFFfefae0),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 400,
                height: 420,
                decoration:
                    BoxDecoration(color: const Color(0xFFfaedcd), boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                  )
                ]),
                child: Image.asset(
                  'assets/images/content1.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 400,
                height: 250,
                decoration:
                    BoxDecoration(color: const Color(0xFFfaedcd), boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                  )
                ]),
                child: Image.asset(
                  'assets/images/content2.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 400,
                height: 420,
                decoration:
                    BoxDecoration(color: const Color(0xFFfaedcd), boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                  )
                ]),
                child: Image.asset(
                  'assets/images/content3.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ));
  }
}
