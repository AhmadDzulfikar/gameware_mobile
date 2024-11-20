// To parse this JSON data, do
//
//     final gameware = gamewareFromJson(jsonString);

import 'dart:convert';

List<Gameware> gamewareFromJson(String str) => List<Gameware>.from(json.decode(str).map((x) => Gameware.fromJson(x)));

String gamewareToJson(List<Gameware> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Gameware {
    String model;
    String pk;
    Fields fields;

    Gameware({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Gameware.fromJson(Map<String, dynamic> json) => Gameware(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    DateTime date;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.date,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        date: DateTime.parse(json["date"]),
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    };
}
