# SEL5752

Repositório para a disciplina **Dispositivos Reconfiguráveis e Linguagem de Descrição de Hardware**.

## 📂 atividades

Pasta onde serão armazenadas as transcrições dos enunciados das atividades em markdown para consulta rápida.

## 📂 ghdl

Pasta onde serão armazenados os códigos fonte em VHDL para análise com a ferramenta GHDL antes de serem adicionados ao projeto `riscvsingle`.

### Comandos úteis

#### Analisar

```
ghdl -a <path_to_file>.vhd
```

#### Elaborar

```
ghdl -e <entity_name>
```

#### Executar (Run)

```
ghdl -r <entity_name>
```

## 📂 riscvsingle

Pasta contendo a estrutura de diretórios proposta pela disciplina.

### 📁 docs

Pasta onde serão incluídos os documentos pertinentes ao projeto.

### 📁 modelsim

Pasta onde serão realizadas as simulações.

### 📁 quartus

Pasta onde será criado o projeto `riscvsingle`.

### 📁 src

Pasta onde serão armazenados apenas os códigos fonte em VHDL.