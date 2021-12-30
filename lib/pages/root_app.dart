import 'package:flutter/material.dart';
import 'package:qlsuabanxe/json/constant.dart';
import 'package:qlsuabanxe/pages/bill_page.dart';
import 'package:qlsuabanxe/pages/home_page.dart';
import 'package:qlsuabanxe/pages/more_page.dart';
import 'package:qlsuabanxe/pages/repair_page.dart';
import 'package:qlsuabanxe/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  // appbar
  AppBar appbar = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [HomePage(), RepairPage(), BillPage(), MorePage()],
    );
  }

  Widget getAppBar() {
    switch (activeTab) {
      case 0:
        appbar = null;
        break;
      case 1:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "Quản lý sửa xe",
            style: TextStyle(color: black),
          ),
        );
        break;
      case 2:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "Hóa đơn",
            style: TextStyle(color: black),
          ),
        );
        break;
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "Tài khoản",
            style: TextStyle(color: black),
          ),
        );
        break;
      default:
    }
  }

  Widget getFooter() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 70, right: 70, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(itemsTab.length, (index) {
              return IconButton(
                  icon: Icon(
                    itemsTab[index]['icon'],
                    size: itemsTab[index]['size'],
                    color: activeTab == index ? accent : black,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  });
            })),
      ),
    );
  }
}
