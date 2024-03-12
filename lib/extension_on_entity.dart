import 'package:flutter/material.dart';
import 'package:flutter_extension_bottom_sheet/bottom_sheet.dart';
import 'package:flutter_extension_bottom_sheet/entity.dart';

extension BottomSheet on MyEntity {
  Future<void> show({
    required BuildContext context,
  }) async {
    return showEntityBottomSheet(
      context: context,
      entity: this,
      callbackAction: (value) => print(
        value,
      ),
    );
  }
}
