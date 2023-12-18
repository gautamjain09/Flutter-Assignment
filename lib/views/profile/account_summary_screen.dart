import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:melooha_flutter_assignment/controllers/data_controller.dart';
import 'package:melooha_flutter_assignment/core/assets.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/models/order_model.dart';
import 'package:melooha_flutter_assignment/views/profile/widgets/account_summary_card.dart';

class AccountSummaryScreen extends StatefulWidget {
  const AccountSummaryScreen({super.key});

  @override
  State<AccountSummaryScreen> createState() => _AccountSummaryScreenState();
}

class _AccountSummaryScreenState extends State<AccountSummaryScreen> {
  final DataController _dataController = DataController();
  List<OrderModel> orders = [];

  @override
  void initState() {
    super.initState();
    orders = _dataController.getAccountSummaryOrders();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.blue1000,
      appBar: AppBar(
        backgroundColor: AppColors.blue900,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: AppColors.dark300,
          ),
        ),
        title: Text(
          "Account Summary",
          style: TextStyle(
            fontFamily: AppFonts.secondaryFont,
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: (orders.isEmpty)
            ? Container(
                width: size.width,
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.width / 3),
                    SvgPicture.asset(AppAssets.emptyAccountSummary),
                    const SizedBox(height: 16),
                    Text(
                      "Buy Questions or Reports",
                      style: TextStyle(
                        fontFamily: AppFonts.secondaryFont,
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Your transaction history will be visible here when you buy questions or reports.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: AppFonts.primaryFont,
                        color: AppColors.blue300,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(
                width: size.width,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: orders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AccountSummaryCard(orderModel: orders[index]),
                        if (index != orders.length - 1)
                          const Padding(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: Divider(
                              thickness: 1,
                              color: AppColors.blue700,
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
      ),
    );
  }
}
