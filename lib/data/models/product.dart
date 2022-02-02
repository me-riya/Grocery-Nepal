
class Product {
  int? id;
  String? name;
  String? description;
  double? price;
  String? image;
  String? unit;
  String? category;

  Product({this.id, this.name, this.description, this.price, this.image, this.unit, this.category});

  Product.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int)
      this.id = json["id"];
    if(json["name"] is String)
      this.name = json["name"];
    if(json["description"] is String)
      this.description = json["description"];
    if(json["price"] is String)
      this.price = double.parse(json["price"]);
    if(json["image"] is String)
      this.image = json["image"];
    if(json["unit"] is String)
      this.unit = json["unit"];
    if(json["category"] is String)
      this.category = json["category"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["description"] = this.description;
    data["price"] = this.price;
    data["image"] = this.image;
    data["unit"] = this.unit;
    data["category"] = this.category;
    return data;
  }
}