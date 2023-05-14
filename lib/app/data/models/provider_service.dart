class ProviderServices {
  String? id;
  String? namaUsaha;
  String? koordinat;
  String? service;
  int? priceMin;
  int? priceMax;
  String? status;
  String? userId;
  String? categoryProductId;

  ProviderServices(
      {this.id,
      this.namaUsaha,
      this.koordinat,
      this.service,
      this.priceMin,
      this.priceMax,
      this.status,
      this.userId,
      this.categoryProductId});

  ProviderServices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaUsaha = json['namaUsaha'];
    koordinat = json['koordinat'];
    service = json['service'];
    priceMin = json['priceMin'];
    priceMax = json['priceMax'];
    status = json['status'];
    userId = json['userId'];
    categoryProductId = json['categoryProductId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['namaUsaha'] = this.namaUsaha;
    data['koordinat'] = this.koordinat;
    data['service'] = this.service;
    data['priceMin'] = this.priceMin;
    data['priceMax'] = this.priceMax;
    data['status'] = this.status;
    data['userId'] = this.userId;
    data['categoryProductId'] = this.categoryProductId;
    return data;
  }
}
