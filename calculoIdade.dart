import 'dart:io';

main() {
  print("***** Digite uma idade *****");

  var valorEntrada = stdin.readLineSync();
  var idade = int.tryParse(valorEntrada ?? "");

  //Verificação da idade por categoria
  if (idade == null) {
    print("Você inseriu um valor nulo, tente novamente");
    valorEntrada = stdin.readLineSync();

    while (idade == null) {
      print("Você inseriu um valor nulo, tente novamente");
      valorEntrada = stdin.readLineSync();
    }
  } else if (idade >= 60) {
    print("Melhor idade");
  } else if (idade >= 18) {
    print("Adulto");
  } else if (idade >= 12) {
    print("Adolescente");
  } else {
    print("Criança");
  }
}
