import 'package:flutter/material.dart';
import 'package:scaler_assignments/data/models/home/home_item.dart';

List<Map<String, dynamic>> dummyHomeItems = [
  {
    "title": "Tic Tac Toe",
    "description": "Sample Subtitle 1",
    "imageUrl": "assets/tic_tac_toe.png",
    "route": "https://example.com/sample-url1"
  },
  {
    "title": "Parking lot",
    "description": "Sample Subtitle 2",
    "imageUrl": "assets/parking_lot.jpg",
    "route": "https://example.com/sample-url2"
  },
];

List<HomeItem> getListOfHomeItems() {
  List<HomeItem> list = [];

  for (var element in dummyHomeItems) {
    list.add(HomeItem.fromMap(element));
  }

  return list;
}
