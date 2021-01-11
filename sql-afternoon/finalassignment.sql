CREATE TABLE game
(
ID int NOT NULL UNIQUE CHECK(ID>0),
MatchId int,
day int,
venue varchar(20),
teamid int,
runsscored int,
wickets int,
winner varchar(3)

);
CREATE TABLE team
(
teamID int NOT NULL UNIQUE CHECK(teamID>0),
country varchar(20),
totalruns int,
noofmatches int
);

CREATE TABLE player
(
playerID int NOT NULL UNIQUE CHECK(playerID>0),
name varchar(20),
teamID int,
runs int,
wickets int
);
INSERT INTO team
VALUES(1,'INDIA',432,4);
INSERT INTO team
VALUES(2,'SOUTH AFRICA',543,4);
INSERT INTO team
VALUES(3,'ENGLAND',332,3);
INSERT INTO team
VALUES(4,'WEST INDIES',546,4);
INSERT INTO team
VALUES(5,'PAKISTAN',145,2);

INSERT INTO game
VALUES(1,1,1,'London',1,200,5,'yes');
INSERT INTO game
VALUES(2,1,1,'London',2,150,2,'no');
INSERT INTO game
VALUES(3,2,2,'Southhampton',2,167,4,'yes');
INSERT INTO game
VALUES(4,2,2,'Southhampton',3,150,3,'no');
INSERT INTO game
VALUES(5,3,3,'Nottingham',4,189,4,'yes');
INSERT INTO game
VALUES(6,3,3,'Nottingham',5,175,2,'no');
INSERT INTO game
VALUES(7,4,4,'Chelsea',3,130,7,'yes');
INSERT INTO game
VALUES(8,4,4,'Chelsea',4,128,3,'no');



INSERT INTO player
VALUES(1,'Jason Roy',3,54,0);
INSERT INTO player
VALUES(2,'Jonny Bairstow',3,10,0);
INSERT INTO player
VALUES(3,'Joe Root',3,51,0);
INSERT INTO player
VALUES(4,'Eoin Morgan',3,57,0);
INSERT INTO player
VALUES(5,'Ben Stokes',3,89,2);
INSERT INTO player
VALUES(6,'Moeen Ali',3,3,1);
INSERT INTO player
VALUES(7,'Chris Woakes',3,13,0);
INSERT INTO player
VALUES(8,'Liam Plunkett',3,9,2);
INSERT INTO player
VALUES(9,'Jofra Archer',3,7,3);
INSERT INTO player
VALUES(10,'Adil Rashid',3,0,1);
INSERT INTO player
VALUES(11,'Jos Buttler',3,18,0);
INSERT INTO player
VALUES(12,'Imran Tahir',2,0,2);
INSERT INTO player
VALUES(13,'Lungi Ngidi',2,6,3);
INSERT INTO player
VALUES(14,'Kagiso Rabada',2,11,2);
INSERT INTO player
VALUES(15,'Dwaine Pretorius',2,1,0);
INSERT INTO player
VALUES(16,'Andile Phehlukwayo',2,24,1);
INSERT INTO player
VALUES(17,'JP Duminy',2,8,0);
INSERT INTO player
VALUES(18,'Aiden Markam',2,11,0);
INSERT INTO player
VALUES(19,'Quinton de Kock',2,68,0);
INSERT INTO player
VALUES(20,'Hashima Amla',2,13,0);
INSERT INTO player
VALUES(21,'Faf du Plessis',2,5,0);
INSERT INTO player
VALUES(22,'Rassie Dussen',2,54,0);
INSERT INTO player
VALUES(23,'Virat Kohli',1,100,0);
INSERT INTO player
VALUES(24,'Rohit Sharma',1,56,0);
INSERT INTO player
VALUES(25,'Mahendra Dhoni',1,45,0);
INSERT INTO player
VALUES(26,'KL Rahul',1,67,0);
INSERT INTO player
VALUES(27,'Hardik Pandya',1,43,0);
INSERT INTO player
VALUES(28,'Ravindra Jadeja',1,23,1);
INSERT INTO player
VALUES(29,'Rishabh Pant',1,10,3);
INSERT INTO player
VALUES(30,'Mayank Agarwal',1,67,0);
INSERT INTO player
VALUES(31,'Mohammed Siraj',1,7,4);
INSERT INTO player
VALUES(32,'Kuldeep Yadav',1,3,2);
INSERT INTO player
VALUES(33,'Bhuvnesh Kumar',1,5,3);
INSERT INTO player
VALUES(34,'Dinesh Karthik',1,5,1);
INSERT INTO player
VALUES(35,'Chris Gayle',4,150,0);
INSERT INTO player
VALUES(36,'Carlos Brathwaite',4,87,1);
INSERT INTO player
VALUES(37,'Nichola Pooran',4,10,2);
INSERT INTO player
VALUES(38,'Sheldon Cottrell',4,3,2);
INSERT INTO player
VALUES(39,'Simron Hetmyer',4,9,4);
INSERT INTO player
VALUES(40,'Shannon Gabriel',4,1,3);
INSERT INTO player
VALUES(41,'Kemar Roach',4,0,2);
INSERT INTO player
VALUES(42,'Fabian Allen',4,130,0);
INSERT INTO player
VALUES(43,'Oshane Thomas',4,0,2);
INSERT INTO player
VALUES(44,'Evin Lewis',4,130,0);
INSERT INTO player
VALUES(45,'Babar Azam',5,101,0);
INSERT INTO player
VALUES(46,'Shaheen Afridi',5,10,4);
INSERT INTO player
VALUES(47,'Mohammed Amir',5,11,5);
INSERT INTO player
VALUES(48,'Sarfaraz Ahmed',5,15,3);
INSERT INTO player
VALUES(49,'Mohammed Hafeez',5,83,0);
INSERT INTO player
VALUES(50,'Abdullah Shafique',5,99,0);
INSERT INTO player
VALUES(51,'Imad Wasim',5,55,3);
INSERT INTO player
VALUES(52,'Wahab Riaz',5,19,9);
INSERT INTO player
VALUES(53,'Shadab Khan',5,74,11);
INSERT INTO player
VALUES(54,'Hasan Ali',5,37,6);
INSERT INTO player
VALUES(55,'Imam-ul-Haq',5,130,0);


select * from game;
select * from team;
select * from player;
-- //query 1 
SELECT name FROM player ORDER BY runs DESC LIMIT 5;
-- //query 2
SELECT name FROM player ORDER BY wickets DESC LIMIT 5;
-- //query 3
SELECT country,totalruns/noofmatches AS avg_score from team;
-- //query 4
UPDATE player SET runs=runs+10
WHERE teamID=(SELECT teamID AS LEAST_AVG FROM team
GROUP BY teamID order by totalruns/noofmatches
ASC limit 1);
-- //query 5
call highscore('SOUTH AFRICA');

