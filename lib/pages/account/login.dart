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
                              child: const Text("??????"),
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
                          child: const Text('???????????????'),
                        )
                      ],
                    ),
                    footerWidget(context),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("??????????????????????????????"),
                    TextButton(onPressed: () {}, child: const Text("??????????????????"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// ?????????????????????
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
                    "?????????????????????",
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "????????????????????????",
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
                    hintText: "??????????????????",
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
                        child: const Text("???????????????"),
                      ),
                    ),
                    hintText: "??????????????????",
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
                    child: const Text("??????????????????"),
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
                    "??????????????????",
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "????????????????????????",
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
                    hintText: "??????????????????",
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
                    hintText: "???????????????",
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
                  child: const Text("????????????"),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/account/forget-password/verify');
                  },
                  child: Text(
                    '???????????????',
                    style: Theme.of(context).textTheme.bodyText2,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
