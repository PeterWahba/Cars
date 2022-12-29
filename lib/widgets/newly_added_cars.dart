import 'package:flutter/material.dart';

class NewlyAddedCars extends StatelessWidget {
  const NewlyAddedCars({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>.generate(10000, (i) => 'Item $i');

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'عرض الكل',
                  style: TextStyle(
                    color: Color(0xFF2A6DDE),
                    fontFamily: 'Helvetica',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  SizedBox(
                    width: 195.0,
                    child: Text(
                      'السيارات المضافة حديثا',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontFamily: 'Helvetica',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 230.0,
                    child: Text(
                      'آخر تحديث اليوم ٨ صباحا',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      softWrap: true,
                      style: TextStyle(
                        color: Color(0xFF7D7D7D),
                        fontFamily: 'Helvetica',
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 120.0,
            child: ListView.builder(
                reverse: true,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => ListTile()),
          ),
        ],
      ),
    );
  }
}

class ListTile extends StatelessWidget {
  const ListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: 230,
      height: 110,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE0E0E0), width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            height: 41.0,
            color: const Color(0xFF5EE0E0E0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Crosstrek',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('assets/images/car_logo.png'),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'سنة الصنع',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0x7F000000),
                        fontFamily: 'Helvetica',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'جديد / ٢٠٢٣',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: 'Helvetica',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'نوع المحرك',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0x7F000000),
                        fontFamily: 'Helvetica',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'محرك بنزين',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: 'Helvetica',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
