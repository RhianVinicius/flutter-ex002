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
            height: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Contador",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          color: AppColors.shadow
                        )
                      ]
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: AppColors.primaryDark,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey,
                        blurRadius: 6,
                        spreadRadius: 1
                      )
                    ]
                  ),
                  child: Center(
                    child: Text(
                      counter.toString(),
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 46,
                        fontFamily: "monospace",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2
                      )
                    )
                  ),
                ),
              ]
            )
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ElevatedButton(
                onPressed: increaseCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.green,
                  foregroundColor: Colors.white,
                  elevation: 2,
                  shadowColor: AppColors.grey,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32), // Arredondamento
                  ),
                ),
                child: Text("Adicionar", style: TextStyle(color: AppColors.white, fontSize: 16))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ElevatedButton(
                onPressed: decreaseCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.red,
                  foregroundColor: Colors.white,
                  elevation: 2,
                  shadowColor: AppColors.grey,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32), // Arredondamento
                  ),
                ),
                child: Text("Retirar", style: TextStyle(color: AppColors.white, fontSize: 16))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ElevatedButton(
                onPressed: resetCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.grey,
                  foregroundColor: Colors.white,
                  elevation: 2,
                  shadowColor: AppColors.grey,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32), // Arredondamento
                  ),
                ),
                child: Text("Resetar", style: TextStyle(color: AppColors.white, fontSize: 16))),
            )
          ],
        )
      ]
    );
  }
}