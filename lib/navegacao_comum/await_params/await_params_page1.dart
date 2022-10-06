import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop('Retornando com Param FLutter Nativo');
              },
              child: const Text('Retornando com Param FLutter Nativo'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Retornando com Param GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
