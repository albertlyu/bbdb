COPY lahman.allstarfull FROM 's3://lahman-csv-2015-01-24/AllstarFull.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.appearances FROM 's3://lahman-csv-2015-01-24/Appearances.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.awardsmanagers FROM 's3://lahman-csv-2015-01-24/AwardsManagers.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.awardsplayers FROM 's3://lahman-csv-2015-01-24/AwardsPlayers.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.awardssharemanagers FROM 's3://lahman-csv-2015-01-24/AwardsShareManagers.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.awardsshareplayers FROM 's3://lahman-csv-2015-01-24/AwardsSharePlayers.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.batting FROM 's3://lahman-csv-2015-01-24/Batting.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.battingpost FROM 's3://lahman-csv-2015-01-24/BattingPost.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.collegeplaying FROM 's3://lahman-csv-2015-01-24/CollegePlaying.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.fielding FROM 's3://lahman-csv-2015-01-24/Fielding.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.fieldingof FROM 's3://lahman-csv-2015-01-24/FieldingOF.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.fieldingpost FROM 's3://lahman-csv-2015-01-24/FieldingPost.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.halloffame FROM 's3://lahman-csv-2015-01-24/HallOfFame.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.managers FROM 's3://lahman-csv-2015-01-24/Managers.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.managershalf FROM 's3://lahman-csv-2015-01-24/ManagersHalf.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.master FROM 's3://lahman-csv-2015-01-24/Master.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1 TIMEFORMAT AS 'auto';

COPY lahman.pitching FROM 's3://lahman-csv-2015-01-24/Pitching.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.pitchingpost FROM 's3://lahman-csv-2015-01-24/PitchingPost.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.salaries FROM 's3://lahman-csv-2015-01-24/Salaries.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.schools FROM 's3://lahman-csv-2015-01-24/Schools.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1 CSV QUOTE AS '"';

COPY lahman.seriespost FROM 's3://lahman-csv-2015-01-24/SeriesPost.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.teams FROM 's3://lahman-csv-2015-01-24/Teams.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.teamsfranchises FROM 's3://lahman-csv-2015-01-24/TeamsFranchises.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;

COPY lahman.teamshalf FROM 's3://lahman-csv-2015-01-24/TeamsHalf.csv' 
CREDENTIALS 'aws_access_key_id=<your-access-key-id>;aws_secret_access_key=<your-secret-access-key>' 
DELIMITER ',' IGNOREHEADER AS 1;