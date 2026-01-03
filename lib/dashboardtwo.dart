import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/base.model.dart';

class Dashboardtwo extends StatefulWidget {
  const Dashboardtwo({super.key});

  @override
  State<Dashboardtwo> createState() => _DashboardtwoState();
}

class _DashboardtwoState extends State<Dashboardtwo> {
  // List ofcat = ["electronics","mobile","laptop","charger","cover","accesories","tech"];
  List<Basemodel> ofcat = [
    Basemodel(name: "electronics", image: "assets/elctronics.png"),
    Basemodel(name: "Accesories", image: "assets/acesories.jpeg"),
    Basemodel(name: "Laptop", image: "assets/laptop.png"),
    Basemodel(name: "Cover", image: "assets/cover.png")
    // {
    //   "name":"Electronics",
    //   "image":"assets/elctronics.png"
    // },
    // {
    //   "name":"Charger",
    //   "image":"assets/charger.png"
    // },
    // {
    //   "name":"Mobile covers",
    //   "image":"assets/cover.png"
    // },
    // {
    //   "name":"laptop",
    //   "image":"assets/laptop.png"
    // },
    // {
    //   "name":"mobiles",
    //   "image":"assets/mobiles.png"
    // },
    // {
    //   "name":"Accecories",
    //   "image":"assets/acesories.jpeg"
    // }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login app", style: TextStyle(color: Colors.amber)),
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < ofcat.length; i++) ...{
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ofcat[i].image),fit: BoxFit.cover)),
                              width: 80,
                              height: 80,
                            ),
                            Text(ofcat[i].name),
                          ],
                        ),
                      ),
                    },
                  ],
                ),
              ),

              // Expanded(
              // child:
              Text(
                "Accesories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: 4,
                itemBuilder: (context, i) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/acesories.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.red,
                    ),
                    width: 80,
                    height: 50,
                  );
                },
              ),

              // ),
              SizedBox(height: 50),
              Text(
                "Offers",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/banner.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.amber,
                ),
                width: double.infinity,
                height: 180,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
