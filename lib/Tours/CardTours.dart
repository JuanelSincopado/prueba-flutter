import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prueba/modelos/ModeloTours.dart';

class CardTour extends StatelessWidget {
  const CardTour({Key? key, required this.tour}) : super(key: key);

  final ModeloTour tour;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                tour.name,
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
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  tour.picture,
                  fit: BoxFit.cover,
                  width: width * 0.35,
                  height: width * 0.35,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tour.tourOrganizer,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor.withOpacity(.7),
                      ),
                    ),
                    Text(
                      tour.city,
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).primaryColor.withOpacity(.7),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      tour.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "\$${tour.price} por persona",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor.withOpacity(.7),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
