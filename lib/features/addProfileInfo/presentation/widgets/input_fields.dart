import 'package:color_funland/core/components/custom_text_field.dart';
import 'package:color_funland/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputFields extends StatefulWidget {
  const InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
    final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Your Child Name',
                    style: ts18Purble700,
                  ),
                  const SizedBox(height: 17),
                  CustomTextField(
                    controller: _nameController,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Child Age',
                    style: ts18Purble700,
                  ),
                  const SizedBox(height: 17),
                  CustomTextField(
                    keyboardType: TextInputType.number,
                    controller: _ageController,
                  ),
                ],
              ),
            ),
          ],
        );
  }
}