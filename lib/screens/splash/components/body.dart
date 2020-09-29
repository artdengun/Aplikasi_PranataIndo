// ignore: unused_import
import 'package:desain_awal/components/default_button.dart';
import 'package:desain_awal/constants.dart';
import 'package:desain_awal/screens/Sign_in/sign_in.dart';
// ignore: unused_import
import 'package:desain_awal/size_config.dart';
import 'package:flutter/material.dart';

// ini adalah best pratice untuk membuat splash screen
import 'splash_content.dart';

// 17. kita buat body kemudian kita panggil di splasshscreen
class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  //40 tambahkan list map

// 46 kita buat variable current page dengan nilai 0

  List<Map<String, String>> splashData = [
    {
      "text":
          "Gunakan komputer dan internet untuk mengakses perkuliahan, Mudahkan Kuliah di Pranata Indonesia",
      "image": "assets/images/data1.png",
    },
    {
      "text":
          "Jadwal kuliah fleksibel ini didukung dengan akses materi yang bisa dilakukan dari mana pun dan kapan pun.",
      "image": "assets/images/data2.png",
    },
    {
      "text":
          "Melalui media, proses pembelajaran bisa lebih menarik dan menyenangkan.",
      "image": "assets/images/data3.png",
    },
    {
      "text":
          "Bisa dilakuan dari mana saja seperti di rumah, di kantor atau di tempat lainnya ",
      "image": "assets/images/data4.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    // 19 kita  buat column untuk menampilkan background si screen
    // 23. tambahkan widget dengan tulisan safe area
    return SafeArea(
      // 25 kita tambahan widget dengan diganti tulisan SizeBox
      child: SizedBox(
          // 26 lebarnya tengah
          width: double.infinity,
          // 31 kita tambahkan splash content dengan extractWidget
          // 39 kita tambahkan PageView
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  // 49 ketika gambar di scrol tanda panah akan bergerak
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },

                  // 41 tambahkan length yang ignin dipanggil
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    // 36 kita masukan ke spalshcontent
                    // 41 kita masukan dengan splashdata
                    image: splashData[index]["image"],
                    // image: "assets/images/splash_1.png",
                    text: splashData[index]["text"],

                    // SETELAHH INI KITA BUAT FILE splascontent dart
                    // copy pate splash content di file tersendiri
                  ),
                ),
              ),

              // 43 kita modifikasi row
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      // kemudian kita bikin row
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // 45 kita genenrate splashdata, dengan menghitung panjangnya
                        // kemudian kita buat variable
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index)),
                      ),
                      // 51 kita buat tombol continue
                      Spacer(
                        flex: 3,
                      ),
                      DefaultButton(
                        text: "CONTINUE",
                        press: () {
                          // ketika dipencet dia akan ngeroute ke screen dari class SignInScreen #3
                          // lanjut ke konfigurasi sign_in
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

// 44 kita buat sendiri method dengan memamnggil menggunakan variable buildDot
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      // 50 agar ada anmation delay
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      // 47 kemudian kita ubah current page menjacurrentPage == index ? 20 : 6i

      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
          // 48 jika warna pertama orange maka selanjut abu bau,
          // selanjutnya kita buat onPageChanged
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
