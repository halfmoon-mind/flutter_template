import 'package:flutter/foundation.dart';

class ENV {
  static const version = "1.0.0";
  static const build = 1;
  static const playstoreURL = "";
  static const appstoreURL = "";
  static String get apiEndpoint => kReleaseMode ? "release" : "dev";
}
