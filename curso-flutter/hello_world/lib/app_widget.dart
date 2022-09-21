
import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';
import 'package:hello_world/home_page.dart';
import 'package:hello_world/login_page.dart';

//classe Stateles, que não mudará posteriormente
class MyApp extends StatelessWidget {

  //O método buid é obrigatório e pode ser criar na lâmpadinha
  @override
  Widget build(BuildContext context) {
    /*Ele deve retornar algo, no caso aqui, está retornando um widget
    AnimatedBuilder para a animação*/
    return AnimatedBuilder(
      //esse é um parâmetro do widget, que fala onde a animação ocorrerá
      //AppControler é outra classe que eu criei posteriormente
      animation: AppController.instance,
      builder: (context, child){
        /*Terá outro retorno, que retornará o MaterialApp, que deixa nosso
        aplicativo com cara de aplicativo*/
        return MaterialApp(
          //O tema principal do aplicativo
          theme: ThemeData(
            primarySwatch: Colors.blue,
            /*Operador ternário, que mudará o tema de light para dark dependendo
            do swap na tela*/
            brightness: AppController.instance.isDark ? 
            Brightness.dark : 
            Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage()
          }
        );
      }
    );
  }
}
