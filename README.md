# Badblocks1
Esse script em shell script é um menu com 4 opções para executar o comando badblocks em uma partição especificada pelo usuário. O badblocks é uma ferramenta que verifica se há setores defeituosos em uma unidade de armazenamento.

As opções disponíveis são:

Verificar a partição especificada em modo de leitura e escrever um relatório detalhado de setores defeituosos (opção `-sv`);
Verificar a partição especificada em modo de escrita e leitura, marcando cada bloco defeituoso encontrado (opção `-nsv`);
Verificar a partição especificada em modo de escrita completa (opção `-wsv`);
Verificar a partição especificada em modo de leitura, exibindo apenas um relatório resumido dos setores defeituosos encontrados (opção `-s` `-v` ).
Antes de executar cada opção, o script exibe as partições disponíveis e solicita ao usuário que informe o número da partição a ser analisada. Depois, o comando `badblocks` é executado na partição especificada.

Ao finalizar a execução do `badblocks`, o script retorna ao menu principal.
