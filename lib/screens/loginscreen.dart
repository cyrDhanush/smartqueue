import 'package:flutter/material.dart';
import 'package:smartqueue/constants.dart';
import 'package:smartqueue/screens/homeparent.dart';
import 'package:smartqueue/widgets/wavedesign.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: themepink,
                  ),
                ),
                Positioned(
                  top: 40,
                  child: TopWave(
                    title: '',
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Smart Queue System',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'No More Standing in Queue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: lightgrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: inputDecoration.copyWith(
                        hintText: 'Email or Phone',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: lightgrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: inputDecoration.copyWith(
                        hintText: '********',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeParent()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      backgroundColor: themepink,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.black.withAlpha(150),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.black.withAlpha(150),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 7,
                          ),
                          child: ClipRRect(
                            child: Image.asset('assets/icons/google_logo.png'),
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            'Gov. Proof',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
