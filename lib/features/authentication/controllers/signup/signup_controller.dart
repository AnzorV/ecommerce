import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      TFullScreenLoader.openLoadingDialog('Загрузка, мы обрабатываем вашу информацию...', TImages.docerAnimation);

          final isConnected = await NetworkManager.instance.isConnected();
          if (!isConnected)  {
            TFullScreenLoader.stopLoading();
            return;
          }

          if(!signupFormKey.currentState!.validate()) {
            TFullScreenLoader.stopLoading();
            return;
          }
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());


    } finally {
  TFullScreenLoader.stopLoading();
    }
  }
}
