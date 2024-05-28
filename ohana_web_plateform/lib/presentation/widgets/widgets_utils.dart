import 'package:flutter/material.dart';

const double NAV_BAR_HEIGHT = 80.0;
const double SPACE_LEFT_BIG_TITLE = 200.0;
const double SPACE_TITLE_BODY = 30.0;
const double LINK_FONTSIZE = 20.0;
const double FOOTER_HEIGHT = 350.0;
const double BORDER_RADIUS_OFFRERS_CARD = 10.0;
const double PARTIAL_CIRCULAR_ITEM = 10.0;
const double COMPLETE_CIRCULAR_ITEM = 150;
const double POPUP_FONTSIZE = 20;
const List<Map<String, dynamic>> LIST_OF_OFFERS = [
  {
    'title': 'Développeur React',
    'image': 'devReact.jpeg',
    'keyWords': ['île de France', 'Stage', '2 mois'],
    'date': '15 Mai 2025',
    'popup': ''
  },
  {
    'title': 'Designer UI',
    'image': 'Cover.jpg',
    'keyWords': ['île de France', 'Stage', '2 mois'],
    'date': '15 Mai 2025',
    'popup': 'this is a simple PopUp',
    'description': '',
  },
  {
    'title': 'Gestionnaire du réseuax',
    'image': 'reseau.jpg',
    'keyWords': ['île de France', 'Stage', '2 mois'],
    'date': '15 Mai 2025',
    'popup': '',
    'description': '',
  },
  {
    'title': 'Développeur mobile flutter',
    'image': 'phone1.jpg',
    'keyWords': ['Afrique', 'CDI', '2 mois'],
    'date': '15 Mai 2025',
    'popup': '',
    'description': '',
  },
];

const List<Map<String, dynamic>> LIST_OF_SERVICES = [
  {
    'id': 1,
    'title': 'Développement web',
    'image': "dev3.jpg",
    'keyWords': [' HTML', 'HTML', 'CSS', 'Flutter'],
    'text':
        " ipsum dolor sit amet consectetur adipi  sic0ing elit. Dicta labore, aliquam sequi delectus fuga magni  consequuntur neque eaque tenetur Lorem ipsum dolor sit amet consectetur adipi  sicing elit. Dicta labore, aliquam sequi delectus fuga magni  consequuntur neque eaque tenetur  ... .",
    'boldTextList': [""]
  },
  {
    'id': 2,
    'title': 'Application',
    'image': 'Cover.jpg',
    'keyWords': [
      'Flutter',
      'Android/iOS',
    ],
    'text': "",
    'boldTextList': [""]
  },
  {
    'id': 3,
    'title': 'Logiciels ',
    'image': 'Cover.jpg',
    'keyWords': [
      'Flutter',
    ],
    'text': "",
    'boldTextList': [""]
  },
];

Map<String, List> FOOTER_LINK_BLOC = {
  'column1': [
    'A propos',
    'Référencement',
    'Carièrres',
    'Actualités',
    'Blog',
    'Sécurisation Code Logiciels',
    'Audit de Vulnérabilité'
  ],
  'column2': [
    'Audit de Conformité',
    'Sécurisation Code Logiciels',
    'Développement Web',
    'Développement Logiciel'
  ],
  'column3': [
    'Cybersécurité',
    'Nos contrats de Maintenance',
    'Accompagnement Équipe',
  ]
};

//enum

enum ButtonType {
  navbar(
      primaryColor: Color(0x00000000),
      hoverColor: Color(0x00000000),
      textColor: Colors.white),
  standard(
      primaryColor: Color.fromARGB(255, 168, 60, 250),
      hoverColor: Color(0xffE384FF),
      textColor: Colors.white),
  green(
      primaryColor: Color(0xff33BBC5),
      hoverColor: Color(0xffD1FFF3),
      textColor: Colors.white),
  gray(
      primaryColor: Color(0xffD9D9D9),
      hoverColor: Color(0xffD9D9D9),
      textColor: Colors.black,
      border: 20),
  buttonNumber(
      primaryColor: Color(0xffD9D9D9),
      hoverColor: Color(0xffD9D9D9),
      textColor: Colors.black,
      border: 0),
  purple(
      primaryColor: Color.fromARGB(255, 135, 0, 246),
      hoverColor: Color.fromARGB(255, 218, 176, 252),
      textColor: Colors.white,
      border: 20),
  red(
      primaryColor: Color(0xffD20062),
      hoverColor: Color(0xffD6589F),
      textColor: Colors.white);

  final Color? primaryColor;
  final Color? hoverColor;
  final Color? textColor;
  final double border;
  const ButtonType(
      {this.primaryColor, this.hoverColor, this.textColor, this.border = 0});

  bool isNavbarButton() {
    return this == ButtonType.navbar;
  }
}

enum ImageDimensionType {
  defaultCarouselImage(heightVal: 600, borderRaiusVal: 0),
  standard(
    heightVal: 340,
    widthVal: 420,
    borderRaiusVal: 50,
  ),

  offerImage(
    heightVal: 220,
    widthVal: 170,
    borderRaiusVal: 0,
  ),
  imageEquipMembers(
    heightVal: 220,
    widthVal: 220,
  ),

  circular(
    borderRaiusVal: 50,
  ),
  userImage(
    borderRaiusVal: 100,
    heightVal: 150,
    widthVal: 150,
  ),
  imageListTextView(
    heightVal: 500,
    widthVal: 500,
    borderRaiusVal: 0,
  ),
  imageLink(heightVal: 90, widthVal: 200, borderRaiusVal: 10);

  final double? heightVal;
  final double? widthVal;
  final double borderRaiusVal;

  const ImageDimensionType(
      {this.heightVal, this.widthVal, this.borderRaiusVal = 50});

  bool isCarouselImage() {
    return this == ImageDimensionType.defaultCarouselImage;
  }
}

// "assets/images/gojo.jpg",
