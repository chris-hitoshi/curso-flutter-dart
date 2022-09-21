import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

//O Stateful deve ter um override tbm, mas não de um build
class HomePage extends StatefulWidget {
  //Ele deverá retornar outra classe do tipo State
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

//Classe State do HomePage
class HomePageState extends State<HomePage> {
 
  int couter = 0;

  //O build tbm deve estar presente aqui
  @override
  Widget build(BuildContext context) {
    //Scaffold é um widget que deixará o desenvolvimento mt simples!
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.network(
                    'https://i.ytimg.com/vi/QFsw29t_7aQ/hqdefault.jpg'
                  )
                ),
                accountName: Text('Christian'),
                accountEmail: Text('tetihamai@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                subtitle: Text('Tela de inicio'),
                onTap: (){
                  print('Home');
                }
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                subtitle: Text('Finalizar sessão'),
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/');
                }
              ),
            ]
          )
        ),
        //Barra de cima
        appBar: AppBar(
          title: Text('ALPE'),
          //CustomSwitcher é uma classe que criamos
          actions: [
            CustomSwitcher()
          ],       
        ),
        //Corpo do Scaffold
        //Container é uma div
        body: Container(
          //double.infinity é pra pegar 100% da tela
          width: double.infinity,
          height: double.infinity,
          child: Column(
            //Criamos uma coluna que o alinhamento principal será no centro
            mainAxisAlignment: MainAxisAlignment.center,
            //children são os filhos que uma coluna, linha, listBody, pode ter
            children: [
              Text('Contador: $couter', style: TextStyle(fontSize: 30)),
              Container(height: 10),
              CustomSwitcher(),
              Container(height: 50),
              //Podemos ter linhas ou colunas dentro de outras linhas e colunas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: 50, height: 50, color: Colors.black),
                  Container(width: 50, height: 50, color: Colors.black),
                  Container(width: 50, height: 50, color: Colors.black),
                ],
                
              )
            ],
          ),
        ),
        //Aqui criamos um botão para adicionar +1 ao contador
        floatingActionButton: FloatingActionButton(
          //Icone de add dentro do botão 
          child: Icon(Icons.add),
          onPressed: () {
            //Ao pressionar, "resetamos" o estado da classe
            setState(() {
              couter++;
              print('Clicado');
            });
          },
        ),
    );

  }
}

//Classe para mudar o tema do app
class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({ Key? key }) : super(key: key);

  //Tbm terá um build
  @override
  Widget build(BuildContext context) {
    //Retornará um widget Switch
    return Switch(
      //O valor é de uma classe que veremos depois
      value: AppController.instance.isDark,
      onChanged: (value){
        //Quando mudar o switch, ele mudará o tema do app
        AppController.instance.changeTheme();
      }
    );
  }
}