import 'package:flutter/material.dart';
import 'package:qlsuabanxe/theme/colors.dart';

class BillCard extends StatelessWidget {
  final store;

  const BillCard({
    Key key,
    @required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 150,
              height: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.network(store["image"], fit: BoxFit.fitHeight),
              )),
          Container(
            height: 400,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  store["name"] ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: textBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  store["phone"] ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Mã đơn: " + store["id"],
                  style: TextStyle(
                      color: primary,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Địa chỉ: " + store["address"],
                  style: TextStyle(
                      color: primary,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Giá bán: \$" + store["price"],
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Ngày mua: " + store["date"],
                  style: TextStyle(
                      color: primary,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
