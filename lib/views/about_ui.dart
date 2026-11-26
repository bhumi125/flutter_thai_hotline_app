import 'package:material_ui/material_ui.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  // สไตล์ข้อความข้อมูลนักศึกษา ใช้ซ้ำหลายบรรทัด
  TextStyle infoStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    height: 1.9,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFD9D9D9),
        centerTitle: true,
        // ปุ่มย้อนกลับไปหน้า HomeUI()
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'สายด่วน THAILAND',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                'ผู้จัดทำ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              // โลโก้มหาวิทยาลัย
              Image.asset(
                'assets/images/aboutme/saulogo.png',
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'มหาวิทยาลัยเอเชียอาคเนย์',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              // รูปผู้จัดทำแบบวงกลม
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.15,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: const AssetImage(
                    'assets/images/aboutme/me.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // ข้อมูลนักศึกษา
              Text(
                '6819110041',
                style: infoStyle,
              ),
              Text(
                'ภูมิ ศรีเฟื่องฟุ้ง',
                style: infoStyle,
              ),
              Text(
                'student@sau.ac.th',
                style: infoStyle,
              ),
              Text(
                'วิศวกรรมคอมพิวเตอร์',
                style: infoStyle,
              ),
              Text(
                'คณะวิศวกรรมศาสตร์',
                style: infoStyle,
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
