import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class CheckValue extends _$CheckValue {
  // 初期値を作る.
  @override
  bool build() {
    ref.onDispose(() {
      print("dispose");
    });
    return false;
  }

  void updateCheckValue(bool updateValue) {
    state = updateValue;
  }
}
