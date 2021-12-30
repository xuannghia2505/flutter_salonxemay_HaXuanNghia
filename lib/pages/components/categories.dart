import 'package:flutter/material.dart';

class RepairCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard('Đã xong'),
          CategoryCard('Chưa xong'),
        ],
      ),
    );
  }
}

class BikeCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard('Đã xong'),
          CategoryCard('Chưa xong'),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String name;

  CategoryCard(this.name);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.blueGrey)],
        ),
        width: 120,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Text(name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
