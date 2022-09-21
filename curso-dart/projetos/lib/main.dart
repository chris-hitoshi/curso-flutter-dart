
// import 'src/pessoa.dart';
import 'src/cachorro.dart';
import 'src/gato.dart';
import 'src/vaca.dart';

void main(List<String> arguments) {

  // Pessoa pessoa = Pessoa("Chris", 18, "M");
  // print(pessoa.nome);
  // print(pessoa.idade);
  // print(pessoa.sexo);
  // print(pessoa.peso);

  Gato gato = Gato("George", "miau");
  Cachorro cachorro = Cachorro("Pig", "au au");
  Vaca vaca = Vaca("Matilda", "muuuu");

  print("Gato faz: ${gato.barulho}");
  print("Cachorro faz: ${cachorro.barulho}");
  print("Vaca faz: ${vaca.barulho}");

}
