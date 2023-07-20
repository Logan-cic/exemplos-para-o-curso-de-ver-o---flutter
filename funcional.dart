// 2.1: Funções de ordem superior

// (Conceito) Função de ordem superior: uma função que recebe ou retorna
// função(s) como argumento(s).

/// Adiciona 1 a [a].
int add1(int a) => a + 1;

/// Divide [a] pela metade.
///
/// Esta função usa o operador [~/], então, se o resultado não for um número inteiro,
/// ele será arredondado para baixo.
int halve(int a) => a ~/ 2;

/// Aplica [fn] ao número inteiro 2.
int applyOn2(int Function(int) fn) => fn(2);

/// Este é um exemplo claro de funções de ordem superior.
/// [applyOn2] é uma função que requer outra função como argumento
/// com a assinatura específica int → int.
///
/// A função recebida [fn] será aplicada ao número inteiro 2.
void main() {
  // Ao aplicar [add1] com applyOn2, a avaliação ocorre em etapas como estas:
  //
  // => applyOn2(add1)
  // => add1(2)
  // => 2 + 1
  // => 3
  print('applyOn2(add1): ${applyOn2(add1)}');

  // Ao aplicar [halve] com applyOn2, a avaliação ocorre em etapas como estas:
  //
  // => applyOn2(halve)
  // => halve(2)
  // => 2 ~/ 2
  // => 1
  print('applyOn2(halve): ${applyOn2(halve)}');
}