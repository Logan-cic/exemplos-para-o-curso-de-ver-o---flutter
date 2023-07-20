// Função assíncrona que pode lançar uma exceção
Future<void> exemploAssincrono() async {
  await Future.delayed(Duration(seconds: 1));

  // Simulando uma exceção
  bool erro = true;
  if (erro) {
    throw Exception("Ocorreu um erro na operação assíncrona!");
  }

  print("Operação assíncrona concluída.");
}

void main() async {
  try {
    await exemploAssincrono();
    print("Tudo ocorreu bem.");
  } catch (e) {
    print("Erro: $e");
  }
}
