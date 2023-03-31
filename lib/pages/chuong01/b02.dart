import 'package:flutter/material.dart';

class b02 extends StatelessWidget {
  const b02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(text: 'Hello '),
              TextSpan(
                text: 'ZendVN',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            height: 130,
            color: Colors.red,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.blue.shade200,
                          Colors.blue.shade600,
                          Colors.blue.shade800,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('List of article'),
                  Expanded(
                    child: ListView(
                      children: List.generate(
                        10,
                        (index) => AspectRatio(
                          aspectRatio: 4 / 1,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: const Text('05:00 AM'),
                                  ),
                                ),
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
