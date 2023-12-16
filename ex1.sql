CREATE TABLE IF NOT EXISTS autori(
	id serial not null,
	nume varchar(100) not null,
	sex char(1) not null,
	carti_scrise integer not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS carte(
	id serial not null,
	autori_id integer not null,
	titlu varchar(200) not null,
	capitole integer null,
	pagini integer null,
	primary key(id),
	foreign key(autori_id) references autori(id)
);
CREATE TABLE IF NOT EXISTS autori_carte(
	id serial not null,
	autori_id integer not null,
	carte_id integer not null,
	primary key(id),
	foreign key(autori_id) references autori(id),
	foreign key(carte_id) references carte(id)
);
CREATE TABLE IF NOT EXISTS adresa(
	id serial not null,
	autori_id integer unique not null,
	strada varchar(200) not null,
	numar integer not null,
	casa_bloc char(1) null,
	primary key(id),
	foreign key(autori_id) references autori(id)
);
CREATE TABLE IF NOT EXISTS review(
	id serial not null,
	autori_id integer not null,
	nota integer not null,
	comentariu varchar(200) not null,
	primary key(id),
	foreign key(autori_id) references autori(id)
);