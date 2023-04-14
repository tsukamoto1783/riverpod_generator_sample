import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class CheckValue extends _$CheckValue {
  @override
  bool build() {
    ref.onDispose(() {
      print("dispose()");
    });

    print("build()");

    // stateの初期値はfalse
    return false;
  }

  void updateCheckValue(bool updateValue) {
    state = updateValue;
  }
}
