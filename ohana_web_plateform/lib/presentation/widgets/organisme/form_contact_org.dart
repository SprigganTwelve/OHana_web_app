import 'package:flutter/cupertino.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/button_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/h1_text_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/atoms/textarea_shape_atom.dart';
import 'package:ohana_web_plateform/presentation/widgets/molecules/named_input_mol.dart';
import 'package:ohana_web_plateform/presentation/widgets/widgets_utils.dart';

class FormContactOrg extends StatelessWidget {
  const FormContactOrg(
      {super.key,
      required this.title,
      required this.nameAndPlaceholderListMap});
  final String title;
  final List<Map<String, dynamic>> nameAndPlaceholderListMap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        H1TextAtom(text: title),
        for (var item in nameAndPlaceholderListMap)
          NamedInputMol(
            text: item['name'],
            placeHolder: item['placeholder'],
          ),
        const TextAreaShape(
          placeholder: 'Votre Message',
        ),
        const SizedBox(
          height: 20,
        ),
        const ButtonAtom('Envoyer', type: ButtonType.standard)
      ],
    );
  }
}

// shape of data expected
// [
//   {'name': 'Nom', 'placeholder': 'votre nom'},
//   {'name': 'Prenom', 'placeholder': 'votre Prenom'}
// ]