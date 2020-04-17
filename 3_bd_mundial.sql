create database bd_mundial character set utf8 collate utf8_unicode_ci;

use bd_mundial;

create table grupo(
id_grupo			int 			not null auto_increment,
grupo				varchar(45)		not null,
PRIMARY KEY (id_grupo)
);

insert into grupo (grupo) values ('A');
insert into grupo (grupo) values ('B');
insert into grupo (grupo) values ('C');
insert into grupo (grupo) values ('D');


create table seleccion(
id_seleccion		int 			not null auto_increment,
nombre				varchar(45)		not null,
grupo				int				not null,
PRIMARY KEY (id_seleccion),
index Grp_Sel (grupo),
constraint GrpSel foreign key (grupo) references grupo(id_grupo)
);

insert into seleccion (nombre,grupo) values ('Colombia', '1');
insert into seleccion (nombre,grupo) values ('Francia', '1');
insert into seleccion (nombre,grupo) values ('Nigeria', '1');
insert into seleccion (nombre,grupo) values ('Corea', '1');

insert into seleccion (nombre,grupo) values ('Inglaterra', '2');
insert into seleccion (nombre,grupo) values ('Uruguay', '2');
insert into seleccion (nombre,grupo) values ('Japon', '2');
insert into seleccion (nombre,grupo) values ('Nueva Zelanda', '2');

insert into seleccion (nombre,grupo) values ('Brasil', '3');
insert into seleccion (nombre,grupo) values ('España', '3');
insert into seleccion (nombre,grupo) values ('Senegal', '3');
insert into seleccion (nombre,grupo) values ('Jamaica', '3');

insert into seleccion (nombre,grupo) values ('Argentina', '4');
insert into seleccion (nombre,grupo) values ('Portugal', '4');
insert into seleccion (nombre,grupo) values ('Italia', '4');
insert into seleccion (nombre,grupo) values ('Mexico', '4');




create table partido(
id_partido 			int 			not null auto_increment,
id_seleccion 		int 			not null,
id_seleccion_dos	int 			not null,
PRIMARY KEY (id_partido),
index partido_equipo_uno (id_seleccion),
constraint id_seleccionTeamOne foreign key (id_seleccion) references seleccion(id_seleccion),
index partido_equipo_dos (id_seleccion_dos),
constraint id_seleccionTeamTwo foreign key (id_seleccion_dos) references seleccion(id_seleccion)
);

insert into partido (id_seleccion,id_seleccion_dos) values ('1','2');
insert into partido (id_seleccion,id_seleccion_dos) values ('3','4');
insert into partido (id_seleccion,id_seleccion_dos) values ('1','3');
insert into partido (id_seleccion,id_seleccion_dos) values ('2','4');
insert into partido (id_seleccion,id_seleccion_dos) values ('2','3');
insert into partido (id_seleccion,id_seleccion_dos) values ('4','1');

insert into partido (id_seleccion,id_seleccion_dos) values ('5','6');
insert into partido (id_seleccion,id_seleccion_dos) values ('7','8');
insert into partido (id_seleccion,id_seleccion_dos) values ('6','7');
insert into partido (id_seleccion,id_seleccion_dos) values ('8','5');
insert into partido (id_seleccion,id_seleccion_dos) values ('5','7');
insert into partido (id_seleccion,id_seleccion_dos) values ('8','6');

insert into partido (id_seleccion,id_seleccion_dos) values ('9','10');
insert into partido (id_seleccion,id_seleccion_dos) values ('11','12');
insert into partido (id_seleccion,id_seleccion_dos) values ('10','12');
insert into partido (id_seleccion,id_seleccion_dos) values ('11','9');
insert into partido (id_seleccion,id_seleccion_dos) values ('12','9');
insert into partido (id_seleccion,id_seleccion_dos) values ('10','11');

insert into partido (id_seleccion,id_seleccion_dos) values ('13','14');
insert into partido (id_seleccion,id_seleccion_dos) values ('15','16');
insert into partido (id_seleccion,id_seleccion_dos) values ('14','15');
insert into partido (id_seleccion,id_seleccion_dos) values ('13','16');
insert into partido (id_seleccion,id_seleccion_dos) values ('15','13');
insert into partido (id_seleccion,id_seleccion_dos) values ('16','14');




create table resultado(
id_resultado 			int 		not null auto_increment,
id_partido  			int 		not null,
goles_equipo_uno 		int			not null,
goles_equipo_dos 		int 		not null,
PRIMARY KEY (id_resultado),
index resultado_idx (id_partido),
constraint id_partidoScore foreign key (id_partido) references partido(id_partido)	
);


insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('1', '3', '2');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('2', '1', '1');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('3', '1', '0');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('4', '5', '1');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('5', '2', '0');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('6', '1', '2');

insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('7', '0', '1');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('8', '0', '0');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('9', '3', '1');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('10', '0', '7');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('11', '2', '2');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('12', '0', '2');

insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('13', '1', '1');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('14', '2', '1');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('15', '4', '0');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('16', '2', '4');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('17', '0', '3');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('18', '4', '1');

insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('19', '3', '3');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('20', '1', '1');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('21', '1', '0');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('22', '0', '1');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('23', '0', '1');
insert into resultado (id_partido,goles_equipo_uno,goles_equipo_dos)
	values ('24', '1', '2');



create table gol(
id_gol		 			int 		not null auto_increment,
id_partido  			int 		not null,
goles_equipo_uno 		int			not null,
goles_equipo_dos 		int 		not null,
gol_id_seleccion_uno	int 		not null,
gol_id_seleccion_dos	int 		not null,
PRIMARY KEY (id_gol),
index gol_idx (id_partido),
constraint id_partidoGoal foreign key (id_partido) references partido(id_partido),	
index golHome_idx (gol_id_seleccion_uno),
constraint id_GoalHome foreign key (gol_id_seleccion_uno) references seleccion(id_seleccion),	
index golAway_idx (gol_id_seleccion_dos),
constraint id_GoalAway foreign key (gol_id_seleccion_dos) references seleccion(id_seleccion)
);



insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('1', '3', '2', '1', '2');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('2', '1', '1', '3', '4');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('3', '1', '0', '1', '3');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('4', '5', '1', '2', '4');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('5', '2', '0', '2', '3');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('6', '1', '2', '4', '1');

insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('7', '0', '1', '5', '6');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('8', '0', '0', '7', '8');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('9', '3', '1', '6', '7');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('10', '0', '7', '8', '5');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('11', '2', '2', '5', '7');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('12', '0', '2', '8', '6');

insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('13', '1', '1', '9', '10');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('14', '2', '1', '11', '12');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('15', '4', '0', '10', '12');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('16', '2', '4', '11', '9');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('17', '0', '3', '12', '9');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('18', '4', '1', '10', '11');

insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('19', '3', '3', '13', '14');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('20', '1', '1', '15', '16');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('21', '1', '0', '14', '15');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('22', '0', '1', '13', '16');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('23', '0', '1', '15', '13');
insert into gol (id_partido,goles_equipo_uno,goles_equipo_dos,gol_id_seleccion_uno,gol_id_seleccion_dos)
	values ('24', '1', '2', '16', '14');


/* ITEM A:  CONSULTA LOS EQUIPOS DEL GRUPO B   */
SELECT sel.id_seleccion, sel.nombre, gru.grupo FROM seleccion as sel INNER JOIN grupo AS gru ON sel.grupo = gru.id_grupo WHERE gru.grupo = "B" ;


/* ITEM B:  CONSULTA LOS PARTIDOS DEL GRUPO A   */
SELECT par.id_partido, sel.nombre, sel2.nombre, sel.grupo FROM partido as par 
	INNER JOIN seleccion AS sel ON  par.id_seleccion  = sel.id_seleccion
	INNER JOIN seleccion AS sel2 ON  par.id_seleccion_dos  = sel2.id_seleccion
	INNER JOIN grupo AS gru ON sel.grupo = gru.id_grupo WHERE gru.grupo = "A";


/* ITEM C:  CONSULTA DE PARTIDOS A LOS EQUIPOS POR U  */
SELECT par.id_partido, sel.id_seleccion ,sel.nombre, sel2.id_seleccion ,sel2.nombre, sel.grupo FROM partido as par 
	INNER JOIN seleccion AS sel ON  par.id_seleccion  = sel.id_seleccion
	INNER JOIN seleccion AS sel2 ON  par.id_seleccion_dos  = sel2.id_seleccion WHERE sel.nombre LIKE "%u%" || sel2.nombre LIKE "%u%";


/* ITEM D: CONSULTAR DE PARTIDOS DONDE GANO VISITANTE   */
SELECT  sel.nombre, CONCAT(gol.goles_equipo_uno, " - ", gol.goles_equipo_dos) AS Marcador ,  sel2.nombre FROM seleccion AS sel 
INNER JOIN partido AS par ON sel.id_seleccion = par.id_seleccion 
INNER JOIN seleccion AS sel2 ON sel2.id_seleccion = par.id_seleccion_dos
INNER JOIN gol ON par.id_partido = gol.id_partido WHERE gol.goles_equipo_dos > gol.goles_equipo_uno;


/* ITEM E: CONSULTAR PARTIDOS Y RESULTADOD DE COLOMBIA   */
SELECT  par.id_partido, sel.nombre, CONCAT(" VS ") AS VS ,  sel2.nombre, CONCAT(gol.goles_equipo_uno, " - ", gol.goles_equipo_dos) AS resultado  FROM seleccion AS sel 
INNER JOIN partido AS par ON sel.id_seleccion = par.id_seleccion 
INNER JOIN seleccion AS sel2 ON sel2.id_seleccion = par.id_seleccion_dos
INNER JOIN gol ON par.id_partido = gol.id_partido WHERE sel.nombre = "Colombia" || sel2.nombre = "Colombia";