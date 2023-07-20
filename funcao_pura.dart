import 'dart:math';

// (Conceito) Funções puras: uma função que (1) produz a mesma saída para a mesma
// entrada e (2) não possui efeitos colaterais. Funções puras são análogas computacionais
// das funções matemáticas.

// (Conceito) Transparência referencial: Uma expressão é chamada de referencialmente
// transparente se puder ser substituída por seu valor correspondente sem
// alterar o comportamento do programa.

/// Dobra [n].
///
/// Aqui, [double] é uma função pura e referencialmente transparente, pois não possui
/// efeitos colaterais, e cada ocorrência dela em qualquer programa pode ser substituída
/// por `n * 2` sem consequências.
int double(int n) => n * 2;

/// Gera um número inteiro possivelmente negativo de -[max] a [max].
// Não é uma função pura, pois o resultado não é sempre o mesmo para 
//o mesmo valor de entrada. A saída depende de fatores externos, como 
//a geração de números aleatórios.Não é referencialmente transparente, 
//pois substituir suas ocorrências por um valor fixo não resultaria no mesmo 
//comportamento. Pode produzir números inteiros negativos ou positivos com base 
//em elementos externos, usando a função nextInt da classe Random para gerar um 
//número aleatório entre 0 e max e a função nextBool para determinar se o número 
//gerado será negativo ou positivo.

int randomIntWithNegative(int max) =>
    Random().nextInt(max) * (Random().nextBool() ? 1 : -1);


void main(List<String> args) {
  final result = double(5);
  print(result); // Output: 10]

  final result2 = randomIntWithNegative(10);
  print(result2); // Output: não da pra saber
}
