# Projeto de Saúde e Bem-Estar

Este é um projeto de modelagem de dados para uma aplicação web ou mobile focada na promoção de hábitos saudáveis, considerando o contexto de um mundo pós-pandemia e o aumento do trabalho híbrido.

## Modelagem de Dados

A estrutura do banco de dados foi projetada considerando informações de usuário, estilo de vida, hábitos diários e lembretes para promover práticas saudáveis. A modelagem inclui as seguintes tabelas:

1. **Usuario:**
   - Armazena informações pessoais do usuário.

2. **EstiloDeVida:**
   - Relaciona-se ao usuário e armazena informações sobre o estilo de vida, como nível de atividade e modo de trabalho.

3. **HabitosDiarios:**
   - Relaciona-se ao usuário e armazena informações sobre hábitos diários, como horas de sono e tempo gasto em frente a uma tela.

4. **Lembretes:**
   - Relaciona-se ao usuário e fornece lembretes personalizados para promover hábitos saudáveis.

## Colaboradores

- João Victor Rosinhole (RM 97880)
- Gabriel Yanes (RM 550324)
- Vivian Costa (RM 552567)

## Script SQL

```sql
-- Seção de Criação de Tabelas e Sequência (código SQL anterior)

-- Inserção de dados nas tabelas (exemplo com 4 linhas em cada tabela)
INSERT INTO Usuario VALUES (1, 'João', 'Silva', 'joao@email.com', 'senha123', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Masculino', 175, 70);
INSERT INTO EstiloDeVida VALUES (1, 1, 'Ativo', 8, 'Presencial');
INSERT INTO HabitosDiarios VALUES (1, 1, 7, 5, 2);
INSERT INTO Lembretes (ID, IDUsuario, TipoLembrete, Frequencia, HoraLembrete) VALUES (lembretes_seq.NEXTVAL, 1, 'Água', 'Hora em Hora', TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'));

INSERT INTO Usuario VALUES (2, 'José', 'Silva', 'jose@email.com', 'senha456', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'Masculino', 180, 80);
INSERT INTO EstiloDeVida VALUES (2, 2, 'Moderado', 9, 'Híbrido');
INSERT INTO HabitosDiarios VALUES (2, 2, 8, 6, 2.5);
INSERT INTO Lembretes (ID, IDUsuario, TipoLembrete, Frequencia, HoraLembrete) VALUES (lembretes_seq.NEXTVAL, 2, 'Água', 'Hora em Hora', TO_TIMESTAMP('09:30:00', 'HH24:MI:SS'));

-- Adicione mais linhas de inserção conforme necessário
