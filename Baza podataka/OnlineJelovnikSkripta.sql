create database OnlineJelovnik
go

use OnlineJelovnik
go

create table Jelo
(
	IDJelo int primary key identity not null,
	Naziv nvarchar(30) not null,
	Cijena float not null
);

create table Sastojak
(
	IDSastojak int primary key identity not null,
	Naziv nvarchar(30) not null unique,
	JeloID int foreign key references Jelo(IDJelo) not null
);

create table Dostava
(
	IDDostava int primary key identity not null,
	NacinDostave nvarchar(20) not null
);

create table Narudzba
(
	IDNarudzba int primary key identity not null,
	DostavaID int foreign key references Dostava(IDDostava),
	SastojakID int foreign key references Sastojak(IDSastojak),
	KolicinaSastojaka tinyint not null
);