import 'package:dashboard_web/Mobile/mobile_dashboard.dart';
import 'package:dashboard_web/Web/login.dart';
import 'package:dashboard_web/Web/web_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'Web/Specialties/sepecialties_detail.dart';

class WebController extends StatefulWidget {
  @override
  State<WebController> createState() => _WebControllerState();
}

class _WebControllerState extends State<WebController> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return WebMain();
    } else {
      return const MobileDashboard();
    }
  }
}
