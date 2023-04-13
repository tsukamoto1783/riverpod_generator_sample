import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class CheckList extends _$CheckList {
  // 初期値を作る.
  @override
  List<bool> build() {
    ref.onDispose(() {
      print("dispose");
    });

    return List.generate(4, (index) => false);
  }

  void updateListElement(int index, bool updateValue) {
    state = state.map((e) => e).toList();
    state[index] = updateValue;
  }
}
