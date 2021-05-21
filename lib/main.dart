import 'package:flutter/material.dart';
import 'package:flutter_apps_exercise/Translations.dart';
import 'package:flutter_apps_exercise/activity/home/home_screen.dart';
import 'Translations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'app_localizations.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // var a = Localizations.of<Translations>(context, Translations);
    // var a = Translations.of(context).text('app_title');
    // print('$a Heeeeeeee');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'',
      theme: ThemeData(
        accentColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      // List all of the app's supported locales here
      supportedLocales: [
        Locale('en', ''),
        Locale('fa', ''),
      ],
      // These delegates make sure that the localization data for the proper language is loaded
      localizationsDelegates: [
        // A class which loads the translations from JSON files
        AppLocalizationsDelegate(),
        // Built-in localization of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built-in localization for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
      ],
/*
      // Returns a locale which will be used by the app
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return supportedLocales.first;
          },
*/

      home: HomeScreen(),
    );
  }
}
