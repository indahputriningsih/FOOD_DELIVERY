import 'package:flutter/material.dart';

class coffeCard extends StatelessWidget {
  coffeCard({
    super.key,
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
          padding: const EdgeInsets.only(top: 15),
          width: 164,
          height: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Center(
                child: Image.network(coffeImg),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(width: 5),
                        Image.asset("assets/images/love.png")
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          openClose,
                          style: const TextStyle(
                              fontSize: 12, color: Color(0xff00875A)),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          category,
                          style: const TextStyle(
                              fontSize: 12, color: Color(0xff7A869A)),
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
