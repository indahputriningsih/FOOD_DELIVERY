import 'package:flutter/material.dart';

class partnerCard extends StatelessWidget {
  partnerCard(
      {super.key, required this.images,
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
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Image.asset("assets/images/love.png"),
                ],
              ),
              Row(
                children: [
                  Text(
                    openClose,
                    style: const TextStyle(color: Color(0xff00875A)),
                  ),
                  const SizedBox(width: 18),
                  Text(
                    location,
                    style: const TextStyle(color: Color(0xff7A869A)),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    width: 49,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xffEF9F27),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/star.png"),
                        const SizedBox(width: 5),
                        Text(
                          ratting,
                          style: const TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    jarak,
                    style: const TextStyle(color: Color(0xff172B4D), fontSize: 12),
                  ),
                  const SizedBox(width: 16),
                  const Text(
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
