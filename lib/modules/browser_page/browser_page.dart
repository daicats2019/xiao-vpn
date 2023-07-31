import 'package:flutter/material.dart';

import '../../model/app_image.dart';
import '../../utils/component/app_web_view/app_webview.dart';
import '../../utils/component/image_widget/svg_widget.dart';

class BrowserPage extends StatelessWidget {
  const BrowserPage({
    Key? key,
    required this.title,
    this.url,
  }) : super(key: key);

  final String title;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: Center(
          child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pop(context);
              },
              child: const SvgWidget(
                svgPath: SvgPath.arrowLeft,
                height: 24,
                width: 24,
              )),
        ),
      ),
      body: AppWebView(
        initialUrl: url,
      ),
    );
  }
}
