.data
fin: .asciiz "helloworld.asm"
ehumalinha: .asciiz "\n"
buffer: .space 1
linha: .space 128
temp: .space 128
token1: .space 128
token2: .space 128
token3: .space 128
token4: .space 128
token5: .space 128
buffer_imediato_hexa: .space 128
total_instrucoes: .word 4194304
debug_de_pobre: .asciiz "CHEGOU AQUI\n"
buffer_instruction: .space 33
shift_shamt: .asciiz "00000"
buffer_imm: .space 17
dec_to_bin_buffer: .space 33
str_len_buffer: .space 128
separador: .asciiz " : "
finaliza_linha_saida_text: ";\n"
fout_text: .space 128
fout_data: .space 128
cabecalho_text: .asciiz "DEPTH = 4096;\nWIDTH = 32;\nADDRESS_RADIX = HEX;\nDATA_RADIX = HEX;\nCONTENT\nBEGIN\n\n"
cabecalho_data: .asciiz "DEPTH = 16384;\nWIDTH = 32;\nADDRESS_RADIX = HEX;\nDATA_RADIX = HEX;\nCONTENT\nBEGIN\n\n"
ponteiro_saida_text: .word 0
ponteiro_saida_data: .word 0
fim_arquivo_text: .asciiz "\nEND;"
fim_arquivo_data: .asciiz "\nEND;"
extensao_text_mif: .asciiz "_text.mif"
extensao_data_mif: .asciiz "_data.mif"
flag_leitura_de_labels: .word 0
label_list: .space 100000
label_index: .space 100000
ponteiro_label_list: .word 0
total_labels: .word 0
conta_instrucoes: .word 0
buffer_label: .space 128
buffer_label_na_lista: .space 128
buffer_debug: .asciiz "EFG"
busca_label_na_lista: .space 128
label_nao_encontrada: .asciiz "Label nao encontrada"
finalizada_leitura_das_labels: .asciiz "Fim da leitura das labels!\n"
comeca_parsing: .asciiz "Montando instrucao!\n"
montando_linha: .asciiz "Montando dados!\n"
buffer_data_text: .space 128
area_data: .asciiz ".data"
area_text: .asciiz ".text"
flag_data: .word 0
flag_text: .word 0
qtd_words: .word 0
enderecos_area_data: .word 0
buffer_data: .space 128
contador_dos_dados: .word 0
ponteiro_linha: .word 0
buffer_no_16bits: .space 17
#####################################################
############### Instrucoes  #########################

i_add:	.asciiz "add"
i_sub:	.asciiz "sub"
i_and:	.asciiz "and"
i_or:	.asciiz "or"
i_nor:	.asciiz "nor"
i_xor:	.asciiz "xor"
i_slt:	.asciiz "slt"
i_addu:	.asciiz "addu"
i_subu:	.asciiz "subu"
i_srav: .asciiz "srav"
i_addi: .asciiz "addi"
i_andi: .asciiz "andi"
i_ori:  .asciiz "ori"
i_xori: .asciiz "xori"
i_lui:  .asciiz "lui"
i_sll:  .asciiz "sll"
i_srl:  .asciiz "srl"
i_mult: .asciiz "mult"
i_div:  .asciiz "div"
i_mfhi: .asciiz "mfhi"
i_mflo: .asciiz "mflo"
i_clo:  .asciiz "clo"
i_sra:  .asciiz "sra"
i_madd: .asciiz "madd"
i_lw:   .asciiz "lw"
i_sw:   .asciiz "sw"
i_j:    .asciiz "j"
i_jr:   .asciiz "jr"
i_jal:  .asciiz "jal"
i_bgez: .asciiz "bgez"
i_beq:  .asciiz "beq"
i_bne:  .asciiz "bne"
i_li:   .asciiz "li"
i_addiu:.asciiz "addiu"
i_mul:  .asciiz "mul"
i_sllv: .asciiz "sllv"
i_srlv: .asciiz "srlv"

#####################################################
############### Campo funct #########################

funct_add:  .asciiz "100000"
funct_sub:  .asciiz "100010"
funct_and:  .asciiz "100100"
funct_or:   .asciiz "100101"
funct_nor:  .asciiz "100111"
funct_xor:  .asciiz "100110"
funct_slt:  .asciiz "101010"
funct_addu: .asciiz "100001"
funct_subu: .asciiz "100011"
funct_srav: .asciiz "000111"
funct_sll:  .asciiz "000000"
funct_srl:  .asciiz "000010"
funct_mult: .asciiz "011000"
funct_div:  .asciiz "011010"
funct_mfhi: .asciiz "010000"
funct_mflo: .asciiz "010010"
funct_clo:  .asciiz "100001"
funct_sra:  .asciiz "000011"
funct_madd: .asciiz "000000"
funct_jr:   .asciiz "001000"
funct_bgez: .asciiz "00001"
funct_mul:  .asciiz "000010"
funct_sllv: .asciiz "000100"
funct_srlv: .asciiz "000110"

#####################################################
################## Opcodes ##########################
opcode_R:    .asciiz "000000"
opcode_ADDI: .asciiz "001000"
opcode_ANDI: .asciiz "001100"
opcode_ORI:  .asciiz "001101"
opcode_XORI: .asciiz "001110"
opcode_LUI:  .asciiz "001111"
opcode_MADD: .asciiz "011100"
opcode_LW:   .asciiz "100011"
opcode_SW:   .asciiz "101011"
opcode_J:    .asciiz "000010"
opcode_JAL:  .asciiz "000011"
opcode_BGEZ: .asciiz "000001"
opcode_BEQ:  .asciiz "000100"
opcode_BNE:  .asciiz "000101"
opcode_ADDIU:.asciiz "001001"
opcode_CLO:  .asciiz "011100"
opcode_MUL:  .asciiz "011100"

#####################################################
######## Bufferes de registradores ##################

buffer_opcode: .space 7
buffer_rs: .space 6
buffer_rt: .space 6
buffer_rd: .space 6
buffer_offset_imm: .space 128
buffer_offset_reg: .space 128

#####################################################
######## Nome registradores hardcoded ###############

r_zero: .asciiz "$zero"
r_at: .asciiz "$at"
r_v0: .asciiz "$v0"
r_v1: .asciiz "$v1"
r_a0: .asciiz "$a0"
r_a1: .asciiz "$a1"
r_a2: .asciiz "$a2"
r_a3: .asciiz "$a3"
r_t0: .asciiz "$t0"
r_t1: .asciiz "$t1"
r_t2: .asciiz "$t2"
r_t3: .asciiz "$t3"
r_t4: .asciiz "$t4"
r_t5: .asciiz "$t5"
r_t6: .asciiz "$t6"
r_t7: .asciiz "$t7"
r_s0: .asciiz "$s0"
r_s1: .asciiz "$s1"
r_s2: .asciiz "$s2"
r_s3: .asciiz "$s3"
r_s4: .asciiz "$s4"
r_s5: .asciiz "$s5"
r_s6: .asciiz "$s6"
r_s7: .asciiz "$s7"
r_t8: .asciiz "$t8"
r_t9: .asciiz "$t9"
r_k0: .asciiz "$k0"
r_k1: .asciiz "$k1"
r_gp: .asciiz "$gp"
r_sp: .asciiz "$sp"
r_fp: .asciiz "$fp"
r_ra: .asciiz "$ra"

#####################################################
######## Nome registradores sem mascara hardcoded ###############

r_zero_s: .asciiz "$0"
r_at_s: .asciiz "$1"
r_v0_s: .asciiz "$2"
r_v1_s: .asciiz "$3"
r_a0_s: .asciiz "$4"
r_a1_s: .asciiz "$5"
r_a2_s: .asciiz "$6"
r_a3_s: .asciiz "$7"
r_t0_s: .asciiz "$8"
r_t1_s: .asciiz "$9"
r_t2_s: .asciiz "$10"
r_t3_s: .asciiz "$11"
r_t4_s: .asciiz "$12"
r_t5_s: .asciiz "$13"
r_t6_s: .asciiz "$14"
r_t7_s: .asciiz "$15"
r_s0_s: .asciiz "$16"
r_s1_s: .asciiz "$17"
r_s2_s: .asciiz "$18"
r_s3_s: .asciiz "$19"
r_s4_s: .asciiz "$20"
r_s5_s: .asciiz "$21"
r_s6_s: .asciiz "$22"
r_s7_s: .asciiz "$23"
r_t8_s: .asciiz "$24"
r_t9_s: .asciiz "$25"
r_k0_s: .asciiz "$26"
r_k1_s: .asciiz "$27"
r_gp_s: .asciiz "$28"
r_sp_s: .asciiz "$29"
r_fp_s: .asciiz "$30"
r_ra_s: .asciiz "$31"
######## Binario registradores hardcoded ############

b_zero: .asciiz "00000"
b_at: 	.asciiz "00001"
b_v0: 	.asciiz "00010"
b_v1: 	.asciiz "00011"
b_a0: 	.asciiz "00100"
b_a1: 	.asciiz "00101"
b_a2: 	.asciiz "00110"
b_a3: 	.asciiz "00111"
b_t0: 	.asciiz "01000"
b_t1: 	.asciiz "01001"
b_t2: 	.asciiz "01010"
b_t3: 	.asciiz "01011"
b_t4: 	.asciiz "01100"
b_t5: 	.asciiz "01101"
b_t6: 	.asciiz "01110"
b_t7: 	.asciiz "01111"
b_s0: 	.asciiz "10000"
b_s1: 	.asciiz "10001"
b_s2: 	.asciiz "10010"
b_s3: 	.asciiz "10011"
b_s4: 	.asciiz "10100"
b_s5: 	.asciiz "10101"
b_s6: 	.asciiz "10110"
b_s7: 	.asciiz "10111"
b_t8: 	.asciiz "11000"
b_t9: 	.asciiz "11001"
b_k0: 	.asciiz "11010"
b_k1: 	.asciiz "11011"
b_gp: 	.asciiz "11100"
b_sp: 	.asciiz "11101"
b_fp: 	.asciiz "11110"
b_ra: 	.asciiz "11111"


#####################################################
######## Binarios e hexadecimais ####################

byteToken: .space 5  
hexAtual: .space 2
hexOut: .space 9

bin_0: .asciiz "0000" 
bin_1: .asciiz "0001" 
bin_2: .asciiz "0010" 
bin_3: .asciiz "0011"
bin_4: .asciiz "0100"
bin_5:  .asciiz "0101"
bin_6: .asciiz "0110" 
bin_7: .asciiz "0111" 
bin_8: .asciiz"1000"
bin_9: .asciiz "1001"
bin_10: .asciiz "1010"
bin_11: .asciiz "1011"
bin_12: .asciiz "1100"
bin_13: .asciiz "1101"
bin_14: .asciiz "1110"
bin_15: .asciiz "1111"

hex_0: .asciiz "0" 
hex_1: .asciiz "1" 
hex_2: .asciiz "2" 
hex_3: .asciiz "3"
hex_4: .asciiz "4"
hex_5: .asciiz "5"
hex_6: .asciiz "6" 
hex_7: .asciiz "7" 
hex_8: .asciiz"8"
hex_9: .asciiz "9"
hex_10: .asciiz "a"
hex_11: .asciiz "b"
hex_12: .asciiz "c"
hex_13: .asciiz "d"
hex_14: .asciiz "e"
hex_15: .asciiz "f"

.text
LABEL_LIST_MANAGER:
  la $a3, label_list 
  sw $a3, ponteiro_label_list
  jal ABRE_ARQUIVO
  lw $t0, flag_leitura_de_labels
  li $t0, 1
  sw $t0, flag_leitura_de_labels
  
CRIACAO_DA_LABEL_LIST:
  jal LECHAR
  jal TRATA_STRING
  jal PEGA_TOKEN
  jal CHECA_LINHA_VAZIA
  jal CHECA_DATA_TEXT #verifica se eh .data ou .text
  beq $v0, 1, CRIACAO_DA_LABEL_LIST
  la $a3, token1
  #move $a0, $a3
  #li $v0, 4
  #syscall
  #la $a0, ehumalinha
  #syscall
  jal IDENTIFICA_LABEL
  la $a2, token1
  jal MONTA_LABEL_LIST
  li $v0, 0
  #la $a0, label_list
  #li $v0, 4
  #syscall
  j CRIACAO_DA_LABEL_LIST
  
  
################## INICIA PROGRAMA ######################  
MAIN:
  #lw $a0, conta_instrucoes
  #li $v0, 1
  #syscall
  #la $a0, ehumalinha
  #li $v0, 4
  #syscall
  #lw $a0, total_labels
  #li $v0, 1
  #syscall
  #la $a0, label_index
  #sb $t0, 4($a0)
  #li $v0, 4
  #syscall
  #li $v0, 10
  #syscall
  la $a0, finalizada_leitura_das_labels
  li $v0, 4
  syscall
  sw $zero, flag_data
  sw $zero, flag_text
  lw $t0, flag_leitura_de_labels #altera flag sinalizando que labels ja foram lidas
  li $t0, 0
  sw $t0, flag_leitura_de_labels

  la $t0, label_list 
  sw $t0, ponteiro_label_list #cria ponteiro para o primeiro valor da label list
  
  jal GERA_NOME_OUTPUT_TEXT #cria o nome do arquivo text.mif
  jal GERA_NOME_OUTPUT_DATA #cria o nome do arquivo data.mif
  jal ABRE_ARQUIVO
  jal ABRE_SAIDA_TEXT
  jal ABRE_SAIDA_DATA


FLUXO:
  jal LECHAR #le o primeiro byte do arquivo 
  jal TRATA_STRING
  jal PEGA_TOKEN
  jal CHECA_LINHA_VAZIA
  jal CHECA_DATA_TEXT #verifica se eh .data ou .text
  beq $v0, 1, TRATA_DADOS #caso esteja na area .data, faz o tratamento dela
  la $a3, token1
  jal IDENTIFICA_LABEL #identifica a label

  jal CORRIGE_INSTRUCAO
  jal CONTA_INSTRUCOES
  la $s1, dec_to_bin_buffer #carrega o endereco do vetor de binarios
  jal Transforma_hexa_bin #chama funcao para converter binario em hexa
  la $a1, hexOut
  li $a2, 8
  jal COPIA_SAIDA_TEXT
  la $a1, separador 
  li $a2, 3
  jal COPIA_SAIDA_TEXT
  
  jal INICIO
  la $s1, buffer_instruction #carrega o endereco do vetor de binarios
  jal Transforma_hexa_bin #transoforma para hexadecimal

  la $a1, hexOut
  li $a2, 8
  jal COPIA_SAIDA_TEXT
  la $a1, finaliza_linha_saida_text
  li $a2, 2
  jal COPIA_SAIDA_TEXT
  j FLUXO
  j Exit
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################  
########## Abre o arquivo ################################################################################################ 
ABRE_ARQUIVO:
  li   $v0, 13       # Chamada do sistema para abrir arquivo
  la   $a0, fin    # Nome do arquivo de input
  li   $a1, 0        # Abre para leitura (flags 0: read, 1: write)
  li   $a2, 0      # Modo ignorado
  syscall            # Abre o arquivo (Retorno em $v0)
  move $s6, $v0      # Salva descricao do arquivo 
  jr $ra


##########################################################################################################################
##########################################################################################################################
####################################################################################################################################################################################################################################################
##########################################################################################################################
##########################################################################################################################


TRATA_DADOS:
  la $a0, montando_linha
  li $v0, 4
  syscall
  la $a3, linha
  sw $a3, ponteiro_linha
  
LE_WORDS:
  li $t1, 0 
  la $a2, buffer_data

le_words:
  lw $a3, ponteiro_linha
  lb $t0, 0($a3)
  beq $t1, 1, seta_word
  beq $t0, 0, encerra_entrada_word
  beq $t0, 46, reseta_flag_word
  beq $t0, 47, reseta_flag_word
  blt $t0, 45, reseta_flag_word
  bgt $t0, 57, reseta_flag_word
  la $a2, buffer_data
  sb $t0, 0($a2)
  addi $a2, $a2, 1
  addi $a3, $a3, 1
  sw $a3, ponteiro_linha
  li $t1, 1
  j le_words
  
seta_word:
  beq $t0, 0, encerra_entrada_word_completa
  beq $t0, 46, reseta_flag_word_completa
  beq $t0, 47, reseta_flag_word_completa
  blt $t0, 48, reseta_flag_word_completa
  bgt $t0, 57, reseta_flag_word_completa
  sb $t0, 0($a2)
  addi $a2, $a2, 1
  addi $a3, $a3, 1
  sw $a3, ponteiro_linha
  li $t1, 1
  j le_words
  
reseta_flag_word:
  li $t1, 0
  addi $a3, $a3, 1
  sw $a3, ponteiro_linha
  j le_words

reseta_flag_word_completa:
  li $t1, 0
  sb $zero, 0($a2)
  jal ESCREVE_DADOS_NO_ARQUIVO
  j le_words
  
encerra_entrada_word_completa:
  sb $zero, 0($a2)
  
  jal ESCREVE_DADOS_NO_ARQUIVO

  j FLUXO
  
encerra_entrada_word:
  j FLUXO

ESCREVE_DADOS_NO_ARQUIVO:
  move $s5, $ra
  lw $t0, enderecos_area_data
  move $a3, $t0
  addi $t0, $t0, 4
  sw $t0, enderecos_area_data
  jal DECIMAL_PARA_BINARIO

  la $s1, dec_to_bin_buffer
  jal Transforma_hexa_bin
  la $a1, hexOut
  li $a2, 8
  jal COPIA_SAIDA_DATA
  
  la $a1, separador
  li $a2, 3
  jal COPIA_SAIDA_DATA
  
  la $a3, buffer_data
  jal STR_LEN
  la $a3, buffer_data
  move $a2, $v0
  jal STRING_PARA_INT
  move $a3, $v0
  jal DECIMAL_PARA_BINARIO 
  la $s1, dec_to_bin_buffer
  jal Transforma_hexa_bin

  la $a1, hexOut
  li $a2, 8
  jal COPIA_SAIDA_DATA
  
  la $a1, finaliza_linha_saida_text
  li $a2, 2
  jal COPIA_SAIDA_DATA

  jr $s5
  
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################  
########## CHECA DATA TEXT   ############################################################################################# 

CHECA_DATA_TEXT:
move $s0, $ra #preserva o endereco de retorno em $s0
la $a3, token1 #carrega endereco do primeiro token lido em $s3
la $a2, area_data  #carrega segundo argumento do comparador de string com a string .data
jal COMPARA_STRINGS
beq $v0, 1, seta_flag_data #caso retorne verdadeiro, quer dizer que estah no .data
la $a3, token1
la $a2, area_text #compara novamente mas com a strinf .text
jal COMPARA_STRINGS
beq $v0, 1, seta_flag_text #caso retorne verdadeiro, entao estah no .text

#la $a0, debug_de_pobre
#li $v0, 4
#syscall

lw $v0, flag_data

jr $s0

seta_flag_data:
li $t0, 1
sw $t0, flag_data
li $t0, 0
sw $t0, flag_text
lw $v0, flag_data
addi $s0, $s0, -20
jr $s0

seta_flag_text:
li $t0, 1
sw $t0, flag_text
li $t0, 0
sw $t0, flag_data
lw $v0, flag_data
#jal FECHA_SAIDA_DATA
addi $s0, $s0, -20
jr $s0

##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################  
########## Abre o arquivo ###############################################################################################
CORRIGE_INSTRUCAO:
move $s7, $ra


beq $v1, 1, corrige
jr $s7

corrige:
la $a3, token1
la $a2, token2
jal copy_string
sb $zero, 0($a3)

la $a3, token2
la $a2, token3
jal copy_string
sb $zero, 0($a3)

la $a3, token3
la $a2, token4
jal copy_string
sb $zero, 0($a3)

la $a3, token4
la $a2, token5
jal copy_string
sb $zero, 0($a3)


jr $s7
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
########## Le uma linha inteira ########################################################################################## 

LECHAR:

  la $t0, linha
  
leia_char:
  ###############################################################
  # Read from file just opened
  li   $v0, 14       # Chamada do sistema para ler arquivo
  move $a0, $s6      # Move a descricao do arquivo
  la   $a1, buffer   # Endereco do buffer onde escrever
  li   $a2, 1        # Tamanho do buffer
  syscall            # Le do arquivo
  beq $v0, 0, FECHAARQUIVO
  # Printa o buffer ##################################################
  lb $t1, buffer	# Carrega o valor dentro do buffer no registrador
  beq $t1, 10, final_da_linha_lida_do_arquivo   # Se o valor for 10, ou seja, "\n", fim da linha
  sb $t1, 0($t0)	# Acrescenta ao buffer o caracter
  addi $t0, $t0, 1	# Soma 1 para o endereco do buffer
  j leia_char
  
final_da_linha_lida_do_arquivo:
  li $t1, 0 # t1 recebe \0
  sb $t1, 0($t0) # Guarda o \0 no buffer ao final da string
  jr $ra

##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
########## Trata a entrada  ############################################################################################## 

TRATA_STRING:

la $t0, linha

tratando_string_linha:
lb $t2,0($t0) #carrega primeiro byte de t1 em t2
beq $t2, 9, IGNORA_TAB
beq $t2, 35, IGNORA_COMMENT
beq $t2, 44, IGNORA_VIRGULA
beq $t2, 0, encerra_tratamento_string #caso tenha chegado ao fim da string, sai da funcao
addi $t0, $t0, 1
j tratando_string_linha 

IGNORA_COMMENT:

li $t1,0
sb $t1,($t0)
#la $a0, f1 # Carrega o endereco do buffer em a0
#li $v0, 4 # Chamada no sistema para print
#syscall # Imprime
j tratando_string_linha 

IGNORA_VIRGULA:

li $t1,32 #substitui a virgula por espaco (32 na tabela ascii)
sb $t1,($t0)
#la $a0, f1 # Carrega o endereco do buffer em a0
#li $v0, 4 # Chamada no sistema para print
#syscall # Imprime

j tratando_string_linha   

encerra_tratamento_string: #volta ao fluxo de execucao do programa
jr $ra

IGNORA_TAB:

li $t1,32 #substitui a virgula por espaco (32 na tabela ascii)
sb $t1,($t0)
#la $a0, f1 # Carrega o endereco do buffer em a0
#li $v0, 4 # Chamada no sistema para print
#syscall # Imprime

j tratando_string_linha    

##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
########## Conta instrucoes  #############################################################################################

CONTA_INSTRUCOES:
move $s0, $ra
lw $t0, total_instrucoes #carrega a word em $t0
move $a3, $t0
jal DECIMAL_PARA_BINARIO
addi $t0, $t0, 4
sw $t0, total_instrucoes #salva no buffer quantas instrucoes tem
jr $s0

##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
########## Gera nome output text  ########################################################################################
GERA_NOME_OUTPUT_TEXT:
  la $t0, fin
  la $t1, fout_text
  
copia_text_output:
  lb $t3, 0($t0) #
  beq $t3, 46, adiciona_text_mif #caso ache um ponto (onde termina o nome do arquivo e comeca a extensao)
  sb $t3, 0($t1)
  addi $t0, $t0, 1
  addi $t1, $t1, 1
  j copia_text_output
  
adiciona_text_mif:
 la $t0, extensao_text_mif #Adiciona a string text.mif ao arquivo
 
copia_ext_text_mif:
 lb $t3, 0($t0)
 sb $t3, 0($t1)
 addi $t0, $t0, 1
 addi $t1, $t1, 1
 beq $t3, 0, finaliza_ext_text_mif #caso chegue ao fim da linha 
 j copia_ext_text_mif

finaliza_ext_text_mif:
  jr $ra
  
  
GERA_NOME_OUTPUT_DATA:
  la $t0, fin
  la $t1, fout_data
  
copia_data_output:
  lb $t3, 0($t0)
  beq $t3, 46, adiciona_data_mif #caso ache um ponto (onde termina o nome do arquivo e comeca a extensao)
  sb $t3, 0($t1)
  addi $t0, $t0, 1
  addi $t1, $t1, 1
  j copia_data_output
  
adiciona_data_mif:
 la $t0, extensao_data_mif #Adiciona a string data.mif ao arquivo
 
copia_ext_data_mif:
 lb $t3, 0($t0)
 sb $t3, 0($t1)
 addi $t0, $t0, 1
 addi $t1, $t1, 1
 beq $t3, 0, finaliza_ext_data_mif #caso chegue ao fim da linha 
 j copia_ext_data_mif

finaliza_ext_data_mif:
  jr $ra  
  
  
  
  
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################  
########## LABEL LIST ####################################################################################################  

IDENTIFICA_LABEL:
la $t0, buffer_label
li $v1, 0

compara_label:
lb $t1, 0($a3)
beq $t1, 58, retorna_label_true
beq $t1, 0, retorna_label_false
addi $a3, $a3, 1
j compara_label

retorna_label_true:
li $v1, 1
jr $ra

retorna_label_false:
jr $ra

MONTA_LABEL_LIST:
move $s7, $ra
beq $v1, 1, COPIA_PRA_LABEL_LIST
lw $t0, conta_instrucoes
addi $t0, $t0, 4
sw $t0, conta_instrucoes
la $a2, token1
la $a3, i_li
jal COMPARA_STRINGS
beq $v0, 1, labels_load_immediate
jr $s7

COPIA_PRA_LABEL_LIST:


  lw $a3, ponteiro_label_list # Carrega onde estava a ultima label
  jal copy_string # No fim das contas isto eh um append
  
  sb $zero, -1($a3) # Finaliza a string
  #addi $a3, $a3, -1
  sw $a3, ponteiro_label_list # Guarda a posicao do ponteiro em memoria
  
  lw $t0, conta_instrucoes # Carrega a quantida de instrucoes
  lw $t1, total_labels # E a quantida de labels
  
  la $t4, label_index # Carrega indice de enderecos das labels primeira label label_index[0] =  0(total_de_labels) e armazena o endereco dessa label
  
  li $t5, 4
  mult $t1, $t5
  mflo $t6
  add $t4, $t4, $t6 # Soma ao indice atual
  sw $t0, 0($t4) # Guarda o endereco
  
  addi $t0, $t0, 4
  sw $t0, conta_instrucoes # Incrementa instrucoes
  
  addi $t1, $t1, 1 # Soma 1 ao total de labels
  sw $t1, total_labels # Guarda na memoria
  
  la $a2, token2
  la $a3, i_li
  jal COMPARA_STRINGS
  beq $v0, 1, labels_load_immediate_com_label
  
  jr $s7

labels_load_immediate_com_label:
  la $a3, token4
  jal STR_LEN
  move $a2, $v0
  la $a3, token3
  jal STRING_PARA_INT
  move $a3, $v0
  jal DECIMAL_PARA_BINARIO
  la $a3, dec_to_bin_buffer
  jal CHECA_PRIMEIROS_0
  beq $v1, 1, conta_labels_nao_pseudo_com_label
  jal CHECA_PRIMEIROS_1
  beq $v1, 1, conta_labels_nao_pseudo_com_label
  lw $t0, conta_instrucoes
  addi $t0, $t0, 4
  sw $t0, conta_instrucoes
  jr $s7

conta_labels_nao_pseudo_com_label:
  jr $s7
  
labels_load_immediate:
  la $a3, token3
  jal STR_LEN
  move $a2, $v0
  la $a3, token3
  jal STRING_PARA_INT
  move $a3, $v0
  jal DECIMAL_PARA_BINARIO
  la $a3, dec_to_bin_buffer
  jal CHECA_PRIMEIROS_0
  beq $v1, 1, conta_labels_nao_pseudo
  jal CHECA_PRIMEIROS_1
  beq $v1, 1, conta_labels_nao_pseudo
  lw $t0, conta_instrucoes
  addi $t0, $t0, 4
  sw $t0, conta_instrucoes
  jr $s7
  
conta_labels_nao_pseudo:
  jr $s7
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
########## Arquivo de saida     ##########################################################################################

ABRE_SAIDA_TEXT:

  li $v0, 13
  la $a0, fout_text
  li $a1, 1
  li $a2, 0
  syscall
  
  move $a0, $v0
  li $v0, 15
  la $a1, cabecalho_text
  li $a2, 80
  syscall
  
  sw $a0, ponteiro_saida_text
  jr $ra
  
COPIA_SAIDA_TEXT:
  lw $a0, ponteiro_saida_text
  li $v0, 15
  syscall
  sw $a0, ponteiro_saida_text
  jr $ra
    
FECHA_SAIDA_TEXT:  
  lw $a0, ponteiro_saida_text
  la $a1, fim_arquivo_text
  li $a2, 5
  li $v0, 15
  syscall
  li $v0, 16
  syscall
  jr $ra
#################################  
  
ABRE_SAIDA_DATA:

  li $v0, 13
  la $a0, fout_data
  li $a1, 1
  li $a2, 0
  syscall
  
  move $a0, $v0
  li $v0, 15
  la $a1, cabecalho_data
  li $a2, 81
  syscall
  
  sw $a0, ponteiro_saida_data
  jr $ra
  
COPIA_SAIDA_DATA:
  lw $a0, ponteiro_saida_data
  li $v0, 15
  syscall
  sw $a0, ponteiro_saida_data
  jr $ra
    
FECHA_SAIDA_DATA:  
  lw $a0, ponteiro_saida_data
  la $a1, fim_arquivo_data
  li $a2, 5
  li $v0, 15
  syscall
  li $v0, 16
  syscall
  jr $ra

##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
########## Transforma de bin pra hexa  ###################################################################################

# $s0 sera utilizado para contar os bits
#$t1 ponteiro para 32bitBin
#$t2 ponteiro para o char atual
#$t4 ponteiro para byteToken

Transforma_hexa_bin:

move $s7, $ra # salva endereco para onde voltar
la $t4, byteToken
la $t0, hexAtual #carrega endereco de hexatual em t0
sb $zero, 1($t0) #coloca um 0 no fim da string de hexatual
la $t1, hexOut #carrega endereco de hexOut em t0
sb $zero, 9($t1) #coloca um 0 no fim da string de hexOut
move $t1, $zero #limpa o registrador
move $t0, $zero #limpa o registrador
la $s2, hexOut #carrega o endereco de hexOut em $s2
move $s0, $zero

contaChar:

lb $t2, 0($s1) #carrega o binario atual em t2 
beq $t2, 0, finaliza_transforma_hexa #verifica se terminou
addi $s0, $s0, 1 #adiciona 1 ao contador para checar se eh 4 
sb $t2, 0($t4) #adiciona o char atual no byteToken
beq $s0, 4, toHex #se chegou ate o 4, formou 4 binarios, jah da pra converter
addi $s1, $s1, 1 #anda no endereco da string de binarios
addi $t4, $t4, 1 #anda no endereco da string byteToken
j contaChar #volta pro inicio da funcao

toHex:
addi $t4, $t4, 1
sb $zero, 0($t4) #coloca um zero no fim de byteToken para sinalizar o fim da string
move $s0, $zero #zera o contador
la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_0 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_0


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_1 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_1


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_2 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_2


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_3 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_3


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_4 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_4


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_5 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_5



la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_6 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_6


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_7 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_7


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_8 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_8


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_9 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_9


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_10 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_10


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_11 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_11

la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_12 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_12

la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_13 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_13

la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_14 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_14


la $a2, byteToken #primeiro argumento do comparador de strings
la $a3, bin_15 #segundo argumento do comparador de strings 
jal COMPARA_STRINGS #compara as strings
beq $v0, 1, hex_to_15



hex_to_0:

la $a2, hex_0 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar

hex_to_1:

la $a2, hex_1 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar

hex_to_2:

la $a2, hex_2 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar

hex_to_3:

la $a2, hex_3 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar


hex_to_4:

la $a2, hex_4 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar


hex_to_5:

la $a2, hex_5 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar


hex_to_6:

la $a2, hex_6 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar


hex_to_7:

la $a2, hex_7 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar


hex_to_8:

la $a2, hex_8 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar


hex_to_9:

la $a2, hex_9 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar

hex_to_10:

la $a2, hex_10 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar

hex_to_11:

la $a2, hex_11 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar


hex_to_12:

la $a2, hex_12 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar


hex_to_13:

la $a2, hex_13 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar


hex_to_14:

la $a2, hex_14 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar

bne $s2, 0, contaChar

hex_to_15:

la $a2, hex_15 #carrega a string de origem
la $a3, hexAtual  #carrega o endereco destino para receber o char
jal copy_string #funcao de copia de string
sb $zero, 0($a3)
la $a3, hexAtual
lb $t7, 0($a3)
sb $t7, 0($s2) #adiciona hex ao buffer final de saida de hexadecimal(hexOut)
addi $s2,$s2, 1 #anda uma posicao no hexOut
addi $s1,$s1, 1 #anda uma posicao de memoria no buffer para pegar proximo char binario
la $t4, byteToken
bne $s1, 0, contaChar

finaliza_transforma_hexa: 
jr $s7


##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
########## Monta os tokens  ##############################################################################################
      
PEGA_TOKEN:

  li $s3, 0     # Flag fim da linha
  li $s0, 1 	# flagEspaco = 1
  li $s1, 0	# flagCaracter = 0
  li $s2, 0 	# $s2 contador de palavras
  la $t0, linha # carrega o endereco do buffer em t0

CARREGA_TEMP:

  la $t2, temp # carrega o endereco de temp em t2

SEPARA_TOKENS:

  lb $t1, 0($t0) 	# carrega o valor salvo do endereco t0 (linha) em t1
  beq $t1, 0, TERMINA_LINHA	# se chegou no fim do buffer termina
  beq $t1, 32, CARACTER_ESPACO # se o caracter for espaco pula pra espaco
  bne $t1, 32, CARACTER_QUALQUER # se for qualquer outra coisa, pula pra CARACTER_QUALQUER
  addi $t0, $t0, 1 # incrementa a posicao do caracter na string
  j SEPARA_TOKENS
      
CARACTER_ESPACO:

  beq $s1, 1, FINALIZA_STRING  # se a flagCaracter estiver for 1 ($1), quer dizer que terminou a palavra
  li $s0, 1		# flagEspaco esta no registrador s0 verdadeira
  addi $t0, $t0, 1	# incrementa posicao na string
  j SEPARA_TOKENS

CARACTER_QUALQUER:
  sb $t1, 0($t2) 	# copia o byte da string na variavel temporaria (temp)
  addi $t2, $t2, 1	# incrementa posicao na string temp
  addi $t0, $t0, 1  	# incrementa a posicao na string de entrada
  li $s1, 1		# flagCaracter = 1
  li $s0, 0		# flagEspaco = 0
  j SEPARA_TOKENS


TERMINA_LINHA:
  li $s3, 1

FINALIZA_STRING:
  beq $s0, 1, DISTRIBUI_TOKEN	# Se ultimo caracter for espaco branch
  li $s1, 0		# flag char = 0
  #addi $s2, $s2, 1	# incrementa quantidade de palavras
  sb $zero, 0($t2)	# e coloca o \0 no final do buffer temp
  addi $t0, $t0, 1	# incrementa a posicao da string
  addi $s2, $s2, 1	# incrementa quantidade de palavras
  sw $s2, qtd_words     #armazena quants palavras tem
  #la $a0, temp		# printa
  #li $v0, 4
  #syscall
  #la $t2, temp		# volta pro inicio do buffer temp
  #li $s0, 1		# reseta as flags
  #li $s1, 0		# flagEspaco = 1, flagChar = 0
  #addi $s2, $s2, 1	# incrementa contador de palavras
  # j SEPARA_TOKENS
  
DISTRIBUI_TOKEN: #dependendo da quantidadade de palavras tiver a linha, tal funcao eh chamada
  beq $s2, 1, SALVA_TOKEN1
  beq $s2, 2, SALVA_TOKEN2
  beq $s2, 3, SALVA_TOKEN3
  beq $s2, 4, SALVA_TOKEN4
  beq $s2, 5, SALVA_TOKEN5

   
  j EXIT
  
SALVA_TOKEN1:
  la $t2, temp
  la $t3, token1 
COPIA_TOKEN1:
  lb $t1, 0($t2)
  sb $t1, 0($t3)
  addi $t2, $t2, 1
  addi $t3, $t3, 1
  beq $s3, 1, EXIT
  beq $t1, 0, CARREGA_TEMP
  j COPIA_TOKEN1
  
SALVA_TOKEN2:
  la $t2, temp
  la $t3, token2 
COPIA_TOKEN2:
  lb $t1, 0($t2)
  sb $t1, 0($t3)
  addi $t2, $t2, 1
  addi $t3, $t3, 1
  beq $s3, 1, EXIT
  beq $t1, 0, CARREGA_TEMP
  j COPIA_TOKEN2

SALVA_TOKEN3:
  la $t2, temp
  la $t3, token3 
COPIA_TOKEN3:
  lb $t1, 0($t2)
  sb $t1, 0($t3)
  addi $t2, $t2, 1
  addi $t3, $t3, 1
  beq $s3, 1, EXIT
  beq $t1, 0, CARREGA_TEMP
  j COPIA_TOKEN3

SALVA_TOKEN4:
  la $t2, temp
  la $t3, token4 
COPIA_TOKEN4:
  lb $t1, 0($t2)
  sb $t1, 0($t3)
  addi $t2, $t2, 1
  addi $t3, $t3, 1
  beq $s3, 1, EXIT
  beq $t1, 0, CARREGA_TEMP
  j COPIA_TOKEN4


SALVA_TOKEN5:
  la $t2, temp
  la $t3, token5 
COPIA_TOKEN5:
  lb $t1, 0($t2)
  sb $t1, 0($t3)
  addi $t2, $t2, 1
  addi $t3, $t3, 1
  beq $s3, 1, EXIT
  beq $t1, 0, CARREGA_TEMP
  j COPIA_TOKEN5  
  
  
EXIT:
  beq $t1, 0, FIM #caso teha chegado a fim da linha do buffer temp, todas as instrucoes daquela linha ja foram lidas
  beq $s2, 1, COPIA_TOKEN1
  beq $s2, 2, COPIA_TOKEN2
  beq $s2, 3, COPIA_TOKEN3
  beq $s2, 4, COPIA_TOKEN4
  beq $s2, 5, COPIA_TOKEN5

FIM:
  jr $ra

##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
########## Reinicia o fluxo se 0 palavras  ###############################################################################  

CHECA_LINHA_VAZIA:
  lw $t0, flag_leitura_de_labels
  beq $t0, 1, volta_labels
  beq $s2, -1, acabou_acabou
  beq $s2, 0, vai_pra_proxima_linha
  jr $ra

vai_pra_proxima_linha:
  j FLUXO

acabou_acabou:

  j Exit


volta_labels:
  beq $s2, 0, CRIACAO_DA_LABEL_LIST
  jr $ra
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
########## Fecha o arquivo  ############################################################################################## 
#CHECA_LINHA_VAZIA_FINAL:
  

FECHAARQUIVO:
  # Close the file 
 # la $a0, linha# Carrega o endereco do buffer em a0
 # li $v0, 4 # Chamada no sistema para print
 # syscall # Imprime
  sb $zero, 0($t0)
  jal TRATA_STRING
  jal PEGA_TOKEN
  lw $t0, flag_leitura_de_labels
  beq $t0, 1, encerra_leitura_de_label
   move $a0, $s2


  beq $s2, 0, checa_ultima_linha_data_text

  jal CHECA_DATA_TEXT
  beq $v0, 1, TRATA_DADOS #caso esteja na area .data, faz o tratamento dela
  la $a3, token1
  jal IDENTIFICA_LABEL #identifica a label

  jal CORRIGE_INSTRUCAO
  jal CONTA_INSTRUCOES
  la $s1, dec_to_bin_buffer #carrega o endereco do vetor de binarios
  jal Transforma_hexa_bin #chama funcao para converter binario em hexa
  la $a1, hexOut
  li $a2, 8
  jal COPIA_SAIDA_TEXT
  la $a1, separador 
  li $a2, 3
  jal COPIA_SAIDA_TEXT
  
  jal INICIO
  la $s1, buffer_instruction #carrega o endereco do vetor de binarios
  jal Transforma_hexa_bin #transoforma para hexadecimal

  la $a1, hexOut
  li $a2, 8
  jal COPIA_SAIDA_TEXT
  la $a1, finaliza_linha_saida_text
  li $a2, 2
  jal COPIA_SAIDA_TEXT
  #li $s2, -1
  #jal CHECA_LINHA_VAZIA


  
#  jal CONTA_INSTRUCOES
#  la $s1, dec_to_bin_buffer #carrega o endereco do vetor de binarios
#  jal Transforma_hexa_bin
#  la $a1, hexOut
#  li $a2, 8
#  jal COPIA_SAIDA_TEXT
#  la $a1, separador
#  li $a2, 3
#  jal COPIA_SAIDA_TEXT
  
#  jal INICIO
#  la $s1, buffer_instruction #carrega o endereco do vetor de binarios
#  jal Transforma_hexa_bin

#  la $a1, hexOut
#  li $a2, 8
#  jal COPIA_SAIDA_TEXT
#  la $a1, finaliza_linha_saida_text
#  li $a2, 2
#  jal COPIA_SAIDA_TEXT
 
  #jal FECHA_SAIDA_TEXT
  jal FECHA_SAIDA_TEXT 
  jal FECHA_SAIDA_DATA
 
  li   $v0, 16       # Chamada do sistema para fechar o arquivo
  move $a0, $s6      # file descriptor to close
  syscall            # close file
  j Exit

checa_ultima_linha_data_text:
  jal FECHA_SAIDA_TEXT 
  jal FECHA_SAIDA_DATA
 
  li   $v0, 16       # Chamada do sistema para fechar o arquivo
  move $a0, $s6      # file descriptor to close
  syscall            # close file
  j Exit

encerra_leitura_de_label:  

  
  la $a3, token1
  jal IDENTIFICA_LABEL
  la $a2, token1
  jal MONTA_LABEL_LIST
  
  li   $v0, 16       # Chamada do sistema para fechar o arquivo
  move $a0, $s6      # file descriptor to close
  syscall  
  
  j MAIN
 

 ##########################################
 ################ Busca de labels 
      ######## li $t0, 0
#Argumentos de busca: $a3 a label a ser procurada
#busca_label:
busca_label:
  move $s7, $ra
  move $s3, $a3
  li $s5, 0
  la $a2, label_list
  sw $a2, ponteiro_label_list
 
continua_label_list: 
  lw $a2, ponteiro_label_list
  la $a3, busca_label_na_lista
  jal copy_string
  sb $zero, 0($a3)
  
  #la $a0, busca_label_na_lista
  #li $v0, 4
  #syscall
  
  addi $a2, $a2, 1
  sw $a2, ponteiro_label_list
  
  move $a3, $s3
  la $a2, busca_label_na_lista
  jal COMPARA_STRINGS
  
  addi $s5, $s5, 1
  lw $t2, conta_instrucoes
  beq $v0, 1, retorna_label
  beq $t2, $t1, label_nao_encontrada_no_codigo
  j continua_label_list

retorna_label:
  addi $s5, $s5, -1
  move $v0, $s5
  jr $s7
  
label_nao_encontrada_no_codigo:
  la $a0, label_nao_encontrada
  li $v0, 4
  syscall
  li $v0, 10
  syscall

##########################################################################################################################
##########################################################################################################################
##########################################################################################################################
##########################################################################################################################  
########## PARSER ########################################################################################################   
INICIO:
  la $a0, comeca_parsing #carrega string "montando instrucao"
  li $v0, 4 
  syscall #printa "Montando instrucao"
  
  move $s4, $ra
  la $a2, token1 #carrega primeiro token em a2
  jal INSTRUCAO
  j exit


INSTRUCAO:
  move $s0, $ra  # $s0 = guarda primeiro endereco de retorno
  
  la $a3, i_add #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_ADD  #se o retorno for verdadeiro, eh um add
  
  la $a3, i_sub #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_SUB  #se o retorno for verdadeiro, eh um add
  
  la $a3, i_and #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_AND  #se o retorno for verdadeiro, eh um add
  
  la $a3, i_or #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_OR  #se o retorno for verdadeiro, eh um add
  
  la $a3, i_nor #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_NOR  #se o retorno for verdadeiro, eh um add
  
  la $a3, i_xor #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_XOR  #se o retorno for verdadeiro, eh um add
  
  la $a3, i_slt #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_SLT  #se o retorno for verdadeiro, eh um add

  la $a3, i_addu #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_ADDU  #se o retorno for verdadeiro, eh um add
  
  la $a3, i_subu #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_SUBU  #se o retorno for verdadeiro, eh um add
  
  la $a3, i_srav #carrega o rg da str comp com a inst desejada
  jal COMPARA_STRINGS #compara as strings
  beq $v0, 1, TRATA_SRAV  #se o retorno for verdadeiro, eh um add
  
  la $a3, i_addi
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_ADDI
  
  la $a3, i_andi
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_ANDI
  
  la $a3, i_ori
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_ORI
  
  la $a3, i_xori
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_XORI
  
  la $a3, i_lui
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_LUI
  
  la $a3, i_sll
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_SLL
  
  la $a3, i_srl
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_SRL
  
  la $a3, i_mult
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_MULT
  
  la $a3, i_div
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_DIV
  
  la $a3, i_mfhi
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_MFHI
  
  la $a3, i_mflo
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_MFLO
  
  la $a3, i_clo
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_CLO
  
  la $a3, i_sra
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_SRA
  
  la $a3, i_madd
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_MADD
  
  la $a3, i_lw
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_LW
  
  la $a3, i_sw
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_SW
  
  la $a3, i_j
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_J
  
  la $a3, i_jr
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_JR

  la $a3, i_jal
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_JAL

  la $a3, i_bgez
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_BGEZ
  
  la $a3, i_beq
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_BEQ
  
  la $a3, i_bne
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_BNE
  
  la $a3, i_li
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_LI
  
  la $a3, i_addiu
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_ADDIU
  
  la $a3, i_mul
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_MUL
  
  la $a3, i_sllv
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_SLLV
  
  la $a3, i_srlv
  jal COMPARA_STRINGS
  beq $v0, 1, TRATA_SRLV


TRATA_ADD:
  
  jal MONTA_INSTRUCAO_TIPO_R
  
  la $a2, funct_add
  jal copy_string
  sb $zero, 0($a3)
  j exit
  
TRATA_SUB:

  jal MONTA_INSTRUCAO_TIPO_R
  
  la $a2, funct_sub
  jal copy_string
  sb $zero, 0($a3)
  
  j exit
  
TRATA_AND:

  jal MONTA_INSTRUCAO_TIPO_R
  
  la $a2, funct_and
  jal copy_string
  sb $zero, 0($a3)
  
  j exit
  
TRATA_OR:

  jal MONTA_INSTRUCAO_TIPO_R
  
  la $a2, funct_or
  jal copy_string
  sb $zero, 0($a3)

  j exit
  
TRATA_NOR:

  jal MONTA_INSTRUCAO_TIPO_R
  
  la $a2, funct_nor
  jal copy_string
  sb $zero, 0($a3)
  
  j exit
  
TRATA_XOR:

  jal MONTA_INSTRUCAO_TIPO_R
  
  la $a2, funct_xor
  jal copy_string
  sb $zero, 0($a3)
  
  j exit
  
TRATA_SLT:

  jal MONTA_INSTRUCAO_TIPO_R
  
  la $a2, funct_slt
  jal copy_string
  sb $zero, 0($a3)
  
  j exit

TRATA_ADDU:

  jal MONTA_INSTRUCAO_TIPO_R
  
  la $a2, funct_addu
  jal copy_string
  sb $zero, 0($a3)
  
  j exit

TRATA_SUBU:

  jal MONTA_INSTRUCAO_TIPO_R
  
  la $a2, funct_subu
  jal copy_string
  sb $zero, 0($a3)
  
  j exit 
  
TRATA_SRAV:

  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT
  
  la $a2, token4
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, buffer_rd
  jal copy_string
  
  la $a2, b_zero
  jal copy_string
  
  la $a2, funct_srav
  jal copy_string
  sb $zero, 0($a3)
  
  j exit      

TRATA_SLLV:

  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT
  
  la $a2, token4
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, buffer_rd
  jal copy_string
  
  la $a2, b_zero
  jal copy_string
  
  la $a2, funct_sllv
  jal copy_string
  sb $zero, 0($a3)
  
  j exit     

TRATA_SRLV:

  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT
  
  la $a2, token4
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, buffer_rd
  jal copy_string
  
  la $a2, b_zero
  jal copy_string
  
  la $a2, funct_srlv
  jal copy_string
  sb $zero, 0($a3)
  
  j exit     

TRATA_MUL:

  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a2, token4
  jal REGISTRADOR
  jal ESCREVE_RT
  
  la $a3, buffer_instruction
  
  la $a2, opcode_MUL
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, buffer_rd
  jal copy_string
  
  la $a2, b_zero
  jal copy_string
  
  la $a2, funct_mul
  jal copy_string
  sb $zero, 0($a3)
  
  j exit        
      
TRATA_MULT:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT 
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, b_zero
  jal copy_string

  la $a2, b_zero
  jal copy_string  
  
  la $a2, funct_mult
  jal copy_string  
  
  sb $zero, 0($a3)

  j exit       
  
TRATA_DIV:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT 
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, b_zero
  jal copy_string

  la $a2, b_zero
  jal copy_string  
  
  la $a2, funct_div
  jal copy_string  
  
  sb $zero, 0($a3)

  j exit  
  
TRATA_MADD:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT 
  
  la $a3, buffer_instruction
  
  la $a2, opcode_MADD
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, b_zero
  jal copy_string

  la $a2, b_zero
  jal copy_string  
  
  la $a2, funct_madd
  jal copy_string  
  
  sb $zero, 0($a3)

  j exit  

TRATA_MFHI:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, b_zero
  jal copy_string

  la $a2, b_zero
  jal copy_string  
  
  la $a2, buffer_rd
  jal copy_string
  
  la $a2, b_zero
  jal copy_string 
  
  la $a2, funct_mfhi
  jal copy_string
  sb $zero, 0($a3)
  
  j exit
  
TRATA_MFLO:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, b_zero
  jal copy_string

  la $a2, b_zero
  jal copy_string  
  
  la $a2, buffer_rd
  jal copy_string
  
  la $a2, b_zero
  jal copy_string 
  
  la $a2, funct_mflo
  jal copy_string
  sb $zero, 0($a3)
  
  j exit  

TRATA_CLO:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a3, buffer_instruction
  
  la $a2, opcode_CLO
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string

  la $a2, b_zero
  jal copy_string
  
  la $a2, buffer_rd
  jal copy_string

  la $a2, b_zero
  jal copy_string
  
  la $a2, funct_clo
  jal copy_string
  sb $zero, 0($a3)
  
  j exit  

TRATA_JR:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, b_zero
  jal copy_string

  la $a2, b_zero
  jal copy_string  
  
  la $a2, b_zero
  jal copy_string
  
  la $a2, funct_jr
  jal copy_string  
  
  sb $zero, 0($a3)

  j exit  

TRATA_SLL:
  la $a3, token4
  jal CONVERTE_IMEDIATO_REGISTRADOR
  la $t0, buffer_imm
  addi $t0, $t0, 11
  
  la $a2, 0($t0)
  la $a3, shift_shamt
  jal copy_string
  sb $zero, 0($a3)
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, b_zero
  jal copy_string  
  
  la $a2, buffer_rt
  jal copy_string

  la $a2, buffer_rd
  jal copy_string  

  la $a2, shift_shamt
  jal copy_string
  
  la $a2, funct_sll
  jal copy_string
  
  sb $zero, 0($a3)
  
  la $a3, shift_shamt
  la $a2, b_zero
  jal copy_string
  sb $zero, 0($a3)
  
  j exit       
  
TRATA_SRL:
  la $a3, token4
  jal CONVERTE_IMEDIATO_REGISTRADOR
  la $t0, buffer_imm
  addi $t0, $t0, 11
  
  la $a2, 0($t0)
  la $a3, shift_shamt
  jal copy_string
  sb $zero, 0($a3)
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, b_zero
  jal copy_string  
  
  la $a2, buffer_rt
  jal copy_string

  la $a2, buffer_rd
  jal copy_string  

  la $a2, shift_shamt
  jal copy_string
  
  la $a2, funct_srl
  jal copy_string
  
  sb $zero, 0($a3)
  
  
  la $a3, shift_shamt
  la $a2, b_zero
  jal copy_string
  sb $zero, 0($a3)

  j exit       

TRATA_SRA:
  la $a3, token4
  jal CONVERTE_IMEDIATO_REGISTRADOR
  la $t0, buffer_imm
  addi $t0, $t0, 11
  
  la $a2, 0($t0)
  la $a3, shift_shamt
  jal copy_string
  sb $zero, 0($a3)
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a3, buffer_instruction
  
  la $a2, opcode_R
  jal copy_string
  
  la $a2, b_zero
  jal copy_string  
  
  la $a2, buffer_rt
  jal copy_string

  la $a2, buffer_rd
  jal copy_string  

  la $a2, shift_shamt
  jal copy_string
  
  la $a2, funct_sra
  jal copy_string
  
  sb $zero, 0($a3)
  
  
  la $a3, shift_shamt
  la $a2, b_zero
  jal copy_string
  sb $zero, 0($a3)

  j exit       

TRATA_ADDI:

  la $a2, opcode_ADDI
  la $a3, buffer_opcode
  jal copy_string
  sb $zero, 0($a3)
  jal MONTA_INSTRUCAO_TIPO_I  
  j exit    
  
TRATA_ANDI:

  la $a2, opcode_ANDI
  la $a3, buffer_opcode
  jal copy_string
  sb $zero, 0($a3)
  jal MONTA_INSTRUCAO_TIPO_I  
  j exit    
  
TRATA_ORI:

  la $a2, opcode_ORI
  la $a3, buffer_opcode
  jal copy_string
  sb $zero, 0($a3)
  jal MONTA_INSTRUCAO_TIPO_I  
  j exit   
  
TRATA_XORI:

  la $a2, opcode_XORI
  la $a3, buffer_opcode
  jal copy_string
  sb $zero, 0($a3)
  jal MONTA_INSTRUCAO_TIPO_I  
  j exit   
  
TRATA_LUI:

  la $a2, opcode_LUI
  la $a3, buffer_opcode
  jal copy_string
  
  la $a2, token3
  la $a3, token4
  jal copy_string
  sb $zero, 0($a3)
  
  la $a2, b_zero
  la $a3, token3
  jal copy_string
  sb $zero, 0($a3)
  
  jal MONTA_INSTRUCAO_TIPO_I  
  j exit   
  
TRATA_LW:
  la $a3, token3
  la $a2, buffer_offset_reg
  la $a1, buffer_offset_imm
  jal SEPARA_OFFSET_REGISTRADOR
  
  la $a3, buffer_offset_imm
  jal CONVERTE_IMEDIATO_REGISTRADOR
  
  la $a2, buffer_offset_reg
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RT
  
  la $a3, buffer_instruction
  
  la $a2, opcode_LW
  jal copy_string
  
  la $a2, buffer_rd
  jal copy_string  
  
  la $a2, buffer_rt
  jal copy_string 
  
  la $a2, buffer_imm
  jal copy_string 
  
  sb $zero, 0($a3)

  j exit       
  
TRATA_SW:
  la $a3, token3
  la $a2, buffer_offset_reg
  la $a1, buffer_offset_imm
  jal SEPARA_OFFSET_REGISTRADOR
  
  la $a3, buffer_offset_imm
  jal CONVERTE_IMEDIATO_REGISTRADOR
  
  la $a2, buffer_offset_reg
  jal REGISTRADOR
  jal ESCREVE_RD
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RT
  
  la $a3, buffer_instruction
  
  la $a2, opcode_SW
  jal copy_string
  
  la $a2, buffer_rd
  jal copy_string  
  
  la $a2, buffer_rt
  jal copy_string 
  
  la $a2, buffer_imm
  jal copy_string 
  
  sb $zero, 0($a3)

  j exit       
  
  TRATA_J:
  
  la $a3, token2

  
  jal busca_label
  move $a0, $v0

  addi $t2, $zero, 4
  mult $v0, $t2
  mflo $t0
  
  la $t1, label_index
  add $t1, $t1, $t0

  lw $a0, 0($t1)
  addi $a0, $a0, 4194304
  srl $a3, $a0, 2
  jal DECIMAL_PARA_BINARIO
  
  move $a0, $a3

  la $a3, buffer_instruction
  
  la $a2, opcode_J
  jal copy_string
  
  la $a2, dec_to_bin_buffer
  addi $a2, $a2, 6
  
  jal copy_string
  
  sb $zero, 0($a3)

  j exit  
  
  
  TRATA_JAL:
  
  la $a3, token2
  jal busca_label
  move $a0, $v0

  addi $t2, $zero, 4
  mult $v0, $t2
  mflo $t0
  
  la $t1, label_index
  add $t1, $t1, $t0
  
  lw $a0, 0($t1)
  addi $a0, $a0, 4194304
  srl $a3, $a0, 2
  jal DECIMAL_PARA_BINARIO
  
  move $a0, $a3

  la $a3, buffer_instruction
  
  la $a2, opcode_JAL
  jal copy_string
  
  la $a2, dec_to_bin_buffer
  addi $a2, $a2, 6
  
  jal copy_string
  
  sb $zero, 0($a3)

  j exit  
  
  TRATA_BGEZ:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RS
  
    la $a3, token3
  jal busca_label
  move $a0, $v0

  addi $t2, $zero, 4
  mult $v0, $t2
  mflo $t0
  
  la $t1, label_index
  add $t1, $t1, $t0
  
  lw $a0, 0($t1)


  

  lw $a1, total_instrucoes
  addi $a1, $a1, -4
  

  
  
  sub $t0, $a0, $a1
  move $a0, $t0

  li $t1, 4
  div $t0, $t1
  mflo $a3

  addi $a3, $a3, -1
  jal DECIMAL_PARA_BINARIO

  la $a3, buffer_instruction
  
  la $a2, opcode_BGEZ
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, b_at
  jal copy_string
  
  la $a2, dec_to_bin_buffer
  addi $a2, $a2, 16
  
  jal copy_string
  
  sb $zero, 0($a3)

  j exit  

  TRATA_BEQ:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT
  
 
  la $a3, token4
  jal busca_label
  move $a0, $v0

  addi $t2, $zero, 4
  mult $v0, $t2
  mflo $t0
  
  la $t1, label_index
  add $t1, $t1, $t0
  
  lw $a0, 0($t1)


  

  lw $a1, total_instrucoes
  addi $a1, $a1, -4
  

  
  
  sub $t0, $a0, $a1
  move $a0, $t0

  li $t1, 4
  div $t0, $t1
  mflo $a3

  addi $a3, $a3, -1
  jal DECIMAL_PARA_BINARIO
  
  #move $a0, $a3

  la $a3, buffer_instruction
  
  la $a2, opcode_BEQ
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, dec_to_bin_buffer
  addi $a2, $a2, 16
  
  jal copy_string
  
  sb $zero, 0($a3)
  

  j exit  
  
  
  TRATA_BNE:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a2, token3
  jal REGISTRADOR
  jal ESCREVE_RT
  
 
  la $a3, token4
  jal busca_label
  move $a0, $v0

  addi $t2, $zero, 4
  mult $v0, $t2
  mflo $t0
  
  la $t1, label_index
  add $t1, $t1, $t0
  
  lw $a0, 0($t1)


  

  lw $a1, total_instrucoes
  addi $a1, $a1, -4
  

  
  
  sub $t0, $a0, $a1
  move $a0, $t0

  li $t1, 4
  div $t0, $t1
  mflo $a3

  addi $a3, $a3, -1
  jal DECIMAL_PARA_BINARIO
  
  #move $a0, $a3

  la $a3, buffer_instruction
  
  la $a2, opcode_BNE
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, dec_to_bin_buffer
  addi $a2, $a2, 16
  
  jal copy_string
  
  sb $zero, 0($a3)
  
  j exit  

  TRATA_LI:
  
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RS
  
  la $a3, token3

  jal STR_LEN

  
  move $a2, $v0
  la $a3, token3
  jal STRING_PARA_INT
  la $a3, token3
  #li $t0, 120
  #sb $t0, 1($a3)
  move $a3, $v0

  jal DECIMAL_PARA_BINARIO
  la $a3, dec_to_bin_buffer
  jal CHECA_PRIMEIROS_0
  beq $v1, 1, pseudo_addiu
  jal CHECA_PRIMEIROS_1
  beq $v1, 1, pseudo_addiu
  
############## CASO LUI + ORI ###################
########### LUI #################################
  la $a3, dec_to_bin_buffer
  jal pega_primeiros_16bits  

  la $a3, buffer_instruction

  la $a2, opcode_LUI
  jal copy_string
  
  la $a2, b_zero
  jal copy_string
  
  la $a2, b_at
  jal copy_string
  
  la $a2, buffer_no_16bits
  jal copy_string    
        
  sb $zero, 0($a3)       
            
  la $s1, buffer_instruction #carrega o endereco do vetor de binarios
  jal Transforma_hexa_bin

  la $a1, hexOut
  li $a2, 8
  jal COPIA_SAIDA_TEXT
  la $a1, finaliza_linha_saida_text
  li $a2, 2
  jal COPIA_SAIDA_TEXT
############### TERMINA LUI ###########################
############### ENDERECO DA INSTRUCAO #################
              
  lw $a3, total_instrucoes
  jal DECIMAL_PARA_BINARIO
  addi $a3, $a3, 4
  sw $a3, total_instrucoes
  
  la $s1, dec_to_bin_buffer #carrega o endereco do vetor de binarios
  jal Transforma_hexa_bin
  la $a1, hexOut
  li $a2, 8
  jal COPIA_SAIDA_TEXT
  la $a1, separador
  li $a2, 3
  jal COPIA_SAIDA_TEXT             
                                              
######### ORI #########################################                 

  la $a3, token3
  
  jal STR_LEN

  move $a2, $v0
  la $a3, token3
  jal STRING_PARA_INT
  move $a3, $v0
  #li $v0, 10
  #syscall
  move $a0, $a3

  jal DECIMAL_PARA_BINARIO
  
  la $a3, buffer_instruction
  
  la $a2, opcode_ORI  
  jal copy_string
  
  la $a2, b_at
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, dec_to_bin_buffer
  addi $a2, $a2, 16
  jal copy_string
  sb $zero, 0($a3)  
  
  j exit  

TRATA_ADDIU:
  
  la $a2, token2 # carrega o segundo token (nome do reg) em a2
  jal REGISTRADOR # vai para a funcao para descobrir qual reg eh
  jal ESCREVE_RT # escreve no buffer_rd

  la $a2, token3 # carrega o segundo token (nome do reg) em a2
  jal REGISTRADOR # vai para a funcao para descobrir qual reg eh
  jal ESCREVE_RS # escreve no buffer_rd
  
  la $a3, token4
  jal STR_LEN
  move $a2, $v0
  la $a3, token4
  jal STRING_PARA_INT
  #li $t0, 120
  #sb $t0, 1($a3)
  move $a3, $v0

  jal DECIMAL_PARA_BINARIO

  la $a3, buffer_instruction

  la $a2, opcode_ADDIU
  jal copy_string

  la $a2, buffer_rs
  jal copy_string

  la $a2, buffer_rt
  jal copy_string

  la $a2, dec_to_bin_buffer
  addi $a2, $a2, 16
  jal copy_string
  
  
  la $a0, buffer_instruction
  
  j exit

pega_primeiros_16bits:
  la $a2, buffer_no_16bits
  move $t0, $zero
  
pega_16_bits:
  lb $t1, 0($a3)
  sb $t1, 0($a2)
  addi $t0, $t0, 1
  beq $t0, 16, acaba_16_bits
  addi $a2, $a2, 1
  addi $a3, $a3, 1
  j pega_16_bits

acaba_16_bits:
  addi $a2, $a2, 1
  sb $zero, 0($a2)
  jr $ra
  
pseudo_addiu:
  
  la $a2, token2 # carrega o segundo token (nome do reg) em a2
  jal REGISTRADOR # vai para a funcao para descobrir qual reg eh
  jal ESCREVE_RT # escreve no buffer_rd
  
  la $a3, buffer_instruction

  la $a2, opcode_ADDIU
  jal copy_string

  la $a2, b_zero
  jal copy_string

  la $a2, buffer_rt
  jal copy_string

  la $a2, dec_to_bin_buffer
  addi $a2, $a2, 16
  jal copy_string
  
  
  la $a0, buffer_instruction
  
  j exit

# argumento = $a3
# retorno = $v1

CHECA_PRIMEIROS_0:
  move $t0, $zero
  
checa_bits_0:
  lb $t1, 0($a3)
  bne $t1, 48, nao_eh_0 
  addi $a3, $a3, 1
  addi $t0, $t0, 1
  beq $t0, 16, eh_0
  j checa_bits_0

eh_0:
  li $v1, 1
  jr $ra
  
nao_eh_0:
  li $v1, 0
  jr $ra
  
CHECA_PRIMEIROS_1:
  move $t0, $zero
  
checa_bits_1:
  lb $t1, 0($a3)
  bne $t1, 49, nao_eh_1 
  addi $a3, $a3, 1
  addi $t0, $t0, 1
  beq $t0, 16, eh_1
  j checa_bits_1

eh_1:
  li $v1, 1
  jr $ra
  
nao_eh_1:
  li $v1, 0
  jr $ra

# processo de montagem da string da instrucao
MONTA_INSTRUCAO_TIPO_R:
  
  add $s7, $ra, $zero
  
  la $a2, token2 # carrega o segundo token (nome do reg) em a2
  jal REGISTRADOR # vai para a funcao para descobrir qual reg eh
  jal ESCREVE_RD # escreve no buffer_rd
  
  la $a2, token3 
  jal REGISTRADOR
  jal ESCREVE_RS # escreve no buffer_rs
  
  la $a2, token4
  jal REGISTRADOR
  jal ESCREVE_RT # escreve no buffer_rt
  
  la $a3, buffer_instruction # $a3 = ponteiro do buffer_instruction onde sera montada a instrucao

  la $a2, opcode_R
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, buffer_rd
  jal copy_string
  
  la $a2, shift_shamt
  jal copy_string
  
  jr $s7
  
########################################
########################################

MONTA_INSTRUCAO_TIPO_I:

  add $s7, $ra, $zero

  la $a3, token4
  jal CONVERTE_IMEDIATO_REGISTRADOR
    
  la $a2, token2
  jal REGISTRADOR
  jal ESCREVE_RT # escreve no buffer_rtrs
  
  la $a2, token3 
  jal REGISTRADOR
  jal ESCREVE_RS # escreve no buffer_rs
  
  la $a3, buffer_instruction # $a3 = ponteiro do buffer_instruction onde sera montada a instrucao

  la $a2, buffer_opcode
  jal copy_string
  
  la $a2, buffer_rs
  jal copy_string
  
  la $a2, buffer_rt
  jal copy_string
  
  la $a2, buffer_imm
  jal copy_string
  
  sb $zero, 0($a3)
  
  jr $s7
  
########################################
########################################
SEPARA_OFFSET_REGISTRADOR:
  lb $t0, 0($a3)
  beq $t0, 0, ENCERRA_REMOVEDOR_DE_OFFSET
  beq $t0, 40, SETA_FLAG_PARENTESES
  beq $t0, 41, TERMINA_PARENTESES
  beq $s0, 1, COPIA_REG_OFFSET
  sb $t0, 0($a1)
  addi $a3, $a3, 1
  addi $a1, $a1, 1
  j SEPARA_OFFSET_REGISTRADOR

SETA_FLAG_PARENTESES:
  li $s0, 1
  addi $a3, $a3, 1
  j SEPARA_OFFSET_REGISTRADOR

COPIA_REG_OFFSET:
  sb $t0, 0($a2)
  addi $a3, $a3, 1
  addi $a2, $a2, 1
  j SEPARA_OFFSET_REGISTRADOR
  
TERMINA_PARENTESES:
  li $s0, 0
  addi $a2, $a2, 1
  j ENCERRA_REMOVEDOR_DE_OFFSET
  
COMPLETA_ZERO:
  move $t0, $zero
  addi $t0, $t0, 48
  sb $t0, 0($a1)
  addi $a1, $a1, 1
  
ENCERRA_REMOVEDOR_DE_OFFSET:
  sb $zero, 0($a2)
  sb $zero, 0($a1)
  
  la $a0, buffer_offset_imm
  lb $t0, 0($a0)
  beq $t0, 0, COMPLETA_ZERO 
  jr $ra
  
########################################
########################################

CONVERTE_IMEDIATO_REGISTRADOR:
  move $s5, $ra
  jal STR_LEN
  move $a2, $v0
  jal STRING_PARA_INT
  move $a3, $v0
  jal DECIMAL_PARA_BINARIO
  jal COPIA_IMEDIATO_BUFFER_IMM
  j retorna_copia_imediato


COPIA_IMEDIATO_BUFFER_IMM:
  la $t0, dec_to_bin_buffer
  addi $t0, $t0, 16
  la $t1, buffer_imm

copia_16_bits_imm:
  lb $t3, 0($t0)
  sb $t3, 0($t1)
  addi $t0, $t0, 1
  addi $t1, $t1, 1
  beq $t3, 0, fim_copia_16_imm
  j copia_16_bits_imm
  
fim_copia_16_imm:
  jr $ra


# Converte decimal para string binaria
# $a3 = imediato que sera convertido
# retorno sera escrito no dec_to_bin_buffer

DECIMAL_PARA_BINARIO: 
  la $t4, dec_to_bin_buffer
  move $t0, $a3
  

mascara: 
  addi $t1, $zero, 1
  sll $t1, $t1, 31
  addi $t2, $zero, 32


 mascara_loop: 
  and $t3,$t0, $t1
  beq $t3, $zero, copia_pro_dec_bin_buffer
  add $t3, $zero, $zero
  addi $t3, $zero, 1
  j copia_pro_dec_bin_buffer


 copia_pro_dec_bin_buffer: 
  addi $t3, $t3, 48
  sb $t3, 0($t4)
  
  srl $t1, $t1, 1

  addi $t2, $t2, -1

  addi $t4, $t4, 1

  bne $t2, $zero, mascara_loop
  beq $t2, $zero, volta_dec_to_bin
  
 volta_dec_to_bin:
  sb $zero, 0($t4)
  jr $ra


## Argumentos $a3 = endereco do buffer
## $a2, quantidade de caracteres
## $t2 = contador
STRING_PARA_INT:
  move $t9, $ra
  move $t0, $a3
  move $t1, $a2
  la $a3, buffer_imediato_hexa
  move $a2, $t0
  jal copy_string
  sb $zero, 0($a3)
  la $a3, buffer_imediato_hexa
  move $t0, $a3
  move $a2, $t1
  li $t4, 10
  move $v0, $zero
  li $t8, 1 # flag de negativo
  move $v1, $zero
  jal checa_se_eh_hexa
  move $t0, $a3
  beq $v1, 1, hexa_to_int
  
str_to_int:
  lb $t3, 0($t0)
  beq $t3, 0, fim_str_to_int
  beq $t3, 45, sinal_negativo
  subi $t3, $t3, 48
  move $t2, $zero
  jal multiplier
  add $v0, $v0, $t3
  subi $t1, $t1, 1
  beq $t1, 0, fim_str_to_int
  addi $t0, $t0, 1
  j str_to_int
  
multiplier:
  mult $t3, $t4
  mflo $t3
  addi $t2, $t2, 1
  beq $t1, $t2, volta_str_to_int
  j multiplier

volta_str_to_int:
  jr $ra  

sinal_negativo:
  li $t8, -1
  addi $t0, $t0, 1
  subi $t1, $t1, 1
  j str_to_int
                  
fim_str_to_int:
  div $v0, $t4
  mflo $v0
  mult $v0, $t8
  mflo $v0
  jr $t9
  
#################### HEXA ###############################
  
hexa_to_int:
  lb $t3, 0($t0)
  beq $t3, 0, fim_hexa_to_int
  beq $t3, 45, sinal_negativo_hexa
  li $t4, 16
  blt $t3, 58, hexa_0_a_9
  blt $t3, 71, hexa_A_a_F
  blt $t3, 103, hexa_a_a_f
  
hexa_0_a_9:
  subi $t3, $t3, 48
  move $t2, $zero
  jal multiplier_hexa
  add $v0, $v0, $t3
  subi $t1, $t1, 1
  beq $t1, 0, fim_hexa_to_int
  addi $t0, $t0, 1
  j hexa_to_int
  
hexa_A_a_F:
  subi $t3, $t3, 55
  move $t2, $zero
  jal multiplier_hexa
  add $v0, $v0, $t3
  subi $t1, $t1, 1
  beq $t1, 0, fim_hexa_to_int
  addi $t0, $t0, 1
  j hexa_to_int
  
hexa_a_a_f:
  subi $t3, $t3, 87
  move $t2, $zero
  jal multiplier_hexa
  add $v0, $v0, $t3
  subi $t1, $t1, 1
  beq $t1, 0, fim_hexa_to_int
  addi $t0, $t0, 1
  j hexa_to_int
  
multiplier_hexa:
  mult $t3, $t4
  mflo $t3
  addi $t2, $t2, 1
  beq $t1, $t2, volta_hexa_to_int
  j multiplier_hexa

volta_hexa_to_int:
  jr $ra

sinal_negativo_hexa:
  li $t8, -1
  addi $t0, $t0, 1
  subi $t1, $t1, 1
  j hexa_to_int
                 
fim_hexa_to_int:
  div $v0, $t4
  mflo $v0
  mult $v0, $t8
  mflo $v0
  jr $t9  
  
checa_se_eh_hexa:
  lb $t3, 0($t0)
  beq $t3, 120, eh_hexa
  beq $t3, 0, termina_check_hexa
  addi $t0, $t0, 1
  j checa_se_eh_hexa

eh_hexa:
  li $t3, 48
  sb $t3, 0($t0)
  li $v1, 1
  jr $ra

termina_check_hexa:
  jr $ra

STR_LEN:
  move $t0, $zero
  move $t1, $a3

str_length:
  lb $t2, 0($t1)
  beq $t2, 0, fim_len
  addi $t0, $t0, 1
  addi $t1, $t1, 1
  j str_length
    
fim_len:
  move $v0, $t0
  jr $ra
  
retorna_copia_imediato:
# move $a0, $v0
  jr $s5

########################################
########################################
# argumentos: $a2, $a3 # copia de $a2 para $a3 e NAO RESETA PONTEIRO
# O PONTEIRO DE $a3 NAO SERA RESETADO PARA QUE POSSAMOS CONCATENAR AS STRINGS DE BIT
# ESSA FUNCAO SERA USADA PARA MONTAR AS INSTRUCOES
# O CARACTER TERMINADOR DO BUFFER DE SAIDA DEVE SER COLOCADO FORA DA copy_string

copy_string:
  lb 	$t0, 0($a2) # carrega o byte da string fonte
  beq 	$t0, 0, termina_copia # se for 0 termina a copia
  sb 	$t0, 0($a3) # senao guarda o byte no buffer de saida
  addi 	$a2, $a2, 1 # incrementa a posicao dos dois
  addi 	$a3, $a3, 1
  j copy_string

termina_copia:
  jr $ra # retorna pra funcao

COMPARA_STRINGS:
  move $t7, $a2  	
  	  	  	# get strings
    	#la      $a2,str1
    	#la      $a3,str2

# funcao comparar strings
cmp_string:
	    #inputs:	$t3 e $t4
	    #temporarios:	$t5 e $t6
	    #outputs:	%v0
	
    	lb      $t5,($a2)                   # prox char de str1
    	lb      $t6,($a3)                   # prox char de str2
   	bne     $t5,$t6,cmp_str_not_equal	# checar se chars sao diferentes

    	beq     $t5,$zero,cmp_str_equal		# checa se os dois sao EOS

    	addi    $a2,$a2,1                   # prox char
    	addi    $a3,$a3,1                   # prox char
    	j       cmp_string
	
cmp_str_equal:
	    li 	$v0, 1	#true
	    move $a2, $t7
    	#jr      $ra	# return
    	
    	# TEMPORARIO. apenas para averiguar o funcionamento da 
    	jr $ra

cmp_str_not_equal:
 li 	$v0, 0	#false
 move $a2, $t7
    	jr      $ra	# return




REGISTRADOR:

  add $s1, $ra, $zero #salva ra para voltar para a funcao anterior
  
  la $a3, r_zero #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_ZERO #se for o reg, vai para a funcao dele

  la $a3, r_at #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_AT #se for o reg, vai para a funcao dele      

  la $a3, r_v0 #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_V0 #se for o reg, vai para a funcao dele
      
  la $a3, r_v1 #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_V1 #se for o reg, vai para a funcao dele
      
  la $a3, r_a0#testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_A0 #se for o reg, vai para a funcao dele
      
  la $a3, r_a1 #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_A1 #se for o reg, vai para a funcao dele
      
  la $a3, r_a2 #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_A2 #se for o reg, vai para a funcao dele
      
  la $a3, r_a3 #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_A3 #se for o reg, vai para a funcao dele
      
  la $a3, r_t0 #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_T0 #se for o reg, vai para a funcao dele
      
  la $a3, r_t1 #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_T1 #se for o reg, vai para a funcao dele
      
  la $a3, r_t2 #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_T2 #se for o reg, vai para a funcao dele
  
  la $a3, r_t3 #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_T3 #se for o reg, vai para a funcao dele
 
  la $a3, r_t4
  jal COMPARA_STRINGS
  beq $v0, 1, R_T4
  
  la $a3, r_t5
  jal COMPARA_STRINGS
  beq $v0, 1, R_T5
  
  la $a3, r_t6
  jal COMPARA_STRINGS
  beq $v0, 1, R_T6
  
  la $a3, r_t7
  jal COMPARA_STRINGS
  beq $v0, 1, R_T7
  
  la $a3, r_s0
  jal COMPARA_STRINGS
  beq $v0, 1, R_S0
  
  la $a3, r_s1
  jal COMPARA_STRINGS
  beq $v0, 1, R_S1
  
  la $a3, r_s2
  jal COMPARA_STRINGS
  beq $v0, 1, R_S2
  
  la $a3, r_s3
  jal COMPARA_STRINGS
  beq $v0, 1, R_S3
  
  la $a3, r_s4
  jal COMPARA_STRINGS
  beq $v0, 1, R_S4
  
  la $a3, r_s5
  jal COMPARA_STRINGS
  beq $v0, 1, R_S5
    
  la $a3, r_s6
  jal COMPARA_STRINGS
  beq $v0, 1, R_S6
  
  la $a3, r_s7
  jal COMPARA_STRINGS
  beq $v0, 1, R_S7
  
  la $a3, r_t8
  jal COMPARA_STRINGS
  beq $v0, 1, R_T8
  
  la $a3, r_t9
  jal COMPARA_STRINGS
  beq $v0, 1, R_T9
    
  la $a3, r_k0
  jal COMPARA_STRINGS
  beq $v0, 1, R_K0
  
  la $a3, r_k1
  jal COMPARA_STRINGS
  beq $v0, 1, R_K1
    
  la $a3, r_gp
  jal COMPARA_STRINGS
  beq $v0, 1, R_GP
  
  la $a3, r_sp
  jal COMPARA_STRINGS
  beq $v0, 1, R_SP
  
  la $a3, r_fp
  jal COMPARA_STRINGS
  beq $v0, 1, R_FP
  
  la $a3, r_ra
  jal COMPARA_STRINGS
  beq $v0, 1, R_RA
  
  ################################################## Verifica os registradores para os regs sem mascara ##################################################  
  
  la $a3, r_zero_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_ZERO #se for o reg, vai para a funcao dele

  la $a3, r_at_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_AT #se for o reg, vai para a funcao dele      

  la $a3, r_v0_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_V0 #se for o reg, vai para a funcao dele
      
  la $a3, r_v1_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_V1 #se for o reg, vai para a funcao dele
      
  la $a3, r_a0_s#testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_A0 #se for o reg, vai para a funcao dele
      
  la $a3, r_a1_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_A1 #se for o reg, vai para a funcao dele
      
  la $a3, r_a2_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_A2 #se for o reg, vai para a funcao dele
      
  la $a3, r_a3_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_A3 #se for o reg, vai para a funcao dele
      
  la $a3, r_t0_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_T0 #se for o reg, vai para a funcao dele
      
  la $a3, r_t1_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_T1 #se for o reg, vai para a funcao dele
      
  la $a3, r_t2_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_T2 #se for o reg, vai para a funcao dele
  
  la $a3, r_t3_s #testando todos os valores de registradores
  jal COMPARA_STRINGS #verifica se eh o reg certo
  beq $v0, 1, R_T3 #se for o reg, vai para a funcao dele
 
  la $a3, r_t4_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_T4
  
  la $a3, r_t5_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_T5
  
  la $a3, r_t6_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_T6
  
  la $a3, r_t7_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_T7
  
  la $a3, r_s0_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_S0
  
  la $a3, r_s1_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_S1
  
  la $a3, r_s2_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_S2
  
  la $a3, r_s3_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_S3
  
  la $a3, r_s4_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_S4
  
  la $a3, r_s5_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_S5
    
  la $a3, r_s6_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_S6
  
  la $a3, r_s7_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_S7
  
  la $a3, r_t8_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_T8
  
  la $a3, r_t9_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_T9
    
  la $a3, r_k0_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_K0
  
  la $a3, r_k1_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_K1
    
  la $a3, r_gp_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_GP
  
  la $a3, r_sp_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_SP
  
  la $a3, r_fp_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_FP
  
  la $a3, r_ra_s
  jal COMPARA_STRINGS
  beq $v0, 1, R_RA

  ####################################################################################################  


R_ZERO:
  li $v1, 0
  jr $s1

R_AT:
  li $v1, 1
  jr $s1
  
R_V0:
  li $v1, 2
  jr $s1

R_V1:
  li $v1, 3
  jr $s1
  
R_A0:
  li $v1, 4
  jr $s1

R_A1:
  li $v1, 5
  jr $s1
  
R_A2:
  li $v1, 6
  jr $s1
  
R_A3:
  li $v1, 7
  jr $s1

R_T0:
  li $v1, 8 # numero do registrador t0
  jr $s1
  
R_T1:
  li $v1, 9
  jr $s1
  
R_T2:
  li $v1, 10
  jr $s1

R_T3:
  li $v1, 11
  jr $s1

R_T4:
  li $v1, 12
  jr $s1
  
R_T5:
  li $v1, 13
  jr $s1
  
R_T6:
  li $v1, 14
  jr $s1 
  
R_T7:
  li $v1, 15
  jr $s1           
  
R_S0:
  li $v1, 16
  jr $s1    

R_S1:
  li $v1, 17
  jr $s1    
  
R_S2:
  li $v1, 18
  jr $s1    
  
R_S3:
  li $v1, 19
  jr $s1    
  
R_S4:
  li $v1, 20
  jr $s1    

R_S5:
  li $v1, 21
  jr $s1    

R_S6:
  li $v1, 22
  jr $s1    
  
R_S7:
  li $v1, 23
  jr $s1    

R_T8:
  li $v1, 24
  jr $s1    

R_T9:
  li $v1, 25
  jr $s1    
  
R_K0:
  li $v1, 26
  jr $s1    
  
R_K1:
  li $v1, 27
  jr $s1      

R_GP:
  li $v1, 28
  jr $s1    
                
R_SP:
  li $v1, 29
  jr $s1    

R_FP:
  li $v1, 30
  jr $s1     
  
R_RA:
  li $v1, 31
  jr $s1           
  
#ESCREVE_OPCODE: # seleciona em qual buffer sera escrito o codigo do registrador buffer_rd, buffer_rs, buffer_rt
#  la $t0, buffer_opcode
#  j ESCREVE_CODIGO_DO_OPCODE
                                                                            
ESCREVE_RD: # seleciona em qual buffer sera escrito o codigo do registrador buffer_rd, buffer_rs, buffer_rt
  la $t0, buffer_rd
  j ESCREVE_CODIGO_DO_REGISTRADOR
  
ESCREVE_RS:
  la $t0, buffer_rs
  j ESCREVE_CODIGO_DO_REGISTRADOR
  
ESCREVE_RT:
  la $t0, buffer_rt
  j ESCREVE_CODIGO_DO_REGISTRADOR

  
ESCREVE_CODIGO_DO_REGISTRADOR: # $v1 eh retorno da funcao registrador e nele esta alocado o numero do registrador avaliado
  beq $v1, 0, CARREGA_ZERO # vai branchar pro registrador em questao
  beq $v1, 1, CARREGA_AT
  beq $v1, 2, CARREGA_V0   
  beq $v1, 3, CARREGA_V1
  beq $v1, 4, CARREGA_A0
  beq $v1, 5, CARREGA_A1  
  beq $v1, 6, CARREGA_A2  
  beq $v1, 7, CARREGA_A3  
  beq $v1, 8, CARREGA_T0  
  beq $v1, 9, CARREGA_T1  
  beq $v1, 10, CARREGA_T2  
  beq $v1, 11, CARREGA_T3  
  beq $v1, 12, CARREGA_T4  
  beq $v1, 13, CARREGA_T5  
  beq $v1, 14, CARREGA_T6  
  beq $v1, 15, CARREGA_T7  
  beq $v1, 16, CARREGA_S0  
  beq $v1, 17, CARREGA_S1  
  beq $v1, 18, CARREGA_S2  
  beq $v1, 19, CARREGA_S3  
  beq $v1, 20, CARREGA_S4  
  beq $v1, 21, CARREGA_S5  
  beq $v1, 22, CARREGA_S6  
  beq $v1, 23, CARREGA_S7  
  beq $v1, 24, CARREGA_T8  
  beq $v1, 25, CARREGA_T9  
  beq $v1, 26, CARREGA_K0  
  beq $v1, 27, CARREGA_K1  
  beq $v1, 28, CARREGA_GP  
  beq $v1, 29, CARREGA_SP
  beq $v1, 30, CARREGA_FP  
  beq $v1, 31, CARREGA_RA
  
  
# Carrega a string binaria do registrador em questao
CARREGA_ZERO: 
  la $t1, b_zero
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_AT:
  la $t1, b_at
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_V0:
  la $t1, b_v0
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_V1:
  la $t1, b_v1
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_A0:
  la $t1, b_a0
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_A1:
  la $t1, b_a1
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_A2:
  la $t1, b_a2
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_A3:
  la $t1, b_a3
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T0:
  la $t1, b_t0
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T1:
  la $t1, b_t1
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T2:
  la $t1, b_t2
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T3:
  la $t1, b_t3
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T4:
  la $t1, b_t4
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T5:
  la $t1, b_t5
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T6:
  la $t1, b_t6
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T7:
  la $t1, b_t7
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_S0:
  la $t1, b_s0
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_S1:
  la $t1, b_s1
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_S2:
  la $t1, b_s2
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_S3:
  la $t1, b_s3
  j COPIA_PRO_BUFFER_REGISTRADOR
  
CARREGA_S4:
  la $t1, b_s4
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_S5:
  la $t1, b_s5
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_S6:
  la $t1, b_s6
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_S7:
  la $t1, b_s7
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T8:
  la $t1, b_t8
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_T9:
  la $t1, b_t9
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_K0:
  la $t1, b_k0
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_K1:
  la $t1, b_k1
  j COPIA_PRO_BUFFER_REGISTRADOR
  
CARREGA_GP:
  la $t1, b_gp
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_SP:
  la $t1, b_sp
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_FP:
  la $t1, b_fp
  j COPIA_PRO_BUFFER_REGISTRADOR

CARREGA_RA:
  la $t1, b_ra
  j COPIA_PRO_BUFFER_REGISTRADOR

  
# copia a string binaria pro buffer_rt ou rs ou rd
COPIA_PRO_BUFFER_REGISTRADOR:
  lb $t2, 0($t1)
  sb $t2, 0($t0)
  addi $t0, $t0, 1
  addi $t1, $t1, 1
  beq $t2, 0, FIM_DA_COPIA_R
  j COPIA_PRO_BUFFER_REGISTRADOR
   
FIM_DA_COPIA_R:
 jr $ra
    
exit:
jr $s4
li $v0, 10
syscall
        
Exit:

  li $v0, 10
  syscall
