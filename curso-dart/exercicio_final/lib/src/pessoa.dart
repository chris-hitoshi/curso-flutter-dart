class Pessoa{

  String nome = "";
  int idade = 0;
  double altura = 0.0;
  double peso = 0.0;

  double imc() => peso / (altura * altura);

  bool maiorDeIdade() => idade >= 18;

}