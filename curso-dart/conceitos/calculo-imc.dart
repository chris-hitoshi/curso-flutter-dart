import'dart:io';

main(){ 
  calculoImc();
}

calculoImc(){

  print("Digite sua altura: ");
  double altura = double.parse(stdin.readLineSync() ?? "");
  
  print("Digite seu peso: ");
  double peso = double.parse(stdin.readLineSync() ?? "");

  double imc = calcImc(peso, altura);

  imprimirResultado(imc);

}

double calcImc(double peso, double altura){
  return peso / (altura * altura);
}

imprimirResultado(double imc){

  String texto;
  
  if(imc < 18.5){
    texto = "abaixo do peso";
  } else if(imc <= 24.9){
    texto = "peso normal";
  } else if(imc <= 29.9){
    texto = "sobrepeso";
  } else if(imc <= 34.9){
    texto = "obesidade grau 1";
  } else if(imc <= 39.9){
    texto = "obesidade grau 2";
  } else {
    texto = "obesidade grau 3"; 
  }

  print("Seu imc é de: ");
  print(imc);
  print("Seu resultado é: ");
  print(texto);

}
