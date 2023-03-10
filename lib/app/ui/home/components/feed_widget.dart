import 'package:flutter/material.dart';
import 'package:layout_adapt/app/data/feed.dart';
import 'package:layout_adapt/app/ui/home/components/post_card.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(32.0),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 470.0,
        ),
        child: Column(
          children: Feed.posts.map((post) => PostCard(post: post)).toList(),
        ),
      ),
    );
  }
}
