import 'package:material_ui/material_ui.dart';
import 'package:flutter_thai_hotline_app/models/hotline.dart';
import 'package:flutter_thai_hotline_app/views/widgets/hotline_list_view.dart';

class EmgUI extends StatefulWidget {
  const EmgUI({super.key});

  @override
  State<EmgUI> createState() => _EmgUIState();
}

class _EmgUIState extends State<EmgUI> {
  // ตัวแปรเก็บข้อมูลสายด่วนอุบัติเหตุ-เหตุฉุกเฉิน ที่จะใช้กับ ListView
  List<Hotline> emgData = [
    Hotline(
      name: 'เหตุด่วนเหตุร้าย',
      phone: '191',
      image: 'assets/images/emergency/emg_1.png',
    ),
    Hotline(
      name: 'ศูนย์ปลอดภัยคมนาคม',
      phone: '1356',
      image: 'assets/images/emergency/emg_6.png',
    ),
    Hotline(
      name: 'หน่วยแพทย์กู้ชีพ',
      phone: '1554',
      image: 'assets/images/emergency/emg_7.png',
    ),
    Hotline(
      name: 'ศูนย์เอราวัณ',
      phone: '1646',
      image: 'assets/images/emergency/emg_8.png',
    ),
    Hotline(
      name: 'เจ็บป่วยฉุกเฉิน',
      phone: '1669',
      image: 'assets/images/emergency/emg_9.png',
    ),
    Hotline(
      name: 'แจ้งไฟไหม้ สัตว์เข้าบ้าน',
      phone: '199',
      image: 'assets/images/emergency/emg_2.png',
    ),
    Hotline(
      name: 'สายด่วนรถหาย',
      phone: '1192',
      image: 'assets/images/emergency/emg_3.png',
    ),
    Hotline(
      name: 'อุบัติเหตุทางน้ำ',
      phone: '1196',
      image: 'assets/images/emergency/emg_4.png',
    ),
    Hotline(
      name: 'แจ้งคนหาย',
      phone: '1300',
      image: 'assets/images/emergency/emg_5.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return HotlineListView(
      title: 'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
      bannerImage: 'assets/images/emergency/emg_0.png',
      hotlineData: emgData,
    );
  }
}
