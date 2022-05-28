import 'package:flutter/material.dart';
import 'package:rider/config/config_values.dart';
import 'package:rider/config/environment_config.dart';
import 'package:shared/export_shared.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RiderHomePage(),
      theme: ThemeData(
        primarySwatch: THEME_COLORS[EnvironmentConfig.CONFIG_THEME_COLOR],
      ),
    );
  }
}

class RiderHomePage extends StatelessWidget {
  const RiderHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_TITLES[EnvironmentConfig.CONFIG_APP_TITLE] ?? ""),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("This is ${APP_TITLES[EnvironmentConfig.CONFIG_APP_TITLE] ??
                ""} app"),
            TextButton(
              onPressed: () {
                showSnackBar(context,
                    "This is ${APP_TITLES[EnvironmentConfig.CONFIG_APP_TITLE] ??
                        ""} app");
              },
              child: Text("Show SnackBar"),
            ),
          ],
        ),
      ),
    );
  }
}