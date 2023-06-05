import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class coffeCard extends StatelessWidget {
  coffeCard({
    required this.category,
    required this.coffeImg,
    required this.name,
    required this.openClose,
    required this.ontap,
  });

  String coffeImg;
  String name;
  String openClose;
  String category;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.only(top: 15),
          width: 164,
          height: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Center(
                child: Image.asset(coffeImg),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(width: 5),
                        Image.asset("assets/images/love.png")
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          openClose,
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff00875A)),
                        ),
                        SizedBox(width: 10),
                        Text(
                          category,
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff7A869A)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
