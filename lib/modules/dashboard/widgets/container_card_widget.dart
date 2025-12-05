import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dev_fest_2025/modules/dashboard/models/dashboard_model.dart';
import 'package:dev_fest_2025/modules/dashboard/widgets/container_details_widget.dart';
import 'package:dev_fest_2025/themes/app_color.dart';

class ContainerCardWidget extends StatelessWidget {
  final ContainersModel container;
  final Color backgroundColor;
  final VoidCallback? onAddToCart;
  final VoidCallback? onDetailTap;

  const ContainerCardWidget({
    super.key,
    required this.container,
    required this.backgroundColor,
    this.onAddToCart,
    this.onDetailTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Stack(
      alignment: Alignment.topRight,
      children: [
        InkWell(
          onTap: onDetailTap,
          child: Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: ContainerDetailsWidget(
                        name: container.name ?? 'N/A',
                        size: container.size ?? 'N/A',
                        age: container.age ?? 'N/A',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      container.assets ?? '',
                      width: width * 0.2,
                      height: height * 0.1,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.broken_image, size: 50, color: Colors.grey);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: onAddToCart,
            icon: const Icon(CupertinoIcons.add),
            color: AppColor.whiteColor,
          ),
        ),
      ],
    );
  }
}
