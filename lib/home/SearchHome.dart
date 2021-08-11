import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: '¿Qué buscas?',
          hintStyle: TextStyle(
            color: Color.fromRGBO(210, 221, 230, 1),
            fontSize: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Color.fromRGBO(247, 250, 252, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Color.fromRGBO(247, 250, 252, 1),
            ),
          ),
          filled: true,
          fillColor: Color.fromRGBO(240, 245, 250, 1),
          prefixIcon: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: FaIcon(
              FontAwesomeIcons.search,
              color: Color.fromRGBO(210, 221, 230, 1),
            ),
          ),
        ),
      ),
    );
  }
}
