import 'package:adf_get_rotas/navegacao_comum/send_params/send_params_page1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Params Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Get.to(const Page1());
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SendParamsPage1();
                    },
                    settings: const RouteSettings(
                      arguments: 'Parametro pelo Flutter Nativo',
                    ),
                  ),
                );
              },
              child: const Text('Page1 Nativo'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const SendParamsPage1(),
                  arguments: 'Parametro pelo GetX',
                );
              },
              child: const Text('Page1 GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
