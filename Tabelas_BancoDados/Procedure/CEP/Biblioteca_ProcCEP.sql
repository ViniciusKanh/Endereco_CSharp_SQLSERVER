select ID, Nome from Tipo_logradouro order by Nome


use BD_CEP
go
Create Procedure Proc_Mostrar_Endereco
as
select Endereco.ID, Endereco.CEP,Tipo_logradouro.Nome as 'Tipo de Logradouro', Logradouro.Nome as 'Logradouro', Bairro.Nome as 'Bairro', CIDADE.Nome as 'Cidade', Estado.Sigla as 'Estado'
from Endereco, CIDADE, Estado, Bairro, Tipo_logradouro, Logradouro 
where Endereco.ID_Bairro = Bairro.ID and Endereco.ID_Cidade = CIDADE.ID and Endereco.ID_Logradouro = Logradouro.ID and Endereco.ID_TipoLogradouro = Tipo_logradouro.ID and CIDADE.ID_ESTADO = Estado.ID
order by CEP
go

use BD_CEP
go
Create Procedure Proc_Inserir_Endereco  
@CEP varchar(50),
@ID_bairro int,
@ID_Cidade int,
@ID_Logradouro int,
@ID_TipoLogradouro int
as
insert Endereco(CEP,ID_Bairro,ID_Cidade,ID_Logradouro,ID_TipoLogradouro) values (@CEP,@ID_bairro,@ID_Cidade,@ID_Logradouro,@ID_TipoLogradouro)
go

use BD_CEP
go
Create Procedure Proc_Alterar_Endereco 
@ID int,
@CEP varchar(50),
@ID_bairro int,
@ID_Cidade int,
@ID_Logradouro int,
@ID_TipoLogradouro int
as
Update Endereco set CEP = @CEP, ID_Bairro = @ID_bairro, ID_Cidade = @ID_Cidade, ID_Logradouro = @ID_Logradouro, ID_TipoLogradouro = @ID_TipoLogradouro where ID = @ID
go

use BD_CEP
go
Create Procedure Proc_Buscar_Endereco 
@textobuscar  varchar(50)
as
select * from Endereco  where CEP like @textobuscar +'%'
go

use BD_CEP
go
Create Procedure Proc_Remover_Endereco  
@ID int
as
Delete from Endereco  where ID = @ID
go

