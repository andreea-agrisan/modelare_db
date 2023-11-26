CREATE TABLE IF NOT EXISTS proprietar(
	id serial primary key not null,
	name varchar(50) not null,
	cnp varchar(13) not null,
	serie_nr_ci varchar(9) not null
);

CREATE TABLE IF NOT EXISTS adresa_proprietar(
	id serial primary key not null,
	adresa varchar(100) not null,
	current_address bool default true,
	foreign key(id) references proprietar(id)
);

CREATE TABLE IF NOT EXISTS terenuri(
	id serial primary key not null,
	cf integer not null,
	intravilan bool not null,
	suprafata decimal not null,
	folosinta varchar(5) not null
);

CREATE TABLE IF NOT EXISTS terenuri_proprietar2(
	proprietar_id integer not null,
	terenuri_id integer not null,
	primary key(proprietar_id, terenuri_id),
	foreign key(proprietar_id) references proprietar(id),
	foreign key(terenuri_id) references terenuri(id)
);