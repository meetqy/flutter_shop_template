import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xfff6f6f6),
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 28,
                  child: const TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: "搜索你想要的商品",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.phone, size: 18),
                      isCollapsed: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.crop_free))
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(top: 20),
                  child: Swiper(
                    itemCount: 3,
                    autoplay: true,
                    loop: true,
                    pagination: const SwiperPagination(
                      builder: SwiperPagination.dots,
                    ),
                    itemBuilder: (context, index) {
                      if (index == 1) {
                        return swiperItem(
                            'https://cdn.xihaf.com/template/u%3D75827650%2C649616151%26fm%3D26%26fmt%3Dauto.webp');
                      } else if (index == 2) {
                        return swiperItem(
                            'https://cdn.xihaf.com/template/u%3D1091308503%2C3633988431%26fm%3D26%26fmt%3Dauto.webp');
                      } else {
                        return swiperItem(
                            'https://cdn.xihaf.com/template/u%3D2124134884%2C2847257753%26fm%3D26%26fmt%3Dauto.webp');
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardItem(context, "会员中心", Icons.ac_unit, Colors.red),
                      cardItem(context, "种草特辑", Icons.baby_changing_station,
                          Colors.green),
                      cardItem(context, "精选品牌", Icons.cabin, Colors.indigo),
                      cardItem(context, "领券中心", Icons.dark_mode, Colors.orange),
                      cardItem(
                          context, "领券中心", Icons.e_mobiledata, Colors.blue),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "限时抢购",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                '03:08:58',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: Text(
                            "每天10点 限量秒杀",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(bottom: 20),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              cardGoodItem(),
                              cardGoodItem(),
                              cardGoodItem(),
                              cardGoodItem(),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "每日特价",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                    Text(
                                      "9块9疯抢",
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "新人特惠",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                    Text(
                                      "特惠好物1元起",
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                    "https://cdn.xihaf.com/template2.webp"),
                              ),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                    "https://cdn.xihaf.com/template2.webp"),
                              ),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                    "https://cdn.xihaf.com/template2.webp"),
                              ),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                    "https://cdn.xihaf.com/template2.webp"),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "热门榜单",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              cardRe(
                                context,
                                "销量榜",
                                Icons.ac_unit_rounded,
                                Colors.purple.shade50,
                              ),
                              cardRe(context, "口碑榜", Icons.backpack_outlined,
                                  Colors.pink.shade50),
                              cardRe(context, "热搜榜", Icons.search,
                                  Colors.orange.shade50),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded cardRe(
      BuildContext context, String title, IconData icon, Color color) {
    return Expanded(
      child: Container(
        height: 125,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline4,
            ),
            Icon(
              icon,
              size: 70,
            )
          ],
        ),
      ),
    );
  }

  Column cardGoodItem() {
    return Column(
      children: [
        SizedBox(
          width: 70,
          height: 70,
          child: Image.network("https://cdn.xihaf.com/template2.webp"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4),
          child: const Text(
            '￥69.0',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Text(
          '￥99.0',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: Colors.black38,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Column cardItem(
      BuildContext context, String title, IconData icon, Color color) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: Theme.of(context).selectedRowColor,
          ),
        ),
        Text(title)
      ],
    );
  }

  ClipRRect swiperItem(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.network(
        url,
        fit: BoxFit.fill,
      ),
    );
  }
}
