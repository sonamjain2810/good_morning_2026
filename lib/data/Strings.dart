import 'dart:io';
import 'package:launch_review/launch_review.dart';

class Strings {
  Strings._();

  static const accountName = "GJOneStudio";

  static const accountEmail = "gj1studio@gmail.com";

  static const appName = "Good Morning Messages Images";

  static const mailAppName = "Good%20Morning%20Messages%20Images";

  static const iosAppId = "1232993917";

  static const iosAdmobAppId = "ca-app-pub-8179797674906935~3904688605";

  static const iosAdmobBannerId = "ca-app-pub-8179797674906935/5381421800";

  static const iosAdmobInterstitialId =
      "ca-app-pub-8179797674906935/6858155003"; //8452635043

  static const iosAdmobNativeId = "ca-app-pub-8179797674906935/7768223890";

  static const iosAdmobRewardedId = "ca-app-pub-8179797674906935/5333632249";

  static const iosFBInterstitialId = "266846741590142_266846904923459";

  static const iosFBBannerId = "266846741590142_270405771234239";

  static const androidAdmobAppId = "ca-app-pub-8179797674906935~6566714014";

  static const androidAdmobBannerId = "ca-app-pub-8179797674906935/7730386794";

  static const androidAdmobInterstitialId =
      "ca-app-pub-8179797674906935/8452635043";

  static const androidAdmobNativeId = "ca-app-pub-8179797674906935/7139553372";

  static const androidAdmobRewardedId =
      "ca-app-pub-8179797674906935/5222824710";

  static const testDevice = 'c835aea0489176f272e2d174b8d921ca';

  static String appUrl = Platform.isAndroid
      ? "https://play.google.com/store/apps/details?id=com.rrj_psj.good_morning_sms"
      : "https://apps.apple.com/us/app/-/id${Strings.iosAppId}";

  static String accountUrl = Platform.isAndroid
      ? "https://play.google.com/store/apps/developer?id=Festival+Messages+SMS"
      : "https://apps.apple.com/us/developer/sonam-jain/id1440118616";

  static const String mailContent =
      'mailto:sonamjain2810@yahoo.com?subject=feedback%20from%20${Strings.mailAppName}&body=Your%20Apps%20Rocks!!';

  static String shareAppText =
      "Hey I have found this amazing app for you.\nHave a look on\n${Strings.appName}\n${Strings.appUrl}";

  static void RateNReview() {
    LaunchReview.launch(iOSAppId: Strings.iosAppId);
  }
}
