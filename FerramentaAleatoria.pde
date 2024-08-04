String ficheiro = "Texto.txt";
String[] linhas;
String[] palavras;

void setup(){
  linhas = loadStrings(ficheiro);
  palavras = split(linhas[int (random(linhas.length - 1))], ' ');
  int indice_1 = int (random(0, palavras.length));
  int indice_2 = int (random(0, palavras.length));
  
  while(palavras[indice_1].equals(palavras[indice_2])){
    indice_2 = int (random(0, palavras.length));
  }
  
  println("palavras: "+ palavras[indice_1] + " " + palavras[indice_2]);
}
