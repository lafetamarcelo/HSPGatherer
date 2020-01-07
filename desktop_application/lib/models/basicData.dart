


/*
*   This part we have the actual models that 
* has the data colected at each field.
* --------- DATA OBJECT MODELS -------------
*/

class Identification {

  /*
  *
  * This has the information 
  *
  */

  var name = '';
  var age = '';
  var gender = '';
  var record = '';
  var cate = '';
  var birth = '';
  var date = '';

  var diagnosis = '';
  var cfnyha = '';
  var indication = '';

  Map<String,List<String>> hapMedication = {
    'name': [], 'dose': [], 'freq': []
  };

  int currentState = 0;
}

class Conditions {

  /*
  *
  * This has the informations of the exam conditions.
  * -------------------------------------------------
  *
  */

  List<String> answer = List(11);
  List<String> details = List(11);

  int currentState = 0;

}

class Rest {

  /*
  *
  * This has the informations of the exam conditions.
  * -------------------------------------------------
  *
  */

  var weight = '';
  var height = '';

  List<double> termodiluition = List(3);
  List<double> fickMethod = List(3);
  List<double> monitorization = List(3);
  List<double> monometry = List(6);

  var svO = 0.0;
  var saO = 0.0;

  int currentState = 0;
}


class Exercise {

  /*
  *
  * This has the informations of the exam conditions.
  * -------------------------------------------------
  *
  */
  static int _size = 17;

  Map<String, List<double>> data = {
    'time': List(_size),
    'load': List(_size),
    'FC': List(_size),
    'PAs': List(_size),
    'PAd': List(_size),
    'PADm': List(_size),
    'PAPs': List(_size),
    'PAPd': List(_size),
    'PoAP': List(_size),
    'DC': List(_size),
  };

  Map<String, List<double>> centralVenon = {
    'PO': List(_size),
    'SvO': List(_size),
    'Lact': List(_size),
    'Hb': List(_size),
  };

  Map<String, List<double>> arterial = {
    'PO': List(_size),
    'SvO': List(_size),
    'Lact': List(_size),
    'Hb': List(_size),
  };

  Map<String, List<double>> tecpi = {
    'VO': List(_size),
    'DCFick': List(_size),
  };

  double vomax = 0.0;
  double veVvm = 0.0;
  double rer = 0.0;

  int currentState = 0;
}