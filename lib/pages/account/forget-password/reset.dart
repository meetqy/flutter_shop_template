import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgetPasswordReset extends StatefulWidget {
  const ForgetPasswordReset({Key? key}) : super(key: key);

  @override
  _ForgetPasswordResetState createState() => _ForgetPasswordResetState();
}

class _ForgetPasswordResetState extends State<ForgetPasswordReset> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('验证手机'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 20),
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: const InputDecoration(
                          hintText: "请输入新密码",
                          prefixIcon: Icon(Icons.lock),
                          isCollapsed: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        inputFormatters: [LengthLimitingTextInputFormatter(11)],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 20),
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: const InputDecoration(
                          hintText: "请再次输入新密码",
                          prefixIcon: Icon(Icons.lock),
                          isCollapsed: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        inputFormatters: [LengthLimitingTextInputFormatter(11)],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(0, 44),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: const Text("确定"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
