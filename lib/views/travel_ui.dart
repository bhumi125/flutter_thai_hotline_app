import 'package:material_ui/material_ui.dart';
import 'package:flutter_thai_hotline_app/models/hotline.dart';
import 'package:flutter_thai_hotline_app/views/widgets/hotline_list_view.dart';

class TravelUI extends StatefulWidget {
  const TravelUI({super.key});

  @override
  State<TravelUI> createState() => _TravelUIState();
}

class _TravelUIState extends State<TravelUI> {
  // ตัวแปรเก็บข้อมูลสายด่วนการเดินทาง ที่จะใช้กับ ListView
  List<Hotline> travelData = [
    Hotline(
      name: 'ข้อมูลจราจร',
      phone: '1197',
      image: 'assets/images/travel/travel_4.png',
    ),
    Hotline(
      name: 'ตำรวจทางหลวง',
      phone: '1193',
      image: 'assets/images/travel/travel_1.png',
    ),
    Hotline(
      name: 'ตำรวจท่องเที่ยว',
      phone: '1155',
      image: 'assets/images/travel/travel_2.png',
    ),
    Hotline(
      name: 'เส้นทางบนทางด่วน',
      phone: '1543',
      image: 'assets/images/travel/travel_3.png',
    ),
    Hotline(
      name: 'ขสมก.',
      phone: '1348',
      image: 'assets/images/travel/travel_9.png',
    ),
    Hotline(
      name: 'บขส.',
      phone: '1490',
      image: 'assets/images/travel/travel_5.png',
    ),
    Hotline(
      name: 'กรมทางหลวง',
      phone: '1586',
      image: 'assets/images/travel/travel_8.png',
    ),
    Hotline(
      name: 'การรถไฟแห่งประเทศไทย',
      phone: '1690',
      image: 'assets/images/travel/travel_6.png',
    ),
    Hotline(
      name: 'กรมทางหลวงชนบท',
      phone: '1146',
      image: 'assets/images/travel/travel_7.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return HotlineListView(
      title: 'สายด่วน\nการเดินทาง',
      bannerImage: 'assets/images/travel/travel_0.png',
      hotlineData: travelData,
    );
  }
}
