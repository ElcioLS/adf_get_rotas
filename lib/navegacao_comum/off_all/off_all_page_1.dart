import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_all_page_2.dart';

class OffAllPage1 extends StatelessWidget {
  const OffAllPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage2();
                    },
                  ),
                );
              },
              child: const Text('Go to Page2 com Nativo'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(const OffAllPage2());
              },
              child: const Text('Go to Page2 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
