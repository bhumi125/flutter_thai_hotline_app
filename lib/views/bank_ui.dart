import 'package:material_ui/material_ui.dart';
import 'package:flutter_thai_hotline_app/models/hotline.dart';
import 'package:flutter_thai_hotline_app/views/widgets/hotline_list_view.dart';

class BankUI extends StatefulWidget {
  const BankUI({super.key});

  @override
  State<BankUI> createState() => _BankUIState();
}

class _BankUIState extends State<BankUI> {
  // ตัวแปรเก็บข้อมูลสายด่วนธนาคาร ที่จะใช้กับ ListView
  List<Hotline> bankData = [
    Hotline(
      name: 'ธนาคารกรุงไทย',
      phone: '0-2111-1111',
      image: 'assets/images/bank/bank_4.png',
    ),
    Hotline(
      name: 'ธนาคารกรุงเทพ',
      phone: '1333',
      image: 'assets/images/bank/bank_1.png',
    ),
    Hotline(
      name: 'ธนาคารกรุงศรีอยุธยา',
      phone: '1572',
      image: 'assets/images/bank/bank_5.png',
    ),
    Hotline(
      name: 'ธนาคารกสิกรไทย',
      phone: '0-2888-8888',
      image: 'assets/images/bank/bank_3.png',
    ),
    Hotline(
      name: 'ธนาคารไทยพาณิชย์',
      phone: '0-2777-7777',
      image: 'assets/images/bank/bank_10.png',
    ),
    Hotline(
      name: 'ธนาคารออมสิน',
      phone: '1115',
      image: 'assets/images/bank/bank_2.png',
    ),
    Hotline(
      name: 'ธนาคารทีทีบี',
      phone: '1428',
      image: 'assets/images/bank/bank_6.png',
    ),
    Hotline(
      name: 'ธนาคารซิตี้แบงก์',
      phone: '1588',
      image: 'assets/images/bank/bank_7.png',
    ),
    Hotline(
      name: 'ธนาคารแลนด์ แอนด์ เฮ้าส์',
      phone: '1327',
      image: 'assets/images/bank/bank_8.png',
    ),
    Hotline(
      name: 'ธนาคารอาคารสงเคราะห์',
      phone: '0-2645-9000',
      image: 'assets/images/bank/bank_9.png',
    ),
    Hotline(
      name: 'ธนาคารเกียรตินาคินภัทร',
      phone: '0-2165-5555',
      image: 'assets/images/bank/bank_11.png',
    ),
    Hotline(
      name: 'ธนาคารไทยเครดิต',
      phone: '0-2697-5454',
      image: 'assets/images/bank/bank_12.png',
    ),
    Hotline(
      name: 'ธนาคารยูโอบี',
      phone: '0-2285-1555',
      image: 'assets/images/bank/bank_13.png',
    ),
    Hotline(
      name: 'ธนาคารทิสโก้',
      phone: '0-2633-6000',
      image: 'assets/images/bank/bank_14.png',
    ),
    Hotline(
      name: 'ธนาคารอิสลามแห่งประเทศไทย',
      phone: '0-2204-2766',
      image: 'assets/images/bank/bank_15.png',
    ),
    Hotline(
      name: 'ธนาคารซีไอเอ็มบี ไทย',
      phone: '0-2626-7777',
      image: 'assets/images/bank/bank_16.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return HotlineListView(
      title: 'สายด่วน\nธนาคาร',
      bannerImage: 'assets/images/bank/bank_0.png',
      hotlineData: bankData,
    );
  }
}
