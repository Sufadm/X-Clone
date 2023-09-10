import 'package:flutter/material.dart';
import 'package:x/view/Utils/const/const.dart';
import 'package:x/view/screens/homepage/foryou_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: black1,
            centerTitle: true,
            title: Image.network(
              'https://static.toiimg.com/thumb/msid-102075304,width-1280,height-720,resizemode-4/.jpg',
              height: 40,
              fit: BoxFit.cover,
            ),
            leadingWidth: 50,
            leading: Container(
              margin: const EdgeInsets.only(left: 12),
              child: CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                      'https://media.wired.com/photos/597b8d2989235e4259684287/16:9/w_2128,h_1197,c_limit/ELONMUSK-FA.jpg'),
                ),
              ),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'For You'),
                Tab(text: 'Following'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: ForYou()),
              Center(
                child: Text('Following Content'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
