// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCard = 0;

  var category_name = <String>[
    "Valyutalar kursi",
    "Transportim",
    "Buyurtmalarim",
    "Yordam markazi",
    "Hisobim",
    "Ko’proq ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //AppBar
          Stack(
            children: [
              Image.asset("assets/back.png"),
              Container(
                padding: const EdgeInsets.all(26),
                margin: const EdgeInsets.only(top: 64),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/logo.png"),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.white, width: 0.75),
                          ),
                          child: const Badge(
                            label: Text(
                              "1",
                              style: TextStyle(color: Colors.white),
                            ),
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.white,
                              size: 34,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 87.88,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13.70),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Aktiv buyurtma',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13.70,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Buyurtma nomi',
                                style: TextStyle(
                                  color: Color(0xFF191D31),
                                  fontSize: 20.54,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 27.39,
                            height: 27.39,
                            decoration: BoxDecoration(
                              color: const Color(0xFF0A986F),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // todo: Bodyni qilish
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // todo categorys bolimi
              Expanded(
                flex: 2,
                child: GridView.builder(
                  padding: const EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 112 / 93,
                    crossAxisSpacing: 17,
                    mainAxisSpacing: 17,
                    crossAxisCount: 3,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = index;
                        });
                        if (kDebugMode) {
                          print("curr item $selectedCard");
                        }
                      },
                      child: Container(
                        width: 112.93,
                        height: 93.54,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2.14,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: selectedCard == index
                                  ? const Color(0xFF009269)
                                  : Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(13.69),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/image_${index + 1}.png"),
                            Text(
                              category_name[index],
                              style: const TextStyle(
                                color: Color(0xFF191D31),
                                fontSize: 12,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              // todo Widgetlar bolimi

              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Qanaqadir vidjetlar',
                  style: TextStyle(
                    color: Color(0xFF191D31),
                    fontSize: 18.25,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Expanded(
                flex: 2,
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: const Text(
                        'JT72531835',
                        style: TextStyle(
                          color: Color(0xFF191D31),
                          fontSize: 15.97,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: const Text(
                        'Processed at sort facility',
                        style: TextStyle(
                          color: Color(0xFFA7A9B7),
                          fontSize: 15.97,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: const Text(
                        '2 Hrs',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFFA7A9B7),
                          fontSize: 13.69,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      leading: SizedBox(
                        width: 57.03,
                        height: 57.03,
                        child: Image.asset("assets/box.png"),
                      ),
                    );
                  },
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
