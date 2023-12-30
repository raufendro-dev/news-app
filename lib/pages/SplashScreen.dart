import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:news_app/controller/news_controller.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void cek() async {
    await fetchAPI().fetchNews_all(context);
    await fetchAPI().fetchNews_business(context);
    await fetchAPI().fetchNews_sport(context);
    context.go("/home");
  }

  @override
  void initState() {
    super.initState();
    cek();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/img/splash.png"),
      ),
    );
  }
}

//https://blush.design/illustration/s/pLzcfbCac67AYSmI?c=Skin_0%7Eedb98a
