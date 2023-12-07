import 'package:flutter/material.dart';

class DetailCateScreen extends StatelessWidget {
  const DetailCateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(181, 243, 243, 243),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 800,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(181, 255, 255, 255),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'PURE SUN FARMS',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: AutofillHints.birthday,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Indica blend',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF009200),
                          fontWeight: FontWeight.w600,
                          fontFamily: AutofillHints.birthday,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'THC',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '12%',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black26,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'CBD',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '12%',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black26,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  child: const Text(
                    'Descibtions',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                      fontFamily: AutofillHints.birthday,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$20',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF009200),
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '/GRAM',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black12,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'TOTAL:',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '\$20',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF009200),
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Color(0xFF009200),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: const Center(
                        child: Text(
                          'Add to bag',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: AutofillHints.birthday,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
