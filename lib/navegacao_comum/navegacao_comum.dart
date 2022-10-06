import 'package:adf_get_rotas/navegacao_comum/await_params/await_params_home_page.dart';
import 'package:adf_get_rotas/navegacao_comum/back/back_home_page.dart';
import 'package:adf_get_rotas/navegacao_comum/off/off_home_page.dart';
import 'package:adf_get_rotas/navegacao_comum/send_params/send_params_home_page.dart';
import 'package:adf_get_rotas/navegacao_comum/to/to_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_all/off_all_home_page.dart';

class NavegacaoComum extends StatelessWidget {
  const NavegacaoComum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegação comum'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const ToHomePage());
              },
              child: const Text('TO (Push)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const BackHomePage());
              },
              child: const Text('Back (Pop)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OffHomePage());
              },
              child: const Text('Off (Replacement)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OffAllHomePage());
              },
              child: const Text('Off All (PopAndRemoveUntil)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const SendParamsHomePage());
              },
              child: const Text('Send Params (PopAndRemoveUntil)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const AwaitParamsHomePage());
              },
              child: const Text('Await Params (PopAndRemoveUntil)'),
            ),
          ],
        ),
      ),
    );
  }
}
