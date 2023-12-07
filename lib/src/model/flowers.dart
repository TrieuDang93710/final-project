class Flower {
  int? id;
  String? nameFlower;
  String? image;
  String? description;
  int? price;
  String? note;
  String? createAt;

  Flower(
      {this.id,
      this.nameFlower,
      this.image,
      this.description,
      this.price,
      this.note,
      this.createAt});

  Flower.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameFlower = json['nameFlower'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    note = json['note'];
    createAt = json['createAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nameFlower'] = this.nameFlower;
    data['image'] = this.image;
    data['description'] = this.description;
    data['price'] = this.price;
    data['note'] = this.note;
    data['createAt'] = this.createAt;
    return data;
  }
}
