import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String value;
  final IconData icon;
  final String units;

  const CardView(
      {Key key,
      this.backgroundColor,
      this.title,
      this.value,
      this.icon,
      this.units})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        height: 400,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 40,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(value,
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
                  Text(units),
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
