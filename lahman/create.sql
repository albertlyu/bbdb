DROP TABLE IF EXISTS lahman."AllstarFull";
DROP TABLE IF EXISTS lahman."Appearances";
DROP TABLE IF EXISTS lahman."AwardsManagers";
DROP TABLE IF EXISTS lahman."AwardsPlayers";
DROP TABLE IF EXISTS lahman."AwardsShareManagers";
DROP TABLE IF EXISTS lahman."AwardsSharePlayers";
DROP TABLE IF EXISTS lahman."Batting";
DROP TABLE IF EXISTS lahman."BattingPost";
DROP TABLE IF EXISTS lahman."CollegePlaying";
DROP TABLE IF EXISTS lahman."Fielding";
DROP TABLE IF EXISTS lahman."FieldingOF";
DROP TABLE IF EXISTS lahman."FieldingPost";
DROP TABLE IF EXISTS lahman."HallOfFame";
DROP TABLE IF EXISTS lahman."Managers";
DROP TABLE IF EXISTS lahman."ManagersHalf";
DROP TABLE IF EXISTS lahman."Master";
DROP TABLE IF EXISTS lahman."Pitching";
DROP TABLE IF EXISTS lahman."PitchingPost";
DROP TABLE IF EXISTS lahman."Salaries";
DROP TABLE IF EXISTS lahman."Schools";
DROP TABLE IF EXISTS lahman."SeriesPost";
DROP TABLE IF EXISTS lahman."Teams";
DROP TABLE IF EXISTS lahman."TeamsFranchises";
DROP TABLE IF EXISTS lahman."TeamsHalf";

CREATE TABLE lahman."AllstarFull" (
    "playerID" VARCHAR(9),
    "yearID" INTEGER,
    "gameNum" INTEGER,
    "gameID" VARCHAR(12),
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "GP" INTEGER,
    "startingPos" INTEGER,
    PRIMARY KEY ( "playerID", "yearID", "gameNum" )
);

CREATE TABLE lahman."Appearances" (
    "yearID" INTEGER,
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "playerID" VARCHAR(9),
    "G_all" INTEGER,
    "GS" INTEGER,
    "G_batting" INTEGER,
    "G_defense" INTEGER,
    "G_p" INTEGER,
    "G_c" INTEGER,
    "G_1b" INTEGER,
    "G_2b" INTEGER,
    "G_3b" INTEGER,
    "G_ss" INTEGER,
    "G_lf" INTEGER,
    "G_cf" INTEGER,
    "G_rf" INTEGER,
    "G_of" INTEGER,
    "G_dh" INTEGER,
    "G_ph" INTEGER,
    "G_pr" INTEGER,
    PRIMARY KEY ( "yearID", "teamID", "playerID" )
);

CREATE TABLE lahman."AwardsManagers" (
    "playerID" VARCHAR(10),
    "awardID" VARCHAR(75),
    "yearID" INTEGER,
    "lgID" VARCHAR(2),
    "tie" VARCHAR(1),
    "notes" VARCHAR(100),
    PRIMARY KEY ( "yearID", "awardID", "lgID", "playerID" )
);

CREATE TABLE lahman."AwardsPlayers" (
    "playerID" VARCHAR(9),
    "awardID" VARCHAR(255),
    "yearID" INTEGER,
    "lgID" VARCHAR(2),
    "tie" VARCHAR(1),
    "notes" VARCHAR(100),
    PRIMARY KEY ( "yearID", "awardID", "lgID", "playerID" )
);

CREATE TABLE lahman."AwardsShareManagers" (
    "awardID" VARCHAR(25),
    "yearID" INTEGER,
    "lgID" VARCHAR(2),
    "playerID" VARCHAR(10),
    "pointsWon" INTEGER,
    "pointsMax" INTEGER,
    "votesFirst" INTEGER,
    PRIMARY KEY ( "awardID", "yearID", "lgID", "playerID" )
);

CREATE TABLE lahman."AwardsSharePlayers" (
    "awardID" VARCHAR(25),
    "yearID" INTEGER,
    "lgID" VARCHAR(2),
    "playerID" VARCHAR(9),
    "pointsWon" DOUBLE PRECISION,
    "pointsMax" INTEGER,
    "votesFirst" DOUBLE PRECISION,
    PRIMARY KEY ( "awardID", "yearID", "lgID", "playerID" )
);

CREATE TABLE lahman."Batting" (
    "playerID" VARCHAR(9),
    "yearID" INTEGER,
    "stint" INTEGER,
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "G" INTEGER,
    "G_batting" INTEGER,
    "AB" INTEGER,
    "R" INTEGER,
    "H" INTEGER,
    "2B" INTEGER,
    "3B" INTEGER,
    "HR" INTEGER,
    "RBI" INTEGER,
    "SB" INTEGER,
    "CS" INTEGER,
    "BB" INTEGER,
    "SO" INTEGER,
    "IBB" INTEGER,
    "HBP" INTEGER,
    "SH" INTEGER,
    "SF" INTEGER,
    "GIDP" INTEGER,
    "G_old" INTEGER,
    PRIMARY KEY ( "playerID", "yearID", "stint" )
);

CREATE TABLE lahman."BattingPost" (
    "yearID" INTEGER,
    "round" VARCHAR(10),
    "playerID" VARCHAR(9),
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "G" INTEGER,
    "AB" INTEGER,
    "R" INTEGER,
    "H" INTEGER,
    "2B" INTEGER,
    "3B" INTEGER,
    "HR" INTEGER,
    "RBI" INTEGER,
    "SB" INTEGER,
    "CS" INTEGER,
    "BB" INTEGER,
    "SO" INTEGER,
    "IBB" INTEGER,
    "HBP" INTEGER,
    "SH" INTEGER,
    "SF" INTEGER,
    "GIDP" INTEGER,
    PRIMARY KEY ( "yearID", "round", "playerID" )
);

CREATE TABLE lahman."CollegePlaying" (
    "playerID" VARCHAR(9),
    "schoolID" VARCHAR(15),
    "yearID" INTEGER
);

CREATE TABLE lahman."Fielding" (
    "playerID" VARCHAR(9),
    "yearID" INTEGER,
    "stint" INTEGER,
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "POS" VARCHAR(2),
    "G" INTEGER,
    "GS" INTEGER,
    "InnOuts" INTEGER,
    "PO" INTEGER,
    "A" INTEGER,
    "E" INTEGER,
    "DP" INTEGER,
    "PB" INTEGER,
    "WP" INTEGER,
    "SB" INTEGER,
    "CS" INTEGER,
    "ZR" DOUBLE PRECISION,
    PRIMARY KEY ( "playerID", "yearID", "stint", "POS" )
);

CREATE TABLE lahman."FieldingOF" (
    "playerID" VARCHAR(9),
    "yearID" INTEGER,
    "stint" INTEGER,
    "Glf" INTEGER,
    "Gcf" INTEGER,
    "Grf" INTEGER,
    PRIMARY KEY ( "playerID", "yearID", "stint" )
);

CREATE TABLE lahman."FieldingPost" (
    "playerID" VARCHAR(9),
    "yearID" INTEGER,
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "round" VARCHAR(10),
    "POS" VARCHAR(2),
    "G" INTEGER,
    "GS" INTEGER,
    "InnOuts" INTEGER,
    "PO" INTEGER,
    "A" INTEGER,
    "E" INTEGER,
    "DP" INTEGER,
    "TP" INTEGER,
    "PB" INTEGER,
    "SB" INTEGER,
    "CS" INTEGER,
    PRIMARY KEY ( "playerID", "yearID", "round", "POS" )
);

CREATE TABLE lahman."HallOfFame" (
    "playerID" VARCHAR(10),
    "yearid" INTEGER,
    "votedBy" VARCHAR(64),
    "ballots" INTEGER,
    "needed" INTEGER,
    "votes" INTEGER,
    "inducted" VARCHAR(1),
    "category" VARCHAR(20),
    "needed_note" VARCHAR(25),
    PRIMARY KEY ( "playerID", "yearid", "votedBy" )
);

CREATE TABLE lahman."Managers" (
    "playerID" VARCHAR(10),
    "yearID" INTEGER,
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "inseason" INTEGER,
    "G" INTEGER,
    "W" INTEGER,
    "L" INTEGER,
    "rank" INTEGER,
    "plyrMgr" VARCHAR(1),
    PRIMARY KEY ( "yearID", "teamID", "inseason" )
);

CREATE TABLE lahman."ManagersHalf" (
    "playerID" VARCHAR(10),
    "yearID" INTEGER,
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "inseason" INTEGER,
    "half" INTEGER,
    "G" INTEGER,
    "W" INTEGER,
    "L" INTEGER,
    "rank" INTEGER,
    PRIMARY KEY ( "yearID", "teamID", "playerID", "half" )
);

CREATE TABLE lahman."Master" (
    "playerID" VARCHAR(10) PRIMARY KEY,
    "birthYear" INTEGER,
    "birthMonth" INTEGER,
    "birthDay" INTEGER,
    "birthCountry" VARCHAR(50),
    "birthState" VARCHAR(2),
    "birthCity" VARCHAR(50),
    "deathYear" INTEGER,
    "deathMonth" INTEGER,
    "deathDay" INTEGER,
    "deathCountry" VARCHAR(50),
    "deathState" VARCHAR(2),
    "deathCity" VARCHAR(50),
    "nameFirst" VARCHAR(50),
    "nameLast" VARCHAR(50),
    "nameGiven" VARCHAR(255),
    "weight" INTEGER,
    "height" DOUBLE PRECISION,
    "bats" VARCHAR(1),
    "throws" VARCHAR(1),
    "debut" DATETIME,
    "finalGame" DATETIME,
    "retroID" VARCHAR(9),
    "bbrefID" VARCHAR(9)
);

CREATE TABLE lahman."Pitching" (
    "playerID" VARCHAR(9),
    "yearID" INTEGER,
    "stint" INTEGER,
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "W" INTEGER,
    "L" INTEGER,
    "G" INTEGER,
    "GS" INTEGER,
    "CG" INTEGER,
    "SHO" INTEGER,
    "SV" INTEGER,
    "IPouts" INTEGER,
    "H" INTEGER,
    "ER" INTEGER,
    "HR" INTEGER,
    "BB" INTEGER,
    "SO" INTEGER,
    "BAOpp" DOUBLE PRECISION,
    "ERA" DOUBLE PRECISION,
    "IBB" INTEGER,
    "WP" INTEGER,
    "HBP" INTEGER,
    "BK" INTEGER,
    "BFP" INTEGER,
    "GF" INTEGER,
    "R" INTEGER,
    "SH" INTEGER,
    "SF" INTEGER,
    "GIDP" INTEGER,
    PRIMARY KEY ( "playerID", "yearID", "stint" )
);

CREATE TABLE lahman."PitchingPost" (
    "playerID" VARCHAR(9),
    "yearID" INTEGER,
    "round" VARCHAR(10),
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "W" INTEGER,
    "L" INTEGER,
    "G" INTEGER,
    "GS" INTEGER,
    "CG" INTEGER,
    "SHO" INTEGER,
    "SV" INTEGER,
    "IPouts" INTEGER,
    "H" INTEGER,
    "ER" INTEGER,
    "HR" INTEGER,
    "BB" INTEGER,
    "SO" INTEGER,
    "BAOpp" DOUBLE PRECISION,
    "ERA" DOUBLE PRECISION,
    "IBB" INTEGER,
    "WP" INTEGER,
    "HBP" INTEGER,
    "BK" INTEGER,
    "BFP" INTEGER,
    "GF" INTEGER,
    "R" INTEGER,
    "SH" INTEGER,
    "SF" INTEGER,
    "GIDP" INTEGER,
    PRIMARY KEY ( "playerID", "yearID", "round" )
);

CREATE TABLE lahman."Salaries" (
    "yearID" INTEGER,
    "teamID" VARCHAR(3),
    "lgID" VARCHAR(2),
    "playerID" VARCHAR(9),
    "salary" DOUBLE PRECISION,
    PRIMARY KEY ( "yearID", "teamID", "lgID", "playerID" )
);

CREATE TABLE lahman."Schools" (
    "schoolID" VARCHAR(15) PRIMARY KEY,
    "name_full" VARCHAR(255),
    "city" VARCHAR(55),
    "state" VARCHAR(55),
    "country" VARCHAR(55)
);

CREATE TABLE lahman."SeriesPost" (
    "yearID" INTEGER,
    "round" VARCHAR(5),
    "teamIDwinner" VARCHAR(3),
    "lgIDwinner" VARCHAR(2),
    "teamIDloser" VARCHAR(3),
    "lgIDloser" VARCHAR(2),
    "wins" INTEGER,
    "losses" INTEGER,
    "ties" INTEGER,
    PRIMARY KEY ( "yearID", "round" )
);

CREATE TABLE lahman."Teams" (
    "yearID" INTEGER,
    "lgID" VARCHAR(2),
    "teamID" VARCHAR(3),
    "franchID" VARCHAR(3),
    "divID" VARCHAR(1),
    "Rank" INTEGER,
    "G" INTEGER,
    "Ghome" INTEGER,
    "W" INTEGER,
    "L" INTEGER,
    "DivWin" VARCHAR(1),
    "WCWin" VARCHAR(1),
    "LgWin" VARCHAR(1),
    "WSWin" VARCHAR(1),
    "R" INTEGER,
    "AB" INTEGER,
    "H" INTEGER,
    "2B" INTEGER,
    "3B" INTEGER,
    "HR" INTEGER,
    "BB" INTEGER,
    "SO" INTEGER,
    "SB" INTEGER,
    "CS" INTEGER,
    "HBP" INTEGER,
    "SF" INTEGER,
    "RA" INTEGER,
    "ER" INTEGER,
    "ERA" DOUBLE PRECISION,
    "CG" INTEGER,
    "SHO" INTEGER,
    "SV" INTEGER,
    "IPouts" INTEGER,
    "HA" INTEGER,
    "HRA" INTEGER,
    "BBA" INTEGER,
    "SOA" INTEGER,
    "E" INTEGER,
    "DP" INTEGER,
    "FP" DOUBLE PRECISION,
    "name" VARCHAR(50),
    "park" VARCHAR(255),
    "attendance" INTEGER,
    "BPF" INTEGER,
    "PPF" INTEGER,
    "teamIDBR" VARCHAR(3),
    "teamIDlahman45" VARCHAR(3),
    "teamIDretro" VARCHAR(3),
    PRIMARY KEY ( "yearID", "lgID", "teamID" )
);

CREATE TABLE lahman."TeamsFranchises" (
    "franchID" VARCHAR(3) PRIMARY KEY,
    "franchName" VARCHAR(50),
    "active" VARCHAR(2),
    "NAassoc" VARCHAR(3)
);

CREATE TABLE lahman."TeamsHalf" (
    "yearID" INTEGER,
    "lgID" VARCHAR(2),
    "teamID" VARCHAR(3),
    "Half" VARCHAR(1),
    "divID" VARCHAR(1),
    "DivWin" VARCHAR(1),
    "Rank" INTEGER,
    "G" INTEGER,
    "W" INTEGER,
    "L" INTEGER,
    PRIMARY KEY ( "yearID", "teamID", "lgID", "Half" )
);