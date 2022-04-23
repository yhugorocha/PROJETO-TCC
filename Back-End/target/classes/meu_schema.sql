CREATE TABLE TB_ENDERECO(
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    CEP VARCHAR(15),
    LOGRADOURO VARCHAR(50),
    BAIRRO VARCHAR(50),
    LOCALIDADE VARCHAR(50),
    UF VARCHAR(50),
    COMPLEMENTO VARCHAR(50),
    NUMERO VARCHAR(10)
);

CREATE TABLE TB_SOLICITANTE(
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    CPF VARCHAR(15),
    NOME VARCHAR(50),
    RG VARCHAR(10),
    DTNASCIMENTO TIMESTAMP,
    TELEFONE VARCHAR(20),
    EMAIL VARCHAR(35),
    ENDERECO_ID INTEGER REFERENCES TB_ENDERECO (ID),
    DTREGISTRO TIMESTAMP
);

CREATE TABLE TB_REGIAO(
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    SIGLA VARCHAR(20),
    NOME VARCHAR(50)
);
CREATE TABLE TB_AUTENTICACAO(
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    LOGIN VARCHAR(20),
    SENHA VARCHAR(20)
);

CREATE TABLE TB_GESTOR_RA(
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(50),
    EMAIL VARCHAR(35),
    CPF VARCHAR(15),
    ID_AUTENTICACAO INTEGER REFERENCES TB_AUTENTICACAO (ID),
    TELEFONE VARCHAR(20),
    ID_REGIAO INTEGER REFERENCES TB_REGIAO (ID)
);
