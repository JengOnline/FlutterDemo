import 'dart:convert';

import 'package:my_app/src/core/data/profile_data.dart';
import 'package:http/http.dart' as http;

class ProfileService {
  Future<ProfileData> fetchProfileData() async {
    final response =
        await http.get(Uri.parse('https://api.agify.io/?name=meelad'));

    if (response.statusCode == 200) {
      return ProfileData.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load ProfileData');
    }
  }
}
