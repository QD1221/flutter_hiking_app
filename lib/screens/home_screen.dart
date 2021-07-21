import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.apps,
                      ),
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                        Text(
                          'Carpathians, Ukraine',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _bottomIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _bottomIndex == 0 ?
                          Icons.home :
                      LineIcons.home,
                      size: 32,
                      color: _bottomIndex == 0 ? Colors.green : Colors.grey,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 3,
                      width: 24,
                      decoration: BoxDecoration(
                        color: _bottomIndex == 0 ? Colors.green : Colors.white,

                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _bottomIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _bottomIndex == 1 ?
                      Icons.location_on :
                      LineIcons.mapMarker,
                      size: 32,
                      color: _bottomIndex == 1 ? Colors.green : Colors.grey,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 3,
                      width: 24,
                      decoration: BoxDecoration(
                        color: _bottomIndex == 1 ? Colors.green : Colors.white,

                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _bottomIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _bottomIndex == 2 ?
                      Icons.favorite :
                      LineIcons.heart,
                      size: 32,
                      color: _bottomIndex == 2 ? Colors.green : Colors.grey,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 3,
                      width: 24,
                      decoration: BoxDecoration(
                        color: _bottomIndex == 2 ? Colors.green : Colors.white,

                      ),
                    )
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
