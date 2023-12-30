import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_all_bloc.dart';
import 'package:news_app/bloc/news_business_bloc.dart';
import 'package:news_app/bloc/news_sport_bloc.dart';
import "config/route/route.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NewsAllBloc()),
        BlocProvider(create: (context) => NewsSportBloc()),
        BlocProvider(create: (context) => NewsBusinessBloc()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        routerConfig: RouterX().router,
      ),
    );
  }
}
