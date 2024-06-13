import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/body_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h2_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/image_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/path_custompainter_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/custom_nav_bar_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/organisme/footer_org.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class CatalogTemplate extends StatelessWidget {
  const CatalogTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
                _getTable(),
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

// BACK IMAGE

  _getTable() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(400),
          1: FixedColumnWidth(250),
          2: FixedColumnWidth(250),
          3: FixedColumnWidth(250),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(
            children: _getTopOfTable(),
          ),
          _getSubTableRow()
        ],
      ),
    );
  }

  _getSubTableRow() {
    const lowCelPadding = EdgeInsets.all(8.0);
    List<List<dynamic>> data = [
      ['Arcticle et bande passante ', true, true],
      ['Support VIP', true, false],
      ['Multi-utilisateurs', false, true],
      ['Espace de stockage', false, true],
    ];
    // for (int rowIndex = 0; rowIndex < data.length; rowIndex++) {
    //   for (int colIndex = 0; colIndex < data[rowIndex].length; colIndex++) {}
    // }
    return TableRow(
      children: <Widget>[
        TableCell(
          child: Container(
            padding: lowCelPadding,
            decoration: BoxDecoration(
              border: Border.all(width: 0.4, color: Colors.black),
            ),
            child: const H2TextAtom(text: 'Arcticle et bande passante '),
          ),
        ),
        TableCell(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.4, color: Colors.black),
            ),
            padding: lowCelPadding,
            child: H2TextAtom(text: '30'),
          ),
        ),
        TableCell(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.4, color: Colors.black),
            ),
            padding: lowCelPadding,
            child: Text('Designer'),
          ),
        ),
        TableCell(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.4, color: Colors.black),
            ),
            padding: lowCelPadding,
            child: Text('Designer'),
          ),
        ),
      ],
    );
  }

  _getTopOfTable() {
    return <Widget>[
      Container(),
      _getMainCellTable(
          color: const Color(0xFF399AD1), title: 'Prix  minimun \n 0 €'),
      _getMainCellTable(
          color: const Color(0xff0076b5),
          title: 'Prix  moyen \n 0 €',
          addToHeight: 30),
      _getMainCellTable(
          color: const Color(0xff1f6690),
          title: 'Prix  maximum \n 0 €',
          addToHeight: 60),
    ];
  }

  _getMainCellTable(
      {double? addToHeight, required String title, required Color color}) {
    const marginContainerTopTabCell = EdgeInsets.only(
      right: 2.0,
    );
    const double heightContainerTopTabCell = 150.0;
    const double mainCellWidth = 250.0; //main Size cell
    return Container(
      margin: marginContainerTopTabCell,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
            ),
            height: heightContainerTopTabCell + (addToHeight ?? 0),
            child: Align(
                alignment: Alignment.center,
                child: H1TextAtom(
                  text: title,
                  color: Colors.white,
                )),
          ),
          CustomPaint(
            size: const Size(mainCellWidth, 50),
            painter: BackArrowPainterAtom(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
