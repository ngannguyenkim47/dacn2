
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                      children: [
                        Expanded(child: Container(
                          height: 200,
                          child: ListView.builder(
                            itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index){
                            return InkWell(
                              onTap: (){},
                              child: Container(
                                width: 160,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/thongbao.jpg"),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                  )
                                      // image: 'assets/images/thongbao.jpg',
                                ),
                              ),
                            );
                          }),
                        )),
                      ],
                    )
                  ],),
                ),
            )
        ),
    );
  }
}
