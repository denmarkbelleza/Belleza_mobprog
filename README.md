### Denmark Jay D. Belleza

### 2024-1005391

### INF241

Laboratory 0: In this activity, I learned how to install and configure Flutter and create my first mobile application using Visual Studio Code. Initially, I encountered some difficulties when setting up the project, selecting the correct configurations, and launching the emulator. I learned that Flutter requires the proper SDK installation and system dependencies to function correctly. To resolve these problems, I used the built-in tools in VS Code and terminal commands such as flutter doctor to identify configuration issues and flutter pub get to install the required packages. After successfully completing the setup, I modified the default application to display my name, Hallee, on the screen and ran it successfully. Overall, this activity helped me understand the basics of Flutter development and taught me the importance of properly configuring the development environment before starting to code.

Lab Activity 1: Discussion In newsfeed_card.dart, image rendering is handled dynamically using the hasImage boolean property alongside optional postImagePath and avatarImagePath parameters. When hasImage is true, the widget checks if a postImagePath is provided to display an asset image (Image.asset), or falls back to a Placeholder widget when no image path is supplied. When hasImage is false, the image area is omitted so text-only posts keep a compact layout. For user avatars, CircleAvatar loads an AssetImage if avatarImagePath is given and defaults to an icon otherwise. I also had a problem about gradle version and thats the part that got me stressed out XD

## Lab Activity 2A: List Widgets

In this activity, the Flutter social media application Hexfire was enhanced to support dynamic list rendering and multi-tab navigation for a 10-post news feed and for a 20-item notifications screen. Each feed post was configured with dynamic like counts, timestamps, conditional image rendering, and distinct local image assets (`lebron.png`, `flight.jpg`, `diff.jpg`, `Tennis.jpg`, `locked.jpg`, and `Deu.jpg`). Additionally, the user interface was customized with an emerald teal color palette in `constants.dart`, custom Hexfire app branding, a dynamic `AppBar` title that updates per active screen, and a third `Profile` tab in the `BottomNavigationBar` synchronized with `PageView`. I enjoyed making enhancements to this activity. I’ve also noticed that I’m becoming more comfortable with configuring the app, compared to previous activities.
