import 'package:ar_menu/ui/widgets/atoms/BusinessLogo/index.dart';
import 'package:flutter/material.dart';

class BusinessBanner extends StatelessWidget {
  const BusinessBanner({Key? key, required this.logoUrl}) : super(key: key);

  final String logoUrl;

  @override
  Widget build(BuildContext context) {
    return BusinessLogo(logoUrl: logoUrl);
  }
}
