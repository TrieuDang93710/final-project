import 'package:flutter/material.dart';

class CategoriesModal extends StatelessWidget {
  const CategoriesModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.leaderboard,
                  color: Colors.greenAccent,
                  size: 14,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Spliff',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Image.network('src'),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'dukauwa.du@gmail.com',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: AutofillHints.birthday,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Vapes',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Extracts',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Editbles',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Flowers',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Accessories',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Log Out',
              style: TextStyle(
                fontSize: 18,
                color: Colors.redAccent,
                fontWeight: FontWeight.w600,
                fontFamily: AutofillHints.birthday,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
