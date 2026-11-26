import 'package:material_ui/material_ui.dart';
import 'package:flutter_thai_hotline_app/models/hotline.dart';
import 'package:flutter_thai_hotline_app/views/widgets/hotline_list_view.dart';

class PubUI extends StatefulWidget {
  const PubUI({super.key});

  @override
  State<PubUI> createState() => _PubUIState();
}

class _PubUIState extends State<PubUI> {
  // ตัวแปรเก็บข้อมูลสายด่วนสาธารณูปโภค ที่จะใช้กับ ListView
  List<Hotline> pubData = [
    Hotline(
      name: 'การไฟฟ้านครหลวง',
      phone: '1130',
      image: 'assets/images/pubutil/pub_1.png',
    ),
    Hotline(
      name: 'การไฟฟ้าส่วนภูมิภาค',
      phone: '1129',
      image: 'assets/images/pubutil/pub_2.png',
    ),
    Hotline(
      name: 'การไฟฟ้าฝ่ายผลิต',
      phone: '1416',
      image: 'assets/images/pubutil/pub_3.png',
    ),
    Hotline(
      name: 'การประปานครหลวง',
      phone: '1125',
      image: 'assets/images/pubutil/pub_4.png',
    ),
    Hotline(
      name: 'การประปาส่วนภูมิภาค',
      phone: '1662',
      image: 'assets/images/pubutil/pub_5.png',
    ),
    Hotline(
      name: 'ทรู',
      phone: '1242',
      image: 'assets/images/pubutil/pub_6.png',
    ),
    Hotline(
      name: 'ดีแทค',
      phone: '1678',
      image: 'assets/images/pubutil/pub_7.png',
    ),
    Hotline(
      name: 'เอไอเอส',
      phone: '1175',
      image: 'assets/images/pubutil/pub_8.png',
    ),
    Hotline(
      name: 'ทีโอที',
      phone: '1100',
      image: 'assets/images/pubutil/pub_9.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return HotlineListView(
      title: 'สายด่วน\nสาธารณูปโภค',
      bannerImage: 'assets/images/pubutil/pub_0.png',
      hotlineData: pubData,
    );
  }
}
