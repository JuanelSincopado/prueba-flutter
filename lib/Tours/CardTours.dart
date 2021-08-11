import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardTour extends StatelessWidget {
  const CardTour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Titulo Imagen',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.solidHeart,
                color: Theme.of(context).primaryColor,
                size: 15,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.shareAlt,
                size: 15,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
