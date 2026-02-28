import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'AdManager/ad_helper.dart';
import 'AdManager/ad_manager.dart';
import 'Enums/project_routes_enum.dart';
import 'Singleton/project_manager.dart';
import 'utils/pass_data_between_screens.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    implements ProjectListener, AdListener {
  BannerAd? _bannerAd;
  ProjectManager projectManager = ProjectManager.instance;
  AdManager adManager = AdManager.instance;
  
  @override
  void initState() {
    super.initState();
  
    projectManager.listener = this;

    adManager.adListener = this;
    
    projectManager.startApp();

    adManager.loadAdsInAdManager();

      // COMPLETE: Load a banner ad
    loadBannerAd().load();
  }

  BannerAd loadBannerAd() {
    return BannerAd(
    adUnitId: AdHelper.bannerAdUnitId,
    request: const AdRequest(),
    size: AdSize.banner,
    listener: BannerAdListener(
      onAdLoaded: (ad) {
        setState(() {
          _bannerAd = ad as BannerAd;
        });
      },
      onAdFailedToLoad: (ad, err) {
        debugPrint('Failed to load a banner ad: ${err.message}');
        ad.dispose();
      },
    ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance.clickOnButton(
                      ProjectRoutes.messagesList.toString(),
                      PassDataBetweenScreens("6", "2"));
                },
                child: const Text("Messages Click")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance
                      .clickOnButton(ProjectRoutes.quotesList.toString());
                },
                child: const Text("Quotes Click")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance
                      .clickOnButton(ProjectRoutes.aboutUs.toString());
                },
                child: const Text("About Us")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance
                      .clickOnButton(ProjectRoutes.shayariList.toString());
                },
                child: const Text("Shayari")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance
                      .clickOnButton(ProjectRoutes.statusList.toString());
                },
                child: const Text("Status")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance
                      .clickOnButton(ProjectRoutes.imagesList.toString());
                },
                child: const Text("Images")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance
                      .clickOnButton(ProjectRoutes.gifsList.toString());
                },
                child: const Text("Gif")),
            const SizedBox(
              height: 80,
            ),
            /*ElevatedButton(
                onPressed: () {
                  ProjectManager.instance
                      .clickOnButton(ProjectRoutes.memeGenerator.toString());
                },
              */
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: _bannerAd !=null ? SizedBox(
          width: _bannerAd!.size.width.toDouble(),
          height: _bannerAd!.size.height.toDouble(),
          child: AdWidget(
            ad: _bannerAd!,
          ),
        ): Container(),
      ),
    );
  }

  @override
  void dispose() {
    debugPrint("Home Page: Dispose Called");
    projectManager.listener = null;
    adManager.adListener = null;
    super.dispose();
  }

  @override
  void moveToScreen(String s, [PassDataBetweenScreens? object]) {
    // TODO: implement moveToScreen
    debugPrint("Home Page: Move to Screen $s");
    Navigator.of(context).pushNamed(s, arguments: object);
  }

  @override
  void showAd(String s, [PassDataBetweenScreens? object]) {
    // TODO: implement showAd
    debugPrint("Home Page: Showing Ad Now");
    AdManager.instance.showInterstitialAd(s, object);
  }

  @override
  void moveToScreenAfterAd(String s, [PassDataBetweenScreens? object]) {
    // TODO: implement moveToScreenAfterAd
    debugPrint("Home Page: Move to Screen After Ad $s");
    Navigator.of(context).pushNamed(s, arguments: object);
  }
}
