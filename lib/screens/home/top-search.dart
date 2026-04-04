import 'dart:async';

import 'package:flutter/material.dart';

class TopSearch extends StatefulWidget {
  final Function(String) onSearch;

  const TopSearch({super.key, required this.onSearch});

  @override
  createState() => _TopSearchState(this.onSearch);
}

class _TopSearchState extends State<TopSearch> {
  final Function(String) onSearch;

  // CancelToken? _cancelToken;
  Timer? debounce;
  String searchQuery = "";
  bool isSearched = false;

  _TopSearchState(this.onSearch);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search product",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.grey[200],
          filled: true,
        ),
        onSubmitted: (v) {
          _onSearchSubmit(v);
        },
        onChanged: _onSearchChange,
      ),
    );
  }

  void _onSearchSubmit(String value) async {
    if (value.isEmpty) return;

    onSearch(value);
  }

  void _onSearchChange(value) {
    searchQuery = value;

    if (debounce?.isActive ?? false) debounce!.cancel();

    debounce = Timer(const Duration(milliseconds: 500), () {
      onSearch(searchQuery);
    });
  }
}
