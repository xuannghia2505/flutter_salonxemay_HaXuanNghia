import 'package:flutter/material.dart';
import 'package:qlsuabanxe/json/constant.dart';
import 'package:qlsuabanxe/pages/login_page.dart';
import 'package:qlsuabanxe/theme/colors.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
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
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(profileUrl), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "Hà Xuân Nghĩa",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Quản lý",
                    style: TextStyle(fontSize: 15, color: grey),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: grey.withOpacity(0.8),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(menusMore.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    menusMore[index],
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                  ),
                );
              })),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: (size.width - 100) / 2,
                height: 50,
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
                    },
                    child: Text(
                      "Đăng xuất",
                      style: TextStyle(fontSize: 15, color: white),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
