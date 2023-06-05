import 'dart:math';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery/components/squar_tile.dart';
import 'package:food_delivery/menu.dart';
import 'package:food_delivery/pages/filter_pages.dart';
import 'package:food_delivery/pages/see_all.dart';
import 'package:food_delivery/widgets/coffeCard.dart';
import 'package:food_delivery/widgets/partnerCard.dart';
import '../components/search_button.dart';

class LoginPage1 extends StatelessWidget {
  LoginPage1({super.key});

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    MySearch(
                      controller: controller,
                      obscuretext: false,
                      hintText: 'Search In Cody',
                      Widget1: Icon(Icons.location_on),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 150,
                              height: 70,
                              child: DropdownSearch<String>(
                                popupProps: PopupProps.menu(
                                  showSelectedItems: true,
                                  disabledItemFn: (String s) =>
                                      s.startsWith('I'),
                                ),
                                items: [
                                  "Darussalam",
                                  "Subulussalam",
                                  "Banda Aceh",
                                  "Aceh Besar",
                                  "Aceh Selatan"
                                ],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "Delivery To",
                                    labelStyle: TextStyle(
                                      color: Color(0xFFEF9F27),
                                    ),
                                    hintText: "country in menu mode",
                                    enabledBorder: InputBorder.none,
                                  ),
                                ),
                                onChanged: print,
                                selectedItem: "Darussalam",
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.shade200,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.settings_input_component_rounded,
                                  color: Colors.grey, size: 20),
                              SizedBox(width: 10),
                              Text("Filter"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      //padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return filterPages();
                                }),
                              );
                            },
                            child: Container(
                              height: 7,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 345,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Best Partners",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 41),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            partnerCard(
                              images: "assets/images/burger1.png",
                              jarak: "1.5km",
                              location: "Santa Nella, CA 95322",
                              name: "Subway",
                              openClose: "Open",
                              ratting: "4.8",
                              ontap: () {},
                            ),
                            SizedBox(width: 16),
                            partnerCard(
                              images: "assets/images/taco.png",
                              jarak: "0.2km",
                              location: "Santa Nella, CA 95322",
                              name: "Taco Bell",
                              openClose: "Close",
                              ratting: "4.5",
                              ontap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent: 275,
                  ),
                  children: [
                    coffeCard(
                      category: "Coffe",
                      coffeImg: "assets/images/starbuck.png",
                      name: "Starbuck",
                      openClose: "Open",
                      ontap: () {},
                    ),
                    coffeCard(
                      category: "Fast Food",
                      coffeImg: "assets/images/subway.png",
                      name: "Subway",
                      openClose: "Open",
                      ontap: () {},
                    ),
                    coffeCard(
                      category: "Coffe",
                      coffeImg: "assets/images/Group 11.png",
                      name: "Taco Bell",
                      openClose: "Open",
                      ontap: () {},
                    ),
                    coffeCard(
                      category: "Fast Food",
                      coffeImg: "assets/images/Group 12.png",
                      name: "Pizza",
                      openClose: "Open",
                      ontap: () {},
                    ),
                    coffeCard(
                      category: "Fast Food",
                      coffeImg: "assets/images/burgerking.png",
                      name: "Burger King",
                      openClose: "Open",
                      ontap: () {},
                    ),
                    coffeCard(
                      category: "Fast Food",
                      coffeImg: "assets/images/mcd.png",
                      name: "MCD",
                      openClose: "Open",
                      ontap: () {},
                    ),
                    coffeCard(
                      category: "Coffe",
                      coffeImg: "assets/images/starbuck.png",
                      name: "Starbuck",
                      openClose: "Open",
                      ontap: () {},
                    ),
                    coffeCard(
                      category: "Coffe",
                      coffeImg: "assets/images/starbuck.png",
                      name: "Starbuck",
                      openClose: "Open",
                      ontap: () {},
                    ),
                    coffeCard(
                      category: "Coffe",
                      coffeImg: "assets/images/starbuck.png",
                      name: "Starbuck",
                      openClose: "Open",
                      ontap: () {},
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
