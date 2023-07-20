// Implementação do fatorial de forma imperativa
int fatorialImperativo(int n) {
  int resultado = 1;
  
  for (int i = 2; i <= n; i++) {
    resultado *= i;
  }
  
  return resultado;
}


// Implementação do fatorial de forma recursiva
int fatorialRecursivo(int n) {
  if (n <= 1) {
    // Caso base: o fatorial de 0 e 1 é sempre 1
    return 1;
  } else {
    print("Chamada recursiva para fatorialRecursivo($n-1)");
    // Chamada recursiva para calcular o fatorial de (n-1)
    int fatorialMenosUm = fatorialRecursivo(n - 1);
    
    print("Calculando $n * $fatorialMenosUm");
    // Cálculo do fatorial de n multiplicado pelo fatorial de (n-1)
    int resultado = n * fatorialMenosUm;
    
    return resultado;
  }
}

void main() {
  int numero = 4;
    // Chamada da função para calcular o fatorial de forma imperativa
  int resultado = fatorialImperativo(numero);
  print("O fatorial de $numero é $resultado");
  // Chamada da função para calcular o fatorial de forma recursiva
  int resultado2 = fatorialRecursivo(numero);
  print("O fatorial de $numero é $resultado2");
}
