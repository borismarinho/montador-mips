Trabalho 1 OAC Prof. Flávio Vidal

helloworld.asm é o input de teste que utilizamos.

Para modificar o arquivo de input, editar a label "fin:" com o nome do arquivo substituto na primeira linha do código do arquivo main.asm.

Dados dos integrantes no relatório

OBS: Para que o código funcione corretamente, o arquivo helloworld.asm e main.asm devem estar na mesma pasta onde se econtra o .jar do MARS.


Informações Adicionais sobre o programa:

A seguir é um exemplo de sintaxe que o programa suporta:
.data
v: .word 1, 2, 3, 4

.text
addi $0, $t1, 0x045
Label: li $v0, 4
j Label


O programa tem suporte a hexadecimais e decimais.
Labels devem ser declaradas na mesma linha da instrução e com dois pontos ao fim
da string
Certo: Label:
Errado: Label :

Foram implementadas 4 instruções adicionais
srlv
sllv
mul
addiu (em decorrencia da pseudo-instrução li)
