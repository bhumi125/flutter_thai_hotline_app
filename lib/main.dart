import 'package:flutter_thai_hotline_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_ui/material_ui.dart';

//------------------------------------------------------------
void main() {
  runApp(const FlutterThaiHotlineApp());
}

//------------------------------------------------------------
// คลาสที่เรียกใช้ Widget หลักของแอพ
class FlutterThaiHotlineApp extends StatefulWidget {
  const FlutterThaiHotlineApp({super.key});

  @override
  State<FlutterThaiHotlineApp> createState() => _FlutterThaiHotlineAppState();
}

class _FlutterThaiHotlineAppState extends State<FlutterThaiHotlineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ซ่อน Debug
      debugShowCheckedModeBanner: false,
      // ชื่อแอพ
      title: 'สายด่วน Thailand',
      // กำหนดหน้าแรกของแอพ
      home: const SplashScreenUI(),
      // กำหนด Theme ของแอพ
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: GoogleFonts.kanit().fontFamily,
              fontFamilyFallback: GoogleFonts.kanit().fontFamilyFallback,
            ),
      ),
    );
  }
}
