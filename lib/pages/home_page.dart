import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:qlsuabanxe/json/constant.dart';
import 'package:qlsuabanxe/theme/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            Container(
              width: size.width,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(homeImg), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    color: white,
                    size: 28,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Feather.search,
                    color: white,
                    size: 25,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cửa hàng xe Hà Xuân Nghĩa",
                        style: TextStyle(
                            fontSize: 25,
                            color: white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("Khám phá",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: white,
                          size: 18,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Thể loại",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Text("Xem tất cả", style: TextStyle(color: grey)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                    size: 16,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 180,
                  height: 220,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    NetworkImage(categories[index]['imgUrl']),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            categories[index]['title'],
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Gợi ý cho bạn",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Text("Xem tất cả", style: TextStyle(color: grey)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                    size: 16,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(recommends.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 140,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(recommends[index]['imgUrl']),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recommends[index]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: black,
                              height: 1.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$ " + recommends[index]['price'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: grey,
                              height: 1.5),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          })),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Đã xem gần đây",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Text("Xem tất cả", style: TextStyle(color: grey)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                    size: 16,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(recently.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 140,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(recently[index]['imgUrl']),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recently[index]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: black,
                              height: 1.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$ " + recently[index]['price'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: grey,
                              height: 1.5),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          })),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
