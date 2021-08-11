import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prueba/modelos/ModeloTours.dart';

class CardExperiencias extends StatelessWidget {
  CardExperiencias(
    this.tour, {
    Key? key,
  }) : super(key: key);

  final ModeloTour tour;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              this.tour.picture,
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
                this.tour.name,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
              Text(
                'Lugar: ${this.tour.city}',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                ),
              ),
              Text(
                '${this.tour.durationOnHours} Horas',
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
