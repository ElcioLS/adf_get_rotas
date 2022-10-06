import 'package:adf_get_rotas/navegacao_comum/await_params/await_params_page1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsHomePage extends StatelessWidget {
  const AwaitParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await Params Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const AwaitParamsPage1();
                    },
                  ),
                );
                debugPrint(result);
              },
              child: const Text('Page1 Nativo'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Get.to(
                  const AwaitParamsPage1(),
                );
                debugPrint(result);
              },
              child: const Text('Page1 GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
