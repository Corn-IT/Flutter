import 'package:flutter/material.dart';

class b03 extends StatelessWidget {
  const b03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                  flex: 1,
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        'Welcome ZendVN',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: 320,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Iste autem atque ea ratione ut ex omnis non.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 4,
                      child: SizedBox(
                        width: double.infinity,
                        height: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Consequuntur qui ea dolores voluptas pariatur.',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  'Aperiam natus soluta eum nam.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Iure aut qui et. Ipsa animi voluptates distinctio officiis eum exercitationem suscipit reiciendis. Quisquam deserunt rerum sapiente. Et porro officiis consequatur hic aliquam. Molestiae aut qui quia voluptatem. Voluptates placeat distinctio sunt aut.',
                  style: TextStyle(fontSize: 11),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Aut aut debitis',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Aut aut debitis',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                          topRight: Radius.circular(120))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
