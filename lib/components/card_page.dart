import 'package:flutter/material.dart';

import 'custom_card.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('images/fernando.jpg'),
          ),
          const Text(
            "Fernando Vázquez",
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontFamily: 'Pacifico'),
          ),
          Text(
            'Docente',
            style: TextStyle(
              color: Colors.lightBlue.shade100,
              fontSize: 20,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
              fontFamily: 'Source Sans Pro',
            ),
          ),
          const SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              color: Colors.white,
                  height: 20.5,
            ),
          ),
          const CustomCard(
            customText: "+34 555 951 259",
            customIcon: Icons.phone_android,
          ),
          const CustomCard(
            customText: "fernando@edu.xunta.gal",
            customIcon: Icons.email_rounded,
          ),
        ],
      ),
    );
  }
}
