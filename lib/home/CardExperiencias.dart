import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardExperiencias extends StatelessWidget {
  const CardExperiencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://as01.epimg.net/futbol/imagenes/2021/08/10/primera/1628576300_843583_1628627690_noticia_normal_recorte1.jpg',
              height: 100,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Messi',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
              Text(
                'Lugar: Francia',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                ),
              ),
              Text(
                '1 Día',
                style: TextStyle(
                  color: Theme.of(context).primaryColor.withOpacity(.7),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.ellipsisH,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
