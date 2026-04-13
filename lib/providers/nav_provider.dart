import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void setIndex(int newIndex) {
    state = newIndex;
  }
}

final navProvider = NotifierProvider<NavNotifier, int>(() {
  return NavNotifier();
});
