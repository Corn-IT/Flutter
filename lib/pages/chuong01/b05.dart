import 'package:flutter/material.dart';
import 'package:my_app/provider/number_provider.dart';
import 'package:provider/provider.dart';

class b05 extends StatefulWidget {
  const b05({super.key});

  @override
  State<b05> createState() => _b05State();
}

class _b05State extends State<b05> {
  late Future readJson;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    readJson = Provider.of<NumberProvider>(context).readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: readJson,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List listData = snapshot.data;
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: List.generate(
                  listData.length,
                  (index) => AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Image(
                        image: NetworkImage(listData[index]['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {
      //           Provider.of<NumberProvider>(context, listen: false).down();
      //         },
      //         child: const Icon(Icons.remove),
      //       ),
      //       Consumer<NumberProvider>(
      //         builder: (context, value, child) {
      //           return Text(
      //             '${value.number}',
      //             style: const TextStyle(fontSize: 30),
      //           );
      //         },
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           Provider.of<NumberProvider>(context, listen: false).up();
      //         },
      //         child: const Icon(Icons.add),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
