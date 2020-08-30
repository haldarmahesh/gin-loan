import 'package:contra_loan_app/presentation/theme/text.dart';
import 'package:flutter/material.dart';

class CollabsibleImageWithInfo extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  CollabsibleImageWithInfo({
    @required this.imageUrl,
    @required this.title,
    @required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: ListTile(
          // contentPadding: EdgeInsets.all(20),
          title: Text(
            title,
            style: whiteBoldOverline,
          ),
          subtitle: Text(
            subtitle,
            style: whiteOverline,
          ),
        ),
        background: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
