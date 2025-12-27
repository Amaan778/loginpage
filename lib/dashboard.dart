import 'package:flutter/material.dart';
import 'package:flutter_application_1/logintwo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(radius: 45),
                  SizedBox(width: 10),

                  Text("amaan ansari\namaan@gmail.com"),
                ],
              ),
            ),

            ListTile(
              onTap: () {},

              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_forward),
            ),

            Divider(),

            ListTile(
              onTap: () {},

              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward),
            ),
            Divider(),

            ListTile(
              onTap: () async {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Log Out"),
                      content: Text("Are U sure u want to log out?"),

                      actions: [
                        ElevatedButton(
                          onPressed: () async {
                            SharedPreferences pref =
                                await SharedPreferences.getInstance();
                            pref.clear();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => logintwo(),
                              ),
                            );
                          },
                          child: Text("Yes"),
                        ),
                        ElevatedButton(onPressed: () {}, child: Text("No")),
                      ],
                    );
                  },
                );
              },

              leading: Icon(Icons.logout),
              title: Text("LogOut"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Dashboard"), backgroundColor: Colors.yellow),

      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 12; i++) ...{
                  Padding(
                    padding: EdgeInsets.all(10),

                    child: Container(color: Colors.red, height: 80, width: 80),
                  ),
                },
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, i) {
                  return Container(color: Colors.red);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
