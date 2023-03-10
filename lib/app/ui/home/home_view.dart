import 'package:flutter/material.dart';
import 'package:layout_adapt/app/ui/home/components/feed_widget.dart';
import 'package:layout_adapt/app/ui/home/components/responsive.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      
      child: Scaffold(
        body: SingleChildScrollView(
          child: FeedWidget(),
        ),
      ),
    );
  }
}
