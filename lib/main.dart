import 'package:flutter/material.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',

      home: Scaffold(
        appBar: AppBar(title: const Text('My Resume')),

        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            children: [
              // รูปโปรไฟล์และชื่อ
              Container(
                padding: const EdgeInsets.all(16.0),

                decoration: BoxDecoration(
                  color: Colors.blue.shade900,

                  borderRadius: BorderRadius.circular(12.0),
                ),

                child: Row(
                  children: [
                    // รูปโปรไฟล์
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),

                      child: Image.network(
                        'https://media.discordapp.net/attachments/1064454626646171668/1401388704962056284/408034866_1357786548459293_5782329742319466697_n.png?ex=6890186f&is=688ec6ef&hm=3ac9abcd6727f153c27829d5f583aedf216d1aeb0a6595a0dc0caf32eb3db42f&=&format=webp&quality=lossless&width=960&height=960', // เปลี่ยนเป็น URL หรือ Asset ของคุณ

                        width: 100,

                        height: 100,

                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 16),

                    // ชื่อและตำแหน่ง
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: const [
                        Text(
                          'นายกังหัน แสงอรุณ',

                          style: TextStyle(
                            fontSize: 20,

                            fontWeight: FontWeight.bold,

                            color: Colors.white,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          '66310301 ComSci',

                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ข้อมูลส่วนตัว
              Container(
                width: double.infinity,

                padding: const EdgeInsets.all(16.0),

                decoration: BoxDecoration(
                  color: Colors.blue.shade900,

                  borderRadius: BorderRadius.circular(12.0),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: const [
                    Text(
                      'ข้อมูลส่วนตัว',

                      style: TextStyle(
                        fontSize: 18,

                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      '📧 Email: kanghunproject@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),

                    Text(
                      '📱 โทร: 082-769-5499',
                      style: TextStyle(color: Colors.white),
                    ),

                    Text(
                      '📍 ที่อยู่: ลำปาง, ประเทศไทย',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ประวัติย่อ
              Container(
                width: double.infinity,

                padding: const EdgeInsets.all(16.0),

                decoration: BoxDecoration(
                  color: Colors.blue.shade900,

                  borderRadius: BorderRadius.circular(12.0),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: const [
                    Text(
                      'เกี่ยวกับฉัน',

                      style: TextStyle(
                        fontSize: 18,

                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      'ปัจจุบันศึกษาอยู่ที่ มหาวิทยาลัยนเรศวน'
                      'คณะวิทยาศาสตร์ สาขาวิชทวิทยาการคอมพิวเตอร์ ชั้นปีที่ 3'
                      'เกรดเฉลี่ยนสะสม 3.71',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ประวัติการศึกษา",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "ประถม โรงเรียนมารีย์วิทย์บ่อวิน 2560\n"
                      "มัธยมต้น  โรงเรียนบุญวาทย์วิทยาลัย 2563 \n"
                      "มัธยมปลาย โรงเรียนบุญวาทย์วิทยาลัย 2566",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
