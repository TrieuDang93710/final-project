import 'package:flutter/material.dart';

// import '../model/flowers.dart';
import 'dialog_box.dart';

class CategoriesFlower extends StatelessWidget {
  CategoriesFlower({
    super.key,
    required this.nameFlower,
    required this.imageUrl,
    required this.note,
    required this.price,
  });

  final nameFlower;
  final imageUrl;
  final note;
  final price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Image.network('$imageUrl'),
          ),
          SizedBox(
            width: 150,
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$nameFlower',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF1B1B1B),
                  ),
                ),
                Text(
                  '$note',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '$price',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return DialogBox();
                },
              );
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: const Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
