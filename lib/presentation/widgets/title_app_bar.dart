import 'package:flutter/material.dart';

@immutable
class TitleAppBar extends StatelessWidget {
  final String title;
  const TitleAppBar({@required this.title});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
        title: Text(this.title),
      ),
    );
  }
}
