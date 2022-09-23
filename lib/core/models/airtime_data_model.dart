
class AirTimeDataModel {
  String? name;
  String? path;
  List<Plans>? plans;

  AirTimeDataModel({this.name, this.path, this.plans});

  static List<AirTimeDataModel> data = [
    AirTimeDataModel(name: 'MTN', path: 'assets/images/billers/mtn.webp'),
    AirTimeDataModel(name: 'GLO', path: 'assets/images/billers/glo.webp'),
    AirTimeDataModel(name: '9MOBILE', path: 'assets/images/billers/9mobile.webp'),
    AirTimeDataModel(name: 'AIRTEL', path: 'assets/images/billers/airtel.webp'),
  ];
}

class PlanResponse {
  String? status;
  String? message;
  List<Plans>? plans;

  PlanResponse({this.status, this.message, this.plans});

  PlanResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['plans'] != null) {
      plans = <Plans>[];
      json['plans'].forEach((v) {
        plans!.add(new Plans.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.plans != null) {
      data['plans'] = this.plans!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Plans {
  int? id;
  String? type;
  String? code;
  String? description;
  int? amount;
  int? price;
  String? value;
  String? duration;

  Plans(
      {this.id,
        this.type,
        this.code,
        this.description,
        this.amount,
        this.price,
        this.value,
        this.duration});

  Plans.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    code = json['code'];
    description = json['description'];
    amount = json['amount'];
    price = json['price'];
    value = json['value'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['code'] = this.code;
    data['description'] = this.description;
    data['amount'] = this.amount;
    data['price'] = this.price;
    data['value'] = this.value;
    data['duration'] = this.duration;
    return data;
  }
}

