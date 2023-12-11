import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:melooha_flutter_assignment/core/colors.dart';
import 'package:melooha_flutter_assignment/models/home/personel_traits_model.dart';

class PersonelTraitsCard extends StatefulWidget {
  final PersonelTraitsModel personelTraitsModel;
  const PersonelTraitsCard({
    required this.personelTraitsModel,
    super.key,
  });

  @override
  State<PersonelTraitsCard> createState() => _PersonelTraitsCardState();
}

class _PersonelTraitsCardState extends State<PersonelTraitsCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.70,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.primaryLightColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Know your Queries",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.offWhiteColor,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Flexible(
                            child: Text(
                              "Know yourself based on your Personality Traits",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Flexible(
                            child: Text(
                              widget.personelTraitsModel.title,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Flexible(
                            child: Text(
                              widget.personelTraitsModel.text,
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: AppColors.offWhiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.secondaryColor,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.lock_open_rounded,
                              size: 18,
                              color: AppColors.offWhiteColor,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Unlock all 23 Personality Traits",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.offWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 6,
            margin: const EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: AppColors.primaryLightColor.withOpacity(1.0),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          Container(
            height: 6,
            margin: const EdgeInsets.only(left: 24, right: 24),
            decoration: BoxDecoration(
              color: AppColors.primaryLightColor.withOpacity(0.70),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
