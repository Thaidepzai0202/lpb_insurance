enum Flavor {
  uat,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.uat:
        return 'LPB Insurance UAT';
      case Flavor.prod:
        return 'LPB Insurance';
      default:
        return 'title';
    }
  }

}
