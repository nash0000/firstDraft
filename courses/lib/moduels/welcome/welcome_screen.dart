import 'package:courses/moduels/login/login_screen.dart';
import 'package:courses/moduels/signup/signup_screen.dart';
import 'package:courses/shared/colors/colors_common.dart';
import 'package:courses/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logo(),
            defaultButton(
              text: 'Login',
              function: () {
                navigateTo(context, LoginScreen());
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: defaultButton(
                text: 'SinUp',
                function: () {
                  navigateTo(context, SignUpScreen());
                },
                //toUpper: false,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            captionText('Or Login With '),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: defaultColor,
                  child: Image(
                    image: AssetImage('assets/images/facebook.png'),
                    // color: defaultColor,
                    //color: Colors.white,
                    height: 30.0,
                    width: 30.0,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: defaultColor,
                  child: Image(
                    image: AssetImage(
                      'assets/images/google.png',
                    ),
                    height: 20.0,
                    width: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
