-- DML 
USE MedGroup_Tarde;


INSERT INTO Clinica (Titulo, RazaoSocial, IdEndereco, CNPJ)
VAlUES ('Clínica SPMedGroup', 'Clínica Médica', 1, '86.400.902/0001-30');

INSERT INTO TipoUsuario (Titulo)
VALUES ('Paciente'),
	   ('Médico'),
	   ('Administrador');

INSERT INTO Especialidade (Titulo)
VALUES ('Acumpuntura'),
	   ('Anestesiologia'),
	   ('Angiologia'),
	   ('Cardiologia'),
	   ('Cirurgia Cardiovascular'),
	   ('Cirurgia da Mão'),
	   ('Cirurgia do Aparelho Digestivo'),
	   ('Cirurgia Geral'),
	   ('Cirurgia Pediátrica'),
	   ('Cirurgia Plástica'),
	   ('Cirurgia Torácica'),
	   ('Cirurgia Vascular'),
	   ('Dermatologia'),
	   ('Radioterapia'),
	   ('Urologia'),
	   ('Pediatria'),
	   ('Psiquiatria');

INSERT INTO Usuario (Email, Senha, IdTipoUsuario)
VALUES ('ricardo.lemos@spmedicalgroup.com.br', 'ricardo123', 2),
	   ('roberto.possarle@spmedicalgroup.com.br', 'roberto123', 2),
	   ('helena.souza@spmedicalgroup.com.br', 'helena123', 2),
	   ('adm@spmedicalgroup.com.br', 'adm123', 3),
	   ('ligia@gmail.com', 'ligia123', 1),
	   ('alexandre@gmail.com', 'ale123', 1),
	   ('fernando@gmail.com', 'fe123', 1),
	   ('henrique@gmail.com', 'henrique123', 1),
	   ('joao@gmail.com', 'joao123', 1),
	   ('bruno@gmail.com', 'bruno123', 1),
	   ('mariana@gmail.com', 'mari123', 1);


INSERT INTO Medico (CRM, Nome, IdUsuario, IdEspecialidade)
VALUES ('54356-SP', 'Ricardo Lemes', 1, 2),
       ('53452-SP', 'Roberto Possarle', 2, 17),
	   ('64463-SP', 'Helena Souza', 3, 16);

INSERT INTO Prontuario (Nome, RG, CPF, IdEndereco, DataNascimento, Telefone, IdUsuario)
VALUES ('Ligia', '43522543-5', '94839859000', 2, '13/10/1983', '11 3456-7654', 5),
       ('Alexaandre', '32654345-7', '73556944057', 3, '23/07/2001', '11 98765-6543', 6),
	    ('Fernando', '54636525-3', '16839338002', 4, '10/10/1978', '11 97208-4453', 7),
		('Henrique', '54366362-5', '14332654765', 5, '13/10/1985', '11 3456-6543', 8),
		('João', '432544444-1', '91305348010', 6, '27/08/1975', '11 7656-6377', 9),
		('Bruno', '54566266-7', '79799299004', 7, '21/03/1972', '11 95436-8769', 10),
		('Mariana', '54566266-8', '13771913039', 8, '05/03/2018', '11 35567-8843', 11);


INSERT INTO Consulta (DataConsulta, IdSituacao, IdMedico, IdProntuario)
VALUES ('20/01/2020  15:00:00', 2, 3, 7),
       ('06/01/2020  10:00:00', 3, 2, 2),
	   ('07/02/2020  11:00:00', 2, 2, 3),
	   ('06/02/2018  10:00:00', 2, 2, 2),
	   ('07/02/2019  11:00:45', 3, 1, 4),
	   ('08/03/2020  15:00:00', 1, 3, 7),
	   ('09/03/2020  11:00:45', 1, 1, 4);


INSERT INTO Endereco (Rua, Bairro, Cidade)
VALUES ('Av. Barão Limeira, 532', 'Santa Cecília', 'SãoPaulo'),
	   ('Rua Estado de Israel 240', 'Não informado', 'São Paulo'),
	   ('Av. Paulista, 1578', 'Bela Vista', 'São Paulo'),
	   ('Av. Ibirapuera, 2927', 'Indianópolis', 'São Paulo'),
	   ('R. Vitória, 120 ', 'Vila Sao Jorge', 'Barueri'),
	   ('R. Ver. Geraldo de Camargo, 66 ', 'Santa Luzia', 'Ribeirão Pires'),
	   ('Alameda dos Arapanés, 945 ', 'Indianópolis', 'São Paulo'),
	   ('R Sao Antonio, 232 ', 'Vila Universal', 'Barueri');
	   

INSERT INTO Situacao (Titulo)
VALUES ('Agendada'),
       ('Realizada'),
	   ('Cancelada');