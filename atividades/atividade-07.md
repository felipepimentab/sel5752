# Atividade 8

A oitava atividade é criar um pacote chamado `riscv_pkg` (arquivo `riscv_pkg.vhd`), na pasta `src`, e incluir a declaração de componente para as entidades **mux2**, **mux3**, **flopr**, **adder** e **alu**. Todas essas entidades terão seus barramentos de dados atualizados para utilizar o parâmetro genérico **Width**, que definirá o tamanho do barramento de dados.

Transferir a implementação da função de sobrecarga dos operadores **"+"** e **"-"** do arquivo `alu.vhd` para o pacote.

Definir no mesmo pacote uma constante global chamada `RISCV_Data_Width`, com valor igual a **32**, e utilizá-la como valor *default* do parâmetro genérico em todas as entidades que fazem uso de genérico.

Apresentar código `.VHD` do pacote.