import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hotelapp/common/styles/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionCell extends StatelessWidget {
  final String assetsUrl;
  final String title;
  final String content;
  final bool isUrl;

  const SectionCell({
    Key key,
    @required this.assetsUrl,
    @required this.title,
    this.content,
    this.isUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SvgPicture.asset(assetsUrl, width: 18),
                    ),
                  ),
                  TextSpan(
                    text: title,
                    style: kSubHeadTextStyle,
                  ),
                ],
              ),
            ),
            isUrl == true
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 0),
                    child: Text(
                      AppLocalizations.of(context).clickToGo,
                      style: kBodyTextStyle,
                    ),
                    onPressed: () => launch(content),
                  )
                : Container()
          ],
        ),
        SizedBox(height: 10),
        content != null && isUrl == null ?? false
            ? Text(
                content,
                style: isUrl == null ?? false
                    ? kBodyTextStyle
                    : kSecondaryBodyTextStyle,
              )
            : Container()
      ],
    );
  }
}

class SectionDivider extends StatelessWidget {
  const SectionDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Divider(),
    );
  }
}
