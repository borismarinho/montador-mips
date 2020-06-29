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

Instruções implementadas:

* [X] lw $t0, OFFSET($s3)

* [X] add/sub/and/or/nor/xor $t0, $s2, $t0

* [X] sw $t0, OFFSET($s3)

* [X] j LABEL

* [X] jr $t0

* [X] jal LABEL

* [X] beq/bne $t1, $zero, 0xXXXXX

* [X] slt $t1, $t2, $t3

* [X] lui $t1, 0xXXXX

* [X] addu/subu $t1, $t2, $t3

* [X] sll/srl $t2, $t3, 10

* [X] addi/andi/ori/xori $t2, $t3, -10

* [X] mult $t1, $t2

* [X] div $t1, $t2

* [X] li $t1, XX (incluindo na forma de pseudoinstrução)

* [X] mfhi/mflo $t1

* [X] bgez $t1, LABEL

* [X] clo $t1, $t2

* [X] srav $t1, $t2, $t3

* [X] sra $t2, $t1, 10

* [X] madd$t1, $t2
