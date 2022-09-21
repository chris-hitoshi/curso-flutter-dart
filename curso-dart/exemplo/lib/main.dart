import 'src/calculo-idade.dart';
import 'src/calculo-imc.dart';
import 'src/carrinho-compras.dart';
import 'src/map.dart';

void main(List<String> arguments) {
  if(arguments[0] == "calculo-idade"){
    calculoIdade();
  } else if(arguments[0] == "carrinho-compras"){
    carrinhoCompras();  
  } else if(arguments[0] == "calculo-imc"){
    calculoImc();
  } else if(arguments[0] == "map"){
    map();
  } else {
    print("Esse programa não existe");
  }
  

}
