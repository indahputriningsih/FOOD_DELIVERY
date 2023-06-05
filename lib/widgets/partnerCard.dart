import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class partnerCard extends StatelessWidget {
  partnerCard(
      {required this.images,
      required this.jarak,
      required this.location,
      required this.name,
      required this.openClose,
      required this.ratting,
      required this.ontap});

  String images;
  String name;
  String openClose;
  String ratting;
  String jarak;
  String location;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: Container(
          height: 238,
          width: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset(images),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20),
                  ),
                  Image.asset("assets/images/love.png"),
                ],
              ),
              Row(
                children: [
                  Text(
                    openClose,
                    style: TextStyle(color: Color(0xff00875A)),
                  ),
                  SizedBox(width: 18),
                  Text(
                    location,
                    style: TextStyle(color: Color(0xff7A869A)),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    width: 49,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffEF9F27),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/star.png"),
                        SizedBox(width: 5),
                        Text(
                          ratting,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    jarak,
                    style: TextStyle(color: Color(0xff172B4D), fontSize: 12),
                  ),
                  SizedBox(width: 16),
                  Text(
                    "Free Shipping",
                    style: TextStyle(color: Color(0xff172B4D), fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
