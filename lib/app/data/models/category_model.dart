class Category {
  String? id;
  String? name;
  bool? isSelec;

  Category({this.id, this.name, this.isSelec});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isSelec = false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
