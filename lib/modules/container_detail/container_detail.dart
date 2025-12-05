import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dev_fest_2025/modules/container_detail/pods/container_detail_pod.dart';
import 'package:dev_fest_2025/modules/dashboard/pods/dashboard_pod.dart';
import 'package:dev_fest_2025/themes/app_color.dart';
import 'package:dev_fest_2025/themes/app_fonts.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    // Fetch container list
    final containerDetail = ref.watch(containersProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              containerDetail.when(
                data: (data) {
                  return Container();
                },
                error: (error, stackTrace) {
                  return Center(child: Text(error.toString()));
                },
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerDetail extends ConsumerStatefulWidget {
  const ContainerDetail({super.key, required this.id});

  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContainerDetailState();
}

class _ContainerDetailState extends ConsumerState<ContainerDetail> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    // Fetch container detail
    final containerDetail = ref.watch(containerDetailProvider(widget.id));

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(CupertinoIcons.multiply),
      ),
      body: SingleChildScrollView(
        child: containerDetail.when(
          data: (data) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.appLightColor,
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(30), right: Radius.circular(30)),
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
        ),
      ),
    );
  }
}
