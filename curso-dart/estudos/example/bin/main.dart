
import '../lib/estudos.dart';

//esse arguments são pra que na hora q executarmos ele receba alguma coisa
//q a gente escreve depois

//Então posso executar o arquivo assim:
// dart main.dart argumento
void main(List<String> arguments) {
  if(arguments[0] == "hackear"){
    print("hackeamento concluido");
  } else if(arguments[0] == "imprimir"){
    print("executando impressao");
  }
}
