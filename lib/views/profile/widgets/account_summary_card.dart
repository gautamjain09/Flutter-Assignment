import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/core/fonts.dart';
import 'package:melooha_flutter_assignment/core/sizes.dart';
import 'package:melooha_flutter_assignment/models/order_model.dart';

class AccountSummaryCard extends StatefulWidget {
  final OrderModel orderModel;
  const AccountSummaryCard({
    super.key,
    required this.orderModel,
  });

  @override
  State<AccountSummaryCard> createState() => _AccountSummaryCardState();
}

class _AccountSummaryCardState extends State<AccountSummaryCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      margin: const EdgeInsets.all(AppSizes.paddingLarge),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 68,
                width: 68,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppSizes.cornerRadiusSizeFour),
                  color: AppColors.blue600,
                ),
                child: Center(
                  child: SvgPicture.asset(widget.orderModel.icon),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.orderModel.text,
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    widget.orderModel.orderTime,
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.blue300,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    widget.orderModel.transationId,
                    style: TextStyle(
                      fontFamily: AppFonts.primaryFont,
                      color: AppColors.blue400,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹${widget.orderModel.amount}",
                style: TextStyle(
                  fontFamily: AppFonts.primaryFont,
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                decoration: BoxDecoration(
                  color: (widget.orderModel.orderStatus == "Failed")
                      ? const Color(0xFFFFF0F0)
                      : const Color(0xFFECFFEB),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Text(
                  widget.orderModel.orderStatus,
                  style: TextStyle(
                    fontFamily: AppFonts.primaryFont,
                    color: (widget.orderModel.orderStatus == "Failed")
                        ? const Color(0xFFE52C2C)
                        : const Color(0xFF0A7C00),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
