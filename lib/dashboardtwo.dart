import 'package:flutter/material.dart';

class Dashboardtwo extends StatefulWidget {
  const Dashboardtwo({super.key});

  @override
  State<Dashboardtwo> createState() => _DashboardtwoState();
}

class _DashboardtwoState extends State<Dashboardtwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login app")),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("data", textAlign: TextAlign.center)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 12; i++) ...{
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(width: 50, height: 50, color: Colors.blue),
                    ),
                  },
                ],
              ),
            ),
        
            SizedBox(height: 50),
        
            // Expanded(
              // child:
               GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5
                ),
                itemCount: 4,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return Container(height: 50,width: 80,color: Colors.blue,);
                },
              ),
            // ),
        
            SizedBox(height: 50,),
        
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );


    // Scaffold(
    //   appBar: AppBar(title: Text("Login app")),
    //   body: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: Row(
    //             children: [
    //               for (int i = 0; i < 12; i++) ...{
    //                 Padding(
    //                   padding: EdgeInsets.all(10),
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                       image: DecorationImage(image: AssetImage("assets/mobile.jpeg"),fit: BoxFit.cover),
    //                       color: Colors.blue
    //                     ),
    //                     width: 50,
    //                     height: 80,
    //                   ),
    //                 ),
    //               },
    //             ],
    //           ),
    //         ),

    //         Padding(
    //           padding: const EdgeInsets.all(10.0),
    //           child: GridView.builder(
    //             physics: NeverScrollableScrollPhysics(),
    //             shrinkWrap: true,
    //             itemCount: 4,
    //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //               crossAxisCount: 2,
    //               mainAxisSpacing: 5,
    //               crossAxisSpacing: 5,
    //             ),
    //             itemBuilder: (context, i) {
    //               return Container(
    //               decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets/acesories.jpeg"),
    //               fit: BoxFit.cover),
    //               color: Colors.blue,
    //               )
    //               ,);
    //             },
    //           ),
    //         ),

    //         Padding(
    //           padding: const EdgeInsets.all(10.0),
    //           child: Container(
    //             decoration: BoxDecoration(
    //               image: DecorationImage(image: AssetImage("assets/banner.jpg"), fit: BoxFit.cover),
    //               color: Colors.red
    //             ),
    //             height: 200, width: double.infinity),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
