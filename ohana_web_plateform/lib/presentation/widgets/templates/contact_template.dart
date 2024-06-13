import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/box_under_image_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/underlined_title_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/form_contact_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class ContactTemplate extends StatelessWidget {
  const ContactTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // MAIN CONTENT
          SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: NAV_BAR_HEIGHT,
              ),
              Column(
                children: [
                  _getHomeBanner(mediaScreenWidth),
                  const SizedBox(
                    height: 150,
                  ),
                  _getFormContact(),
                  const SizedBox(
                    height: 150,
                  ),
                  FooterOrg(mediaScreenWidth: mediaScreenWidth)
                ],
              )
            ],
          )),
          // NAVBAR
          const Positioned(
              top: 0, left: 0, right: 0, child: CustomNavigationBar())
        ],
      ),
    );
  }

//-------- HOME BANNER
  _getHomeBanner(mediaScreenWidth) {
    return Stack(
      children: [
        Container(
          height: 400,
          width: mediaScreenWidth,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: const ImageAtom(
            link: 'contact.jpg',
            imageType: ImageDimensionType
                .defaultCarouselImage, //fit the height of container
          ),
        ),
        const SizedBox(
          height: 400, //Container Height
          child: Align(
            alignment: Alignment.center,
            child: H1TextAtom(
              text: "Contact",
              color: Colors.purple,
              fontSize: 60,
            ),
          ),
        ),
      ],
    );
  }

//-------

  _getFormContact() {
    return Column(
      children: [
        const FormContactOrg(
            title: 'Contactez Nous ?',
            nameAndPlaceholderListMap: [
              {
                'name': 'Nom',
                'placeholder': 'Votre Nom',
              },
              {
                'name': 'Prenom',
                'placeholder': 'Votre Prenom',
              },
              {
                'name': 'Email',
                'placeholder': 'Votre Email',
              },
              {
                'name': 'Sujet',
                'placeholder': 'Subject',
              },
              {
                'name': 'Country',
                'placeholder': 'Countr...',
              },
            ]),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: true,
              onChanged: _checkFormHandler(),
              checkColor: Colors.white,
              fillColor:
                  MaterialStateColor.resolveWith((states) => Colors.purple),
            ),
            const SizedBox(
              width: 550,
              child: BodyTextAtom(
                  text:
                      'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat vero accusamusperferendis veniam facilis, saepequod autem iure repudiandae assumenda dolore eos blanditiis placeat eveniet!',
                  boldTextList: []),
            )
          ],
        )
      ],
    );
  }

  _checkFormHandler() {}
}
