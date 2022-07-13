import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisdoms Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List verse = [
    {
      "line1": " الرقم واحد لكي نطول الكتابة كتابة كتابة كتابة كتابة  لا تشكُ للناسِ جرحاً أنتَ صاحبه",
      "line2": "لا يؤلمُ الجرحَ إلا منْ به ألم"
    },
    {
      "line1": "1- شَكْوَاكَ لِلنَّاسِ يا ابنَ النَّاس منْقصَةٌ",
      "line2": "ومَن مِنَ النَّاسِ صَاحِ مَا بِهِ سَقَمُ"
    },
    {
      "line1": "2- فَإِنْ شَكَوْتَ لِمَنْ طَابَ الزَّمَانُ لَهُ",
      "line2": "عَيْنَاكَ تَغْلِي وَمَنْ تَشْكُو لَهُ صَنَمُ"
    },
    {
      "line1": "3- وَإِذَا شَكَوْتَ لِمَنْ شَكْوَاكَ تُسْعِدُهُ",
      "line2": "أَضَفْتَ جُرْحًا لِجُرْحِكَ اِسْمُهُ النَّدَمُ"
    },
    {
      "line1": "هل المواساه يوماً حرت وطناً",
      "line2": "أم التعازى بديل ان هو العلمُ"
    },
    {
      "line1": "من يندب الحظ يطفئ عين همته",
      "line2": "لاعين للحظ أن لم تبصر الهمم"
    },
    {
      "line1": "وَمِنْ سِوَى اللهِ نَأْوِي تَحْتَ سِدْرَتِهِ",
      "line2": "وَنَسْتَغِيثُ بِهِ عَوِّنَا وَنَعْتَصِمُ"
    },
    {
      "line1": "كُن فَيْلَسُوفًَا ترى أنَّ الجميعَ هُنَا",
      "line2": "يتقاتلون على عَدَمٍ وهُم عَدَمُ!!"
    },
  ];

  int myIndex = 0;

  changeIndex(String myDirection) {
    if (myDirection == 'right') {
      setState(() {
        if (myIndex == (verse.length - 1)) {
          myIndex = 0;
        } else {
          myIndex++;
        }
      });
    } else if (myDirection == 'left') {
      setState(() {
        if (myIndex == 0) {
          myIndex = (verse.length - 1);
        } else {
          myIndex--;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wisdoms'),
          centerTitle: true,
        ),
        body: Center(
          child: SizedBox(
            width: 900,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(verse[myIndex]['line1']),
                const SizedBox(
                  height: 20,
                ),
                Text(verse[myIndex]['line2']),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        changeIndex('left');
                      },
                      backgroundColor: Colors.amber,
                      child: const Icon(
                        Icons.arrow_left,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        changeIndex('right');
                      },
                      backgroundColor: Colors.amber,
                      child: const Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
