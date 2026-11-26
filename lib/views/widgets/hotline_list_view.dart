import 'package:material_ui/material_ui.dart';
import 'package:flutter_thai_hotline_app/models/hotline.dart';
import 'package:url_launcher/url_launcher.dart';

// Widget กลางที่ใช้แสดงหน้าสายด่วนแต่ละหมวด (หัวข้อ + รูป + รายการสายด่วน)
// ใช้ร่วมกันใน TravelUI, EmgUI, BankUI และ PubUI
class HotlineListView extends StatelessWidget {
  final String title;
  final String bannerImage;
  final List<Hotline> hotlineData;

  const HotlineListView({
    super.key,
    required this.title,
    required this.bannerImage,
    required this.hotlineData,
  });

  // เมธอดโทรออกไปยังเบอร์ที่ส่งมา (ตัด - และช่องว่างออกก่อน)
  Future<void> _callPhone(String phone) async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: phone.replaceAll('-', '').replaceAll(' ', ''),
    );
    await launchUrl(phoneUri);
  }

  @override
  Widget build(BuildContext context) {
    // ขนาดหน้าจอ ใช้คำนวณขนาด Widget ให้ปรับตามแต่ละเครื่อง
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
        vertical: screenHeight * 0.02,
      ),
      // +1 เพราะลำดับแรกเป็นส่วนหัว (ชื่อหมวด + รูป)
      itemCount: hotlineData.length + 1,
      itemBuilder: (context, index) {
        // ส่วนหัวของหน้า ชื่อหมวดและรูปภาพ
        if (index == 0) {
          return Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenHeight * 0.026,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              // รูปแบนเนอร์ของหมวด
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  bannerImage,
                  width: screenWidth * 0.8,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: screenHeight * 0.025),
            ],
          );
        }

        // ส่วนของการ์ดสายด่วนแต่ละรายการ
        Hotline hotline = hotlineData[index - 1];
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight * 0.015),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade400),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          // กดที่การ์ดเพื่อโทรออก
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => _callPhone(hotline.phone!),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.04,
                  vertical: screenHeight * 0.015,
                ),
                child: Row(
                  children: [
                    // รูปโลโก้หน่วยงานในกรอบสี่เหลี่ยมจัตุรัสมุมมน
                    Container(
                      width: screenWidth * 0.15,
                      height: screenWidth * 0.15,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black87, width: 1.5),
                      ),
                      child: Image.asset(hotline.image!, fit: BoxFit.contain),
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    // ชื่อหน่วยงานและเบอร์โทร
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hotline.name!,
                            style: TextStyle(
                              fontSize: screenHeight * 0.019,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            hotline.phone!,
                            style: TextStyle(
                              fontSize: screenHeight * 0.017,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ปุ่มโทรออก
                    IconButton(
                      icon: Icon(
                        Icons.phone_outlined,
                        size: screenWidth * 0.075,
                        color: Colors.black87,
                      ),
                      onPressed: () => _callPhone(hotline.phone!),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
