/* Cria a tabela players */
create table players(
    ply_id number not null,
    fname varchar2(20) not null,
    lname varchar2(20) not null,
    age number (2) not null,
    team varchar2 (1) not null,
    constraint pk_ply_id primary key (ply_id)
);

/* Cria a tabela valuespg */
create table valuespg(
    values_id number not null,
    ppg number not null,
    apg number not null,
    tptspg number not null,
    constraint pk_values_id primary key (values_id)
);

/* Cria a tabela players_info */
create table players_info(
    ply_info_id number not null,
    city varchar2(100) not null,
    history varchar2(100),
    favorite_players varchar2(100),
    ply_id number not null,
    values_id number not null,
    constraint pk_ply_info_id primary key (ply_info_id),
    constraint fk_ply_id foreign key (ply_id) references players,
    constraint fk_values_id foreign key (values_id) references valuespg
);

/* Cria a tabela favorite_players (para fazer o self-join) */
create table favorite_players(
    player_id number,
    fname varchar2(50),
    lname varchar2(50),
    fav_player_id number,
    constraint pk_player_id primary key (player_id),
    constraint fk_fav_player_id foreign key (fav_player_id) references favorite_players
);