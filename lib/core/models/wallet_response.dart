
class WalletResponse {
  String? status;
  String? message;
  WalletData? wallet;
  String? commissionEarned;

  WalletResponse({this.status, this.message, this.wallet, this.commissionEarned});

  WalletResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    wallet =
    json['wallet'] != null ? new WalletData.fromJson(json['wallet']) : null;
    commissionEarned = json['commission_earned'] != null ? json['commission_earned'].toString() : "0";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.wallet != null) {
      data['wallet'] = this.wallet!.toJson();
    }
    data['commission_earned'] = this.commissionEarned != null ? this.commissionEarned.toString() : "0";
    return data;
  }
}

class WalletData {
  int? id;
  int? userId;
  String? accountNumber;
  String? accountReference;
  String? balance;
  String? status;
  String? accountName;
  String? bankName;

  WalletData(
      {this.id,
        this.userId,
        this.accountNumber,
        this.accountReference,
        this.balance,
        this.status,
        this.accountName,
        this.bankName});

  WalletData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    accountNumber = json['account_number'];
    accountReference = json['account_reference'];
    balance = json['balance'];
    status = json['status'];
    accountName = json['accountName'];
    bankName = json['bankName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['account_number'] = this.accountNumber;
    data['account_reference'] = this.accountReference;
    data['balance'] = this.balance;
    data['status'] = this.status;
    data['accountName'] = this.accountName;
    data['bankName'] = this.bankName;
    return data;
  }
}