import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shop_template/pages/account/common.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPhoneLogin = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Icon(
                            Icons.shopping_bag,
                            color: Theme.of(context).backgroundColor,
                          ),
                        ),
                      ],
                    ),
                    isPhoneLogin ? phoneLogin(context) : passwordLogin(context),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(0, 44),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              child: const Text("登录"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/account/register');
                          },
                          child: const Text('注册新用户'),
                        )
                      ],
                    ),
                    footerWidget(context),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("登录或注册代表您同意"),
                    TextButton(onPressed: () {}, child: const Text("用户服务协议"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 手机验证码登录
  Column phoneLogin(
    BuildContext context,
  ) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "手机验证码登录",
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "欢迎使用商城模板",
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              )
            ],
          ),
        ),
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
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  inputFormatters: [LengthLimitingTextInputFormatter(6)],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              TextButton(
                  style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                  onPressed: () {},
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isPhoneLogin = false;
                      });
                    },
                    child: const Text("账号密码登录"),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Column passwordLogin(
    BuildContext context,
  ) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "账号密码登录",
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "欢迎使用商城模板",
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              )
            ],
          ),
        ),
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
                    hintText: "请输入密码",
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
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                onPressed: () {},
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isPhoneLogin = true;
                    });
                  },
                  child: const Text("免密登录"),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/account/forget-password/verify');
                  },
                  child: Text(
                    '忘记密码？',
                    style: Theme.of(context).textTheme.bodyText2,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
