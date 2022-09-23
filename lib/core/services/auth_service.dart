import 'package:dio/dio.dart';
import 'package:encrypt/encrypt.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:local_auth/local_auth.dart';
import 'package:encrypt/encrypt.dart' as prefix0;
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/locator.dart';
import '../utils/tools.dart';
import 'http/http_service.dart';
import 'utility_storage_service.dart';

class AuthService with ReactiveServiceMixin {
  final HttpService _httpService = locator<HttpService>();
  final DialogService _dialogService = locator<DialogService>();
  final StorageService _storageService = locator<StorageService>();

  bool _isBiometricsAvailable = false;
  bool get isBiometricsAvailable => _isBiometricsAvailable;

  var localAuth = LocalAuthentication();

  List<BiometricType> _biometricOptions = [];
  List<BiometricType> get biometricOptions => _biometricOptions;

  final dio = Dio();

  final iv = IV.fromLength(16);
  late FirebaseMessaging messaging;

  AuthService() {
    listenToReactiveValues([
    ]);
  }

  static Encrypter crypt() {
    final appKey = env('APP_KEY')!;
    final key = prefix0.Key.fromBase64(appKey);
    return Encrypter(prefix0.AES(key));
  }

  dynamic encryptData(dynamic data) {
    return crypt().encrypt(data, iv: iv).base64;
  }

  dynamic decryptData(dynamic data) {
    return crypt().decrypt64(data, iv: iv);
  }

  Future<void> setBiometricStatus() async {
    _isBiometricsAvailable = await localAuth.canCheckBiometrics;
    if (isBiometricsAvailable) {
      localAuth.getAvailableBiometrics().then((value) => _biometricOptions = value);
    }
    return;
  }


}
