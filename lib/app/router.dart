import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static const startupViewRoute = '/start-up';
  static const signinViewRoute = '/start-up';
}

class Routers {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch(settings.name) {
      case Routes.startupViewRoute:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => const SizedBox(),
          settings: settings
        );


      default:
        return unknownRoutePage(settings.name);
    // case Routes.dashBoardView:
    // return CupertinoPageRoute<dynamic>(
    // builder: (context) => DashboardView(),
    // settings: settings
    // );
    }
  }
}

// borrowed from auto_route:
// returns an error page routes with a helper message.
PageRoute unknownRoutePage(String? routeName) => CupertinoPageRoute(
  builder: (ctx) => Scaffold(
    body: Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Text(
              routeName == "/"
                  ? 'Initial route not found! \n did you forget to annotate your home page with @initial or @MaterialRoute(initial:true)?'
                  : 'Route name $routeName is not found!',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),

          ElevatedButton(
            onPressed: () {Navigator.of(ctx).pop();},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
            ),
            child: const Text("Back"),
          )
        ],
      ),
    ),
  ),
);