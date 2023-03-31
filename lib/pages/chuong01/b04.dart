import 'package:flutter/material.dart';

class b04 extends StatelessWidget {
  const b04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Training',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Vel et voluptatibus',
                  style: TextStyle(fontSize: 15),
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  children: const [
                    Text(
                      'Detail',
                      style: TextStyle(color: Colors.amber, fontSize: 16),
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 170,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'debitis-ipsa-ut',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'lure est quibusdam rem fugiat modi et magnam hic suscipit.',
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 10,
                            children: const [
                              Icon(
                                Icons.exit_to_app,
                                color: Colors.white,
                              ),
                              Text(
                                'ZendVN',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                          Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Icon(
                              Icons.settings,
                              size: 26,
                              color: Colors.amber,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Colors.amber.shade200,
                    Colors.amber.shade100,
                    Colors.amber.shade200,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Quia voluptatum culpa',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              height: 380,
              child: GridView.count(
                // padding: const EdgeInsets.all(10),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.2,
                children: [
                  Container(
                    child: PhysicalModel(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      elevation: 18,
                      shadowColor: Colors.grey.shade100,
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(backgroundColor: Colors.amber),
                              SizedBox(height: 5),
                              Text(
                                'Assumenda velit voluptates exercitationem animi omnis expedita.',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: PhysicalModel(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      elevation: 18,
                      shadowColor: Colors.grey.shade100,
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(backgroundColor: Colors.amber),
                              SizedBox(height: 5),
                              Text(
                                'Assumenda velit voluptates exercitationem animi omnis expedita.',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: PhysicalModel(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      elevation: 18,
                      shadowColor: Colors.grey.shade100,
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(backgroundColor: Colors.amber),
                              SizedBox(height: 5),
                              Text(
                                'Assumenda velit voluptates exercitationem animi omnis expedita.',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: PhysicalModel(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      elevation: 18,
                      shadowColor: Colors.grey.shade100,
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(backgroundColor: Colors.amber),
                              SizedBox(height: 5),
                              Text(
                                'Assumenda velit voluptates exercitationem animi omnis expedita.',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
