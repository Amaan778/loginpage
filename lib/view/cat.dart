import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/base.model.dart';

class cat extends StatefulWidget {
  String title;
  List<Basemodel> ofData;
  cat({required this.title, super.key,required this.ofData});

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),

      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10,crossAxisSpacing: 10),
      children: [
        for(int i=0;i<widget.ofData.length;i++)...{
          Column(children: [
            
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.ofData[i].image))),),
            Text(widget.ofData[i].name),
          ],)
        }
      ],
      ),
    );
  }
}
