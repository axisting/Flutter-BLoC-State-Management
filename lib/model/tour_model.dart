import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TourModel extends Equatable {
  final String id;
  final String name;
  final String detail;
  final Image image;

  const TourModel({
    required this.id,
    required this.name,
    required this.detail,
    required this.image,
  });

  @override
  List<Object?> get props => [id, name, detail, image];

  static List<TourModel> tours = [
    TourModel(
        id: "1",
        name: "Antalya",
        detail:
            "Antalya ili, Türkiye’nin güneyinde, merkezi Akdeniz kıyısında olan bir turizm merkezidir. Kuzeyinde; Burdur, Isparta, Konya, doğusunda;",
        image: Image.asset("assets/images/antalya.jpg")),
    TourModel(
        id: "2",
        name: "Side",
        detail: "Güzel bir Side turu",
        image: Image.asset("assets/images/side.jpg")),
    TourModel(
        id: "3",
        name: "Alanya",
        detail:
            "Alanya, Türkiye'nin Akdeniz Bölgesi'ndeki Antalya iline bağlı bir turizm ilçesidir. İl merkezine uzaklığı 154 kilometredir. Türkiye'nin güney sahillerinde bulunan Alanya, 1.598,51 km²'lik bir alana sahiptir ve TÜİK nüfus verilerine göre 2022'de nüfusu 364.180 kişidir.",
        image: Image.asset("assets/images/alanya.JPG")),
    TourModel(
        id: "4",
        name: "Bodrum",
        detail: "Güzel bir Bodrum turu",
        image: Image.asset("assets/images/bodrum.jpg")),
  ];
}
