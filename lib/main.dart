import 'package:app_arz/ui/ui_helper/ThemeSwicher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(const MymaterialApp());
}
class MymaterialApp extends StatefulWidget {
  const MymaterialApp({Key? key}) : super(key: key);

  @override
  State<MymaterialApp> createState() => _MymaterialAppState();
}

class _MymaterialAppState extends State<MymaterialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Themeswicher(),

            ],
            title: const Text('ExchangeBS'),
          ),
          body: Container(

          ),

        ),
      ),
    );
  }
}
