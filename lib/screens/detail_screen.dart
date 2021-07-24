import 'package:flutter/material.dart';
import 'package:flutter_hiking_app/screens/home_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height / 2.5,
              flexibleSpace: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2018/04/03/20/29/forest-3287976_960_720.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            )
          ];
        },
        body: Column(
          children: [
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(child: Text('Preview')),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    decoration: BoxDecoration(
                        color: hikingGreenColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text('Start Trail', style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
