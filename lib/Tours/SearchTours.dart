import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:prueba/providers/ToursProvider.dart';

class SearchTours extends StatelessWidget {
  const SearchTours({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toursProvider = Provider.of<ToursProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: 200),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        focusNode: FocusNode(),
        onChanged: (value) {
          toursProvider.query = value.toLowerCase().trim();
          toursProvider.filterTours();
        },
        decoration: InputDecoration(
          hintText: '¿Qué buscas?',
          hintStyle: TextStyle(
            color: Theme.of(context).primaryColor.withOpacity(.7),
            fontSize: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(.1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(.1),
            ),
          ),
          filled: true,
          fillColor: Color.fromRGBO(240, 245, 250, 1),
          prefixIcon: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: FaIcon(
              FontAwesomeIcons.search,
              color: Theme.of(context).primaryColor.withOpacity(.2),
            ),
          ),
          suffixIcon: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: FaIcon(
              FontAwesomeIcons.filter,
              color: Theme.of(context).primaryColor.withOpacity(.2),
            ),
          ),
        ),
      ),
    );
  }
}
