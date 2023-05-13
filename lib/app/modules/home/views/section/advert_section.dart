import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

class AdvertSection extends StatelessWidget {
  const AdvertSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: DefaultPadding.side,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Jasa untukmu',
                style: AppTextTheme.current.title2,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Lihat semua',
                  style: AppTextTheme.current.buttonTextDark,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.w),
          SizedBox(
              height: 150.w,
              width: Get.width * 0.96,
              child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 12.w),
                          child: Container(
                            height: 150.w,
                            width: Get.width * 0.8,
                            decoration: BoxDecoration(
                                color: accentColor,
                                borderRadius: AppRadius.all),
                          ),
                        );
                      }))),
        ],
      ),
    ));
  }
}
