import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:movie/global_keys.dart';
import 'package:movie/providers/common.dart';
import 'package:movie/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void _onChangeLanguage() {
    final context = GlobalKeys.navigatorKey.currentContext!;
    if (context.locale.languageCode == Locale('mn', 'MN').languageCode) {
      context.setLocale(Locale('en', 'US'));
    } else {
      context.setLocale(Locale('mn', 'MN'));
    }
  }

  // void _onImagePick(ImageSource source) async {
  //   XFile? file = await ImagePicker().pickImage(source: source);
  //   print(file?.name);
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonProvider>(builder: ((content, provider, child) {
      return provider.isLoggedIn
          ? Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ElevatedButton(
                //     onPressed: () => _onImagePick(ImageSource.gallery),
                //     child: Text("Зургийн сан нээх")),
                // ElevatedButton(
                //     onPressed: () => _onImagePick(ImageSource.camera),
                //     child: Text("Камера нээх")),
                ElevatedButton(
                    onPressed: _onChangeLanguage,
                    child: Text(content.locale.languageCode)),
                ElevatedButton(
                  onPressed: provider.onLogout,
                  child: Text("Гарах"),
                ),
              ],
            ))
          : LoginPage();
    }));
  }
}
