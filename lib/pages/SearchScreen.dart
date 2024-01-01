import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_search_bloc.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:timeago/timeago.dart' as timeago;

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();
  SearchNews() async {
    if (searchController.text != null) {
      await fetchAPI().fetchNews_search(context, searchController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 12, top: 10, bottom: 12, right: 12),
              child: Text(
                "Search",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: TextField(
                      autofocus: true,
                      controller: searchController,
                      decoration: new InputDecoration.collapsed(
                          hintText: 'Search here...'),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        SearchNews();
                      },
                      icon: Icon(Icons.search))
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            BlocBuilder<NewsSearchBloc, List>(builder: (context, state) {
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
      ),
    );
  }
}
