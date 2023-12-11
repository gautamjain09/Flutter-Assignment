import 'package:flutter/material.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/models/dummy_models.dart';
import 'package:melooha_flutter_assignment/models/user_model.dart';
import 'package:melooha_flutter_assignment/views/home_screen.dart';
import 'package:melooha_flutter_assignment/views/profile_screen.dart';
import 'package:melooha_flutter_assignment/views/questions_screen.dart';
import 'package:melooha_flutter_assignment/views/reports_screen.dart';

class DashboardScreen extends StatefulWidget {
  final int pageIndex;
  const DashboardScreen({
    required this.pageIndex,
    super.key,
  });

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late int _pageIndex;
  late UserModel userModel;
  final pages = const [
    HomeScreen(),
    QuestionsScreen(),
    ReportsScreen(),
    ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();
    _pageIndex = widget.pageIndex;
    getLocalUserData();
  }

  void getLocalUserData() {
    // TO-DO -> take from Current User
    userModel = DummyModels.userModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDarkColor,
      body: pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            _pageIndex = idx;
          });
        },
        currentIndex: _pageIndex,
        backgroundColor: AppColors.primaryMediumColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.secondaryColor,
        unselectedItemColor: AppColors.greyColor,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          const BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              size: 28,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Questions",
            icon: Icon(
              Icons.question_answer,
              size: 24,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Reports",
            icon: Icon(
              Icons.library_books_outlined,
              size: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "You",
            icon: CircleAvatar(
              backgroundImage: NetworkImage(userModel.profileImage),
              radius: 12,
            ),
          ),
        ],
      ),
    );
  }
}
