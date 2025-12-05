# 📱 Flutter Riverpod Demo — Providers, Offline Persistence, Retry, Testing & More at DevFest 2025 Bangalore

## 🚀 Features Covered
### ✅ Provider Variants

## Getting Started
This project demonstrates the complete set of providers used in real-world Flutter apps:

| Provider Type             | When to Use                                             | Demo Included |
| ------------------------- | ------------------------------------------------------- | ------------- |
| **Provider**              | Expose read-only values or simple dependencies          | ✔️            |
| **StateProvider**         | Manage small, synchronous, mutable state                | ✔️            |
| **FutureProvider**        | Handle async requests like API calls                    | ✔️            |
| **StreamProvider**        | Listen to real-time updates (websocket/db stream)       | ✔️            |
| **NotifierProvider**      | Synchronous business logic using Notifier classes       | ✔️            |
| **AsyncNotifierProvider** | Async business logic with automatic AsyncValue handling | ✔️            |
| **AutoDispose Variants**  | Auto clean-up for screens/navigation                    | ✔️            |


Each provider is implemented with real examples, such as fetching dashboard data, form state updates, counter examples, and more.

## 🧠 Key Riverpod Concepts Demonstrated

### 📌 Offline Persistence
 - Local caching using SharedPreferences / Hive (whichever you used)
 - Providers restore state from disk when app restarts
   Example: Persistent theme mode, login state, cached API responses


## 🔁 Retry Handling
  - Using retry: in FutureProvider
  - Custom retry logic with exponential backoff for network failures
  - Example:
    ```
    final dashboardProvider = FutureProvider<List<ContainerModel>>(
      retry: myRetry,
      (ref) async {
        final repo = ref.read(dashboardRepositoryProvider);
        return repo.getDashboardData();
      },
    );
    ```


## 🆚 Riverpod 2 vs Riverpod 3 Comparison
### The project includes examples and explanation of:
  - Notifier vs AsyncNotifier (introduced in v2, improved in v3)
  - New build() method replacing the older state =
  - Improved ref APIs
  - Simplified provider syntax
  - Better testability and faster rebuilds
  - Lifecycle changes also highlighted

## 🧪 Testing Riverpod Providers
### This project shows:

  - Unit tests for Notifier classes
  - Testing async providers with overrides
  - Using ProviderContainer() for isolated tests
  - Mocking repositories and verifying state transitions

  ```
  final container = ProviderContainer(
    overrides: [
      dashboardRepositoryProvider.overrideWithValue(MockDashboardRepo()),
    ],
  );
  
  final result = await container.read(dashboardProvider.future);
  expect(result.length, 3);
  ```

## 🛠️ Developer Tools — Riverpod DevTools & Inspector
  - Monitoring provider state in real time
  - Viewing rebuilds, dependencies, and provider lifecycle
  - Debugging AsyncValue loading/error states
  - Visualizing the provider dependency graph

The app includes support/integration for the Riverpod DevTools extension.

## 🎨 UI — Consuming Providers in Widgets
  Examples included for:
  - Consumer
  - ConsumerWidget
  - ConsumerStatefulWidget
  - ref.watch, ref.read, ref.listen
  - Using providers for:
    - API screens
    - Form state
    - List updates
    - Conditional UI using AsyncValue

## UI Demo includes:
  ```
      Widget build(BuildContext context, WidgetRef ref) {
        final state = ref.watch(dashboardProvider);
      
        return state.when(
          loading: () => const CircularProgressIndicator(),
          error: (e, _) => ErrorRetryWidget(onRetry: () => ref.refresh(dashboardProvider)),
          data: (items) => DashboardList(items: items),
        );
      }
  ```

## 📘 Topics Covered in the Talk

This repository accompanies the following talk topics:
  - What is a Provider? Understanding the Riverpod philosophy
  - Provider variants (Provider → AsyncNotifierProvider)
  - Offline persistence strategies
  - Retry behavior + error handling
  - Riverpod 2 vs Riverpod 3 deep comparison
  - Testing providers and repositories
  - DevTools for debugging app state
  - UI consumption patterns in Flutter widgets

## ▶️ Getting Started
Install Dependencies

```
flutter pub get
```

#Run the App
```
flutter run
```

## Run Tests

```
flutter test
```

## 🎯 Goal of This Repo
This project exists to help developers understand:
  - How to structure Flutter apps using Riverpod
  - How to manage app-wide state cleanly and testably
  - How to build resilient apps with retry & offline support
  - How to debug and visualize provider-based architectures


## 🤝 Reach Out

For questions, feedback, or collaboration around this demo or the talk, feel free to reach out:

- [Satish Kumar](mailto:satissraizada@gmail.com)
- [Gaurav Bhatnagar](mailto:bhatnagar.gaurav83@gmail.com)








