# ✨shadow_ui_bottom_navbar

A new horizontal scrolling navbar with shadow effects for each menu item

## Demo:
https://user-images.githubusercontent.com/60876387/123096173-70ccb900-d44c-11eb-85d3-2352d93bd0f8.mp4

https://user-images.githubusercontent.com/60876387/123096158-6e6a5f00-d44c-11eb-90a4-939be26ea8ca.mp4

## Usage
Add dependency

```
shadow_ui_bottom_navbar: ^0.0.1
```

Import Package

```
import 'package:shadow_ui_bottom_navbar/shadow_ui_bottom_navbar.dart';
```

👩‍💻 How to use 
````
List<Widget> _widgets = [
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.greenAccent,
    ),
    Container(
      color: Colors.purpleAccent,
    ),
    Container(
      color: Colors.pinkAccent,
    ),
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.mail,
    Icons.notifications,
    Icons.settings,
    Icons.play_arrow
  ];

  List titles = ["Home", "Inbox", "Notifications", "Settings", "Play"];
@override
  Widget build(BuildContext context) {
    return Shadow_ui_bottom(
      bgcolor: Colors.black,
      widgets: _widgets,
      activeicon: Colors.green,
      activeshadowcolor: Colors.lightGreen,
      icon: icons,
      title: titles,
    );
  }
````


## 🌟 Open Source
Feel free to make changes in the project
