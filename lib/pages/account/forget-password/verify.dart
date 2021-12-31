import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgetPasswordVerify extends StatefulWidget {
  const ForgetPasswordVerify({Key? key}) : super(key: key);

  @override
  _ForgetPasswordVerifyState createState() => _ForgetPasswordVerifyState();
}

class _ForgetPasswordVerifyState extends State<ForgetPasswordVerify> {
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
                  margin: const EdgeInsets.only(top: 40),
                  height: 44,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                            hintText: "请输入手机号",
                            prefixIcon: Icon(Icons.phone),
                            isCollapsed: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(11)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(top: 20),
                  height: 44,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            suffix: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text("获取验证码"),
                              ),
                            ),
                            hintText: "请输入验证码",
                            prefixIcon: const Icon(Icons.chat_bubble_outline),
                            isCollapsed: true,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(6)
                          ],
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
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/account/forget-password/reset');
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(0, 44),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Text("下一步"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
