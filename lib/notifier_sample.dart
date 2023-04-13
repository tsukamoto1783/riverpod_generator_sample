import 'package:flutter/material.dart';
import 'package:generator_sample/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotifierSample extends ConsumerWidget {
  const NotifierSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCheckValue = ref.watch(checkValueProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifier Sample'),
      ),
      body: Center(
        child: Checkbox(
          value: isCheckValue,
          onChanged: (bool? value) {
            ref.read(checkValueProvider.notifier).updateCheckValue(value!);
          },
        ),
      ),
    );
  }
}
