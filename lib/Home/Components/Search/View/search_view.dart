import 'package:flutter/material.dart';
import 'package:weatherapp/Home/Components/custom_text.dart';
import 'package:weatherapp/Home/Components/forecast.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Txt(
          text: "Search Weather",
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.search),
                    errorBorder: OutlineInputBorder()),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: Forecast())
        ],
      ),
    );
  }
}
