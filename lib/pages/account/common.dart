import 'package:flutter/material.dart';

Widget loginMethod(BuildContext context, IconData icon) {
  return Container(
    margin: const EdgeInsets.only(right: 20),
    width: 44,
    height: 44,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(22),
    ),
    child: TextButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(44)),
        ),
      ),
      child: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
    ),
  );
}

Column footerWidget(BuildContext context) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('或通过以下方式登录')],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            loginMethod(context, Icons.ac_unit),
            loginMethod(context, Icons.baby_changing_station),
            loginMethod(context, Icons.cabin),
            loginMethod(context, Icons.dangerous),
            loginMethod(context, Icons.e_mobiledata),
          ],
        ),
      ),
    ],
  );
}
