import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:howareu/home/first_screen.dart';
import 'package:howareu/store/models/app_state.dart';
import 'package:howareu/store/reducers/app_reducer.dart';
import 'package:redux_logging/redux_logging.dart';
import 'statics/color.dart';
import 'package:redux/redux.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
    middleware: [new LoggingMiddleware.printer()],
  );
  _renderPage() {
    return FirstScreen();
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
            theme: ThemeData(
                primaryColor: MixinColor.blue,
                accentColor: MixinColor.lightBlue,
                buttonTheme: ButtonThemeData(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                fontFamily: 'NotoSans',
                appBarTheme: AppBarTheme(
                    textTheme: TextTheme(title: TextStyle(fontSize: 20))),
                textTheme: TextTheme(
                    display1: TextStyle(fontSize: 96),
                    display2: TextStyle(fontSize: 60),
                    headline: TextStyle(fontSize: 20),
                    subhead: TextStyle(fontSize: 16), //input Text place holder
                    subtitle: TextStyle(fontSize: 14),
                    title: TextStyle(fontSize: 20),
                    body1: TextStyle(fontSize: 16),
                    body2: TextStyle(fontSize: 14),
                    button: TextStyle(fontSize: 16),
                    caption: TextStyle(fontSize: 12),
                    overline: TextStyle(fontSize: 10))),
            home: _renderPage()));
  }
}
