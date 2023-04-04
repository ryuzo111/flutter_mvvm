# flutter_mvvm

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## provider
表示ようのwidget
- Consumer (widgetに埋め込む)
- ConsumerWidget (statelessWidgetのriverpod編)
- ConsumerStatefulWidget (statefulwidgetのriverpod版)

### riverpodのprovider
- Provider (定数)
- StateProvider (変数・標準)
- ScopedProvider (出力を指定する)
- StateNotifierProvider (メソッド付きの)
- FutureProvider (future)
- StreamProvider ( stream版)
- ChangeNotifierProvider(change Notifierを使う)

### riverpodの表示方法
- watch 状態変更でwidgetを更新
- read 状態変更でwidgetを更新しない
- select データ内の特定の値が更新した時のみwidgetを更新する

StateNotifierとは
