import 'package:flutter/material.dart';
import 'package:incubator_iot/core/server/init.dart';
import 'package:incubator_iot/modules/main/landingPage.dart';
import 'package:incubator_iot/modules/main/state/incubator-data.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initServer().then((value) => runApp(MultiProvider(
        providers: [
          Provider<IncubatorState>(
            create: (_) => IncubatorState(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          debugShowCheckedModeBanner: false,
          home: LandingPage(),
        ),
      )));
}
