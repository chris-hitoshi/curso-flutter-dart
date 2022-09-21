import 'dart:io';

main(){

  List<String> nomes = [];

  bool condicao = true;

  while(condicao){
    print("Escreva um nome (se quiser sair escreva sair)");
    String texto = stdin.readLineSync() ?? "";
    
    if(texto == "sair" || texto == "SAIR"){
      condicao = false;
      print("programa finalizado");
    } else {
      nomes.add(texto);
    }

    print(nomes);
    print(nomes.length);
    print(nomes[0]);
    nomes.remove("nome");
    nomes.removeAt(2);
    print("\n");

  }

}