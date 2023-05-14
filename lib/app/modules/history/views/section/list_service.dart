import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/modules/history/controllers/history_controller.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

class ListHistorySection extends StatelessWidget {
  const ListHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HistoryController());
    return GetBuilder<HistoryController>(builder: (c) {
      return SliverPadding(
        padding: DefaultPadding.all,
        sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: controller.histories.length, (_, index) {
          DateTime date = DateTime.parse(controller.histories[index].dateTime!);
          String formattedDate = DateFormat('dd-MM-yyyy hh:mm:ss').format(date);
          return Padding(
            padding: EdgeInsets.only(bottom: 6.w),
            child: Container(
              height: 60.w,
              padding: MiddlePadding.all,
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: AppRadius.all,
                  border: Border.all(color: disableColor, width: 1.2)),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 36.w,
                      width: 36.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: kPrimary3),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${controller.histories[index].providerService?.namaUsaha}',
                          style: AppTextTheme.current.appbarTextLight,
                        ),
                        Text(
                          '${formattedDate}',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              color: kGrey1,
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          controller.histories[index].statusTransaction ==
                                  "Selesai"
                              ? AppBadges.success(
                                  text: controller
                                      .histories[index].statusTransaction)
                              : AppBadges.danger(
                                  text: controller
                                      .histories[index].statusTransaction),
                          Text(
                            'Rp. ${controller.histories[index].payment}',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                color: kGrey1,
                                fontSize: 12.sp),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          );
        })),
      );
    });
  }
}
