/* Seleciona o primeiro e o último nome dos jogadores e seus IDs */
select ply_id, fname, lname from players;

/* Mostra todas as linhas de valuespg */
select * from valuespg;

/* Mostra quantos jogadores (quantas linhas) tem em players */
select count(*) from players;

/* Mostra os jogadores do time A */
select ply_id, fname, lname, team from players where team = 'A';

/* Mostra os jogadores do time B */
select ply_id, fname, lname, team from players where team = 'B';

/* Mostra os jogadores do time C */
select ply_id, fname, lname, team from players where team = 'C';

/* Mostra os jogadores do time D */
select ply_id, fname, lname, team from players where team = 'D';

/* Mostra todos os jogadores de players */
select * from players;

/* Mostra todos os jogadores que não pertencem ao time A */
select ply_id, fname, lname, team
from players 
where team <> 'A';

/* Mostra quantos jogadores pertencem ao time A */
select count(*) from players where team = 'A';

/* Mostra os jogadores que pertencem ao time E */
select ply_id, fname, lname, team from players where team = 'E';

/* Mostra os jogadores com ppg maior que 10 e tptspg maior que 2*/
select values_id, ppg, tptspg
from valuespg
where ppg > 10
and tptspg > 2;

/* Mostra os jogadores que possuem ppg maior ou igual a 10 ou que possuem apg maior ou igual a 10 */
select values_id, ppg, apg
from valuespg
where ppg >= 10
or apg >= 10;

/* Mostra os jogadores que estão no time A ou no time B e que possuem 26 ou 40 anos */
select ply_id, fname, lname, age, team
from players
where (team = 'A' or team = 'B')
and (age = 26 or age = 40);

/* Mostra os jogadores que não estão no time D */
select ply_id, fname, lname, age, team
from players
where not team = 'D';

/* Mostra os jogadores cujo o sobrenome começa com a letra A */
select ply_id, fname, lname, age, team
from players
where lname like 'A%';

/* Mostra os jogadores cujo o sobrenome começa com a letra S ou a letra M */
select ply_id, fname, lname, age, team
from players
where (lname like 'M%'
or lname like 'S%');

/* Mostra os jogadores cujo o nome do jogador favorito termina com a palavra 'Bryant' */
select ply_info_id, city, history, favorite_players, ply_id, values_id
from players_info
where favorite_players like '%Bryant';

/* Mostra os jogadores com ppg entre 10 e 30 */
select *
from valuespg
where ppg between 10 and 30;

/* Mostra quantos jogadores conseguiram entre 10 e 20 em apg e ppg */
select count(*)
from valuespg
where apg between 10 and 20
and ppg between 10 and 20;

/* Verificação do comando anterior, mostra os jogadores */
select *
from valuespg
where apg between 10 and 20
and ppg between 10 and 20;

/* Mostra os jogadores que estão dentro do time C e do time D */
select *
from players
where team in ('C','D');

/* Mostra os jogadores que não estão dentro do time C e do time D */
select *
from players
where team not in ('C','D');

/* Mostra os jogadores com valores nulos na coluna history */
select *
from players_info
where history is null;

/* Mostra os jogadores que não tem valores nulos na coluna history */
select *
from players_info
where history is not null;

/* Mostra os jogadores e ordena por idade */
select *
from players
order by age;

/* Mostra os jogadores e ordena por primeiro nome */
select *
from players
order by fname;

/* Mostra os jogadores e ordena por time e primeiro nome */
select *
from players
order by team, fname;

/* Outra maneira de escrever o comando anterior */
select ply_id, fname, lname, age, team
from players
order by 5, 2;

/* Mostra as colunas da tabela valuesPG com apelidos */
select values_id "ID", ppg "Pontos por jogo", apg "Assistências por jogo", tptspg "Cestas de 3 pontos por jogo"
from valuespg
order by values_id;

/* Mostra as colunas de players, das quais fname e lname foram concatenadas */
select ply_id "ID", fname || ' ' || lname "Nome", age "Idade", team "Time"
from players
order by age;

/* Mostra as colunas de valuespg, das quais PPG, APG, TPTSPG foram concatenadas */
select values_id "ID", ppg || '-' || apg || '-' || tptspg "Dados"
from valuespg
order by tptspg;

/* Mostra a eficiência dos jogadores (eficiência = ppg + apg + tptspg) */
select values_id "ID", ppg + apg + tptspg "Eficiência"
from valuespg
order by 2;

/* Mostra primeiro e o segundo nome dos jogadores e os seus dados de valuespg */
select fname, lname, ppg, apg, tptspg
from players, valuespg
where players.ply_id = valuespg.values_id
order by 1;

/* Faz a mesma busca que o anterior, porém usando `inner join` */
select fname, lname, ppg, apg, tptspg
from players inner join valuespg
on ply_id = values_id
order by 1;

/* Mostra os dados dos jogadores presentes na 3 tabelas */
select fname, lname, team, age, ppg, apg, tptspg, city, history, favorite_players
from players join valuespg
    on players.ply_id = valuespg.values_id
    join players_info
        on valuespg.values_id = players_info.ply_info_id
order by 1;

/* Faz a mesma busca que o anterior, porém usando `where` */
select fname, lname, team, age, ppg, apg, tptspg, city, history, favorite_players
from players, valuespg, players_info
where players.ply_id = valuespg.values_id
and valuespg.values_id = players_info.ply_info_id
order by 1;

/* Mostra quantos jogadores estão em cada time */
select team, count(*) as "Quantidade de jogadores"
from players
group by team
order by team;

/* Mostra a média, o valor máximo e mínimo de ppg, apg e tptspg da liga */
select 
avg(ppg) as "PPG_AVG", max(ppg) as "PPG_MAX", min(ppg) as "PPG_MIN",
avg(apg) as "APG_AVG", max(apg) as "APG_MAX", min(apg) as "APG_MIN",
avg(tptspg) as "TPTSPG_AVG", max(tptspg) as "TPTSPG_MAX", min(tptspg) as "TPTSPG_MIN"
from valuespg;

/* Mostra a somatória dos valores ppg, apg, tptspg da liga */
select sum(ppg) as "SUM_PPG", sum(apg) as "SUM_APG", sum(tptspg) as "SUM_TPTSPG"
from valuespg;

/* Mostra quantos locais de origem diferentes existem em players_info */
select count(distinct city) as "quantidade de cidades"
from players_info;

/* Mostra a quantidade de jogadores por cidade */
select city, count(*) as "quantidade de jogadores" 
from players_info
group by city;

/* Mostra a somatória de ppg, apg, tptspg de cada time */
select team, sum(ppg) as "total_ppg", sum(apg) as "total_apg", sum(tptspg) as "total_tptspg"
from players join valuespg
    on ply_id = values_id
group by team
order by team;

/* Mostra os times que possuem total_ppg maior que 100 */
select team, sum(ppg) as "total_ppg", sum(apg) as "total_apg", sum(tptspg) as "total_tptspg"
from players join valuespg
    on ply_id = values_id
group by team
having sum(ppg) > 100
order by team;

/* Mostra os times que possuem total_tptspg menor ou igual a 28 */
select team, sum(ppg) as "total_ppg", sum(apg) as "total_apg", sum(tptspg) as "total_tptspg"
from players join valuespg
    on ply_id = values_id
group by team
having sum(tptspg) <= 28
order by team;

/* Mostra o jogador favorito de cada jogador */
select plyrs.player_id as "Player_id",
plyrs.fname || ' ' || plyrs.lname as "Player",
fav_plyrs.player_id as "Favorite_player_id",
fav_plyrs.fname || ' ' || fav_plyrs.lname as "Favorite_player"
from favorite_players plyrs, favorite_players fav_plyrs
where plyrs.fav_player_id = fav_plyrs.player_id;

/* Mostra os jogadores que não possuem jogador favorito */
select player_id as "Player_id",
fname || ' ' || lname as "Player",
fav_player_id as "Favorite_player_id"
from favorite_players
where fav_player_id is null;

/* Mostra os jogadores com ppg maior ou igual a 30 */
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and ppg >= 30;

/* Mostra os jogadores com apg maior ou igual a 10 */
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and apg >= 10;

/* Une a saída das duas consultas anteriores */
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and ppg >= 30
union
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and apg >= 10;

/* Mostra os jogadores com ppg maior ou igual a 30 e com apg maior ou igual a 10 */
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and ppg >= 30
intersect
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and apg >= 10;

/* Mostra os jogadores que conseguiram ppg maior ou igual a 30, mas que não conseguiram apg
maior ou igual a 10 */
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and ppg >= 30
minus
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and apg >= 10;

/* Mostra os jogadores que conseguiram apg maior ou igual a 10, mas que não conseguiram 
ppg maior ou igual a 30 */
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and apg >= 10
minus
select ply_id, fname, lname, ppg, apg
from players, valuespg
where ply_id = values_id
and ppg >= 30;

/* Mostra os jogadores e ordena por ppg */
select ply_id, fname, lname, ppg
from players, valuespg
where ply_id = values_id
order by ppg;

/* Mostra os jogadores e ordena por apg */
select ply_id, fname, lname, apg
from players join valuespg
    on ply_id = values_id
order by apg;

/* Mostra os jogadores e ordena por tptspg */
select ply_id, fname, lname, tptspg
from players join valuespg
    on ply_id = values_id
order by tptspg;