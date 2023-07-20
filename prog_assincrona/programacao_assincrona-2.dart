// Função assíncrona que retorna um Future<int>
Future<int> buscarNumeroAsync() async {
  // Simulando uma operação assíncrona, aguardando 2 segundos
  await Future.delayed(Duration(seconds: 2));

  return 42;
}

void main() async {
  print("Buscando número...");

  // Usando async/await para lidar com a função assíncrona
  int numero = await buscarNumeroAsync();
  print("Número encontrado: $numero");
  
  print("Continuando a execução...");
}
