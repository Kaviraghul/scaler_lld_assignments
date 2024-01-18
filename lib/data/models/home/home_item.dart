// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class HomeItem {
  final String title;
  final String imageUrl;
  final String route;
  final String description;

  HomeItem({
    required this.title,
    required this.imageUrl,
    required this.route,
    required this.description,
  });

  HomeItem copyWith({
    String? title,
    String? imageUrl,
    String? route,
    String? description,
  }) {
    return HomeItem(
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      route: route ?? this.route,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'imageUrl': imageUrl,
      'route': route,
      'description': description,
    };
  }

  factory HomeItem.fromMap(Map<String, dynamic> map) {
    return HomeItem(
      title: map['title'] as String,
      imageUrl: map['imageUrl'] as String,
      route: map['route'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeItem.fromJson(String source) => HomeItem.fromMap(json.decode(source) as Map<String, dynamic>);


}
