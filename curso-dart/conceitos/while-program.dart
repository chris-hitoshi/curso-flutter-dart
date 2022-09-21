import 'dart:io';

main(){

  bool condicao = true;

  while(condicao){
    print("Escreva algo (se quiser sair escreva sair)");
    String texto = stdin.readLineSync() ?? "";
    
    if(texto == "sair" || texto == "SAIR"){
      condicao = false;
      print("programan finalizado");
    } else {
      print("Você digitou $texto");
    }
  }

}