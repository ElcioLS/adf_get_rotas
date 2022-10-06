import 'package:adf_get_rotas/navegacao_comum/off_all/off_all_page_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage3();
                    },
                  ),
                  (route) => false,
                );
              },
              child: const Text(
                  'Go to Page3 excluindo toda arvore de navegação com Nativo'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage3();
                    },
                  ),
                  ModalRoute.withName('/OffAllHomePage'),
                );
              },
              child: const Text(
                  'Go to Page3 excluindo parte da arvore de navegação com Nativo'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(const OffAllPage3());
              },
              child: const Text(
                  'Go to Page3 excluindo toda arvore de navegação com GetX'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(
                  const OffAllPage3(),
                  predicate: ModalRoute.withName('/OffAllHomePage'),
                );
              },
              child: const Text(
                  'Go to Page3 excluindo parte da arvore de navegação com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
