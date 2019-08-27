go
create database TCM

go

use TCM


create table tblPermissao(
	id_perm int identity primary key,
	descricao char(40)
)

create table tblCargo(
	id_cargo int identity primary key,
	nome_cargo char(20),
	descricao char(50),
	permissao int foreign key references
		tblPermissao(id_perm),
	carga_horaria numeric
)

create table tblFuncionario(
	id_func int identity primary key,
	nome_func char(20),
	sobrenome_func char(30),
	data_nasc date,
	cpf numeric(11),
	CEP numeric(8),
	cidade char(20),
	endereco char(40),
	data_contrato date,
	cargo int foreign key references
		tblCargo(id_cargo),
	email char(40),	
	telefone char(15),
	usuario char(20),
	senha varchar(15)
)


create table tblCliente(
	id_cliente int identity primary key,
	nome_cliente char(20),
	sobrenome_cliente char(30),
	cpf numeric(11),
	CEP numeric(8),
	cidade char(20),
	endereco char(40),
	data_cadastro date,
	data_nascimento date,
	email char(25),
	senha varchar(15)
)

create table tblSetor(
	id_setor int identity primary key,
	nome_setor char(40),
	descricao char(50)
)

create table tblFornecedor(
	id_forn int identity primary key,
	nome_forn char(50),
	cnpj varchar(20),
	CEP int,
	cidade char(20),
	endereco char(40),
	ie int,
	email char(30),
	telefone char(15)
)

create table tblProduto(
	id_prod int identity primary key,
	nome_prod char(100),
	codigo_barra int,
	setor int foreign key references
		tblSetor(id_setor),
	estoque numeric,
	preco_un numeric(10,2),
	fornecedor int foreign key references
		tblFornecedor(id_forn),
	descricao char(70),
	promocao char(20)
)

create table tblTipoCompra(
	id_tipo int identity primary key,
	tipo varchar(20)
)

create table tblCompra(
	id_compra int identity primary key,
	id_cliente int foreign key references
		tblCliente(id_cliente),
	data_hora datetime,
	preco_final numeric(6,2),
)

alter table tblCompra
	add id_tipo int foreign key references tblTipoCompra(id_tipo)

create table tblItemPedido(
	id_item int identity primary key,
	id_prod int foreign key references
		tblProduto(id_prod),
	id_compra int foreign key references
		tblCompra(id_compra),
	desconto numeric(2),
	quantidade int,
	preco_total numeric(6,2)
)

create index Xpermissao on tblPermissao(id_perm)
create index Xcargo on tblCargo(id_cargo)
create index Xfuncionario on tblFuncionario(id_func)
create index Xcliente on tblCliente(id_cliente)
create index Xsetor on tblSetor(id_setor)
create index Xfornecedor on tblFornecedor(id_forn)
create index Xproduto on tblProduto(id_prod)
create index Xcompra on tblCompra(id_compra)
create index Xitempedido on tblItemPedido(id_item)
create index Xtipocompra on tblTipoCompra(id_tipo)

go
insert into tblPermissao values('Descrição1')

go
insert into tblCargo values ('cargo1','descriçãocargo1',1,21)

go
insert into tblFuncionario values 
('Luiz', 'Ricardo', '1970/08/25', 47756251242, 03021000, 'São Paulo', 'rua diadema', '2010/12/20', 1, 'Luiz@gmail.com', '26286582', 'usuario', 'senha')

go
Insert into tblCliente values 
('teste', 'teste', 47785125451, 03021100, 'teste', 'teste', '2006/10/20', '1988/05/15', 'teste', 'senha')
INSERT INTO tblCliente VALUES ('Vitor','Brandao',47799745851,03021000, 'aaaaaa' , 'aaaaa' , '25/11/2018','20/12/2002','vrauaa@gmail.com','47799745851')

go
INSERT INTO tblSetor VALUES 
('Mercearia','Produtos de Mercearia'),
('Limpeza','Produtos de Limpeza'),
('Bebidas','Produtos de Bebidas'),
('Carnes, aves e Peixes','Produtos de carne'),
('Frios e Laticínios','Produtos de frios'),
('Higiene e Perfumaria','Produtos de Higiene e Perfumaria')


insert into tblFornecedor VALUES 
('Fornecedor de Mercearia', '1' , 1, 'Guaianazes', 'Rua Guanezes', 1, 'FornecedorMercearia@gmail.com', '(11)26286585'),
('Fornecedor de Limpeza', '2' , 2, 'São Paulo', 'Av. Tiradentes', 2, 'FornecedorLimpeza@gmail.com', '(11)25485359'),
('Fornecedor de Bebidas', '3' , 3, 'Guarulhos', 'Av. Guarulhos', 3, 'FornecedorBebidas@gmail.com', '(11)25487562'),
('Fornecedor de Carnes', '4' , 4, 'Guarulhos', 'Rua Guarulhos', 4, 'FornecedorCarnes@gmail.com', '(11)35487624'),
('Fornecedor de Frios', '5' , 5, 'Ribeirão Preto', 'Av. Ribeirão', 5, 'FornecedorFrios@gmail.com', '(11)15487625'),
('Fornecedor de Higiene', '6' , 6, 'Taboão da Serra', 'Av. Taboão', 6, 'FornecedorHigiene@gmail.com', '(11)69854125')

go
INSERT INTO tblProduto VALUES /* Mercearia */
('Açúcar Únião refinado 1kg', 1101, 1,10, 2.36, 1,'Açúcar refinado refinado vendido em quilo',''),
('Óleo de girassol Salada 900ml', 1102, 1, 10, 4.99, 1, 'Óleo de girassol utilizado para temperar salada','' ),
('Arroz Tio João parboilizado integral tipo 1 1kg',1103,1,10,5.12,1,'Arroz parbolizado integral tipo 1',''),
('Bombom sonho de valsa Lacta 20g',1104,1,10,00.98,1,'Bombom unidade',''),
('Bala beijos de morango Fini 100g',1105,1,10,5.00,1,'Bala sabor morango formato de beijos',''),
('Chocolate Ovomaltime creme flocos pote 400g',1106,1,10, 18.00,1,'Achocolatado em flocos',''),
('Batata palha Elma Chips na mesa Extra Fina 120g',1107,1,10,7.80,1,'Batata palha extra fina',''),
('Bala Tic Tac laranja 16g',1108,1,10,2.10,1,'Bala sabor laranja',''),
('Macarrão instantâneo CUP NOODLES Frutos do Mar 71g',1109,1,10,3.50,1,'Macarrão instantâneo sabor frutos do mar',''),
('Sanduíche X Bacon Hot Pocket SADIA 145g',1110,1,10,5.00,1,'Sanduíche de queijo com bacon','')

go
INSERT INTO tblProduto VALUES /* limpeza */
('Álcool Facilita Tradicional 46° 1L',2101,2,10,9.80,2,'Álcool tradicional 46°INPM',''),
('Desodorizador Glade Aerossol Lavanda 360ml',2102,2,10,10.90,2,'Desodorizador aerossol cheiro lavanda',''),
('Detergente Líquido clear Ypê Clear 500ml',2103,2,10,1.98,2,'Detergente líquido',''),
('Amaciante Comfort Glamour 500ml',2104,2,10,13.60,2,'Amaciante',''),
('Limpador Veja multiuso Original 750ml',2105,2,10,8.15,2,'Limpador líquido multiuso',''),
('Sabão em Pó OMO Puro Cuidado 2kg',2106,2,10,9.90,2,'Sabão em pó',''),
('Água sanitária Candida cloro ativo 1l',2107,2,10,8.78,2,'Água sanitária',''),
('Passa fácil Plush gatilho 500ml',2108,2,0,9.90,2,'Produto para passar roupas',''),
('Aerossol SBP Multi-Inseticida 300ml',2109,2,10,13.50,2,'Aerossol para insetos',''),
('Alvejante Brilhante utile 750ml',2110,2,10,9.57,2,'Alvejante','')

go
INSERT INTO tblProduto VALUES /* Bebidas */
('Cerveja Stella Artois long neck 275ml',3101,3,10,4.61,3,'Cerveja long neck',''),
('Vodka Askov maracujá 900ml',3102,3,10, 12.90,3,'Vodka sabor maracujá',''),
('Energético lo-carb energy Monster 473ml',3103,3,10,7.20,3,'Energético lo-carb',''),
('Vinho Arbo Merlot Tinto Seco 1,5l',3104,3,10,53.90,3,'Vinho tinto',''),
('Água mineral Schin sem gás pet 500ml',3105,3,10,1.40,3,'Água mineral sem gás',''),
('Água mineral Bonafont com gás pet 500ml',3106,3,10,2.40,3,'Água minecral com gás',''),
('Água de Coco Ducoco 200ml',3107,3,10,2.20,3,'Água de coco',''),
('Refrigerante Itubaína pet 2l',3108,3,10,4.20,3,'Refrigerante sabor tutti frutti',''),
('Chá Lipton Ice Tea Limão 1,5l',3109,3,10,6.70,3,'Chá preto com limão',''),
('Suco de laranja integral Natural One 1,5l',3110,3,10,12.10,3,'Suco integral de laranja','')

go
INSERT INTO tblProduto VALUES /* Carnes */
('Coração de frango congelado Seara 1kg',4101,4,10,29.01,4,'Coração de frango congelado',''),
('Cortes Frango Sadia Fácil Sobrecoxas Temperado Congelado 800g',4102,4,10,13.40,4,'Sobrecoxa temperada congelada',''),
('Filé mignon em bife 500g',4103,4,10,30.78,4,'Filé mignon em bife',''),
('Picanha tradicional 1.1kg',4104,4,10,46.10,4,'Pedaço de picanha',''),
('Bacalhau Congelado Bom Porto 900g',4105,4,10,100.80,4,'Bacalhau para churrasco',''),
('Camarão Dellmare Descascado Cozido Congelado 400g',4106,4,10,65.30,4,'Camarão descascado congelado cozido',''),
('Bacon em fatias Sadia 250g',4107,4,10,17.90,4,'Bacon em fatias',''),
('Costela Aurora suína congelada 1kg',4108,4,10,22.65,4,'Costela suína',''),
('Lombo Aurora temperado 500g',4109,4,10,13.75,4,'Lombo salgado',''),
('Linguiça Perdigão toscana Nabrasa 1kg',4110,4,10,21.90,4,'Linguiça toscana','')


go
INSERT INTO tblProduto VALUES /*Frios */
('Mortadela bologna fatiada Aurora 200g',5101,5,10,4.20,5,'Mortadela fatiada',''),
('Bebida láctea Batavo morango 180g',5102,5,10,2.23,5,'Iogurte de morango',''),
('Bebida láctea de chocolate Ovomaltine 180ml',5103,5,10,2.70,5,'',''),
('Queijo mussarela fatiado 250g',5104,5,10,8.90,5,'Queijo mussarela fatiado',''),
('Leite fermentado Yakult 6x80g',5105,5,10,8.40,5,'Leite fermentado',''),
('Presunto Sadia fatiado parma 100g',5106,5,10,16.62,5,'Presunto fatiado',''),
('Salame Sadia Salamitos Pocket 36g',5107,5,10,3.12,5,'Salamitos',''),
('Becel manteiga com sal 250g',5108,5,10,4.39,5,'Manteiga com sal',''),
('Coalhada desnatada light Itambé 130g',5109,5,10,1.85,5,'Coalhada light',''),
('Queijo Polenghi cream cheese light 150g',5110,5,10,5.26,5,'Cream cheese light','')
go
INSERT INTO tblProduto VALUES /* Higiene */
('Creme Dental anticáries Closeup 70g',6101,6,10,3.48,6,'Creme dental',''),
('Fralda descartável Pampers supersec G 18',6102,6,10,30.50,6,'Fralda descartável',''),
('Kit Pantene Hidro-Cauterização Shampoo 400ml+Condicionador',6103,6,10,30.70,6,'Shampoo e Condicionador',''),
('Antitranspirante Old Spice aerosol matador 93g',6104,6,10,10.00,6,'Desodorante aerosol',''),
('Papel Higiênico Personal Vip Folha dupla Black 4 unidades',6105,6,10,8.35,6,'Papel higiênico folha dupla',''),
('Sabonete barra orquídea negra Lux 85g',6106,6,10,1.25,6,'Barra de sabonete',''),
('Aparelho Bic Comfort 3 black night 2 unidades',6107,6,10,10.10,6,'Aparelho para barbear',''),
('Esmalte cintilante cristal rosa Colorama 8ml',6108,6,10,5.50,6,'Esmalte cor cristal rosa',''),
('Bastonetes Topz 300 unidades',6109,6,10,2.52,6,'Bastonetes para limpeza',''),
('Bloqueador solar Sundown FPS 50 embalagem econômica 200ml',6110,6,10,53.26,6,'Protetor solar FPS 50','')
go
insert into tblTipoCompra values
('caixa'), ('online'), ('caixa automático')

select * from tblPermissao
select * from tblCargo
select * from tblFuncionario
select * from tblCliente
select * from tblSetor
select * from tblProduto where setor = 2
select * from tblFornecedor
select * from tblCompra
select * from tblItemPedido
select * from tblTipoCompra

create procedure usp_LoginASP
	@login varchar(25),
	@senha varchar(20)
as
	declare @getLogin varchar(20), @getSenha varchar(20)
	set @getLogin = (select email from tblCliente where email = @login)
	set @getLogin = (select senha from tblCliente where email = @login and senha = @senha)
if(len(@getLogin) > 0) and (len(@getSenha) > 0)
	begin
		if(@getLogin <> '' and @getSenha <> '')
			begin
				select email, senha from tblCliente
			end
		end
		else
			begin
				print 'erro'
			end
go

create procedure usp_AlterarEmailASP
	@email varchar(25)
as
	if(len(@email) > 0)
		begin
		if(@email<> '')
			update tblCliente set email = @email
		else
			print 'erro'
		end
	end
go	
	
create procedure usp_ALterarEnderecoASP
	@endereco varchar(40)
as
	if(len(@endereco)>0)
	begin
		if(@endereco <> '')
			update tblCliente set endereco = @endereco
		else 
			print 'erro'
		end
	end
go

create procedure usp_excluirContaASP
	@senha varchar(20),
	@email varchar(25)
as
	declare @getSenha varchar(20)
	set @getSenha = (select senha from tblFuncionario where email = @email and senha = @senha)
if(len(@getSenha)>0)
	delete from tblCliente where email = @email
end
go

create procedure usp_LoginCliGeral
	@login varchar(20),
	@senha varchar(20)
as
	declare @getLogin varchar(20), @getSenha varchar(20)
	set @getLogin = (select usuario from tblFuncionario where email = @login)
	set @getLogin = (select senha from tblFuncionario where email = @login and senha = @senha)
if(len(@getLogin) > 0) and (len(@getSenha) > 0)
	begin
		if(@getLogin <> '' and @getSenha <> '')
			begin
				select usuario, senha from tblFuncionario
			end
		end
		else
			begin
				print 'erro'
			end
go

--fornecedor

create procedure usp_CadastroForn
	@nome varchar(50),
	@cnpj varchar,
	@CEP int,
	@cidade char(20),
	@endereco char(40),
	@ie int,
	@email char(30),
	@telefone char(15)
as
	begin
		INSERT INTO tblFornecedor VALUES (@nome, @cnpj, @CEP, @cidade, @endereco, @ie, @email, @telefone)
	end
--exec usp_CadastroForn 'jao','0921038290',23232,'wqdaww','sadsdas',232,'asdas','90893021'
go


create procedure usp_AlterarForn
	@nome varchar(50),
	@cnpj varchar,
	@CEP int,
	@cidade char(20),
	@endereco char(40),
	@ie int,
	@email char(30),
	@telefone char(15)
as
	begin
		update tblFornecedor set nome_forn = @nome , cnpj = @cnpj , CEP = @CEP , cidade = @cidade , endereco = @endereco , ie = @ie , email = @email , telefone = @telefone where cnpj = @cnpj
	end
--exec usp_AlterarForn 'Luis','0921038290',23232,'wqdaww','sadsdas',232,'asdas','90893021'
go


create procedure usp_ApagarForn
	@nome varchar(50),
	@cnpj varchar
as
	begin
		delete from tblFornecedor where nome_forn like @nome
	end
--exec usp_ApagarForn 'Luis','0921038290'
go


create procedure usp_ConsulNomeForn
	@nome varchar(50)
as
	begin
           select * from tblFornecedor where nome_forn like @nome
	end
--exec usp_ConsulNomeForn 'jao'
go


create procedure usp_ConsulCnpjForn
	@cnpj varchar(50)
as
	begin
           select * from tblFornecedor where cnpj like @cnpj
	end
--exec usp_ConsulNomeForn ''
go


--produtos
	
create procedure usp_CadastroProd
	@nome_prod char(100),
	@codigo_barra int,
	@setor int,
	@estoque numeric,
	@preco_un numeric(10,2),
	@fornecedor int,
	@descricao char(70),
	@promocao char(20)
as
	begin
		INSERT INTO tblProduto VALUES (@nome_prod, @codigo_barra, @setor, @estoque, @preco_un, @fornecedor, @descricao, @promocao)
	end
--exec usp_CadastroProd'jao',0921038290, 2, 12, 12.3, 1, 'cssc', 'dwda'
go


create procedure usp_AlterarProd
	@nome_prod char(100),
	@codigo_barra int,
	@setor int,
	@estoque numeric,
	@preco_un numeric(10,2),
	@fornecedor char(100),
	@descricao char(70),
	@promocao char(20)
as
	begin
		declare @forn int
	    set @forn = (select f.id_forn from tblFornecedor f INNER JOIN tblProduto p on p.fornecedor = f.id_forn where f.nome_forn = @fornecedor)
		update tblProduto set nome_prod = @nome_prod , codigo_barra = @codigo_barra , setor = @setor , estoque = @estoque , preco_un = @preco_un , fornecedor = @forn , descricao = @descricao , promocao = @promocao where codigo_barra = @codigo_barra
	end
--exec usp_AlterarProd'aaaaaaaaaaaaaaaa',0921038290, 2, 12, 12.3, 1, 'cssc', 'dwda'
go


create procedure usp_ApagarProd
	@codigo_barra int
as
	begin
		delete from tblProduto where codigo_barra like @codigo_barra
	end
--exec usp_ApagarProd 0921038290
go


create procedure usp_ConsulProd
	@codigo_barra int
as
	begin
            select p.*, f.nome_forn from tblProduto p INNER JOIN tblFornecedor f on p.fornecedor = f.id_forn where codigo_barra like @codigo_barra
	end
--exec usp_ConsulProd 'jao'
go

create procedure usp_getForn
	@fornecedor char(100)
as
	begin
            select id_forn from tblFornecedor where nome_forn like @fornecedor
	end
--exec usp_getForn 'jao'
go


create procedure usp_getSetor
as
	begin
            select nome_setor from tblSetor
	end
go


--cliente

create procedure usp_CadastroCli
	@nome_cliente char(20),
	@sobrenome_cliente char(30),
	@cpf numeric(11),
	@CEP numeric(8),
	@cidade char(20),
	@endereco char(40),
	@data_cadastro date,
	@data_nascimento date,
	@email char(25),
	@senha varchar(15)
as
	begin
		INSERT INTO tblCliente VALUES (@nome_cliente, @sobrenome_cliente, @cpf, @CEP, @cidade, @endereco, @data_cadastro, @data_nascimento, @email, @senha)
	end
exec usp_CadastroCli 'jo', 'jo', 213, 890, 'fsd', 'fsd', '21/12/21', '12/12/12', 'dsa', 'fdfs' 
go


create procedure usp_AlterarCli
	@nome_cliente char(20),
	@sobrenome_cliente char(30),
	@cpf numeric(11),
	@CEP numeric(8),
	@cidade char(20),
	@endereco char(40),
	@data_cadastro date,
	@data_nascimento date,
	@email char(25),
	@senha varchar(15)
as
	begin
		update tblCliente set nome_cliente = @nome_cliente , sobrenome_cliente = @sobrenome_cliente , cpf = @cpf , CEP = @CEP , cidade = @cidade , endereco = @endereco , data_cadastro = @data_cadastro , data_nascimento = @data_nascimento , email = @email where cpf = @cpf
	end
exec usp_AlterarCli 'jo', 'joao', 213, 890, 'fsd', 'fsd', '21/12/21', '12/12/12', 'dsa', 'fdfs' 
go


create procedure usp_ApagarCli
	@nome_cliente char(20)
as
	begin
		delete from tblCliente where nome_cliente like @nome_cliente
	end
exec usp_ApagarCli 'jo'
go


create procedure usp_ConsulNomeCli
	@nome_cliente char(20)
as
	begin
           select * from tblCliente where nome_cliente like @nome_cliente
	end
--exec usp_ConsulNomeCli 'jao'
go


create procedure usp_ConsulCpfCli
	@cpf numeric(11)
as
	begin
           select * from tblCliente where cpf like @cpf
	end
exec usp_ConsulCpfCli 123
go


--funcionario

create procedure usp_CadastroFunc
	@nome_func char(20),
	@sobrenome_func char(30),
	@data_nasc date,
	@cpf numeric(11),
	@CEP numeric(8),
	@cidade char(20),
	@endereco char(40),
	@data_contrato date,
	@cargo int,
	@email char(40),	
	@telefone char(15),
	@usuario char(20),
	@senha varchar(15)
as
	begin
		INSERT INTO tblFuncionario VALUES (@nome_func,@sobrenome_func ,@data_nasc ,@cpf ,@CEP ,@cidade ,@endereco ,@data_contrato ,@cargo ,@email , @telefone ,@usuario ,@senha)
	end
exec usp_CadastroFunc 'dsa', 'dsa', '21/12/09', 321, 123, 'fds', 'fsd', '13/12/09', 1, 'dfs', 'asds', 'wdwa', 'adsa'
go


create procedure usp_AlterarFunc
	@nome_func char(20),
	@sobrenome_func char(30),
	@data_nasc date,
	@cpf numeric(11),
	@CEP numeric(8),
	@cidade char(20),
	@endereco char(40),
	@data_contrato date,
	@cargo int,
	@email char(40),	
	@telefone char(15),
	@usuario char(20),
	@senha varchar(15)
as
	begin
		update tblFuncionario set nome_func = @nome_func , sobrenome_func = @sobrenome_func , data_nasc = @data_nasc , cpf = @cpf , CEP = @CEP , cidade = @cidade , endereco = @endereco , data_contrato = @data_contrato , cargo = @cargo , email = @email , telefone = @telefone , usuario = @usuario , senha = @senha where cpf = @cpf
	end
exec usp_AlterarFunc 'dsaaaaaaaa', 'dsa', '21/12/09', 321, 123, 'fds', 'fsd', '13/12/09', 1, 'dfs', 'asds', 'wdwa', 'adsa'
go


create procedure usp_ApagarFunc
	@cpf numeric(11)
as
	begin
		delete from tblFuncionario where cpf like @cpf
	end
exec usp_ApagarFunc 321
go


create procedure usp_ConsulCargoFunc
as
	begin
		select nome_cargo from tblCargo
	end
exec usp_ConsulCargoFunc
go


create procedure usp_CargoFunc
	@cargo char(20)
as
	begin
		select id_cargo from tblCargo where nome_cargo like @cargo
	end
exec usp_CargoFunc a
go


create procedure usp_ConsulCli
	@cpf numeric(11)
as
	begin
           select * from tblFuncionario where cpf like @cpf
	end
exec usp_ConsulCpfCli 123
go


--caixa

create procedure usp_ConsulCaixa
	@cpf numeric(11)
as
	begin
		declare @cli_id int
           set @cli_id = (select id_cliente from tblCliente where cpf = @cpf)
		   if(@cli_id > 0)
		   insert into tblCompra values(@cli_id , '', 0)
		   else
		   insert into tblCompra values(1, '', 0)
	end
exec usp_ConsulCaixa 123
go


create procedure usp_AtualizarCaixa
as
	begin
		declare @id_compra int
		set @id_compra = (select top 1 id_compra from tblCompra order by id_compra desc)
		select p.nome_prod, i.quantidade, i.preco_total from tblItemPedido i INNER JOIN tblProduto p on p.id_prod = i.id_prod where i.id_compra = @id_compra
	end
go
		

create procedure usp_InserirCaixa
	@codigo_barra int,
	@desconto numeric(2),
	@qtde int,
	@val numeric (6,2)

as
	begin
		declare @id_compra int
		declare @id_prod int
		declare @preco_prod numeric
		set @id_compra = (select top 1 id_compra from tblCompra order by id_compra desc)
		select preco_un, id_prod from tblProduto where codigo_barra = @codigo_barra
		insert into tblItemPedido  values (@id_prod, @id_compra, @desconto, @qtde, @val)
	end
--exec usp_InserirCaixa 2201, 0, 4, 213.90
go


create procedure usp_FinalizarCaixa
	@data date
as
	begin
		declare @id_compra int
		declare @preco_total numeric
		set @id_compra = (select top 1 id_compra from tblCompra order by id_compra desc)
		set @preco_total = (select sum(preco_total)from tblItemPedido where id_compra = @id_compra)
		update tblCompra set data_hora = @data , preco_final = @preco_total where id_compra = @id_compra
	end
--exec usp_FinalizarCaixa '21/12/09'
go