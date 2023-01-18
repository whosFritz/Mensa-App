import "dart:convert";

class Dish {
  Dish(
      {required this.id,
      required this.name,
      required this.servingDate,
      required this.category,
      required this.price,
      required this.description,
      required this.rating,
      required this.responseCode});
  final int id;
  final String category;
  final String servingDate;
  final String description;
  final String name;
  final String price;
  final double rating;
  final int responseCode;

  @override
  String toString() {
    return "$responseCode Gericht ID: $id: Es gibt am $servingDate $name mit $description zum Preis von $price und einer Bewertung von $rating Sternen.";
  }

  static Dish fromJson(json) {
    return Dish(
        id: json["id"] ?? 10000,
        name: json["name"] ?? "keine Angaben",
        servingDate: json["servingDate"] ?? "keine Angaben",
        category: json["category"] ?? "keine Angaben",
        price: json["price"] ?? "keine Angaben",
        description: json["description"] ?? "keine Angaben",
        rating: json["rating"] ?? 3.0,
        responseCode: json["responseCode"] ?? 200);
  }

  String toJson() {
    return json.encode({
      "id": id,
      "name": name,
      "servingDate": servingDate,
      "category": category,
      "price": price,
      "description": description,
      "rating": rating,
      "responseCode": responseCode,
    });
  }
}
