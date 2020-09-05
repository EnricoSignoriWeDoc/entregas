void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  var pacientesComMaisDe20Anos = 0;
  for (var paciente in pacientes) {
    var pacienteSplited = paciente.split('|');

    var pacienteIdade = int.tryParse(pacienteSplited[1]);
    if (pacienteIdade > 20) {
      pacientesComMaisDe20Anos++;
    }
  }
  print('Quantidade de pacientes com mais de 20 anos:');
  print('  $pacientesComMaisDe20Anos');

  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
  var pacientesNomeEFamilia = <List<String>>[];
  for (var paciente in pacientes) {
    var pacienteSplited = paciente.split('|');
    var pacienteNomeCompleto = pacienteSplited[0];

    pacientesNomeEFamilia.add(pacienteNomeCompleto.split(' '));
  }
  pacientesNomeEFamilia.sort((a, b) => a[1].compareTo(b[1]));

  var familiaAtual = "";
  for (var paciente in pacientesNomeEFamilia) {
    if (familiaAtual == "") print('');

    if (familiaAtual != paciente[1]) {
      familiaAtual = paciente[1];
      print('Família $familiaAtual:');
    }
    print('  ${paciente[0]}');
  }
}
