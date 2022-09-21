import 'dart:io';

List<Map<String, dynamic>> cadastros = [];
main(){

  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");

  while(condicao){
    print("==== DIGITE UM COMANDO ====");
    String comando = stdin.readLineSync() ?? "";
    if(comando.toLowerCase() == "sair"){
      condicao = false;
      print("=== SAIU DO PROGRAMA ===");
    } else if(comando.toLowerCase() == "cadastro"){
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if(comando.toLowerCase() == "imprimir"){
      imprimir();
    } else {
      print("=== ESSE COMANDO NÃO EXISTE ===");
    }
  }

}

cadastrar(){

  Map<String, dynamic> cadastro = {};

  print("=== Digite um nome ===");
  cadastro["nome"] = stdin.readLineSync() ?? "";

  print("=== Digite a idade ===");
  cadastro["idade"] = stdin.readLineSync() ?? "";

  cadastros.add(cadastro);

}

imprimir(){
  for(int i = 0; i < cadastros.length; i++){
    print("CADASTRO $i - ${cadastros[i]}");
  }
}