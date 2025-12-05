import 'package:flutter/material.dart';
import 'package:dev_fest_2025/modules/container_detail/container_detail.dart';
import 'package:dev_fest_2025/modules/dashboard/models/dashboard_model.dart';
import 'package:dev_fest_2025/modules/dashboard/widgets/container_card_widget.dart';

class ContainerListWidget extends StatelessWidget {
  final List<ContainersModel> containers;
  final Function(ContainersModel)? onAddToCart;

  const ContainerListWidget({super.key, required this.containers, this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return ListView.builder(
      itemCount: containers.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final container = containers[index];
        return Container(
          margin: EdgeInsets.only(bottom: height * 0.02),
          child: ContainerCardWidget(
            container: container,
            backgroundColor: Colors.primaries[index % Colors.primaries.length],
            onAddToCart: () => onAddToCart?.call(container),
            onDetailTap: () {
              // Navigate to container detail page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerDetail(id: container.id ?? '1000')),
              );
            },
          ),
        );
      },
    );
  }
}
