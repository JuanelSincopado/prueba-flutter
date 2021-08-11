import 'package:flutter/material.dart';

class FiltrosTours extends StatelessWidget {
  const FiltrosTours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Todos',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Gastronómicos',
              style: TextStyle(
                color: Theme.of(context).primaryColor.withOpacity(.5),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Turísticos',
              style: TextStyle(
                color: Theme.of(context).primaryColor.withOpacity(.5),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Caminata',
              style: TextStyle(
                color: Theme.of(context).primaryColor.withOpacity(.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
