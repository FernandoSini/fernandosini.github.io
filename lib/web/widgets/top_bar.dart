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
      child: AppBar(
        shape: widget.radius != null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.radius!),
              )
            : null,
        automaticallyImplyLeading: true,
        backgroundColor: widget.color?.withOpacity(widget.opacity!),
        // toolbarHeight: 100,
        leading: InkWell(
          onHover: (value) {},
          onTap: () {},
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            padding: EdgeInsets.only(left: 20, top: 25, right: 20),
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
                child: Wrap(),
              ),
        actions: [
          Container(
            child: Wrap(),
          )
        ],
      ),
    );
  }
}
