import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_business_bloc.dart';
import 'dart:convert';
import '../model/news_model.dart';
import '../config/api/api.dart';
import '../bloc/news_all_bloc.dart';
import '../bloc/news_sport_bloc.dart';

class fetchAPI {
  Future<List<Article>> fetchNews_all(BuildContext context) async {
    String url = API.link;
    var response = await http.get(Uri.parse(url));
    var decode = json.decode(response.body);
    List<Article> list_berita = [];
    NewsAllBloc bloc = BlocProvider.of<NewsAllBloc>(context);
    for (var i = 0; i < decode['articles'].length; i++) {
      list_berita.add(Article(
          source: decode['articles'][i]['source'],
          author: decode['articles'][i]['author'],
          title: decode['articles'][i]['title'],
          description: decode['articles'][i]['description'],
          url: decode['articles'][i]['url'],
          urlToImage: decode['articles'][i]['urlToImage'],
          publishedAt: decode['articles'][i]['publishedAt'],
          content: decode['articles'][i]['content']));
    }
    bloc.emit(list_berita);
    return list_berita;
  }

  Future<List<Article>> fetchNews_sport(BuildContext context) async {
    String url = API.link + "&category=sport";
    var response = await http.get(Uri.parse(url));
    var decode = json.decode(response.body);
    List<Article> list_berita = [];
    NewsSportBloc bloc = BlocProvider.of<NewsSportBloc>(context);
    for (var i = 0; i < decode['articles'].length; i++) {
      list_berita.add(Article(
          source: decode['articles'][i]['source'],
          author: decode['articles'][i]['author'],
          title: decode['articles'][i]['title'],
          description: decode['articles'][i]['description'],
          url: decode['articles'][i]['url'],
          urlToImage: decode['articles'][i]['urlToImage'],
          publishedAt: decode['articles'][i]['publishedAt'],
          content: decode['articles'][i]['content']));
    }
    return list_berita;
  }

  Future<List<Article>> fetchNews_business(BuildContext context) async {
    String url = API.link + "&category=business";
    var response = await http.get(Uri.parse(url));
    var decode = json.decode(response.body);
    List<Article> list_berita = [];
    NewsBusinessBloc bloc = BlocProvider.of<NewsBusinessBloc>(context);
    for (var i = 0; i < decode['articles'].length; i++) {
      list_berita.add(Article(
          source: decode['articles'][i]['source'],
          author: decode['articles'][i]['author'],
          title: decode['articles'][i]['title'],
          description: decode['articles'][i]['description'],
          url: decode['articles'][i]['url'],
          urlToImage: decode['articles'][i]['urlToImage'],
          publishedAt: decode['articles'][i]['publishedAt'],
          content: decode['articles'][i]['content']));
    }
    return list_berita;
  }
}
