import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class PostItem {
  const PostItem({
    required this.userName,
    required this.postContent,
    required this.numOfLikes,
    required this.date,
    this.hasImage = false,
    required this.avatarImagePath,
    this.postImagePath,
  });

  final String userName;
  final String postContent;
  final int numOfLikes;
  final String date;
  final bool hasImage;
  final String avatarImagePath;
  final String? postImagePath;
}

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  static const List<PostItem> _posts = [
    PostItem(
      userName: 'Denmark Belleza',
      postContent: 'Wassup babycakes',
      numOfLikes: 100,
      date: 'October 11',
      hasImage: false,
      avatarImagePath: 'assets/icons/images/denmark.jpg',
    ),
    PostItem(
      userName: 'LeBron James',
      postContent: 'JUST BRON',
      numOfLikes: 200,
      date: 'December 2',
      hasImage: true,
      avatarImagePath: 'assets/icons/images/Lebronsunshine.jpg',
      postImagePath: 'assets/icons/images/lebron.png',
    ),
    PostItem(
      userName: 'Denmark Belleza',
      postContent: 'Testing dynamic list rendering on Flutter emulator #3.',
      numOfLikes: 45,
      date: 'November 10',
      hasImage: false,
      avatarImagePath: 'assets/icons/images/denmark.jpg',
    ),
    PostItem(
      userName: 'Denmark Belleza',
      postContent: 'Next stop ready—flight view and travel mode #4.',
      numOfLikes: 320,
      date: 'November 12',
      hasImage: true,
      avatarImagePath: 'assets/icons/images/denmark.jpg',
      postImagePath: 'assets/icons/images/flight.jpg',
    ),
    PostItem(
      userName: 'LeBron James',
      postContent: 'Checking layout spacing and text-only post card #5.',
      numOfLikes: 78,
      date: 'November 14',
      hasImage: false,
      avatarImagePath: 'assets/icons/images/Lebronsunshine.jpg',
    ),
    PostItem(
      userName: 'Denmark Belleza',
      postContent: 'Spotting the subtle differences in our UI build #6.',
      numOfLikes: 512,
      date: 'November 16',
      hasImage: true,
      avatarImagePath: 'assets/icons/images/denmark.jpg',
      postImagePath: 'assets/icons/images/diff.jpg',
    ),
    PostItem(
      userName: 'LeBron James',
      postContent: 'Quick update with zero image attachment #7.',
      numOfLikes: 34,
      date: 'November 18',
      hasImage: false,
      avatarImagePath: 'assets/icons/images/Lebronsunshine.jpg',
    ),
    PostItem(
      userName: 'Denmark Belleza',
      postContent: 'Quick court rally before wrapping up the week #8.',
      numOfLikes: 410,
      date: 'November 20',
      hasImage: true,
      avatarImagePath: 'assets/icons/images/denmark.jpg',
      postImagePath: 'assets/icons/images/Tennis.jpg',
    ),
    PostItem(
      userName: 'LeBron James',
      postContent: 'Locked in for Lab Activity 2A #9.',
      numOfLikes: 580,
      date: 'November 22',
      hasImage: true,
      avatarImagePath: 'assets/icons/images/Lebronsunshine.jpg',
      postImagePath: 'assets/icons/images/locked.jpg',
    ),
    PostItem(
      userName: 'Denmark Belleza',
      postContent: 'Wrapping up the 10-post feed with post #10.',
      numOfLikes: 640,
      date: 'November 25',
      hasImage: true,
      avatarImagePath: 'assets/icons/images/denmark.jpg',
      postImagePath: 'assets/icons/images/Deu.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];
        return NewsFeedCard(
          userName: post.userName,
          postContent: post.postContent,
          numOfLikes: post.numOfLikes,
          hasImage: post.hasImage,
          avatarImagePath: post.avatarImagePath,
          postImagePath: post.postImagePath,
          date: post.date,
        );
      },
    );
  }
}
