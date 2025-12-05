import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dev_fest_2025/modules/container_detail/pods/container_detail_pod.dart';
import 'package:dev_fest_2025/modules/dashboard/pods/cart_pod.dart';
import 'package:dev_fest_2025/themes/app_color.dart';
import 'package:dev_fest_2025/themes/app_fonts.dart';

class ContainerDetailWidget extends StatefulWidget {
  const ContainerDetailWidget({super.key, required this.id});

  final String id;

  @override
  State<ContainerDetailWidget> createState() => _ContainerDetailWidgetState();
}

class _ContainerDetailWidgetState extends State<ContainerDetailWidget> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(CupertinoIcons.multiply),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Using Consumer to access Riverpod providers
              Consumer(
                builder: (context, ref, child) {
                  final containerDetail = ref.watch(containerDetailProvider(widget.id));
                  return containerDetail.when(
                    data: (data) => Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColor.appLightColor,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(30),
                              right: Radius.circular(30),
                            ),
                          ),
                          child: Image.asset('${data.assets}'),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text('${data.name}', style: AppFonts.fontBold18),
                              SizedBox(height: screenHeight * 0.02),
                              Text('Type : ${data.type}'),
                              SizedBox(height: screenHeight * 0.02),
                              Text('Size : ${data.size}'),
                              Divider(height: screenHeight * 0.04),
                              Text('More Products', style: AppFonts.fontBold16),
                              SizedBox(height: screenHeight * 0.01),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: data.details?.length,
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final detail = data.details?[index];
                                  return Container(
                                    margin: EdgeInsets.only(bottom: screenHeight * 0.02),
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text('Age : ${detail?.age}'),
                                            SizedBox(height: screenHeight * 0.01),
                                            Text('Condition : ${detail?.condition}'),
                                            SizedBox(height: screenHeight * 0.01),
                                            Text('Loadability : ${detail?.loadability}'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: screenHeight * 0.1),
                            ],
                          ),
                        ),
                      ],
                    ),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    error: (error, stackTrace) => Center(child: Text(error.toString())),
                  );
                },
              ),
              // Using Consumer to access Riverpod providers
              Consumer(
                builder: (context, ref, child) {
                  final cartItems = ref.watch(cartProvider);
                  return Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.02),
                    child: ElevatedButton(onPressed: () {}, child: Text('Add to Cart')),
                  );
                },
              ),
              // Using Consumer to access Riverpod providers
              Consumer(
                builder: (context, ref, child) {
                  final cartItems = ref.watch(cartProvider);
                  return Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.02),
                    child: ElevatedButton(onPressed: () {}, child: Text('Add to Cart')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
