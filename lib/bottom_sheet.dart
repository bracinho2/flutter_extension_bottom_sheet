import 'package:flutter/material.dart';

import 'entity.dart';

Future<void> showEntityBottomSheet({
  required BuildContext context,
  required MyEntity entity,
  required Function(bool value) callbackAction,
}) async {
  return showModalBottomSheet<void>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          20.0,
        ),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(entity.name),
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () {
                  callbackAction(true);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
