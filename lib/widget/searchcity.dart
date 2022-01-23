import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myjobscentre_employee/widget/dropdownsearchwidget.dart';


class SearchCity extends SearchDelegate{
  late final List<String> cities;





  late String result;
  SearchCity(this.cities);
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.arrow_drop_down),
        onPressed: () {
          query = '';
        },
      )
    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.close),
      onPressed: () {
        Navigator.of(context).push(
            new MaterialPageRoute(
                builder: (BuildContext context) =>
                new DropDownSearchWidget()));
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestions = cities.where((name) {
      return name.toLowerCase().contains(query.toLowerCase());
    });

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(

          title: Text(suggestions.elementAt(index),
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),

          onTap: () {
            result = suggestions.elementAt(index);
            close(context, result);
          },
        );
      },
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = cities.where((name) {
      return name.toLowerCase().contains(query.toLowerCase());
    }
    );

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(

          title: Text(suggestions.elementAt(index),
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),

          onTap: () {
            query = suggestions.elementAt(index);
          },
        );
      },
    );
  }
}
