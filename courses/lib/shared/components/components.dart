import 'package:courses/shared/colors/colors_common.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  Color background = defaultColor,
  double radius = 20.0,
  @required Function function,
  @required String text,
  bool toUpper = true,
  double elevation,
}) =>
    Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      child: FlatButton(
        onPressed: function,
        child: Text(
          toUpper ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultTextForm({
  String title,
  String hint = '',
  double elevation,
  double highlightElevation,
  @required TextEditingController controller,
  @required TextInputType type,
}) =>
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: Colors.white,
      ),
      padding: EdgeInsetsDirectional.only(
        start: 10.0,
        end: 10.0,
        top: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) detailText(title),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
            keyboardType: type,
          ),
        ],
      ),
    );
Widget logo() => Column(
      children: [
        Image(
          image: AssetImage('assets/images/log2.jpg'),
          //  width: 300,
          // height: 300,
        ),
        SizedBox(
          height: 80.0,
        ),
      ],
    );
Widget headText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 25.0,
      ),
    );

Widget captionText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 16.0,
      ),
    );

Widget detailText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 14.0,
      ),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      //toUpper: false,
    );
