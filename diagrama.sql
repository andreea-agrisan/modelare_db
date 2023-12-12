CREATE TABLE IF NOT EXISTS Facultate(
	id serial not null,
	name varchar(50) not null,
	adresa varchar(13) not null,
	telefon integer null,
	email varchar(100) not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS Profesori(
	id serial not null,
	Facultate_id integer not null,
	name varchar(100) not null,
	email varchar(100) not null,
	age integer not null,
	sex char(1) not null,
	primary key(id),
	foreign key(Facultate_id) references Facultate(id)
);
CREATE TABLE IF NOT EXISTS Studenti(
	id serial not null,
	Facultate_id integer not null,
	name varchar(100) not null,
	email varchar(100) not null,
	age integer not null,
	year integer not null,
	sex char(1) not null,
	primary key(id),
	foreign key(Facultate_id) references Facultate(id)
);
CREATE TABLE IF NOT EXISTS Specializari(
	id integer not null,
	name varchar(100) not null,
	locuri_disponibile integer not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS Discipline(
	id integer not null,
	Specializari_id integer not null,
	name varchar(100) not null,
	numar integer not null,
	primary key(id),
	foreign key(Specializari_id) references Specializari(id)
);
CREATE TABLE IF NOT EXISTS Profesori_Studenti(
	id integer not null,
	Profesori_id integer not null,
	Studenti_id integer not null,
	primary key(id),
	foreign key(Profesori_id) references Profesori(id),
	foreign key(Studenti_id) references Studenti(id)
);
CREATE TABLE IF NOT EXISTS Profesori_Discipline(
	id integer not null,
	Profesori_id integer not null,
	Discipline_id integer not null,
	primary key(id),
	foreign key(Profesori_id) references Profesori(id),
	foreign key(Discipline_id) references Discipline(id)
);
CREATE TABLE IF NOT EXISTS Specializari_Profesori(
	id integer not null,
	Profesori_id integer not null,
	Specializari_id integer not null,
	primary key(id),
	foreign key(Profesori_id) references Profesori(id),
	foreign key(Specializari_id) references Specializari(id)
);
CREATE TABLE IF NOT EXISTS Sali(
	id integer not null,
	Facultate_id integer not null,
	nr_sali integer not null,
	primary key(id),
	foreign key(Facultate_id) references Facultate(id)
);
CREATE TABLE IF NOT EXISTS Calculator(
	id integer not null,
	Facultate_id integer not null,
	nr_calculatoare integer not null,
	primary key(id),
	foreign key(Facultate_id) references Facultate(id)
);
CREATE TABLE IF NOT EXISTS Sali_Calculator(
	id integer not null,
	Sali_id integer not null,
	Calculator_id integer not null,
	nr_sali_calculator integer not null,
	primary key(id),
	foreign key(Sali_id) references Sali(id),
	foreign key(Calculator_id) references Calculator(id)
);