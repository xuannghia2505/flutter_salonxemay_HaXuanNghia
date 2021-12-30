import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String APP_TITLE = 'Hà Xuân Nghĩa - QL sửa xe bán xe';
const String homeImg =
    'https://media.thuonghieucongluan.vn/uploads/2021/05/14/2105141120-cua-hang-xe-may-cu-tphcm-salon-xe-may-phat-minh-1620976802.jpg';

const String profileUrl =
    "https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/140307360_1655460364627073_765877336866475053_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=oYLaeIe05xIAX9-jgi9&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8bNXfDamOSz9qq2WEbLXTKXlYsrCJDMSXDPfspqrYTDA&oe=61F16B4D";

const List<Map<String, Object>> categories = [
  {
    'title': 'Honda SCR',
    'imgUrl':
        'https://blog.muaban.net/wp-content/uploads/2017/12/11484808_201106163522-scr-110.jpg',
  },
  {
    'title': 'LEAD',
    'imgUrl':
        'https://img.websosanh.vn/v10/users/review/images/d4boijd33ihuc/xe-may-honda-lead-2017.jpg?compress=85',
  },
  {
    'title': 'Air Blade',
    'imgUrl':
        'https://cafefcdn.com/203337114487263232/2021/12/26/2017825-16405197310851371711278.jpg',
  },
  {
    'title': 'SYM Attila',
    'imgUrl':
        'https://vtbike.com/upfiles1/image/SYM/attila-50/xoay-atila-50.jpg',
  },
  {
    'title': 'SH',
    'imgUrl':
        'https://img.vietnamfinance.vn/webp-jpg/700x0/upload/news/ledinhnga/2019/9/1/vnf-gia-xe-tay-honda-sh-150-moi-nhat-1.webp',
  },
];

const List<Map<String, Object>> recommends = [
  {
    'title': 'Honda Lead Trắng',
    'price': '30',
    'imgUrl':
        'https://media.dautuvietnam.com.vn/thumb_x800x/2021/01/03/9770/1609646157-bang-gia-xe-honda-lead-moi-nhat-ngay-312021-29-8417.jpg',
  },
  {
    'title': 'SH Mode',
    'price': '35',
    'imgUrl':
        'https://muaxegiatot.vn/wp-content/uploads/2020/07/Thiet-ke-moi-cua-Honda-SH-Mode-2020-2021-muaxegiatot-vn.jpg',
  },
  {
    'title': 'Honda Lead',
    'price': '25',
    'imgUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVuAFVSterynQUQmqCUpc3eJAQ82jQO7Qt5Q&usqp=CAU',
  },
  {
    'title': 'Vinfast Feliz',
    'price': '30',
    'imgUrl':
        'https://img.websosanh.vn/v10/users/review/images/ur99l82kk6g52/vinfast-feliz-1.jpg?compress=85',
  },
  {
    'title': 'Vespa',
    'price': '20',
    'imgUrl':
        'https://xedienvietthanh.com/wp-content/uploads/2019/11/Venus-th%C3%AAm-2.png',
  }
];

const List<Map<String, Object>> recently = [
  {
    'title': 'Honda SH 150i CBS/ABS',
    'price': '30',
    'imgUrl':
        'https://img.tinxe.vn/resize/1000x-/2019/11/07/XForF7yt/dscf2892-26c0-cfd0.jpg',
  },
  {
    'title': 'Honda Winner X 2022',
    'price': '35',
    'imgUrl':
        'https://img.tinxe.vn/resize/1000x-/2021/12/23/XForF7yt/honda-winner-x-phien-ban-moi-2022-2-15c2.jpg',
  },
  {
    'title': 'Honda SH Mode 2021',
    'price': '25',
    'imgUrl':
        'https://img.tinxe.vn/resize/1000x-/2020/07/16/XForF7yt/honda-sh-mode-2020-4-d79b.png',
  },
  {
    'title': 'Honda Lead 2021',
    'price': '30',
    'imgUrl':
        'https://image-us.24h.com.vn/upload/3-2019/images/2019-07-05/1562295693-443-nong-honda-lead-ra-ban-moi-nhin-sang-chanh-gia-tu-383-trieu-dong-lead1-1562286399-width660height630.jpg',
  },
  {
    'title': 'Honda CBR650R',
    'price': '35',
    'imgUrl':
        'https://img.tinxe.vn/resize/1000x-/2019/04/05/XForF7yt/4-honda-cbr650r-6173.png',
  }
];

List menusMore = [
  "Trang chủ",
  "Cửa hàng",
  "Quản lý sửa xe",
  "Thông báo",
];

List itemsTab = [
  {"icon": Icons.home, "size": 28.0},
  {"icon": FontAwesomeIcons.biking, "size": 22.0},
  {"icon": FontAwesomeIcons.moneyBill, "size": 22.0},
  {"icon": Icons.more_horiz, "size": 40.0},
];

List storeList = [
  {
    "img":
        "https://images.unsplash.com/photo-1507914372368-b2b085b925a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Châtelet - Les Halles, Paris",
    "open": 1
  },
  {
    "img":
        "https://images.unsplash.com/photo-1546213290-e1b492ab3eee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Champs-Élysées, Paris",
    "open": 0
  },
  {
    "img":
        "https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Châtelet - Les Halles, Paris",
    "open": 1
  },
];

class Item {
  int id;
  String name;
  String user;
  String phone;
  int done;
  String plate;
  String bikename;
  String date;
  String image;
  double price;

  Item({
    this.id,
    this.name,
    this.user,
    this.phone,
    this.done,
    this.plate,
    this.bikename,
    this.date,
    this.image,
    this.price,
  });
}

List<Item> repairList = [
  Item(
    id: 1,
    name: 'Fruit soup',
    user: 'Hà Xuân Nghĩa',
    phone: '0934657952',
    done: 1,
    plate: '75F1 12456',
    bikename: 'SH',
    date: '07/01/2022',
    image:
        'https://afamilycdn.com/150157425591193600/2020/7/23/1261290-1595475451112111073561.jpg',
    price: 3.50,
  ),
  Item(
    id: 2,
    name: 'Salad',
    user: 'Hà Xuân Nghĩa',
    phone: '0934657952',
    done: 1,
    plate: '75F1 12456',
    bikename: 'SH',
    date: '07/01/2022',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStcOUxhlVKdkjFPq3gX25cBbsg0J5A-gGiEw&usqp=CAU',
    price: 2,
  ),
  Item(
    id: 3,
    name: 'Salmon',
    user: 'Hà Xuân Nghĩa',
    phone: '0934657952',
    done: 0,
    plate: '75F1 12456',
    bikename: 'SH',
    date: '07/01/2022',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIX1XThf-puSCCr_nS73ZTxur1gBS9xOqYc8XlCac8vz6pXvgcn6sW2O6ESa_Gk58waoY&usqp=CAU',
    price: 15,
  ),
  Item(
    id: 4,
    name: 'Burger',
    user: 'Hà Xuân Nghĩa',
    phone: '0934657952',
    done: 0,
    plate: '75F1 12456',
    bikename: 'SH',
    date: '07/01/2022',
    image:
        'https://znews-photo.zadn.vn/w660/Uploaded/dqvpxpck/2020_05_26/thumb_grande2019.jpg',
    price: 6.5,
  ),
];

const List billList = [
  {
    "id": "BX001",
    "name": "Hà Xuân Nghĩa",
    "image":
        "https://danhgiaxe.net/wp-content/uploads/2017/04/Yamaha-Grande-2017-5.jpg",
    "phone": "0123456789",
    "address": "Huế",
    "price": "30",
    "date": "07/01/2021"
  },
  {
    "id": "BX002",
    "name": "Dương Kiều Trang",
    "image":
        "https://thoidai.com.vn/stores/news_dataimages/thuy.dang/082019/26/20/in_article/0028_top-7-xe-may-honda-khuyen-mai-khung-gay-sot-dip-tet-2019-04-.5895.jpg",
    "phone": "0123456789",
    "address": "Huế",
    "price": "30",
    "date": "07/01/2021"
  },
  {
    "id": "BX003",
    "name": "Hà Xuân Nghĩa",
    "image":
        "https://muasamxe.com/wp-content/uploads/2018/03/Honda-Vision-2018.jpg",
    "phone": "0123456789",
    "address": "Huế",
    "price": "30",
    "date": "07/01/2021"
  },
];
