import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/app_bar.dart';
import 'package:food_web/Screens/Home/Components/app_bar_mobile.dart';
import 'package:food_web/Screens/Home/Components/drawer.dart';
import 'package:native_pdf_renderer/native_pdf_renderer.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  PdfPageImage _pageImage;
  void getPdf() async {
    final document = await PdfDocument.openAsset('assets/pdfs/menu_1.pdf');
    final page = await document.getPage(1);
    final pageImage = await page.render(width: page.width, height: page.height);
    await page.close();
    _pageImage = pageImage;
  }

  @override
  void initState() { 
    super.initState();
    getPdf();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(),
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/siteBG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            getAppBar(size.width),
            Spacer(),
            // It will cover 1/3 of free spaces
            Image(
              image: MemoryImage(_pageImage.bytes)
            ),
            Spacer(
              flex: 2,
            ),
            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }

  Widget getAppBar(double width) {
    if (width > 760)
      return CustomAppBar();
    else
      return CustomAppBarMobile();
  }
}
