-- DML 
USE MedGroup_Tarde;


INSERT INTO Clinica (Titulo, RazaoSocial, Endereco, CNPJ)
VAlUES ('Cl�nica SPMedGroup', 'Cl�nica M�dica', 'Av. Bar�o Limeira, 
       532, S�oPaulo, SP', '86.400.902/0001-30');

INSERT INTO TipoUsuario (Titulo)
VALUES ('Paciente'),
	   ('M�dico'),
	   ('Administrador');

INSERT INTO Especialidade (Titulo)
VALUES ('Acumpuntura'),
	   ('Anestesiologia'),
	   ('Angiologia'),
	   ('Cardiologia'),
	   ('Cirurgia Cardiovascular'),
	   ('Cirurgia da M�o'),
	   ('Cirurgia do Aparelho Digestivo'),
	   ('Cirurgia Geral'),
	   ('Cirurgia Pedi�trica'),
	   ('Cirurgia Pl�stica'),
	   ('Cirurgia Tor�cica'),
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

INSERT INTO Prontuario (Nome, RG, CPF, Endereco, DataNascimento, Telefone, IdUsuario)
VALUES ('Ligia', '43522543-5', '94839859000', 'Rua Estado de Israel 240,�S�o Paulo', 
	   '13/10/1983', '11 3456-7654', 5),
       ('Alexaandre', '32654345-7', '73556944057', 'Av. Paulista, 1578 - Bela Vista, 
	    S�o Paulo', '23/07/2001', '11 98765-6543', 6),
	    ('Fernando', '54636525-3', '16839338002', 'Av. Ibirapuera - Indian�polis, 2927,
		S�o Paulo', '10/10/1978', '11 97208-4453', 7),
		('Henrique', '54366362-5', '14332654765', 'R. Vit�ria, 120 - Vila Sao Jorge, 
		Barueri', '13/10/1985', '11 3456-6543', 8),
		('Jo�o', '432544444-1', '91305348010', 'R. Ver. Geraldo de Camargo, 66 - 
		Santa Luzia, Ribeir�o Pires', '27/08/1975', '11 7656-6377', 9),
		('Bruno', '54566266-7', '79799299004', 'Alameda dos Arapan�s, 945 - Indian�polis,
		S�o Paulo ', '21/03/1972', '11 95436-8769', 10),
		('Mariana', '54566266-8', '13771913039', 'R Sao Antonio, 232 - Vila Universal,
		Barueri', '05/03/2018', '11 35567-8843', 11);


INSERT INTO Consulta (DataConsulta, Situacao, IdMedico, IdProntuario)
VALUES ('20/01/2020  15:00:00', 'Ralizada', 3, 7),
       ('06/01/2020  10:00:00', 'Cancelada', 2, 2),
	   ('07/02/2020  11:00:00', 'Realizada', 2, 3),
	   ('06/02/2018  10:00:00', 'Realizada', 2, 2),
	   ('08/03/2020  15:00:00', 'Agendada', 1, 4);


