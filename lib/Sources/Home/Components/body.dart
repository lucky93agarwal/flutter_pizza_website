import 'package:flutter/material.dart';
import 'package:lucky_food/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pizza".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Loren ipsum dolor sit amet, consectetur \nadipiscing elit, sed to eiusmod tempor \nincididunt ut labor.",
            style: TextStyle(
                fontSize: 21, color: kTextWhiteColor.withOpacity(0.34)),
          ),
          FittedBox(
            // Now it just take the required spaces
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF372930),
                borderRadius: BorderRadius.circular(34),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        color: kPrimaryColor, shape: BoxShape.circle),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF372930),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Get Started".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
