import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final cities = [
    'New York',
    'London',
    'Paris',
    'Berlin',
    'Rome',
    'Madrid',
    'Barcelona',
    'Amsterdam',
    'Munich',
    'Prague',
    'Vienna',
    'Bratislava',
    'Budapest',
    'Warsaw',
    'Copenhagen',
    'Helsinki',
    'Stockholm',
    'Oslo',
    'Leicester',
  ];

  final recentCities = [
    'New York',
    'London',
    'Paris',
    'Berlin',
    'Rome',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some results based on the selection
    return Container(
      height: 100,
      width: 100,
      child: Card(
        color: Colors.red,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((element) => element.startsWith(query)).toList();

    // show when someone searches for something
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () => showResults(context),
          leading: Icon(Icons.location_city),
          title: RichText(
            text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: suggestionList.length,
    );
  }
}
