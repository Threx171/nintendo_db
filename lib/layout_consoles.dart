import 'package:flutter/material.dart';

class LayoutConsoles extends StatelessWidget {
  final dynamic itemData;
  final Map<String, Color> colorMap = {
    'black': Colors.black,
    'white': Colors.white,
    'purple': Colors.purple,
    'grey': Colors.grey
  };
  LayoutConsoles({Key? key, required this.itemData}) : super(key: key);

  Color getColorFromString(String colorString) {
    return colorMap[colorString.toLowerCase()] ?? Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 100.0,
            height: MediaQuery.of(context).size.width * 0.5,
            child: Image.asset(
              'assets/images/${itemData["imatge"]}',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${itemData["nom"]}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: getColorFromString(itemData["color"])),
                  width: 40,
                  height: 40,
                ),
                const SizedBox(height: 20),
                Text(
                  "${itemData["data"]}",
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "${itemData["procesador"]}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${itemData["venudes"]}" + " venudes",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
