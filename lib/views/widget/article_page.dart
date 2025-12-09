import 'package:beesense/model/information_card_model.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  final Information info;
  const ArticlePage({super.key, required this.info});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.info.title),
        centerTitle: false,
        // backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],  
      ),
      // TODO: Implement article content
    );
  }
}