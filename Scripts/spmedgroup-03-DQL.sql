-- DQL

USE MedGroup_Tarde;

SELECT * FROM Clinica;
SELECT * FROM TipoUsuario;
SELECT * FROM Especialidade;
SELECT * FROM Usuario;
SELECT * FROM Medico;
SELECT * FROM Prontuario;
SELECT * FROM Consulta;
SELECT * FROM Endereco;
SELECT * FROM Situacao;

SELECT Prontuario.Nome AS NomePaciente, Prontuario.DataNascimento AS DataNascimentoPaciente, Prontuario.CPF AS CPFPaciente, Endereco.Rua, Endereco.Bairro, Endereco.Cidade,
Prontuario.RG AS RGPaciente, Prontuario.Telefone AS TelefonePaciente, Usuario.Email AS EmailUsuario, Consulta.DataConsulta, 
Medico.Nome AS NomeMedico, Medico.CRM AS MedicoCRM, Especialidade.Titulo AS EspecialidadeMedico, Situacao.Titulo
FROM Consulta
INNER JOIN Prontuario ON Consulta.IdProntuario = Prontuario.IdProntuario
INNER JOIN Usuario ON Prontuario.IdUsuario = Usuario.IdUsuario
INNER JOIN Medico ON Consulta.IdMedico = Medico.IdMedico
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
INNER JOIN Endereco ON Prontuario.IdEndereco = Endereco.IdEndereco
INNER JOIN Situacao ON Consulta.IdSituacao = Situacao.IdSituacao


SELECT Especialidade.Titulo, count (Medico.Nome) AS QuantidadeMedicos
FROM Medico
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
GROUP BY Especialidade.Titulo;

--SELECT Prontuario.Nome, Usuario.Email,TipoUsuario.Titulo 
	  --,DATEDIFF(YY, Prontuario.DataNascimento, GETDATE()) -
		--CASE
			--WHEN DATEADD(YY, DATEDIFF(YY,Prontuario.DataNascimento,GETDATE()),Prontuario.DataNascimento) 
			--> GETDATE() THEN 1
			--ELSE 0
		--END AS Idade
--FROM Prontuario
--INNER JOIN Usuario ON Prontuario.IdUsuario = Prontuario.IdProntuario
--INNER JOIN TipoUsuario ON Usuario.IdTipoUsuario  = TipoUsuario.IdTipoUsuario


SELECT COUNT(Email)as QuantidadeUsuarios FROM Usuario ;

 
GO
CREATE PROCEDURE BuscarIdade
as 
SELECT DATEDIFF (YY, DataNascimento, GETDATE()) AS DataNascimento
FROM Prontuario
BuscarIdade
GO