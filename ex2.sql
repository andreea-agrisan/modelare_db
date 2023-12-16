CREATE TABLE IF NOT EXISTS proprietar(
	cnp integer NOT NULL,
	serie_numar varchar(9) not null,
	nume varchar(100) not null,
	sex char(1) not null,
	primary key(cnp,serie_numar)
);
CREATE TABLE IF NOT EXISTS adrese(
	id serial not null,
	proprietar_cnp integer not null,
	proprietar_serie_numar varchar(9) not null,
	strada varchar(100) not null,
	activa bool not null,
	primary key(id),
	foreign key(proprietar_cnp,proprietar_serie_numar) references proprietar(cnp,serie_numar)
);
CREATE TABLE IF NOT EXISTS primarie(
	id serial not null,
	angajati integer not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS uat(
	id serial not null,
	primarie_id integer not null,
	nume varchar(50) not null,
	primary key(id),
	foreign key(primarie_id) references primarie(id)
);
CREATE TABLE IF NOT EXISTS teren(
	id serial not null,
	uat_id integer not null,
	suprafata integer not null,
	primary key(id),
	foreign key(uat_id) references uat(id)
);
CREATE TABLE IF NOT EXISTS registru_agricol(
	teren_id integer not null,
	primarie_id integer not null,
	primary key(teren_id,primarie_id)
);