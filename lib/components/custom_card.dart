import 'package:flutter/material.dart';

import '../utilities/utilities.dart';

class CustomCard extends StatelessWidget {
  final String customText;
  final IconData customIcon;

  const CustomCard(
      {Key? key, required this.customText, required this.customIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (customIcon == Icons.phone_android) {
          makePhoneCall(customText);
        } else if (customIcon == Icons.email_rounded) {
          sendEmail(customText, "Prueba email");
        } else {
          print("Funcion no implementada");
        }
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        color: Colors.white,
        child: ListTile(
          leading: Icon(
            customIcon,
            size: 20,
            color: Colors.lightBlue,
          ),
          title: Text(
            customText,
            style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.lightBlue.shade900,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
