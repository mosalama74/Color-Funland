import 'package:color_funland/core/utils/text_styles.dart';
import 'package:color_funland/features/addProfileInfo/presentation/widgets/input_fields.dart';
import 'package:color_funland/features/addProfileInfo/presentation/widgets/upload_select_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPhotoWidget extends StatelessWidget {
  const AddPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(" Child Photo", style: ts18Purble700),
                SizedBox(height: 12.h),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    UploadSelectCard(
                      icon: "assets/icons/upload.svg",
                      text: "Upload",
                      onTap: () {},
                    ),
                    UploadSelectCard(
                        icon: "assets/icons/camera.svg",
                        text: "Camera",
                        onTap: () {},
                        ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 12),
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/uploadimg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 32.h),

        // Input Fields
        const InputFields(),
        SizedBox(height: 32.h),
      ],
    );
  }
}
