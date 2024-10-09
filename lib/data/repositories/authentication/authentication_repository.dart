

import 'package:ecommerceshop/features/authentication/screens/login/login.dart';
import 'package:ecommerceshop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    if(kDebugMode) {
      print('===================================== GET STORAGE Auth Repo =======================================');
      print(deviceStorage.read('IsFirstTime'));
    }
deviceStorage.writeIfNull('isFirstTime', true);
deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(const OnBoardingScreen()); 
  }
}
