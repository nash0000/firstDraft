import 'package:courses/moduels/login/login_screen.dart';
import 'package:courses/shared/components/components.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defaultTextForm(
                controller: emailController,
                type: TextInputType.emailAddress,
                hint: 'enter email',
                title: 'Email',
                elevation: 7.0,
                highlightElevation: 7.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 100.0, bottom: 5.0),
                child: defaultButton(
                  elevation: 6.0,
                  function: () {},
                  text: 'Send reset code',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, LoginScreen());
                  print('login');
                },
                child: captionText('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
