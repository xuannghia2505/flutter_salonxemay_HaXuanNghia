import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qlsuabanxe/json/constant.dart';
import 'package:qlsuabanxe/pages/components/form_repair_screen.dart';
import 'package:qlsuabanxe/theme/colors.dart';
import 'package:qlsuabanxe/pages/components/categories.dart';
import 'package:qlsuabanxe/pages/components/card_items.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RepairPage extends StatefulWidget {
  @override
  _RepairPageState createState() => _RepairPageState();
}

class _RepairPageState extends State<RepairPage> {
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
                  "Tạo đơn sửa xe",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FormRepairScreen()),
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
          RepairCategory(),
          SizedBox(
            height: 10,
          ),
          // AllProducts(),
          StaggeredGridView.countBuilder(
            padding: EdgeInsets.all(0),
            crossAxisCount: 2,
            itemCount: repairList.length,
            crossAxisSpacing: 10,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            mainAxisSpacing: 0,
            itemBuilder: (context, index) {
              return ItemCard(item: repairList[index], index: index);
            },
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          ),
        ],
      ),
    );
  }
}
