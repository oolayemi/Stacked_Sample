
class CableTvData {
  String? status;
  List<CableBillers>? billers;

  CableTvData({this.status, this.billers});

  CableTvData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['billers'] != null) {
      billers = <CableBillers>[];
      json['billers'].forEach((v) {
        billers!.add(new CableBillers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.billers != null) {
      data['billers'] = this.billers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CableBillers {
  String? name;
  String? type;
  String? image;

  CableBillers({this.name, this.type, this.image});

  CableBillers.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['image'] = this.image;
    return data;
  }
}

class PlansData {
  String? status;
  List<CableTvPackage>? billers;

  PlansData({this.status, this.billers});

  PlansData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['billers'] != null) {
      billers = <CableTvPackage>[];
      json['billers'].forEach((v) {
        billers!.add(new CableTvPackage.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.billers != null) {
      data['billers'] = this.billers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CableTvPackage {
  String? name;
  String? type;
  String? code;
  int? price;
  int? amount;

  CableTvPackage({this.name, this.type, this.code, this.price, this.amount});

  CableTvPackage.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    code = json['code'];
    price = json['price'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['code'] = this.code;
    data['price'] = this.price;
    data['amount'] = this.amount;
    return data;
  }
}

