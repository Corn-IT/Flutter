import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        width: double.infinity,
        height: 500,
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 10,
          childAspectRatio: 6 / 2,
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.blue),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber),
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.red),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.green),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
