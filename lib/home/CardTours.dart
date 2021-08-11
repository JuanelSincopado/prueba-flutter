import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prueba/modelos/ModeloTours.dart';

class CardTourHome extends StatelessWidget {
  const CardTourHome(
    this.tour, {
    Key? key,
  }) : super(key: key);

  final ModeloTour tour;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width * .7,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              this.tour.picture,
              height: (width * 0.7) / 2,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 13, 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.tour.name,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidCreditCard,
                          size: 12,
                          color: Theme.of(context).primaryColor.withOpacity(.7),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '\$${this.tour.price} por persona',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.7),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(239, 243, 245, 1),
                  radius: 15,
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.shareAlt,
                      size: 10,
                      color: Color.fromRGBO(157, 181, 194, 1),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromRGBO(239, 243, 245, 1),
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: Color.fromRGBO(157, 181, 194, 1),
                      size: 10,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
