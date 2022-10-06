import 'package:adf_get_rotas/navegacao_comum/off/off_page_1.dart';
import 'package:adf_get_rotas/navegacao_comum/off/off_page_2.dart';
import 'package:adf_get_rotas/navegacao_comum/off/off_page_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Home Page'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.to(const Page1());
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const OffPage1();
                      },
                    ),
                  );
                },
                child: const Text('Page1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(const OffPage2());
                },
                child: const Text('Page2'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(const OffPage3());
                },
                child: const Text('Page3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
