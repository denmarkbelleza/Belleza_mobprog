### Denmark Jay D. Belleza

### 2024-1005391

### INF241

Laboratory 0: In this activity, I learned how to install and configure Flutter and create my first mobile application using Visual Studio Code. Initially, I encountered some difficulties when setting up the project, selecting the correct configurations, and launching the emulator. I learned that Flutter requires the proper SDK installation and system dependencies to function correctly. To resolve these problems, I used the built-in tools in VS Code and terminal commands such as flutter doctor to identify configuration issues and flutter pub get to install the required packages. After successfully completing the setup, I modified the default application to display my name, Hallee, on the screen and ran it successfully. Overall, this activity helped me understand the basics of Flutter development and taught me the importance of properly configuring the development environment before starting to code.

Lab Activity 1: Discussion
In newsfeed_card.dart, image rendering is handled dynamically using the hasImage boolean property alongside optional postImagePath and avatarImagePath parameters. When hasImage is true, the widget checks if a postImagePath is provided to display an asset image (Image.asset), or falls back to a Placeholder widget when no image path is supplied. When hasImage is false, the image area is omitted so text-only posts keep a compact layout. For user avatars, CircleAvatar loads an AssetImage if avatarImagePath is given and defaults to an icon otherwise. I also had a problem about gradle version and thats the part that got me stressed out XD
