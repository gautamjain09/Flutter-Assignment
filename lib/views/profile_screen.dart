import 'package:flutter/material.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDarkColor,
      body: const Center(
        child: Text("Profile Screen"),
      ),
    );
  }
}
