import 'package:flutter/cupertino.dart';

//Classe para notificar mudanças
class AppController extends ChangeNotifier{

  //Criamos uma instancia para ser usada em outras classe
  static AppController instance = AppController();

  bool isDark = false;

  //Método para mudar o tema no app_widget
  changeTheme(){
    isDark = !isDark;
    //Método que avisa as mudanças
    notifyListeners();
  }
}