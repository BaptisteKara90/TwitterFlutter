import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:twitter/helpers/formatDuration.dart';

import '../models/tweet.dart';


class TweetView extends StatelessWidget {
  Tweet tweet;


  TweetView(this.tweet);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(tweet.profile ?? "", width: 180),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(tweet.author ?? ""),
                          Text(
                            "${formatDuration(tweet.createdDate!)}",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(tweet.message ?? ""),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TweetMenu(),
          )
        ],
      ),
    );
  }
}

class TweetMenu extends StatelessWidget {
  const TweetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.reply, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.repeat, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.star, color: Colors.grey)),
          ]),
    );
  }
}

class LoadTweet extends StatefulWidget {
  @override
  State<LoadTweet> createState() => _LoadTweetState();
}

class _LoadTweetState extends State<LoadTweet> {
  List<Tweet> tweets = [];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(future: http.get(Uri.parse(
            "https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json")),
            builder: (context, snapshot) {
              if(snapshot.hasData && snapshot.data?.body != null) {
                var json = convert.jsonDecode(snapshot.data!.body);
                tweets =
                List<Tweet>.from(json.map((data) => Tweet.fromJson(data)));
                return Expanded(child: ListView.builder(
                  itemCount: tweets.length,
                  itemBuilder: (context, index) {
                    return TweetView(tweets[index]);
                  },
                ),
                );
              }
              return CircularProgressIndicator();
            })
      ],
    );
  }
}