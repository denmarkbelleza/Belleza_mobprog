import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Denmark Belleza',
          postContent: 'Wassup babycakes',
          numOfLikes: 100,
          avatarImagePath:
              'assets/icons/images/denmark.jpg', // Profile pic ni Denmark
          date: 'October 11',
        ),
        NewsFeedCard(
          userName: 'LeBron James',
          postContent: 'JUST BRON',
          numOfLikes: 200,
          hasImage: true,
          avatarImagePath:
              'assets/icons/images/Lebronsunshine.jpg', // Profile pic ni LeBron
          postImagePath:
              'assets/icons/images/lebron.png', // Main post image ni LeBron
          date: 'December 2',
        ),
      ],
    );
  }
}
