import 'package:flutter/material.dart';

class Item {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const Item(
      {required this.enName,
      @required this.image,
      required this.jpName,
      required this.sound});
}
