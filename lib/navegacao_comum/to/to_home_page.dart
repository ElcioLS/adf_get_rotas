import 'package:adf_get_rotas/navegacao_comum/to/page1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const Page1();
                      }),
                    ),
                  );
                },
                child: const Text('Go to  Page com flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const Page1());
                },
                child: const Text('Go to  Page com GetX'))
          ],
        ),
      ),
    );
  }
}
