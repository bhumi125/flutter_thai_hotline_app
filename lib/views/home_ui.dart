import 'package:flutter_thai_hotline_app/views/about_ui.dart';
import 'package:flutter_thai_hotline_app/views/bank_ui.dart';
import 'package:flutter_thai_hotline_app/views/emg_ui.dart';
import 'package:flutter_thai_hotline_app/views/pub_ui.dart';
import 'package:flutter_thai_hotline_app/views/travel_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_ui/material_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  // ตัวแปรเก็บลำดับของหน้าที่เลือกอยู่ใน BottomNavigationBar
  int currentIndex = 0;

  // ตัวแปรเก็บหน้าจอย่อยของแต่ละเมนู
  List<Widget> subHomeUI = [
    const TravelUI(),
    const EmgUI(),
    const BankUI(),
    const PubUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFD9D9D9),
        centerTitle: true,
        title: const Text(
          'สายด่วน THAILAND',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          // ปุ่มเปิดไปหน้า AboutUI() ผู้จัดทำ
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUI(),
                ),
              );
            },
            icon: const Icon(
              Icons.error_outline,
              color: Colors.black,
            ),
          ),
        ],
      ),
      // แสดงหน้าจอย่อยตามเมนูที่เลือก
      body: subHomeUI[currentIndex],
      // ส่วนของเมนูด้านล่าง
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (paramValue) {
          setState(() {
            currentIndex = paramValue;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 22),
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 11,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.car),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.truckMedical),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.buildingColumns),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.lightbulb),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
    );
  }
}
