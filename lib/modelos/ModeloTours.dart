import 'dart:convert';

ModeloTour modeloTourFromJson(String str) =>
    ModeloTour.fromJson(json.decode(str));

String modeloTourToJson(ModeloTour data) => json.encode(data.toJson());

class ModeloTour {
  ModeloTour({
    required this.id,
    required this.description,
    required this.name,
    required this.city,
    required this.tourOrganizer,
    required this.picture,
    required this.price,
    required this.durationOnHours,
    required this.category,
  });

  int id;
  String description;
  String name;
  String city;
  String tourOrganizer;
  String picture;
  int price;
  int durationOnHours;
  String category;

  factory ModeloTour.fromJson(Map<String, dynamic> json) => ModeloTour(
        id: json["id"],
        description: json["description"],
        name: json["name"],
        city: json["city"],
        tourOrganizer: json["tour_organizer"],
        picture: json["picture"],
        price: json["price"],
        durationOnHours: json["duration_on_hours"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "name": name,
        "city": city,
        "tour_organizer": tourOrganizer,
        "picture": picture,
        "price": price,
        "duration_on_hours": durationOnHours,
        "category": category,
      };
}
