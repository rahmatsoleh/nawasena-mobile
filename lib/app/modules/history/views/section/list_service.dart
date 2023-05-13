import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
                childCount: controller.riwayat.length, (_, index) {
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
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
                              fit: BoxFit.cover)),
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
                          '${controller.riwayat[index]['service']}',
                          style: AppTextTheme.current.appbarTextLight,
                        ),
                        Text(
                          '${controller.riwayat[index]['tanggal']}',
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
                          controller.riwayat[index]['status'] == "Selesai"
                              ? AppBadges.success(
                                  text: controller.riwayat[index]['status'])
                              : AppBadges.danger(
                                  text: controller.riwayat[index]['status']),
                          Text(
                            'Rp. ${controller.riwayat[index]['harga']}',
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
