import 'package:flutter/material.dart';

import '../../component/category_modal.dart';
import 'cate_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoriesModal(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.category,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.leaderboard,
                              color: Colors.greenAccent,
                              size: 34,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Spliff',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: AutofillHints.birthday,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.search_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.heart_broken,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Image.network(
                            'src',
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.leaderboard,
                          color: Colors.greenAccent,
                          size: 30,
                        ),
                        Text(
                          '50% Off',
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                        Text(
                          'Everything',
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                        Text(
                          'with code: sativa 123',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Top Categories',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: AutofillHints.birthday,
              ),
            ),
            const Text(
              'Mark the occassion with these must have products',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: AutofillHints.birthday,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.amber,
                        child: Image.network(
                          'src',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Vapes',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: AutofillHints.birthday,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.amber,
                          child: Image.network(
                            'src',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Flowers',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.amber,
                        child: Image.network(
                          'src',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Edibles',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: AutofillHints.birthday,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
