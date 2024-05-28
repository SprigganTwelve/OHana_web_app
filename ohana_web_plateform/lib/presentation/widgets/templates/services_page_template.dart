import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_icon.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/path_custompainter_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/underline_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class ServicesPagesTemplate extends StatelessWidget {
  const ServicesPagesTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: mediaScreenWidth,
        child: Stack(
          children: [
            // MAIN CONTENT
            SingleChildScrollView(
                child: Column(
              children: [
                const SizedBox(
                  height: NAV_BAR_HEIGHT,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 70,
                    ),
                    _getServiceView(),
                    const SizedBox(
                      width: 20,
                    ),
                    _getOtherServices()
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                FooterOrg(mediaScreenWidth: mediaScreenWidth)
              ],
            )),
            // NAVBAR
            const Positioned(
                top: 0, left: 0, right: 0, child: CustomNavigationBar()),
          ],
        ),
      ),
    );
  }

//DEV
  _getServiceView() {
    int index = 0; //for example
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            SizedBox(
              width: 1000,
              height: 700,
              child: ImageAtom(link: LIST_OF_SERVICES[index]['image']),
            )
          ],
        ),
        const SizedBox(
          height: 400,
        ),
        Positioned(
          bottom: 0,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 5, color: Colors.grey, blurRadius: 5)
                  ]),
              width: 1000,
              height: 300,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const H1TextAtom(text: 'Développement mobile'),
                  const SizedBox(
                    height: 20,
                  ),
                  _getKeyWords(index),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 700,
                      child: BodyTextAtom(
                          text: LIST_OF_SERVICES[index]['text'],
                          boldTextList: LIST_OF_SERVICES[index]
                              ['boldTextList']),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  _getKeyWords(int index) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // SizedBox(
        //   width: 140,
        // ),
        for (var item in LIST_OF_SERVICES[index]['keyWords'])
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ButtonAtom(item, type: ButtonType.purple))
      ],
    );
  }

//OTHERS
  _getOtherServices() {
    return Column(
      children: [
        _getSingleCard(),
      ],
    );
  }

  _getSingleCard() {
    return const SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [ImageAtom(link: "phone1.jpg"), H2TextAtom(text: 'text')],
      ),
    );
  }

//-----Singles View----
}
