import 'package:flutter/material.dart';
import 'package:qlsuabanxe/json/constant.dart';
import 'package:qlsuabanxe/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
    @required this.item,
    @required this.index,
  }) : super(key: key);

  final Item item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => DetailsScreen(item: item)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.brown[100],
        ),
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 30),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(item.image), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Biển số: ${item.plate}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Tên xe: ${item.bikename}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Ngày giao: ${item.date}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 65,
                        height: 25,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5)),
                        child: item.done == 0
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "CHƯA",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        shape: BoxShape.circle),
                                  )
                                ],
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "XONG",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle),
                                  )
                                ],
                              ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: black.withOpacity(0.55),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.userAlt,
                                    size: 15, color: white),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  item.user,
                                  style: TextStyle(fontSize: 15, color: white),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.phone,
                                    size: 15, color: white),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  item.phone,
                                  style: TextStyle(fontSize: 15, color: white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
