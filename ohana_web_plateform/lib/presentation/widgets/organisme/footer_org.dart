import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/logo_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/social_network_icon_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class FooterOrg extends StatelessWidget {
  const FooterOrg({super.key, required this.mediaScreenWidth});
  final mediaScreenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      width: mediaScreenWidth,
      height: FOOTER_HEIGHT,
      child: Padding(
        padding: const EdgeInsets.only(left: SPACE_LEFT_BIG_TITLE),
        child: Column(
          children: [
            _getSocialNetworkAndLogo(),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _getColumnOfLink(
                  FOOTER_LINK_BLOC['column1'],
                ),
                const SizedBox(
                  width: 50,
                ),
                _getColumnOfLink(FOOTER_LINK_BLOC['column2']),
                const SizedBox(
                  width: 50,
                ),
                _getColumnOfLink(FOOTER_LINK_BLOC['column3']),
              ],
            ),
            //---Legale mention
            const SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '@mention légale',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _getSocialNetworkAndLogo() {
    return Row(
      children: [
        LogoAtom(
          paddingLeft: 0,
        ),
        const SizedBox(
          width: 5,
        ),
        const SocialNetworkIconMol(
          svgColor: Colors.white,
          heightVal: 30,
        ),
      ],
    );
  }

  Column _getColumnOfLink(linList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var item in linList)
          Text(
            item,
            style:
                const TextStyle(color: Colors.white, fontSize: LINK_FONTSIZE),
          )
      ],
    );
  }
//---------
}
