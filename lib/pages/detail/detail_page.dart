import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detail_controller.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
        init: DetailController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('App Bar'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Detail'),
                    SizedBox(
                      height: 16,
                    ),
                    Text(controller.greeting ?? ''),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return _container(index);
                        })
                    // Container(
                    //   child: Column(
                    //     children:
                    //         List.generate(100, (index) => _container(index)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget _container(int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[200],
      ),
      child: Text('nomor: $index'),
    );
  }
}
