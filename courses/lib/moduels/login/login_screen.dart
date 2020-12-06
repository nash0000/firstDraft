import 'package:courses/moduels/forgetpassword/forgetpassword_screen.dart';
import 'package:courses/moduels/signup/signup_screen.dart';
import 'package:courses/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logo(),
              defaultTextForm(
                controller: emailController,
                type: TextInputType.emailAddress,
                hint: 'enter email',
                title: 'Email',
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextForm(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                hint: 'enter valid password ',
                title: 'Password',
              ),
              SizedBox(
                height: 40.0,
              ),
              defaultButton(
                function: () {},
                text: 'Login',
              ),
              SizedBox(
                height: 10.0,
              ),
              defaultButton(
                function: () {
                  navigateTo(context, SignUpScreen());
                },
                text: 'SignUp',
              ),
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, ForgetPassword());
                  print('forget password');
                },
                child: captionText('forget password ?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
