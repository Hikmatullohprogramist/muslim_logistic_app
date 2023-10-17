import 'package:flutter/material.dart';
import 'package:muslim_logistic_app/widgets/category_widget.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});

  List<String> category_name = [
    "Barcha buyurtmalar",
    "Tasqiqlangan",
    "To’langan",
    "Yetkazib berish",
    "Tetkazib berilgan",
    "Bekor qlingan",
    "Tamirlash"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                      width: 380,
                      height: 60.43,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF008660),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.94),
                        ),
                      ),
                      child: const Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 32,
                            ),
                            hintText: "Izlash ...",
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16.27,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 31.91,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: category_name.length,
                itemBuilder: (context, index) {
                  return CategoryWidget(
                    title: category_name[index],
                  );
                },
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            shrinkWrap: true,
            itemCount: 12,
            itemBuilder: (context, index) {
              return Container(
                width: 380,
                margin: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/uzb_flag.png"),
                            const Text(
                              'UZB',
                              style: TextStyle(
                                color: Color(0xFF868686),
                                fontSize: 12,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 76,
                          height: 24,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7, vertical: 1),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFFABABAB)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              '30.09.2023',
                              style: TextStyle(
                                color: Color(0xFF5C5C5C),
                                fontSize: 12,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/poteto.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '5 tonna kartoshka',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w500,
                            height: 0.07,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Farg’ona shahar, Hiyobon ko’chasi, 7',
                          style: TextStyle(
                            color: Color(0xFF191D31),
                            fontSize: 17.59,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w500,
                            height: 0.07,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff133BB7),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Toshkent shahar, Beruniy ko’chasi, 46',
                          style: TextStyle(
                            color: Color(0xFF191D31),
                            fontSize: 17.59,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w500,
                            height: 0.07,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/dollar.jpg"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '1590',
                          style: TextStyle(
                            color: Color(0xFFA8AAB8),
                            fontSize: 14,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w300,
                            height: 0.09,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset("assets/kg.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'n/a',
                          style: TextStyle(
                            color: Color(0xFFA8AAB8),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/id.png"),
                            const Text(
                              '00091AZ12344XMZ1',
                              style: TextStyle(
                                color: Color(0xFFA8AAB8),
                                fontSize: 14,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w300,
                                height: 0.09,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Badge(
                              child: Icon(
                                Icons.messenger_outline_sharp,
                              ),
                              label: Text(
                                "21",
                              ),
                              backgroundColor: Color(
                                0xff02946B,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.bookmark),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
