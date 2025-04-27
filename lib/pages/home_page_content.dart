import 'package:flutter/material.dart';
import 'package:flutter_ex001/theme/app_colors.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});
  
  @override
  State<HomePageContent> createState() {
    return HomePageContentState();
  }
}


class HomePageContentState extends State<HomePageContent> {
  int counter = 0;

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() {
    setState(() {
      counter--;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Contador", style: TextStyle(color:  AppColors.black)),
                Container(
                  width: 250,
                  height: 250,
                  color: AppColors.primaryDark,
                  child: Center(child: Text(counter.toString(), style: TextStyle(color:  AppColors.white))),
                ),
              ]
            )
          )
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: increaseCounter, 
              child: Text("adicionar")
            ),
            ElevatedButton(
              onPressed: decreaseCounter, 
              child: Text("retirar")
            ),
            ElevatedButton(
              onPressed: resetCounter,
              child: Text("resetar")
            )
          ],
        )
      ]
    );
  }
}