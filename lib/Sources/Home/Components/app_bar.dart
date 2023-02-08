import 'package:flutter/material.dart';
import 'package:lucky_food/Sources/Home/Components/menu_item.dart';
import 'package:lucky_food/constant.dart';

class CustomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            )
          ]),
      child: Row(
        children: <Widget>[
          Image.asset("assets/images/logo.png",
              height: 25, alignment: Alignment.topCenter),
          SizedBox(width: 5),
          Text("Pizza hub".toUpperCase(),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "about",
            press: () {},
          ),
          MenuItem(
            title: "Pricing",
            press: () {},
          ),
          MenuItem(
            title: "Contact",
            press: () {},
          ),
          MenuItem(
            title: "Login",
            press: () {},
          ),
          // ignore: deprecated_member_use
          DefaultButton(
            text: "Get Start",
            pass: () {},
          ),
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String text;
  final Function pass;
  const DefaultButton({
    Key key,
    this.text,
    this.pass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        color: kPrimaryColor,
        onPressed: pass,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
