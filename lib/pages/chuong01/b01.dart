import 'package:flutter/material.dart';

class b01 extends StatelessWidget {
  const b01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'ZendVN',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'StudyFlutter',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20.0),
                )),
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.shade200,
                    Colors.blue.shade600,
                    Colors.blue.shade800,
                  ],
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: 250,
            color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Category'),
                    Text('More..'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        10,
                        (index) => AspectRatio(
                              aspectRatio: 1.8 / 2,
                              child: Container(
                                margin: const EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: 250,
            color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('News'),
                    Text('More..'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        10,
                        (index) => AspectRatio(
                              aspectRatio: 1.8 / 2,
                              child: Container(
                                margin: const EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            )),
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
