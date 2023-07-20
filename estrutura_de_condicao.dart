void main(List<String> args) {
  int? idade = 17;
  
  // Verificação de idade usando if-else
  if (idade >= 18) {
    print("Você é maior de idade!");
  } else {
    print("Você é menor de idade.");
  }

  // Usando operador ternário para verificar a idade
  String mensagem = (idade >= 18) ? "Você é maior de idade!" : "Você é menor de idade.";
  print(mensagem);

  double valorTotalCompra = 100.0;
  
  // Cálculo do valor do desconto usando if-else
  double desconto;
  if (valorTotalCompra >= 100) {
    desconto = 10.0;
  } else {
    desconto = 5.0;
  }
  
  double valorComDesconto = valorTotalCompra - desconto;
  print("Valor total da compra: R\$ $valorTotalCompra");
  print("Desconto aplicado: R\$ $desconto");
  print("Valor com desconto: R\$ $valorComDesconto");

  int numero = -5;
  
  // Verificação do número usando if-else
  if (numero > 0) {
    print("O número é positivo!");
  } else if (numero < 0) {
    print("O número é negativo!");
  } else {
    print("O número é zero.");
  }

}
