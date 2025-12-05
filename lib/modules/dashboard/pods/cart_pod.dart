import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dev_fest_2025/modules/dashboard/models/dashboard_model.dart';
import 'package:dev_fest_2025/modules/dashboard/repository/dashboard_repository.dart';

final cartProvider = AsyncNotifierProvider.autoDispose<CartNotifier, List<ContainersModel>>(() {
  return CartNotifier();
});

class CartNotifier extends AsyncNotifier<List<ContainersModel>> {
  @override
  Future<List<ContainersModel>> build() async {
    final repository = ref.read(containerRepositoryProvider);
    final data = await repository.getContainers();
    return data;
  }

  void addItem(ContainersModel item) {
    final currentState = state.value ?? [];
    if (!currentState.any((i) => i.id == item.id)) {
      state = AsyncValue.data([...currentState, item]);
    }
  }

  void removeItem(ContainersModel item) {
    final currentState = state.value ?? [];
    state = AsyncValue.data(currentState.where((i) => i.id != item.id).toList());
  }

  void clearCart() {
    state = const AsyncValue.data([]);
  }
}
