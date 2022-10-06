import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_all_page_1.dart';
import 'off_all_page_2.dart';
import 'off_all_page_3.dart';

class OffAllHomePage extends StatelessWidget {
  const OffAllHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Home'),
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
                        return const OffAllPage1();
                      },
                      settings: const RouteSettings(name: 'Page1'),
                    ),
                  );
                },
                child: const Text('Page1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(const OffAllPage2());
                },
                child: const Text('Page2'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(const OffAllPage3());
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
