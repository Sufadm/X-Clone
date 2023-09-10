import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:x/view/Utils/const/post_below.dart';

class ForYou extends StatelessWidget {
  const ForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 19,
              backgroundImage: NetworkImage(
                  'https://static.toiimg.com/thumb/msid-102075304,width-1280,height-720,resizemode-4/.jpg'),
            ),
            title: Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Row(
                children: [
                  Text(
                    'Elon Musk',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.verified,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '@elonmusk .Sep 9',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Starship Flight 2',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
                    'https://pbs.twimg.com/media/F5mpqtibMAAl61F?format=webp&name=small',
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    icons.length,
                    (index) => Row(
                      children: [
                        Icon(
                          icons[index],
                          size: 20.0,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        Text(counts[index]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
