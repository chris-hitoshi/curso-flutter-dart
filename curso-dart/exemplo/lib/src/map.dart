map(){

  //O primeiro tipo é pra representar o nome da categoria
  //O segundo é o valor q a categoria recebe
  Map<String, dynamic> maps = {
    "nome": "Chris",
    "idade": 18,
    "cidade": "São Paulo",
    "estado": "SP"
  };

  print(maps);
  print(maps["nome"]);

  maps["idade"] = 19;

  print(maps);

}