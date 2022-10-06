import 'package:adf_get_rotas/navegacao_comum/off/off_page_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffPage1 extends StatelessWidget {
  const OffPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Page 1'),
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
                      return const OffPage2();
                    },
                  ),
                );
              },
              child: const Text('Go to Page2 com Nativo'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(const OffPage2());
              },
              child: const Text('Go to Page2 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
