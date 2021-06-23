import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Shadow_ui_bottom extends StatefulWidget {
  Color bgcolor;
  List<Widget> widgets;
  List<IconData> icon;
  Color activeshadowcolor;
  Color activeicon;
  List title;
  Shadow_ui_bottom({
    Key? key,
    required this.bgcolor,
    required this.widgets,
    required this.icon,
    required this.activeshadowcolor,
    required this.activeicon,
    required this.title,
  }) : super(key: key);

  @override
  _Shadow_ui_bottomState createState() => _Shadow_ui_bottomState();
}

int _currentIndex = 0;
final PageController _pageController = PageController();

class _Shadow_ui_bottomState extends State<Shadow_ui_bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox.expand(
            child: PageView(
                controller: _pageController,
                children: widget.widgets,
                physics: const NeverScrollableScrollPhysics())),
        bottomNavigationBar: Container(
            height: MediaQuery.of(context).size.height - 670,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() => _currentIndex = index);
                    _pageController.jumpToPage(index);
                  },
                  child: _currentIndex == index
                      ? Container(
                          margin: const EdgeInsets.all(10),
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                    color: widget.activeshadowcolor != null
                                        ? widget.activeshadowcolor
                                        : Colors.white,
                                    spreadRadius: 15,
                                    blurRadius: 50)
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(widget.icon[index],
                                  color: widget.activeicon != null
                                      ? widget.activeicon
                                      : Colors.white),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 65,
                                child: Text(
                                  widget.title[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        )
                      : Container(
                          margin: const EdgeInsets.all(12),
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(widget.icon[index], color: Colors.white),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 65,
                                child: Text(
                                  widget.title[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                );
              },
            )));
  }
}
