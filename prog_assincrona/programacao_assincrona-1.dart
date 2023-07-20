// Função assíncrona que retorna um Future<int>
Future<int> buscarNumeroAsync() async {
  // Simulando uma operação assíncrona, aguardando 2 segundos
  await Future.delayed(Duration(seconds: 2));

  return 42;
}

void main() {
  print("Buscando número...");

  // Chamando a função assíncrona e lidando com o Future
  buscarNumeroAsync().then((numero) {
    print("Número encontrado: $numero");
  });
  
  print("Continuando a execução...");
}
