main(){

  //laço com for
  for(int i = 0; i < 5; i++){
    print("rodou $i");
  }


  //laço com while
  bool condicao = true;
  int x = 0;
  while(condicao){
    print("rodou $x");
    if(x > 9){
      condicao = false;
    }
    x++;
  }

}