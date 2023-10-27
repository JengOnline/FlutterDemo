import 'package:flutter/foundation.dart';
import 'package:my_app/src/core/data/profile_data.dart';
import 'package:my_app/src/core/service/profile_service.dart';

class ProfileProvider with ChangeNotifier {
  late ProfileData profileData;
  ProfileService profileService = ProfileService();
  bool loading = false;

  void getProfileData(context) async {
    loading = true;
    profileData = await profileService.fetchProfileData();
    loading = false;
    notifyListeners();
  }
}
