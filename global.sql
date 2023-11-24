-- Criação de tabelas (mantendo o restante do código que você já tem)

CREATE TABLE Usuario (
    ID NUMBER PRIMARY KEY,
    Nome VARCHAR2(50),
    Sobrenome VARCHAR2(50),
    Email VARCHAR2(100) UNIQUE,
    Senha VARCHAR2(20),
    DataNascimento DATE,
    Genero VARCHAR2(10),
    Altura NUMBER,
    Peso NUMBER
);

CREATE TABLE EstiloDeVida (
    ID NUMBER PRIMARY KEY,
    IDUsuario NUMBER,
    NivelAtividade VARCHAR2(20),
    HorasTrabalhoDiarias NUMBER,
    ModoTrabalho VARCHAR2(20),
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID)
);

CREATE TABLE HabitosDiarios (
    ID NUMBER PRIMARY KEY,
    IDUsuario NUMBER,
    HorasSono NUMBER,
    HorasFrenteTela NUMBER,
    HidratacaoDiaria NUMBER,
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID)
);

CREATE TABLE Lembretes (
    ID NUMBER PRIMARY KEY,
    IDUsuario NUMBER,
    TipoLembrete VARCHAR2(20),
    Frequencia VARCHAR2(20),
    HoraLembrete TIMESTAMP,
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID)
);

-- Criação de sequência para IDs únicos
CREATE SEQUENCE lembretes_seq START WITH 1 INCREMENT BY 1;

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

-- (Restante do código que você já possui)
