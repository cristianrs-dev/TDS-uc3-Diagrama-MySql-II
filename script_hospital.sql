CREATE DATABASE hospital;

USE hospital;


CREATE TABLE clinica(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    endereco VARCHAR(60) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE convenio(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    cnpj VARCHAR(60) NOT NULL UNIQUE KEY,
    carencia DATE NOT NULL,
    PRIMARY KEY(id)
);
SELECT * FROM convenio;
ALTER TABLE convenio ADD id_clinica INT NOT NULL;
ALTER TABLE convenio ADD FOREIGN KEY(id_clinica) REFERENCES clinica(id);

CREATE TABLE paciente(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    rg VARCHAR(14) NOT NULL UNIQUE KEY,
    cpf VARCHAR(14) NOT NULL UNIQUE KEY,
    carteira INT NOT NULL UNIQUE KEY,
    data_nasc DATE NOT NULL,
    endereco VARCHAR(60) NOT NULL,
    telefone VARCHAR(14) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);
SELECT * FROM paciente;
ALTER TABLE paciente ADD id_convenio INT NOT NULL;
ALTER TABLE paciente ADD FOREIGN KEY(id_convenio) REFERENCES convenio(id);

CREATE TABLE consulta(
	id INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    valor DECIMAL(9,2),
    PRIMARY KEY(id)
);
SELECT * FROM consulta;
ALTER TABLE consulta ADD id_medico INT NOT NULL;
ALTER TABLE consulta ADD FOREIGN KEY(id_medico) REFERENCES medico(id);
ALTER TABLE consulta ADD id_especialidade INT NOT NULL;
ALTER TABLE consulta ADD FOREIGN KEY(id_especialidade) REFERENCES especialidade(id);
ALTER TABLE consulta ADD id_paciente INT NOT NULL;
ALTER TABLE consulta ADD FOREIGN KEY(id_paciente) REFERENCES paciente(id);
ALTER TABLE consulta ADD id_convenio INT NOT NULL;
ALTER TABLE consulta ADD FOREIGN KEY(id_convenio) REFERENCES convenio(id);

CREATE TABLE receita(
	id INT NOT NULL AUTO_INCREMENT,
    remedio VARCHAR(60) NOT NULL,
    quantidade INT NOT NULL,
    orientacao VARCHAR(500) NOT NULL,
    PRIMARY KEY(id)
);
SELECT * FROM receita;
ALTER TABLE receita ADD id_consulta INT NOT NULL;
ALTER TABLE receita ADD FOREIGN KEY(id_consulta) REFERENCES consulta(id);

CREATE TABLE medico(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
	crm VARCHAR(12) NOT NULL UNIQUE KEY,
    PRIMARY KEY(id)
);
SELECT * FROM medico;
ALTER TABLE medico ADD id_clinica INT NOT NULL;
ALTER TABLE medico ADD FOREIGN KEY(id_clinica) REFERENCES clinica(id);

CREATE TABLE medico_especialidade(
	id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id)
);
SELECT * FROM medico_especialidade;
ALTER TABLE medico_especialidade ADD id_medico INT NOT NULL;
ALTER TABLE medico_especialidade ADD FOREIGN KEY(id_medico) REFERENCES medico(id);
ALTER TABLE medico_especialidade ADD id_especialidade INT NOT NULL;
ALTER TABLE medico_especialidade ADD FOREIGN KEY(id_especialidade) REFERENCES especialidade(id);

CREATE TABLE especialidade(
	id INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE quarto(
	id INT NOT NULL AUTO_INCREMENT,
    numero INT NOT NULL,
	tipo VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);
SELECT * FROM quarto;
ALTER TABLE quarto ADD id_paciente INT NOT NULL;
ALTER TABLE quarto ADD FOREIGN KEY(id_paciente) REFERENCES paciente(id);
ALTER TABLE quarto ADD id_tipo_quarto INT NOT NULL;
ALTER TABLE quarto ADD FOREIGN KEY(id_tipo_quarto) REFERENCES tipo_quarto(id);

CREATE TABLE tipo_quarto(
	id INT NOT NULL AUTO_INCREMENT,
    diaria DECIMAL(9,2) NOT NULL,
	descricao VARCHAR(500) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE internacao(
	id INT NOT NULL AUTO_INCREMENT,
    data_entrada DATE NOT NULL,
    data_prev_alta DATE NOT NULL,
    data_alta DATE NOT NULL,
    procedimento VARCHAR(500) NOT NULL,
    PRIMARY KEY(id)
);
SELECT * FROM internacao;
ALTER TABLE internacao ADD id_quarto INT NOT NULL;
ALTER TABLE internacao ADD FOREIGN KEY(id_quarto) REFERENCES quarto(id);
ALTER TABLE internacao ADD id_paciente INT NOT NULL;
ALTER TABLE internacao ADD FOREIGN KEY(id_paciente) REFERENCES paciente(id);
ALTER TABLE internacao ADD id_medico INT NOT NULL;
ALTER TABLE internacao ADD FOREIGN KEY(id_medico) REFERENCES medico(id);

CREATE TABLE ala_internacao(
	id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id)
);
SELECT * FROM ala_internacao;
ALTER TABLE ala_internacao ADD id_enfermeiro INT NOT NULL;
ALTER TABLE ala_internacao ADD FOREIGN KEY(id_enfermeiro) REFERENCES enfermeiro(id);
ALTER TABLE ala_internacao ADD id_internacao INT NOT NULL;
ALTER TABLE ala_internacao ADD FOREIGN KEY(id_internacao) REFERENCES internacao(id);

CREATE TABLE enfermeiro(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE KEY,
    cre VARCHAR(14) NOT NULL UNIQUE KEY,
    PRIMARY KEY(id)
);