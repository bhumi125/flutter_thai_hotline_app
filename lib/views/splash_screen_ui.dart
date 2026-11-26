import 'package:flutter_thai_hotline_app/views/home_ui.dart';
import 'package:material_ui/material_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // หน่วงเวลา 3 วินาทีแล้วเปิดไปหน้า HomeUI() แบบย้อนกลับไม่ได้
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () {
        if (!mounted) return;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeUI(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ส่วนของรูปภาพ
            Image.asset(
              'assets/icon/icon.png',
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 60,
            ),
            // ส่วนของชื่อแอพ
            Text(
              'THAI HOTLINE APP',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'สายด่วน',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
