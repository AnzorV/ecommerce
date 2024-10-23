import 'package:ecommerceshop/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerceshop/data/repositories/user/user_repository.dart';
import 'package:ecommerceshop/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../personalization/models/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      TFullScreenLoader.openLoadingDialog('Загрузка, мы обрабатываем вашу информацию...', TImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;


          if(!signupFormKey.currentState!.validate()) return;

          if (!privacyPolicy.value) {
            TLoaders.warningSnackBar(title: 'Accept Privacy Policy', message: 'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use');
            return;
          }

          final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

          final newUser = UserModel(id: userCredential.user!.uid, firstName: firstName.text.trim(), lastName: lastName.text.trim(), username: username.text.trim(), email: email.text.trim(), phoneNumber: phoneNumber.text.trim(), profilePicture: '');


          final userRepository = Get.put(UserRepository());
          await userRepository.saveUserRecord(newUser);

          TFullScreenLoader.stopLoading();

          TLoaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created! Verify email to continue.');

          Get.to(() => const VerifyEmailScreen());
    } catch (e) {


  TFullScreenLoader.stopLoading();
  TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());

    }
  }
}
