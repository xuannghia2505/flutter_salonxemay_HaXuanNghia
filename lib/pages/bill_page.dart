import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qlsuabanxe/json/constant.dart';
import 'package:qlsuabanxe/pages/components/bill_card.dart';
import 'package:qlsuabanxe/pages/components/form_bill_screen.dart';
import 'package:qlsuabanxe/theme/colors.dart';

class BillPage extends StatefulWidget {
  @override
  _BillPageState createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Flexible(
                    child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      cursorColor: primary,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Search"),
                    ),
                  ),
                )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration:
                      BoxDecoration(color: black, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.search,
                      color: white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Thêm hóa đơn",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FormBillScreen()),
                    );
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration:
                        BoxDecoration(color: black, shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.plusCircle,
                        color: white,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: light),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: List.generate(storeList.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoreDetailPage(
                            //               image: storeList[index]['image'],
                            //               name: storeList[index]['name'],
                            //             )));
                          },
                          child: Container(
                            child: BillCard(store: billList[index]),
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
