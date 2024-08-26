//Ficheiro com o texto
String ficheiro = "Texto.txt";
String[] linhas;
String[] palavras;

void setup(){
  //Carrega as linhas do ficheiro para o array
  linhas = loadStrings(ficheiro);
  //Para selecionar duas palavras aleatórias do texto
  palavras = split(linhas[int (random(linhas.length - 1))], ' ');
  int indice_1 = int (random(0, palavras.length));
  int indice_2 = int (random(0, palavras.length));
  //Para não selecionar palavras iguais
  while(palavras[indice_1].equals(palavras[indice_2])){
    indice_2 = int (random(0, palavras.length));
  }
  //Imprime as duas palavras aleatórias na Consola
  print("palavras: "+ palavras[indice_1] + " " + palavras[indice_2]);
}
