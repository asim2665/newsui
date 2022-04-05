import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  Page1({
    Key? key,
    required this.image,
    required this.followers,
  });
  String image;
  String followers;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: SizedBox(
                height: double.infinity,
                width: 400,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 15,
                          width: double.infinity,
                          color: Colors.transparent),
                      CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage(
                          image,
                        ),
                      ),
                      Container(
                          height: 15,
                          width: double.infinity,
                          color: Colors.transparent),
                      textStyle(text: "Flutter is Awesome", fontSize: 24),
                      Container(
                          height: 15,
                          width: double.infinity,
                          color: Colors.transparent),
                      textStyle(
                        text: "Student",
                        fontSize: 14,
                      ),
                      Container(
                          height: 20,
                          width: double.infinity,
                          color: Colors.transparent),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ColumnText('872.4K', 'Hits'),
                          Container(
                            color: Colors.grey,
                            height: 70,
                            width: .5,
                          ),
                          ColumnText(followers, 'Followers'),
                          Container(
                            color: Colors.grey,
                            height: 70,
                            width: .5,
                          ),
                          ColumnText('127', 'Following'),
                        ],
                      ),
                      const Divider(
                        indent: 40,
                        endIndent: 40,
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ColorFilledBtn(),
                          roundOutlinedButton('Website'),
                        ],
                      ),
                      Container(
                        height: 10,
                        width: double.infinity,
                        color: Colors.transparent,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            textStyle(
                              text: 'Top News',
                              fontSize: 14,
                            ),
                            textStyle(
                              text: 'Recents',
                              fontSize: 14,
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 200,
                            child: Divider(
                              indent: 20,
                              thickness: 2,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: Divider(
                              thickness: 2,
                              endIndent: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 350,
                        width: 400,
                        child: Column(
                          children: [
                            listNews(
                                'assets/images/1.PNG',
                                'Wow! USA Develops New\nWay of Faster and More ...',
                                'Health'),
                            const SizedBox(
                              height: 10,
                            ),
                            listNews(
                                'assets/images/2.PNG',
                                'Machester United Adds a\nFamous Portugal Player ...',
                                'Sport'),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }

  listNews(String image, String text, String tag) {
    return Container(
      height: 160,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        border: Border.all(width: 2, color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            height: 175,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Text(
                    'Asim Tariq',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(
                                width: 1,
                                color: Colors.pink.shade300,
                              )),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: textStyle(
                      text: tag,
                      fontSize: 14,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Container roundOutlinedButton(String text) {
    return Container(
      width: 185,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateBorderSide.resolveWith((states) => BorderSide(
                width: 1,
                color: Colors.red.shade300,
              )),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.language,
              color: Colors.red.shade300,
            ),
            const SizedBox(
              width: 10,
            ),
            textStyle(
              text: text,
              fontSize: 14,
              color: Colors.red.shade300,
            )
          ],
        ),
      ),
    );
  }

  Container ColorFilledBtn() {
    return Container(
      width: 185,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => Colors.red,
          ),
          elevation: MaterialStateProperty.resolveWith((states) => 0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_add_alt_1,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            textStyle(
              text: 'Follow',
              fontSize: 14,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  ColumnText(String title, String subtitle) {
    return Column(
      children: [
        textStyle(
          text: title,
          fontSize: 24,
        ),
        const SizedBox(
          height: 10,
        ),
        textStyle(
          text: subtitle,
          fontSize: 16,
        ),
      ],
    );
  }

  textStyle({
    required String text,
    required double fontSize,
    Color color = Colors.black,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
