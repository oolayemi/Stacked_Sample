
class ProfileResponse {
  String? status;
  String? message;
  ProfileData? data;

  ProfileResponse({this.status, this.message, this.data});

  ProfileResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new ProfileData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class ProfileData {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? avatar;
  String? dob;
  String? address;
  String? state;
  String? gender;
  Plan? plan;
  Pin? pin;
  BankAccount? bankAccount;

  ProfileData(
      {this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.avatar,
        this.dob,
        this.address,
        this.state,
        this.gender,
        this.plan,
        this.pin,
        this.bankAccount});

  ProfileData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    avatar = json['avatar'];
    dob = json['dob'];
    address = json['address'];
    state = json['state'];
    gender = json['gender'];
    plan = json['plan'] != null ? new Plan.fromJson(json['plan']) : null;
    pin = json['pin'] != null ? new Pin.fromJson(json['pin']) : null;
    bankAccount = json['bank_account'] != null
        ? new BankAccount.fromJson(json['bank_account'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['avatar'] = this.avatar;
    data['dob'] = this.dob;
    data['address'] = this.address;
    data['state'] = this.state;
    data['gender'] = this.gender;
    if (this.plan != null) {
      data['plan'] = this.plan!.toJson();
    }
    if (this.pin != null) {
      data['pin'] = this.pin!.toJson();
    }
    if (this.bankAccount != null) {
      data['bank_account'] = this.bankAccount!.toJson();
    }
    return data;
  }
}

class Plan {
  int? id;
  String? name;

  Plan({this.id, this.name});

  Plan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Pin {
  bool? enabled;
  String? pinCode;

  Pin({this.enabled, this.pinCode});

  Pin.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
    pinCode = json['pin_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enabled'] = this.enabled;
    data['pin_code'] = this.pinCode;
    return data;
  }
}

class BankAccount {
  String? accountNumber;
  String? accountName;
  String? bankName;
  bool? approved;

  BankAccount({this.accountNumber, this.accountName, this.bankName, this.approved});

  BankAccount.fromJson(Map<String, dynamic> json) {
    accountNumber = json['account_number'];
    accountName = json['account_name'];
    bankName = json['bank_name'];
    approved = json['approved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['account_number'] = this.accountNumber;
    data['account_name'] = this.accountName;
    data['bank_name'] = this.bankName;
    data['approved'] = this.approved;
    return data;
  }
}
