import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          Padding(
              padding: EdgeInsets.only(
                right: 15,
              ),
              child: Icon(
                Icons.filter,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  childAspectRatio: 2.9 / 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 14,
                  children: [
                    gridviewItem(
                        Color.fromRGBO(
                          0,
                          135,
                          255,
                          1,
                        ),
                        Icons.fire_extinguisher,
                        "popularity"),
                    gridviewItem(
                        Color.fromRGBO(
                          132,
                          92,
                          238,
                          1,
                        ),
                        Icons.calendar_today,
                        "End date"),
                    gridviewItem(Color.fromRGBO(255, 72, 8, 1),
                        Icons.video_collection, "Newest"),
                    gridviewItem(Color.fromRGBO(255, 186, 0, 1),
                        Icons.money_off, "Most Funded"),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recommened",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                  padding: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 2.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://im.indiatimes.in/amp/2019/Jun/world_environment_day_1559714742.jpg?w=1200&h=900&cc=1"),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                                padding: EdgeInsets.only(
                                  left: 18,
                                  top: 24,
                                ),
                                child: Text(
                                  "The Emergence of Plants",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 46,
                                    fontWeight: FontWeight.w900,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "805",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text("Volunters",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "\3670",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text("placed plants",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "\4000",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text("Goal",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                  ))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SliderTheme(
                          child: Slider.adaptive(
                            value: 90,
                            min: 0,
                            max: 100,
                            onChanged: null,
                          ),
                          data: SliderTheme.of(context).copyWith(
                            disabledActiveTrackColor: Color.fromRGBO(
                              255,
                              70,
                              87,
                              1,
                            ),
                            trackHeight: 4,
                            thumbColor: Colors.transparent,
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 0,
                            ),
                          )),
                    ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget gridviewItem(
    color,
    icon,
    text,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          36,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
