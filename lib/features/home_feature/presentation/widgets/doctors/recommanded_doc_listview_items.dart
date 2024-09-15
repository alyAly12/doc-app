
import 'package:doc_app/features/dr_details_feature/presentation/screens/dr_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class RecommendDocListviewItem extends StatelessWidget {
  const RecommendDocListviewItem({
    super.key, required this.img, required this.name, required this.email, required this.speciality,
  });
  final String img;
  final String name;
  final String email;
  final String speciality;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DrDetailsScreen(name: name, img: img, email: email, speciality: speciality,)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl:
                  img,
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return Shimmer.fromColors(
                    baseColor: AppColors.lightTitleColor,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 110.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                    ));
              },
              imageBuilder: (context, imageProvider) => Container(
                width: 110.w,
                height: 120.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(12),
            //   child: Image.network(
            //     'https://media.istockphoto.com/id/1922549572/photo/portrait-of-young-female-doctor-thinking.jpg?s=1024x1024&w=is&k=20&c=4lviwdg384zsZXU2J7Eex3G29PcoApNb9FjeDQEWlQo=',
            //     width: 110.w,
            //     height: 120.h,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    title: name,
                    fontSize: 14.sp,

                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextWidget(
                    title: speciality,
                    fontSize: 12.sp,

                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextWidget(
                    title: email,
                    fontSize: 12.sp,

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
