// ignore_for_file: unnecessary_import

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sheegr/Utils/Widgets/InternetWidgets/no_internet.dart';

class InternetConnectionWidget extends StatelessWidget {
  final AsyncSnapshot<ConnectivityResult> snapshot;
  final Widget widget;
  const InternetConnectionWidget(
      {Key? key, required this.snapshot, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (snapshot.connectionState) {
      case ConnectionState.active:
        final state = snapshot.data!;
        switch (state) {
          case ConnectivityResult.none:
            return const NoInternet();
          default:
            return widget;
        }
      default:
        return const Text("");
    }
  }
}
