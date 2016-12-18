-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
\c tournament;

CREATE TABLE PLAYERS (id serial PRIMARY KEY, name varchar(50) UNIQUE NOT NULL);
CREATE TABLE MATCHES (player integer references PLAYERS(id), rounds integer NOT NULL, match integer NOT NULL );

DROP TABLE IF EXISTS PLAYERS, MATCHES RESTRICT;