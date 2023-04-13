import 'package:flutter/material.dart';
import 'package:generator_sample/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotifierSample extends ConsumerWidget {
  NotifierSample({Key? key}) : super(key: key);

  final List<String> _valueList = ['A', 'B', 'C', 'D'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkList = ref.watch(checkListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifier Sample'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _valueList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(_valueList[index]),
              trailing: Checkbox(
                value: checkList[index],
                onChanged: (bool? value) {
                  ref
                      .read(checkListProvider.notifier)
                      .updateListElement(index, value!);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
