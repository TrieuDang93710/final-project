import 'package:flutter/material.dart';

import '../main_screen/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(),
            child: const Column(
              children: [
                Icon(
                  Icons.energy_savings_leaf,
                  size: 20,
                  color: Color(0xFF00991C),
                ),
                Text(
                  'Spliff',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Color(0xFF00991C),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create your account',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Center(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      // helperText: "EMAIL ADDRESS",
                      labelText: "EMAIL ADDRESS",
                      helperStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        backgroundColor: Color(0xFF00991C),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        backgroundColor: Color(0xFF00991C),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      // helperText: "PASSWORD",
                      labelText: "PASSWORD",
                      helperStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        backgroundColor: Color(0xFF00991C),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        backgroundColor: Color(0xFF00991C),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) => null,
                  checkColor: Colors.black38,
                  hoverColor: Color(0xFF00991C),
                ),
                SizedBox(
                  width: 10,
                ),
                const Text(
                  "By creating an account you agree with our terms and conditions",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Colors.black38,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Color(0xFF00991C),
              ),
              child: const Center(
                child: Text(
                  'Create your account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Already a member?",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Colors.black26,
                  ),
                ),
                Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    fontFamily: AutofillHints.creditCardExpirationDate,
                    color: Color(0xFF00991C),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
