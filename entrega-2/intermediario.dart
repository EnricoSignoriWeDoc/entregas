void main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  var quantidadeMasculino = 0;
  var quantidadeFeminino = 0;

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  print('Quantidade de pessoas:');
  print('- Com duplicados ${pessoas.length}');
  pessoas = pessoas.toSet().toList();
  print('- Sem duplicados ${pessoas.length}');
  print('');

  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  pessoas.forEach((pessoa) {
    var pessoaSplited = pessoa.split('|');
    pessoaSplited[2] == 'Masculino'
        ? quantidadeMasculino++
        : quantidadeFeminino++;
  });

  print('Quantidade de pessoas por sexo:');
  imprimirQuantidadePorSexo(
    quantidadeMasculino,
    quantidadeFeminino,
  );

  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  quantidadeMasculino = 0;
  quantidadeFeminino = 0;

  pessoas.removeWhere((pessoa) {
    var pessoaSplited = pessoa.split('|');
    var pessoaIDade = int.parse(pessoaSplited[1]);
    var menorDe18 = pessoaIDade < 18;

    if (!menorDe18) {
      pessoaSplited[2] == 'Masculino'
          ? quantidadeMasculino++
          : quantidadeFeminino++;
    }

    return menorDe18;
  });

  print('Quantidade de pessoas maiores de 18 por sexo:');
  imprimirQuantidadePorSexo(
    quantidadeMasculino,
    quantidadeFeminino,
  );

  // 4 - Encontre a pessoa mais velha.
  var pessoasSplied = <List<String>>[];

  pessoas.forEach((pessoa) {
    pessoasSplied.add(pessoa.split('|'));
  });

  pessoasSplied.sort((a, b) => b[1].compareTo(a[1]));
  print('A pessoa mais velha:');
  print('- ${pessoasSplied[0][0]}');
}

void imprimirQuantidadePorSexo(
  int quantidadeMasculino,
  int quantidadeFeminino,
) {
  print('- Masculino: $quantidadeMasculino');
  print('- Feminino: $quantidadeFeminino');
  print('- Total: ${quantidadeMasculino + quantidadeFeminino}');
  print('');
}
