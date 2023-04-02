import 'package:flutter/material.dart';
import 'package:flutter_mvvm/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvvm/provider.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) => Text(
            ref.watch(titleProvider),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) =>
                  Column(
                children: [
                  Text(
                    ref.watch(messageProvider),
                  ),
                  Text(
                    ref.watch(countProvider).toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) =>
            FloatingActionButton(
          onPressed: () {
            ref.watch(countProvider.notifier).state++;
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
