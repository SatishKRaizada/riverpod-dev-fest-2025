import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dev_fest_2025/modules/dashboard/pods/cart_pod.dart';
import 'package:dev_fest_2025/modules/dashboard/pods/dashboard_pod.dart';
import 'package:dev_fest_2025/modules/dashboard/widgets/search_bar_widget.dart';
import 'package:dev_fest_2025/modules/dashboard/widgets/user_header_widget.dart';
import 'package:dev_fest_2025/modules/dashboard/widgets/container_list_widget.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;

    // Fetch dashboard data using the provider
    final data = ref.watch(containersProvider);
    // Fetch the cart state
    final cartItems = ref.watch(cartProvider);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: data.when(
            data: (containers) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: height * 0.05),
                    UserHeaderWidget(
                      userName: 'Gaurav Bhatnagar',
                      subtitle: 'Welcome back!',
                      cartItemCount: cartItems.value?.length ?? 0,
                      onCartTap: () {
                        // Navigate to cart page
                      },
                    ),
                    SizedBox(height: height * 0.02),
                    const SearchBarWidget(hintText: 'Search'),
                    SizedBox(height: height * 0.03),
                    ContainerListWidget(
                      containers: containers,
                      onAddToCart: (container) {
                        ref.read(cartProvider.notifier).addItem(container);
                      },
                    ),
                  ],
                ),
              );
            },
            loading: () => Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Column(children: [CircularProgressIndicator(), Text('Loading containers...')]),
            ),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        ),
      ),
    );
  }
}
