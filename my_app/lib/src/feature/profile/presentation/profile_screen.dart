import 'package:flutter/material.dart';
import 'package:my_app/src/core/provider/profile_provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProfileProvider>(context, listen: false)
        .getProfileData(context);
  }

  @override
  Widget build(BuildContext context) {
    final profileData = Provider.of<ProfileProvider>(context);
    return Scaffold(
        appBar: AppBar(title: const Text("ProfileScreen")),
        body: profileData.loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Consumer<ProfileProvider>(
                builder: (_, value, __) => Text(profileData.profileData.name),
              )));
  }
}
