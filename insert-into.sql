/* Cria a sequência ply_id_seq */
create sequence ply_id_seq
start with 1;

/* Insere dados na tabela players */
insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Guilherme','Azevedo',17,'A');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Gabriel','Lowry',20,'B');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Jay','Harden',36,'B');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Ian','Banks',40,'A');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Larry','Junior',26,'B');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Kelvin','Azevedo',33,'A');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Matthew','Paul',25,'B');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'John','English',34,'B');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Kyle','Love',26,'A');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Ryan','Faraday',29,'D');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Mark','Azevedo',38,'C');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Yuri','Pascal',40,'C');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'David','Siakam',27,'A');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Adam','Morris',38,'C');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Joseph','Wall',45,'C');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Nair','Souza',26,'D');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Michael','Moura',22,'D');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Peter','Neves',44,'D');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Carlos','Stevens',40,'C');

insert into players
(ply_id, fname, lname, age, team)
values (ply_id_seq.nextval,'Marcus','Roy',35,'D');

/* Cria a sequência values_id_seq */
create sequence values_id_seq
start with 1;

/* Insere dados na tabela valuespg */
insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,7,5,2);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,18,15,6);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,57,5,6);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,15,5,3);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,18,20,5);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,20,32,2);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,40,4,5);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,30,5,10);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,3,2,0);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,10,5,0);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,25,5,3);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,69,20,23);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,6,6,2);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,15,5,3);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,25,2,3);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,43,8,4);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,45,6,7);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,34,20,9);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,30,10,10);

insert into valuespg
(values_id, ppg, apg, tptspg)
values (values_id_seq.nextval,50,1,8);

/* Insere dados na tabela players_info */
insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (1,'Cuiabá','Nasceu em 2003, com 10 anos teve seu primeiro contato com o basquete','Stephen Curry',1,1);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (2,'Cleveland','Nasceu em 1995',null,9,9);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (3,'Stockholm',null,null,4,4);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (4,'Los Angeles',null,'Kobe Bryant',20,20);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (5,'Várzea Grande',null,null,11,11);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (6,'Tokyo',null,'Damian Lillard',5,5);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (7,'Houston',null,null,10,10);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (8,'New York',null,'Kevin Durant',8,8);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (9,'Campo Grande',null,null,12,12);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (10,'Edmonton',null,null,16,16);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (11,'Diamantino',null,null,13,13);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (12,'Ottawa',null,null,17,17);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (13,'Santo Antônio do Leverger',null,null,14,14);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (14,'Brasília',null,'Devin Booker',6,6);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (15,'Chicago',null,null,7,7);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (16,'Lucas do Rio Verde',null,null,15,15);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (17,'New York','Nasceu em 2001, veio de uma família pobre, mas com muita luta conseguiu chegar a esta liga',null,2,2);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (18,'Calgary',null,'Wilt Chamberlain',3,3);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (19,'Los Angeles',null,'Kobe Bryant',19,19);

insert into players_info
(ply_info_id, city, history, favorite_players,ply_id,values_id)
values (20,'Los Angeles',null,'Kobe Bryant',18,18);

/* Insere dados na tabela favorite_players */
insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (5,'Larry','Junior',null);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (4,'Ian','Banks',5);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (3,'Jay','Harden',4);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (6,'Kelvin','Azevedo',4);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (2,'Gabriel','Lowry',4);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (1,'Guilherme','Azevedo',4);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (7,'Matthew','Paul',1);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (20,'Marcus','Roy',7);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (8,'John','English',20);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (14,'Adam','Morris',8);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (12,'Yuri','Pascal',14);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (9,'Kyle','Love',12);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (10,'Ryan','Faraday',12);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (11,'Mark','Azevedo',12);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (17,'Michael','Moura',1);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (18,'Peter','Neves',6);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (19,'Carlos','Stevens',3);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (13,'David','Siakam', null);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (15,'Joseph','Wall',null);

insert into favorite_players
(player_id,fname,lname,fav_player_id)
values (16,'Nair','Souza',null); 