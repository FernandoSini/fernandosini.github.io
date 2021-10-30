import 'package:flutter/material.dart';
import 'package:mysite/web/widgets/responsive.dart';

class TopBar extends StatefulWidget {
  const TopBar(
      {Key? key,
      this.scrollController,
      this.opacity,
      this.screenSizeHeight,
      this.radius,
      this.color})
      : super(key: key);
  final ScrollController? scrollController;
  final double? opacity;
  final double? screenSizeHeight;
  final Color? color;
  final double? radius;
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  List<bool> onHoverList = [false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: widget.screenSizeHeight != null
          ? Size.fromHeight(widget.screenSizeHeight!)
          : Size.fromHeight(100),
      child: Container(
        padding: widget.radius != null
            ? EdgeInsets.only(left: 20, right: 20, top: 5)
            : null,
        child: AppBar(
          shape: widget.radius != null
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.radius!),
                )
              : null,
          automaticallyImplyLeading: true,
          backgroundColor: widget.color != null
              ? widget.color?.withOpacity(widget.opacity!)
              : Colors.transparent,
          elevation: 0,
          // toolbarHeight: 100,
          leading: InkWell(
            onHover: (value) {},
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/home");
            },
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              padding: EdgeInsets.only(left: 40, top: 25),
              child: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          leadingWidth: 100,
          centerTitle: true,
          title: Responsive.isSmallScreen(context)
              ? null
              : Container(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed("/about");
                        },
                        child: Container(
                          child: Text(
                            "About me",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
          actions: [Container()],
        ),
      ),
    );
  }
}
