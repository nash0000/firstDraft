import 'package:courses/moduels/forgetpassword/forgetpassword_screen.dart';
import 'package:courses/moduels/login/login_screen.dart';
import 'package:courses/shared/components/components.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defaultTextForm(
                controller: firstNameController,
                type: TextInputType.name,
                hint: 'enter firstName please 1',
                title: 'First Name',
                elevation: 7.0,
                highlightElevation: 7.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextForm(
                controller: lastNameController,
                type: TextInputType.name,
                hint: 'enter lastName please !',
                title: 'Last Name',
                elevation: 7.0,
                highlightElevation: 7.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextForm(
                controller: emailController,
                type: TextInputType.emailAddress,
                hint: 'enter valid email !',
                title: 'Email',
                elevation: 7.0,
                highlightElevation: 7.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextForm(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                hint: 'enter lastName please !',
                title: 'password ',
                elevation: 7.0,
                highlightElevation: 7.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultButton(
                function: () {
                  navigateTo(context, LoginScreen());
                },
                text: 'Sign Up ',
              ),
              SizedBox(
                height: 10.0,
              ),
              defaultButton(
                function: () {
                  navigateTo(context, LoginScreen());
                },
                text: 'Login',
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, ForgetPassword());
                },
                child: captionText('forget  your password ?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
