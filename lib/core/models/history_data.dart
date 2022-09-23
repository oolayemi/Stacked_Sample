class HistoryDataResponse {
  String? status;
  String? message;
  Result? result;

  HistoryDataResponse({this.status, this.message, this.result});

  HistoryDataResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  int? currentPage;
  List<DataResponse>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  Result(
      {this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.links,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  Result.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <DataResponse>[];
      json['data'].forEach((v) {
        data!.add(new DataResponse.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class DataResponse {
  int? id;
  int? walletId;
  int? userId;
  String? reference;
  String? amount;
  String? charges;
  String? prevBalance;
  String? newBalance;
  String? status;
  String? type;
  String? info;
  String? createdAt;
  String? updatedAt;
  ServicePurchase? servicePurchase;

  DataResponse(
      {this.id,
        this.walletId,
        this.userId,
        this.reference,
        this.amount,
        this.charges,
        this.prevBalance,
        this.newBalance,
        this.status,
        this.type,
        this.info,
        this.createdAt,
        this.updatedAt,
        this.servicePurchase});

  DataResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    walletId = json['wallet_id'];
    userId = json['user_id'];
    reference = json['reference'];
    amount = json['amount'];
    charges = json['charges'];
    prevBalance = json['prev_balance'];
    newBalance = json['new_balance'];
    status = json['status'];
    type = json['type'];
    info = json['info'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    servicePurchase = json['service_purchase'] != null
        ? new ServicePurchase.fromJson(json['service_purchase'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['wallet_id'] = this.walletId;
    data['user_id'] = this.userId;
    data['reference'] = this.reference;
    data['amount'] = this.amount;
    data['charges'] = this.charges;
    data['prev_balance'] = this.prevBalance;
    data['new_balance'] = this.newBalance;
    data['status'] = this.status;
    data['type'] = this.type;
    data['info'] = this.info;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.servicePurchase != null) {
      data['service_purchase'] = this.servicePurchase!.toJson();
    }
    return data;
  }
}

class ServicePurchase {
  int? id;
  int? walletTransactionId;
  int? userId;
  String? reference;
  String? amount;
  String? serviceType;
  String? serviceProvider;
  String? serviceNumber;
  int? success;
  String? status;
  String? message;
  String? narration;
  String? createdAt;
  String? updatedAt;
  List<Epins>? epins;
  PowerToken? powerToken;

  ServicePurchase(
      {this.id,
        this.walletTransactionId,
        this.userId,
        this.reference,
        this.amount,
        this.serviceType,
        this.serviceProvider,
        this.serviceNumber,
        this.success,
        this.status,
        this.message,
        this.narration,
        this.createdAt,
        this.updatedAt,
        this.epins,
        this.powerToken});

  ServicePurchase.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    walletTransactionId = json['wallet_transaction_id'];
    userId = json['user_id'];
    reference = json['reference'];
    amount = json['amount'];
    serviceType = json['service_type'];
    serviceProvider = json['service_provider'];
    serviceNumber = json['service_number'];
    success = json['success'];
    status = json['status'];
    message = json['message'];
    narration = json['narration'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['epins'] != null) {
      epins = <Epins>[];
      json['epins'].forEach((v) {
        epins!.add(new Epins.fromJson(v));
      });
    }
    powerToken = json['power_token'] != null
        ? new PowerToken.fromJson(json['power_token'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['wallet_transaction_id'] = this.walletTransactionId;
    data['user_id'] = this.userId;
    data['reference'] = this.reference;
    data['amount'] = this.amount;
    data['service_type'] = this.serviceType;
    data['service_provider'] = this.serviceProvider;
    data['service_number'] = this.serviceNumber;
    data['success'] = this.success;
    data['status'] = this.status;
    data['message'] = this.message;
    data['narration'] = this.narration;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.epins != null) {
      data['epins'] = this.epins!.map((v) => v.toJson()).toList();
    }
    if (this.powerToken != null) {
      data['power_token'] = this.powerToken!.toJson();
    }
    return data;
  }
}

class Epins {
  int? id;
  int? servicePurchaseId;
  String? reference;
  String? amount;
  String? pin;
  String? serial;
  String? instruction;
  String? createdAt;
  String? updatedAt;

  Epins(
      {this.id,
        this.servicePurchaseId,
        this.reference,
        this.amount,
        this.pin,
        this.serial,
        this.instruction,
        this.createdAt,
        this.updatedAt});

  Epins.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    servicePurchaseId = json['service_purchase_id'];
    reference = json['reference'];
    amount = json['amount'];
    pin = json['pin'];
    serial = json['serial'];
    instruction = json['instruction'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_purchase_id'] = this.servicePurchaseId;
    data['reference'] = this.reference;
    data['amount'] = this.amount;
    data['pin'] = this.pin;
    data['serial'] = this.serial;
    data['instruction'] = this.instruction;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class PowerToken {
  int? id;
  int? servicePurchaseId;
  String? reference;
  String? token;
  String? unit;
  String? amount;
  String? transId;
  String? createdAt;
  String? updatedAt;

  PowerToken(
      {this.id,
        this.servicePurchaseId,
        this.reference,
        this.token,
        this.unit,
        this.amount,
        this.transId,
        this.createdAt,
        this.updatedAt});

  PowerToken.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    servicePurchaseId = json['service_purchase_id'];
    reference = json['reference'];
    token = json['token'];
    unit = json['unit'];
    amount = json['amount'];
    transId = json['transId'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_purchase_id'] = this.servicePurchaseId;
    data['reference'] = this.reference;
    data['token'] = this.token;
    data['unit'] = this.unit;
    data['amount'] = this.amount;
    data['transId'] = this.transId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}