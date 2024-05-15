import 'package:flutter/cupertino.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';

class ProfilCardOrg extends StatelessWidget {
  const ProfilCardOrg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: H2TextAtom(text: 'name')),
          width: 900,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(width: 3),
              borderRadius: BorderRadius.circular(20)),
        ),
        ImageAtom(
          link: 'gojo.jpg',
          heightVal: 200,
          widthVal: 200,
          borderRadiusCircularVal: 100,
        )
      ],
    );
  }
}
