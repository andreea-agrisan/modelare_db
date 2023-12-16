CREATE TABLE IF NOT EXISTS tara(
	id serial not null,
	nume varchar(100) not null,
	populatia integer not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS structura_reg(
	id serial not null,
	tip varchar(100) not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS marime_reg(
	id serial not null,
	marime varchar(100) not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS vulnerabilitate_reg(
	id serial not null,
	vulnerabilitate varchar(100) not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS regiune_geografica(
	id serial not null,
	nume varchar(100) not null,
	tara_id integer not null,
	structura_reg_id integer not null,
	marime_reg_id integer not null,
	vulnerabilitate_reg_id integer not null,
	primary key(id,structura_reg_id,marime_reg_id,vulnerabilitate_reg_id),
	foreign key(tara_id) references tara(id),
	foreign key(structura_reg_id) references structura_reg(id),
	foreign key(marime_reg_id) references marime_reg(id),
	foreign key(vulnerabilitate_reg_id) references vulnerabilitate_reg(id)
);
CREATE TABLE IF NOT EXISTS uat(
	id serial not null,
	tara_id integer not null,
	nume varchar(100) not null,
	populatia integer not null,
	primary key(id),
	foreign key(tara_id) references tara(id)
);