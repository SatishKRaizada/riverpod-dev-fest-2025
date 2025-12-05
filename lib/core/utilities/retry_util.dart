import 'package:riverpod/misc.dart';

Duration? myRetry(int retryCount, Object error) {
  // Stop retrying on ProviderException
  if (retryCount >= 5) return null;
  // Ignore ProviderException
  if (error is ProviderException) return null;

  return Duration(milliseconds: 200 * (1 << retryCount)); // Exponential backoff
}
