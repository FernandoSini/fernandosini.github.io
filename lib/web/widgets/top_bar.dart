import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mysite/web/routes/web_routes_name.dart';
import 'package:mysite/web/widgets/responsive.dart';
import 'package:qlevar_router/qlevar_router.dart';

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
            : EdgeInsets.only(left: 40),
        child: AppBar(
          shape: widget.radius != null
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.radius ?? 0),
                )
              : null,
          automaticallyImplyLeading: true,
          backgroundColor: widget.color != null
              ? widget.color?.withOpacity(widget.opacity ?? 1)
              : Colors.transparent,
          elevation: 0,
          // toolbarHeight: 100,
          leading: InkWell(
            onHover: (value) {},
            onTap: () {
              QR.toName(WebRoutesNames.landing);
            },
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              padding: EdgeInsets.only(
                  left: 40, top: widget.screenSizeHeight! <= 60 ? 15 : 25),
              child: Text(
                "Home",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffF5C800),
                  fontFamily: GoogleFonts.montserratAlternates().fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          leadingWidth: 150,
          centerTitle: true,
          title: Responsive.isSmallScreen(context)
              ? null
              : Container(
                  padding: EdgeInsets.only(
                      top: widget.screenSizeHeight! <= 60 ? 0 : 25),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          QR.toName(WebRoutesNames.aboutMe);
                        },
                        child: Text(
                          "About me",
                          style: TextStyle(
                              fontFamily:
                                  GoogleFonts.montserratAlternates().fontFamily,
                              fontSize: 15,
                              //color: Colors.white,
                              color: Color(0xffF5C800),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
          actions: [
            Container(),
          ],
        ),
      ),
    );
  }
}
