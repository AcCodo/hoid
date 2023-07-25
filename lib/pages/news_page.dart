import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hoid/constants.dart';
import 'package:hoid/models/RssFeed.dart';
import 'package:hoid/services/rssService.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  String feedTest = '';

  @override
  Widget build(BuildContext context) {
    return Text(feedTest);
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    RssFeed feed = (await RssService().GetNews(RequestsConstants.uolHomeRss))!;
    setState(() {
      feedTest = feed.body;
    });
  }
}
