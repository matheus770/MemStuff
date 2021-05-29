import 'package:memstuff/helpers/date_helper.dart';

class Validators {
  static String isEmpty(String text) {
    if (text.isEmpty) {
      return "Campo Obrigatorio";
    } else {
      return null;
    }
  }

  static String isTelephoneEmpty(String value) {
    Pattern pattern = r'^\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}$';
    RegExp regex = new RegExp(pattern);

    if (!regex.hasMatch(value))
      return 'Número Invalido';
    else
      return null;
  }

  
  static String dateValidator(String value){ 
    DateTime date = DateHelper.parse(value);
    if(date.isAfter(DateTime.now())) return 'Data <= Data de Hoje';
    return null;
  }
}
