import 'package:flutter/material.dart';

class LayoutJoc extends StatelessWidget {
  final dynamic itemData;

  LayoutJoc({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 100.0,
            height: MediaQuery.of(context).size.height * 0.5,
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
                  "${itemData["any"]}",
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  itemData["tipus"],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      itemData["descripcio"],
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
