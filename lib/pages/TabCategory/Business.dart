import "package:flutter/material.dart";
import 'package:news_app/bloc/news_business_bloc.dart';
import 'package:news_app/bloc/news_health_bloc.dart';
import 'package:news_app/bloc/news_sport_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<NewsBusinessBloc, List>(builder: (context, state) {
            print(state);
            return Expanded(
              child: ListView.builder(
                itemCount: state.length,
                itemBuilder: (context, index) {
                  if (state[index].url != null) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          print(state[index].url);
                          context.push('/newsview', extra: state[index].url);
                        },
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: state[index].urlToImage != null
                                      ? Image.network(
                                          state[index].urlToImage.toString(),
                                          width: 140,
                                        )
                                      : Container(
                                          width: 140,
                                          child:
                                              Center(child: Text("No Image")),
                                        )),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 180,
                                    child: Flexible(
                                      child: Text(
                                        state[index].title.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    timeago.format(state[index].publishedAt),
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
