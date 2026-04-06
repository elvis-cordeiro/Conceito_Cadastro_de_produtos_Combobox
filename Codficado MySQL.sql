# Criando o banco de dados para a tabela para cadastro de Produtos

#Criando a tabela de Produtos
create database Produtos;

#Um comando select banco
use Produtos;

#Criando Tabelas

create table Produtos (
	Cod_produto char (15),
    Descricao varchar (150),
    estoque_minimo DECIMAL(10,3) NOT NULL DEFAULT 0.000,
	estoque_maximo DECIMAL(10,3) NOT NULL DEFAULT 0.000,
    primary key (Cod_produto)
);

create table Categoria(
	Id_categoria BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    Descricao varchar (50),
    primary key (Id_categoria)
    );
    
    create table Categoria_produtos(
    Id_Produtos varchar(14),
    Fk_id_categoria BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    primary key (Id_Produtos),
    foreign key (Fk_Id_categoria) references Categoria (Id_categoria)
    );
    
    create table Medida(
		Id_medidas BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
        Descricao varchar (150),
        primary key (Id_medidas)
    );
    
    create table Unid_de_medidas(
    id_unid_de_medidas BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    Fk_id_medidas BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    foreign key (Fk_id_medidas) references Medida (Id_medidas)
    );
    
    