import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        elevation: 0,
        leading: const Image(
          height: 20,
          image: AssetImage("assets/images/images-removebg-preview.png"),
        ),
        title: const Flexible(
          child: Text(
            "Toshkent Davlat Iqtisodiyot Universitetining rasmiy ilovasi",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 4,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: _height,
          width: _width,
          child: SingleChildScrollView(
            child: Column(children: [
              const Center(
                child: Text(
                  "Universitet Haqida",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: _width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Image(
                      image: const AssetImage(
                        "assets/images/bino.png",
                      ),
                      // height: _height*0.3,
                      width: _width * 0.4,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Toshkent Davlat Iqtisodiyot Universiteti - yirik oliy o'quv yurti."
                      "Dunyo bo'yicha top mingtalikda mavjud emas."
                      "Rektor- Professor Sharipov Kongratbay Avezimbetovich(2019-yildan)."
                      "Tashkil topilgan yili - 1931-yil."
                      "Fakultetlar soni - 5ta. ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "Manzil - Toshkent shahar, Chilonzor tumani,O'zbekiston shoh ko'chasi,49-uy",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Center(
                      child: Text(
                        "Fakultetlar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ListTile(
                        leading: Image(
                          image: AssetImage("assets/images/logo.jpeg"),
                          height: 50,
                        ),
                        title: Text(
                          "Iqtisodiyot fakulteti",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const ListTile(
                      leading: Image(
                        image: AssetImage("assets/images/mvbh.jpeg"),
                        height: 50,
                      ),
                      title: Text(
                        "Moliya va buxgalteriya  fakulteti",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ListTile(
                        leading: Image(
                          image: AssetImage("assets/images/ko.jpeg"),
                          height: 52,
                        ),
                        title: Text(
                          "Korporativ boshqaruv fakulteti",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const ListTile(
                        leading: Image(
                          image: AssetImage("assets/images/xt.jpeg"),
                          height: 50,
                        ),
                        title: Text(
                          "Xalqaro turizm fakulteti",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const ListTile(
                        leading: Image(
                          image: AssetImage("assets/images/riq.jpeg"),
                          height: 50,
                        ),
                        title: Text(
                          "Raqamli iqtisodiyot fakulteti",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Yangiliklar",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Hammasi",
                            style: TextStyle(
                                color: Colors.indigo.shade900, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          news(
                              "assets/images/news1.jpg",
                              "TDIU hamda AQSHning universitetlari o'rtasida hamkorlik",
                              "Yangiliklar",
                              "04/07/2023"),
                          news(
                              "assets/images/news1.jpg",
                              "TDIU hamda AQSHning universitetlari o'rtasida hamkorlik",
                              "Yangiliklar",
                              "04/07/2023"),
                          news(
                              "assets/images/news1.jpg",
                              "TDIU hamda AQSHning universitetlari o'rtasida hamkorlik",
                              "Yangiliklar",
                              "04/07/2023"),
                          news(
                              "assets/images/news1.jpg",
                              "TDIU hamda AQSHning universitetlari o'rtasida hamkorlik",
                              "Yangiliklar",
                              "04/07/2023"),
                          news(
                              "assets/images/news1.jpg",
                              "TDIU hamda AQSHning universitetlari o'rtasida hamkorlik",
                              "Yangiliklar",
                              "04/07/2023"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        "Qo'shma dasturlar",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    united("assets/images/Logo-IJDP-removebg-preview.png",
                        "TDIU-Pendikan qo'shma dasturi"),
                    united("assets/images/Logo-IJDP-removebg-preview.png",
                        "TDIU-Pendikan qo'shma dasturi"),
                    united("assets/images/Logo-IJDP-removebg-preview.png",
                        "TDIU-Pendikan qo'shma dasturi"),
                    united("assets/images/Logo-IJDP-removebg-preview.png",
                        "TDIU-Pendikan qo'shma dasturi"),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget news(image, content, category, data) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: _height * 0.3,
        width: _width * 0.34,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Image(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
            const SizedBox(
              height: 5,
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  content,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  maxLines: 3,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(category),
                Text(data),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget united(image, content) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            leading: Image(
              height: 35,
              image: AssetImage(image),
            ),
            title: Text(content,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
          ),),
    );
  }
}
