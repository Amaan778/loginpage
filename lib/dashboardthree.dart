import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/base.model.dart';
import 'package:flutter_application_1/view/cat.dart';

class dashboardthree extends StatefulWidget {
  const dashboardthree({super.key});

  @override
  State<dashboardthree> createState() => _dashboardthreeState();
}

class _dashboardthreeState extends State<dashboardthree> {
  @override
  Widget build(BuildContext context) {
    List<Basemodel> ofcat = [
      Basemodel(
        name: "electronics",
        image: "assets/elctronics.png",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => cat(title: "Electronics",ofData: [
              Basemodel(name:"Electronics", image:"assets/elctronics.png", onPressed: () =>()),
              Basemodel(name:"washing machine", image:"assets/washingmachine.jpeg", onPressed: () =>()),
              Basemodel(name:"Refrigrator", image:"assets/fridge.png", onPressed: () =>()),
              Basemodel(name:"laptop", image:"assets/laptop.png", onPressed: () =>()),
            ],)),
          );
        },
      ),
      Basemodel(
        name: "Accesories",
        image: "assets/acesories.jpeg",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => cat(title: "Accessories",ofData: [
              Basemodel(name:"Accesories", image:"assets/acesories.jpeg", onPressed: () =>()),
              Basemodel(name:"Accesories", image:"assets/acesories.jpeg", onPressed: () =>()),
              Basemodel(name:"Accesories", image:"assets/acesories.jpeg", onPressed: () =>()),
              Basemodel(name:"Accesories", image:"assets/acesories.jpeg", onPressed: () =>()),
            ],)),
          );
        },
      ),
      Basemodel(
        name: "Vegetables",
        image: "assets/brokley.png",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => cat(title: "Vegetable",ofData: [
              Basemodel(name:"Brokley", image:"assets/brokley.png", onPressed: () =>()),
              Basemodel(name:"Potaot", image:"assets/potato.png", onPressed: () =>()),
              Basemodel(name:"tomato", image:"assets/tomato.png", onPressed: () =>()),
              Basemodel(name:"carrot", image:"assets/carrot.png", onPressed: () =>()),
            ],)),
          );
        },
      ),
      Basemodel(
        name: "Cover",
        image: "assets/cover.png",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => cat(title: "Cover",ofData: [
              Basemodel(name:"Cover", image:"assets/cover.png", onPressed: () =>()),
              Basemodel(name:"Cover", image:"assets/cover.png", onPressed: () =>()),
              Basemodel(name:"Cover", image:"assets/cover.png", onPressed: () =>()),
              Basemodel(name:"Cover", image:"assets/cover.png", onPressed: () =>()),
            ],)),
          );
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("login app", style: TextStyle(color: Colors.amber)),
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column( 
          
          children: [
            Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < ofcat.length; i++) ...{
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () {
                              ofcat[i].onPressed();
                            },
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(ofcat[i].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: 80,
                                  height: 80,
                                ),
                                Text(ofcat[i].name),
                              ],
                            ),
                          ),
                        ),
                      },
                    ],
                  ),
                ),
              ],
            ),

            Text(
              "Sections",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),

            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                children: [
                  for (int i = 0; i < 4; i++) ...{
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ofcat[i].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  },
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
