import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppAsyncValueView<T> extends StatelessWidget {
  const AppAsyncValueView({
    required this.value,
    required this.data,
    this.onRetry,
    super.key,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return value.when(
      loading: () => Center(child: Text('Loading')),
      error: (error, stackTrace) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Error"),
            const SizedBox(height: 12),
            if (onRetry != null)
              OutlinedButton(onPressed: onRetry, child: Text("Retry")),
          ],
        ),
      ),
      data: data,
    );
  }
}
