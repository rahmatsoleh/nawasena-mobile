import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/modules/service/controllers/service_controller.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

import '../../../../routes/app_pages.dart';
import '../widget/loading.dart';

class ListServiceSection extends StatelessWidget {
  const ListServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ServiceController());
    return GetBuilder<ServiceController>(builder: (c) {
      return controller.isLoading == true
          ? SliverToBoxAdapter(child: LoadingOnLoad())
          : SliverPadding(
              padding: DefaultPadding.all,
              sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                      childCount: controller.provider.length, (_, index) {
                double rating = controller.listService[index]['rating'];
                return Padding(
                  padding: EdgeInsets.only(bottom: 6.w),
                  child: GestureDetector(
                    onTap: () => Get.toNamed(Routes.DETAIL_SERVICE),
                    child: Container(
                      height: 80.w,
                      padding: MiddlePadding.all,
                      decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: AppRadius.all,
                          border: Border.all(color: disableColor, width: 1.2)),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: 64.w,
                              width: 64.w,
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
                              children: [
                                SizedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: Get.width * 0.4,
                                        child: Text(
                                          '${controller.provider[index].namaUsaha}',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: AppTextTheme
                                              .current.appbarTextLight,
                                        ),
                                      ),
                                      controller.provider[index].status ==
                                              "active"
                                          ? AppBadges.success(
                                              text:
                                                  '${controller.provider[index].status == "active" ? "Aktif" : ""}',
                                            )
                                          : controller.provider[index].status
                                                      ?.capitalizeFirst ==
                                                  "Nonactive"
                                              ? AppBadges.info(
                                                  text:
                                                      '${controller.provider[index].status == "nonactive" ? "Tidak Aktif" : ""}',
                                                )
                                              : AppBadges.warning(
                                                  text:
                                                      '${controller.provider[index].status == "busy" ? "Dalam pekerjaan" : ""}',
                                                )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4.w),
                                Text(
                                  '${controller.provider[index].koordinat ?? '-'} Km',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: kGrey1,
                                      fontSize: 12.sp),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        child: Row(
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          size: 13,
                                          color: index < rating.floor()
                                              ? Colors.amber
                                              : Colors.grey.shade400,
                                        ),
                                      ),
                                    )),
                                    SizedBox(width: 6.w),
                                    Text(
                                      '(4,5)',
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          color: kBlack,
                                          fontSize: 13.sp),
                                    ),
                                    Spacer(),
                                    SizedBox(
                                      height: 24.w,
                                      width: 70.w,
                                      child: AppButton.primary(
                                        text: 'Pesan',
                                        onPressed: controller.provider[index]
                                                    .status?.capitalizeFirst ==
                                                "Aktif"
                                            ? () {}
                                            : null,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })),
            );
    });
  }
}
