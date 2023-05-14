class HistoryServices {
  String? id;
  String? dateTime;
  int? payment;
  String? statusTransaction;
  String? userId;
  String? providerServiceId;
  ProviderService? providerService;

  HistoryServices(
      {this.id,
      this.dateTime,
      this.payment,
      this.statusTransaction,
      this.userId,
      this.providerServiceId,
      this.providerService});

  HistoryServices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateTime = json['dateTime'];
    payment = json['payment'];
    statusTransaction = json['statusTransaction'];
    userId = json['userId'];
    providerServiceId = json['providerServiceId'];
    providerService = json['providerService'] != null
        ? new ProviderService.fromJson(json['providerService'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['dateTime'] = this.dateTime;
    data['payment'] = this.payment;
    data['statusTransaction'] = this.statusTransaction;
    data['userId'] = this.userId;
    data['providerServiceId'] = this.providerServiceId;
    if (this.providerService != null) {
      data['providerService'] = this.providerService!.toJson();
    }
    return data;
  }
}

class ProviderService {
  String? id;
  String? namaUsaha;
  Null? koordinat;
  String? service;
  int? priceMin;
  int? priceMax;
  String? status;
  String? userId;
  String? categoryProductId;

  ProviderService(
      {this.id,
      this.namaUsaha,
      this.koordinat,
      this.service,
      this.priceMin,
      this.priceMax,
      this.status,
      this.userId,
      this.categoryProductId});

  ProviderService.fromJson(Map<String, dynamic> json) {
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
