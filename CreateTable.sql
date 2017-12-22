create table DimDate(
    key numeric(4) primary key,
	jour varchar(20) not null,
	mois varchar(20) not null,
	jourEN varchar(20) not null,
	moisEN varchar(20) not null,
	jourNL varchar(20) not null,
	moisNL varchar(20) not null,
	jourDE varchar(20) not null,
	moisDE varchar(20) not null,
	jourNumero numeric(2) not null,
	moisNumero numeric(2) not null,
	anneeNumero numeric(4) not null )
	
create table DimDMagasin(
    id numeric(4) primary key,
	nom varchar(20) not null,
	codePostal numeric(4) not null,
	ville varchar(2) not null,
	zoneVenteM numeric(4) not null,
	villeNL varchar(30) not null,
	villeDE varchar(30) not null,
	villeEN varchar(30) not null,
	pays varchar(20) not null,
	paysEN varchar(20) not null,
	paysDE varchar(20) not null,
	paysNL varchar(20) not null )
	
create table DimProduit(
	id numeric(4) primary key,
	prix numeric(5) not null,
	nomEN varchar(30) not null,
	nomNL varchar(30) not null,
	nomDE varchar(30) not null,
	nomCategorie varchar(30) not null,
	nomCategorieEN varchar(30) not null,
	nomCategorieDE varchar(30) not null,
	nomCategorieNL varchar(30) not null,
	tva numeric(4) not null,
	departement varchar(30) not null,
	departementEN varchar(30) not null,
	departementDE varchar(30) not null,
	departementNL varchar(30) not null )
	
create table DimClient (
	id numeric(4) primary key,
	nom varchar(30) not null,
	prenom varchar(30) not null,
	rueEtNumero varchar(40) not null,
	codePostal numeric(5) not null,
	ville varchar(30) not null,
	numeroCarteFidelite numeric(5) not null,
	dateCreationCarteFidelite date not null,
	statusMatrimonial varchar(30) not null,
	statusMatrimonialEN varchar(30) not null,
	statusMatrimonialDE varchar(30) not null,
	statusMatrimonialNL varchar(30) not null )
	
create table Fact (
	id numeric(4) primary key,
    dimDate numeric(4) not null,
	dimMagasin numeric(4) not null,
	dimClient numeric(4) not null,
	dimProduit numeric(4) not null,
	constraint dimDatefk foreign key (dimDate) references DimDate(key),
	constraint dimMagasinfk foreign key (dimMagasin) references dimMagasin(id),
	constraint dimClientfk foreign key (dimClient) references DimClient(id),
	constraint dimProduitfk foreign key (dimProduit) references DimProduit(id) )
	
	