CREATE SCHEMA BLOOD_DONATION;

CREATE TABLE PERSON
	(SSN INT, name VARCHAR(50), age INT, phone_nb INT, blood_grp VARCHAR(3), address VARCHAR(100), primary key(ssn));
    
CREATE TABLE EMPLOYEE
	(eSSN INT, salary INT, shiftBegins TIME, shiftEnds TIME, superSSN int, Email VARCHAR(50), Password VARCHAR(25), UNIQUE(Email), primary key(eSSN), foreign key(eSSN) references PERSON(ssn) on delete cascade on update cascade, foreign key(superSSN) references EMPLOYEE(eSSN) on delete set null on update cascade); 

CREATE TABLE ROLE
	(eSSN INT, role VARCHAR(25), primary key(eSSN, role), foreign key(eSSN) references EMPLOYEE(eSSN) on delete cascade on update cascade);

CREATE TABLE PATIENT
	(pSSN INT, disease VARCHAR(25), emergencyLvl int, primary key(pSSN), foreign key(pSSN) references PERSON(SSN) on delete cascade on update cascade);
    
CREATE TABLE DONOR
	(dSSN int, primary key(dSSN), foreign key(dSSN) references PERSON(SSN) on delete cascade on update cascade);
    
CREATE TABLE BLOOD_BANK
	(bCode int, bName varchar(50), bLocation varchar(100), primary key(bCode));
    
CREATE TABLE BLOOD_STOCK
	(sCode int, quantity int DEFAULT 0, primary key(sCode));
    
CREATE TABLE BLOOD_UNIT 
	(uCode int, putInDate date, type varchar(3), sCode int, primary key(uCode), foreign key(sCode) references BLOOD_STOCK(sCode) on delete cascade on update cascade);
    
CREATE TABLE WORKS
	(eSSN int, bCode int, primary key(eSSN, bCode), foreign key(eSSN) references EMPLOYEE(eSSN) on delete cascade on update cascade, foreign key(bCode) references BLOOD_BANK(bCode) on delete cascade on update cascade);
    
CREATE TABLE GIVES
	(pSSN int, eSSN int, primary key(pSSN), foreign key(pSSN) references PATIENT(pSSN) on delete cascade on update cascade );
CREATE TABLE TAKES
	(dSSN int, uCode int, eSSN int, primary key(dSSN, uCode), foreign key(dSSN) references DONOR(dSSN) on delete cascade on update cascade, foreign key(uCode) references BLOOD_UNIT(uCode) on delete cascade on update cascade, foreign key(eSSN) references EMPLOYEE(eSSN) on delete cascade on update cascade);
    
CREATE TABLE CONTAINS
	(sCode int, bCode int, primary key(sCode), foreign key(sCode) references BLOOD_STOCK(sCode) on delete cascade on update cascade, foreign key(bCode) references BLOOD_BANK(bCode) on delete cascade on update cascade);



/* INSERT QUERY NO: 1 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
719864564, 'Meryl Moore', 38, 345372601, 'AB+', '21 Victoria Junction'
);

/* INSERT QUERY NO: 2 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
289931136, 'Leandra Carter', 28, 842218500, 'B+', '52 Moland Junction'
);

/* INSERT QUERY NO: 3 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
612392381, 'Cathrine Kemmer', 74, 359006173, 'AB+', '43154 Judy Crossing'
);

/* INSERT QUERY NO: 4 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
930735058, 'Tommie Witting', 48, 475055233, 'AB+', '0 Wayridge Circle'
);

/* INSERT QUERY NO: 5 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
715244303, 'Ahmed Schaefer', 89, 943427545, 'O+', '469 Waywood Park'
);

/* INSERT QUERY NO: 6 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
512102233, 'Magali Daniel', 83, 661221942, 'B-', '15565 Westridge Street'
);

/* INSERT QUERY NO: 7 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
457614703, 'Wiley Abernathy', 31, 561483366, 'O-', '5 Hagan Trail'
);

/* INSERT QUERY NO: 8 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
310672150, 'Leila Hermann', 12, 406549070, 'B-', '072 Beilfuss Place'
);

/* INSERT QUERY NO: 9 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
873888404, 'Lee Nikolaus', 22, 141175376, 'B+', '04129 Browning Pass'
);

/* INSERT QUERY NO: 10 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
660354682, 'Eloy King', 95, 440321488, 'A+', '98 Warrior Pass'
);

/* INSERT QUERY NO: 11 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
492172191, 'Britt Jewess', 7, 319716751, 'B-', '436 Ramsey Avenue'
);

/* INSERT QUERY NO: 12 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
983465195, 'Eliz Gutkowski', 75, 531136240, 'AB+', '675 Hoffman Point'
);

/* INSERT QUERY NO: 13 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
914493402, 'Jae Fay', 60, 338900544, 'AB+', '7804 Ridgeview Way'
);

/* INSERT QUERY NO: 14 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
984208013, 'Bob Bechtelar', 45, 760412119, 'O+', '990 Moland Alley'
);

/* INSERT QUERY NO: 15 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
388287820, 'Woodrow Mueller', 60, 850859426, 'AB+', '33748 Shopko Hill'
);

/* INSERT QUERY NO: 16 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
825172416, 'Wilber Haley', 59, 428413884, 'B-', '4 Dakota Street'
);

/* INSERT QUERY NO: 17 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
647800044, 'Sherwood Runolfsdottir', 72, 624349055, 'AB+', '6 Buhler Way'
);

/* INSERT QUERY NO: 18 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
631260728, 'Sun Weber', 33, 981348232, 'A-', '95865 Truax Hill'
);

/* INSERT QUERY NO: 19 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
119826631, 'Shiela Cole', 61, 702908538, 'AB-', '17 Oak Valley Pass'
);

/* INSERT QUERY NO: 20 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
808550212, 'Rob Fadel', 85, 662989035, 'AB-', '3 Utah Lane'
);

/* INSERT QUERY NO: 21 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
475261394, 'Sean Gleason', 23, 268757953, 'A-', '605 Kingsford Court'
);

/* INSERT QUERY NO: 22 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
359329466, 'Lesli Harvey', 50, 337813856, 'AB-', '2 Fieldstone Lane'
);

/* INSERT QUERY NO: 23 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
445728692, 'Jasper Fritsch', 92, 345638683, 'O-', '56760 Bultman Circle'
);

/* INSERT QUERY NO: 24 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
714781229, 'Porfirio Stehr', 2, 411355160, 'A-', '86 Rusk Park'
);

/* INSERT QUERY NO: 25 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
279291110, 'Alex Schimmel', 29, 932721694, 'A+', '5 North Terrace'
);

/* INSERT QUERY NO: 26 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
957895538, 'Shon Green', 67, 401923369, 'AB+', '95 Cardinal Crossing'
);

/* INSERT QUERY NO: 27 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
551382777, 'Farah Brekke', 45, 745412431, 'A-', '6225 Kings Terrace'
);

/* INSERT QUERY NO: 28 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
103872682, 'Leesa Johnston', 61, 869006852, 'O+', '54320 Stang Alley'
);

/* INSERT QUERY NO: 29 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
177315911, 'Brianna Ratke', 25, 649109875, 'O+', '343 Hovde Park'
);

/* INSERT QUERY NO: 30 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
191218411, 'Ervin Funk', 50, 280130820, 'AB+', '7 Sachs Way'
);

/* INSERT QUERY NO: 31 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
866970274, 'Genna Gutkowski', 15, 439683253, 'A+', '67577 Corscot Crossing'
);

/* INSERT QUERY NO: 32 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
573640603, 'Carol Connelly', 89, 826962150, 'B-', '3500 Pennsylvania Drive'
);

/* INSERT QUERY NO: 33 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
777774691, 'Chet Ortiz', 62, 403578093, 'A+', '95 Clarendon Point'
);

/* INSERT QUERY NO: 34 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
884664527, 'Sona Parisian', 4, 363823453, 'O-', '1585 Butterfield Point'
);

/* INSERT QUERY NO: 35 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
691122502, 'Meri Considine', 22, 589730312, 'AB+', '20 Bowman Junction'
);

/* INSERT QUERY NO: 36 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
425002608, 'Weldon Conn', 18, 176181841, 'AB-', '6517 Lakeland Court'
);

/* INSERT QUERY NO: 37 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
186782291, 'Herman Cummerata', 63, 213058173, 'B+', '936 Emmet Avenue'
);

/* INSERT QUERY NO: 38 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
124135489, 'Mamie Kertzmann', 29, 310320899, 'AB+', '58239 Marquette Way'
);

/* INSERT QUERY NO: 39 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
487134501, 'Leontine Hahn', 57, 655576975, 'AB-', '57526 Service Lane'
);

/* INSERT QUERY NO: 40 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
473906866, 'Tod Mitchell', 73, 110604085, 'AB-', '8825 Dixon Drive'
);

/* INSERT QUERY NO: 41 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
360224711, 'Alfonso Dooley', 41, 683573976, 'O+', '6870 Chinook Way'
);

/* INSERT QUERY NO: 42 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
994606592, 'Elliot Bechtelar', 27, 711204803, 'O+', '5 Shopko Junction'
);

/* INSERT QUERY NO: 43 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
770910840, 'Dewey Hessel', 4, 872310201, 'AB-', '4 International Drive'
);

/* INSERT QUERY NO: 44 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
335456678, 'Yoshiko Koepp', 21, 182144382, 'B+', '9250 Pleasure Plaza'
);

/* INSERT QUERY NO: 45 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
793952572, 'Margy Huel', 8, 860931891, 'AB+', '4 Summit Junction'
);

/* INSERT QUERY NO: 46 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
489363943, 'Dominic Green', 73, 453360745, 'O-', '5 Rigney Crossing'
);

/* INSERT QUERY NO: 47 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
121696724, 'Lawrence Weissnat', 57, 956685361, 'O+', '94706 Corben Road'
);

/* INSERT QUERY NO: 48 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
154886895, 'Jasper Aimonetti', 76, 269254447, 'O-', '8 Monument Plaza'
);

/* INSERT QUERY NO: 49 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
938104487, 'Lilliana Harber', 71, 856515352, 'AB-', '26349 Linden Trail'
);

/* INSERT QUERY NO: 50 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
535157826, 'Kimberli Monahan', 3, 982936021, 'B-', '1 Troy Circle'
);

/* INSERT QUERY NO: 51 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
415461433, 'Florencio O\'Hara', 65, 541104961, 'AB-', '16 Service Avenue'
);

/* INSERT QUERY NO: 52 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
464544418, 'Fredric Bartoletti', 74, 686258138, 'B+', '05008 Cody Point'
);

/* INSERT QUERY NO: 53 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
672033550, 'Jackqueline Dickens', 36, 181664843, 'AB+', '37438 Hermina Junction'
);

/* INSERT QUERY NO: 54 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
429725355, 'Aurora Franecki', 88, 816250759, 'AB-', '08 Dovetail Court'
);

/* INSERT QUERY NO: 55 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
705858701, 'Russel Dickinson', 55, 958382577, 'A+', '731 Michigan Place'
);

/* INSERT QUERY NO: 56 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
621335778, 'Erasmo Huel', 82, 701292757, 'O+', '10 Autumn Leaf Crossing'
);

/* INSERT QUERY NO: 57 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
575164400, 'Kasi Schmidt', 90, 795397910, 'AB-', '180 Sycamore Street'
);

/* INSERT QUERY NO: 58 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
940795975, 'Tomeka McDermott', 3, 899966005, 'O+', '16 Golden Leaf Park'
);

/* INSERT QUERY NO: 59 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
601013900, 'Beckie Feil', 15, 289819849, 'AB+', '07 Oxford Road'
);

/* INSERT QUERY NO: 60 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
730109764, 'Vincenzo Mraz', 62, 213681746, 'AB+', '4 Springs Trail'
);

/* INSERT QUERY NO: 61 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
371393640, 'Sharron Johnston', 22, 440439289, 'AB+', '80487 Donald Crossing'
);

/* INSERT QUERY NO: 62 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
140874616, 'Wava Frami', 35, 732300829, 'AB-', '8835 Amoth Terrace'
);

/* INSERT QUERY NO: 63 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
459184233, 'Sue Wolf', 94, 781573029, 'AB-', '84230 Little Fleur Way'
);

/* INSERT QUERY NO: 64 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
866113252, 'Wade Ernser', 64, 828610649, 'AB+', '32349 Sutherland Park'
);

/* INSERT QUERY NO: 65 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
126972984, 'Nobuko Stracke', 14, 308454763, 'B+', '386 Dwight Place'
);

/* INSERT QUERY NO: 66 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
993412112, 'Eugene Hermann', 13, 572622430, 'O+', '93 Nova Crossing'
);

/* INSERT QUERY NO: 67 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
925745525, 'Carson Pollich', 40, 664141125, 'O+', '9809 Stone Corner Lane'
);

/* INSERT QUERY NO: 68 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
182081400, 'Hannelore Frami', 58, 390149500, 'B+', '384 Duke Hill'
);

/* INSERT QUERY NO: 69 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
117394836, 'Marla Hansen', 47, 966045068, 'A-', '561 Shoshone Way'
);

/* INSERT QUERY NO: 70 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
501394739, 'Breana Becker', 49, 632614767, 'A-', '954 Nova Place'
);

/* INSERT QUERY NO: 71 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
340408620, 'Kelley Reichert', 77, 764759503, 'B-', '7350 Dakota Junction'
);

/* INSERT QUERY NO: 72 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
430780731, 'Eve Conroy', 12, 428147652, 'O+', '60 Russell Trail'
);

/* INSERT QUERY NO: 73 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
623872532, 'Dick Purdy', 14, 842782916, 'AB-', '9 Scott Junction'
);

/* INSERT QUERY NO: 74 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
185038326, 'Rodolfo Bechtelar', 55, 516155805, 'AB-', '604 Miller Center'
);

/* INSERT QUERY NO: 75 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
491831873, 'Annice Cruickshank', 15, 511907980, 'AB-', '33 Colorado Center'
);

/* INSERT QUERY NO: 76 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
698293213, 'Carmelo McCullough', 54, 340048735, 'O-', '129 Stang Parkway'
);

/* INSERT QUERY NO: 77 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
375143626, 'Loyd Ullrich', 96, 849911197, 'O-', '083 Grim Avenue'
);

/* INSERT QUERY NO: 78 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
638836364, 'Katy Thompson', 49, 849944076, 'B-', '07742 Cordelia Point'
);

/* INSERT QUERY NO: 79 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
918337884, 'Emmanuel Graham', 93, 325090320, 'AB-', '84475 Morrow Lane'
);

/* INSERT QUERY NO: 80 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
842471721, 'Sanford Borer', 73, 257261603, 'A+', '58 Gerald Court'
);

/* INSERT QUERY NO: 81 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
356738982, 'Evonne Rohan', 58, 714472048, 'AB-', '2 Petterle Junction'
);

/* INSERT QUERY NO: 82 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
194742711, 'Bernardo Bartell', 61, 959625787, 'AB+', '8241 Gulseth Road'
);

/* INSERT QUERY NO: 83 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
211364019, 'Miquel Greenfelder', 14, 813806340, 'AB-', '1919 Hoard Way'
);

/* INSERT QUERY NO: 84 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
963810136, 'Liane Schumm', 12, 246719967, 'AB+', '47011 Blaine Center'
);

/* INSERT QUERY NO: 85 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
919309389, 'Damian Grant', 30, 396952530, 'AB+', '79 Starling Court'
);

/* INSERT QUERY NO: 86 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
669865712, 'Lucienne Fay', 41, 877254066, 'AB+', '01 Manufacturers Terrace'
);

/* INSERT QUERY NO: 87 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
922900770, 'Jose Davis', 71, 952096049, 'O-', '2496 West Parkway'
);

/* INSERT QUERY NO: 88 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
287723150, 'Nikole Bosco', 5, 580540933, 'O-', '39293 Hansons Crossing'
);

/* INSERT QUERY NO: 89 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
723280917, 'Michelle Witting', 34, 787426175, 'AB-', '284 Darwin Court'
);

/* INSERT QUERY NO: 90 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
470919590, 'Len Jaskolski', 48, 855285661, 'AB+', '4 Ronald Regan Crossing'
);

/* INSERT QUERY NO: 91 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
928205785, 'Eli Cormier', 22, 135705212, 'AB+', '52 Ridgeway Trail'
);

/* INSERT QUERY NO: 92 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
653392014, 'Myrl Purdy', 26, 399371193, 'B-', '20 Acker Road'
);

/* INSERT QUERY NO: 93 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
951629806, 'Rubin Kunze', 82, 632381631, 'AB+', '9028 Sloan Pass'
);

/* INSERT QUERY NO: 94 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
918710235, 'Genny Konopelski', 62, 643422245, 'A+', '472 Lindbergh Way'
);

/* INSERT QUERY NO: 95 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
990766229, 'Ceola McGlynn', 98, 532510117, 'AB+', '3719 New Castle Trail'
);

/* INSERT QUERY NO: 96 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
230214203, 'Lester Schroeder', 65, 582801633, 'AB-', '862 Colorado Road'
);

/* INSERT QUERY NO: 97 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
530814872, 'Merle Bailey', 6, 291738215, 'AB-', '06301 Reinke Road'
);

/* INSERT QUERY NO: 98 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
899871823, 'Cordell Hermann', 80, 517980700, 'AB+', '72579 Mifflin Crossing'
);

/* INSERT QUERY NO: 99 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
946973645, 'Pearline Kertzmann', 88, 261022057, 'O-', '02857 Leroy Crossing'
);

/* INSERT QUERY NO: 100 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
903691734, 'Alma Russel', 40, 387137599, 'AB-', '2603 Westridge Junction'
);

/* INSERT QUERY NO: 101 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
766416145, 'Gilberto Lehner', 82, 362339517, 'A+', '27511 Sherman Crossing'
);

/* INSERT QUERY NO: 102 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
804528239, 'Lenard Champlin', 5, 713356893, 'A-', '191 Sugar Point'
);

/* INSERT QUERY NO: 103 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
512843118, 'Kristle Kris', 88, 350205113, 'A-', '07884 Arkansas Crossing'
);

/* INSERT QUERY NO: 104 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
774957501, 'Astrid Grady', 10, 195808708, 'AB+', '1 Aberg Place'
);

/* INSERT QUERY NO: 105 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
495694915, 'Willie Durgan', 56, 406747662, 'AB+', '0485 Stang Plaza'
);

/* INSERT QUERY NO: 106 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
171593598, 'Sheron Emmerich', 9, 799370711, 'A+', '29593 Shopko Circle'
);

/* INSERT QUERY NO: 107 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
122326525, 'Chet Wilderman', 25, 835828892, 'O-', '2 Village Point'
);

/* INSERT QUERY NO: 108 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
832951625, 'Margo Reichert', 85, 805578428, 'AB+', '7 Prairie Rose Road'
);

/* INSERT QUERY NO: 109 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
322799860, 'Freda Greenholt', 61, 727435486, 'AB+', '03 Stephen Circle'
);

/* INSERT QUERY NO: 110 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
266856407, 'Corazon Weber', 86, 857905487, 'AB+', '41 Westerfield Lane'
);

/* INSERT QUERY NO: 111 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
312948516, 'Ivelisse Goldner', 1, 439688481, 'AB-', '75 Merchant Alley'
);

/* INSERT QUERY NO: 112 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
308823827, 'Reuben Volkman', 9, 331002794, 'A+', '41 Rieder Crossing'
);

/* INSERT QUERY NO: 113 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
743888109, 'Babette Howe', 45, 206858537, 'AB+', '5 Welch Trail'
);

/* INSERT QUERY NO: 114 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
817143562, 'Berenice Towne', 21, 326611479, 'AB-', '9 Derek Circle'
);

/* INSERT QUERY NO: 115 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
629790842, 'Florentino Beier', 45, 218360179, 'B+', '04 Melvin Street'
);

/* INSERT QUERY NO: 116 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
693228371, 'Nikia Hand', 89, 105785608, 'AB+', '65271 Burrows Park'
);

/* INSERT QUERY NO: 117 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
616144403, 'Donnell Beahan', 58, 597973492, 'AB+', '8359 Golf View Hill'
);

/* INSERT QUERY NO: 118 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
126761321, 'Denis Jakubowski', 27, 101880773, 'O+', '75539 Johnson Junction'
);

/* INSERT QUERY NO: 119 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
397684749, 'Luvenia Considine', 93, 352616678, 'O+', '422 Drewry Terrace'
);

/* INSERT QUERY NO: 120 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
484825287, 'Ellis Little', 53, 859336124, 'B+', '11982 Mccormick Junction'
);

/* INSERT QUERY NO: 121 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
523757677, 'Kia Balistreri', 89, 830456732, 'AB+', '41496 Corry Avenue'
);

/* INSERT QUERY NO: 122 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
237429652, 'Tod Olson', 21, 643792837, 'AB-', '83 Hayes Trail'
);

/* INSERT QUERY NO: 123 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
390610069, 'Marva Kerluke', 54, 759558125, 'O-', '54491 Oak Parkway'
);

/* INSERT QUERY NO: 124 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
715909011, 'Demetria Franecki', 40, 443244527, 'A-', '84656 Fairview Parkway'
);

/* INSERT QUERY NO: 125 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
607629134, 'Laquanda Schultz', 60, 601480741, 'AB+', '0 Sunbrook Point'
);

/* INSERT QUERY NO: 126 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
741538843, 'Twana Aufderhar', 7, 520175277, 'AB+', '09 Parkside Trail'
);

/* INSERT QUERY NO: 127 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
509613980, 'Dexter Block', 54, 432229669, 'A+', '73 New Castle Avenue'
);

/* INSERT QUERY NO: 128 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
153036692, 'Luciano Emmerich', 22, 399924044, 'AB-', '1 Ryan Crossing'
);

/* INSERT QUERY NO: 129 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
701361481, 'Yan Littel', 92, 850038395, 'O-', '1638 Kings Center'
);

/* INSERT QUERY NO: 130 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
433897691, 'Augustine Schamberger', 20, 150175166, 'AB-', '22 Westport Road'
);

/* INSERT QUERY NO: 131 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
998186931, 'Emmanuel McKenzie', 4, 549402151, 'AB-', '520 Briar Crest Point'
);

/* INSERT QUERY NO: 132 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
175231134, 'Berneice Yost', 45, 915051700, 'O-', '07 Harper Crossing'
);

/* INSERT QUERY NO: 133 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
509134177, 'Maura Huel', 57, 430360777, 'AB-', '6 Village Green Court'
);

/* INSERT QUERY NO: 134 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
282228258, 'Ray Carter', 9, 716220562, 'AB+', '93173 Mockingbird Plaza'
);

/* INSERT QUERY NO: 135 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
461086395, 'Brain Schamberger', 98, 824238466, 'AB-', '23 Pond Avenue'
);

/* INSERT QUERY NO: 136 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
415547870, 'Boyce Leannon', 93, 854598973, 'B+', '85 Cordelia Park'
);

/* INSERT QUERY NO: 137 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
546991060, 'Numbers Muller', 20, 413932377, 'AB+', '8 Dakota Pass'
);

/* INSERT QUERY NO: 138 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
189407024, 'Lizabeth Kilback', 93, 630897119, 'O+', '17 Warrior Avenue'
);

/* INSERT QUERY NO: 139 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
684791763, 'Jamie Mayert', 17, 767786077, 'B+', '58 Montana Terrace'
);

/* INSERT QUERY NO: 140 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
646633407, 'Gregory Von', 57, 227271747, 'B-', '77162 Arizona Lane'
);

/* INSERT QUERY NO: 141 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
150056392, 'Tanner Kiehn', 86, 876747275, 'B-', '020 Prairie Rose Terrace'
);

/* INSERT QUERY NO: 142 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
344378609, 'Jacques Flatley', 10, 186429652, 'O+', '89 Autumn Leaf Junction'
);

/* INSERT QUERY NO: 143 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
944336070, 'Buddy Ortiz', 13, 881278249, 'AB+', '3 Butterfield Hill'
);

/* INSERT QUERY NO: 144 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
460441481, 'Christina Wolff', 4, 770355568, 'AB-', '7827 Welch Junction'
);

/* INSERT QUERY NO: 145 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
292741371, 'Emilee Beahan', 20, 592661241, 'O-', '90488 Bonner Park'
);

/* INSERT QUERY NO: 146 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
521126071, 'Lionel Gaylord', 33, 942094657, 'AB+', '614 Rieder Lane'
);

/* INSERT QUERY NO: 147 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
826274730, 'Lionel Hand', 64, 250731846, 'O+', '82325 Dorton Way'
);

/* INSERT QUERY NO: 148 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
830940458, 'Jean Ryan', 22, 446965031, 'AB-', '08 Mosinee Center'
);

/* INSERT QUERY NO: 149 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
369207259, 'Elease Hahn', 69, 167303437, 'AB+', '4 Stoughton Plaza'
);

/* INSERT QUERY NO: 150 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
873307640, 'Roxana Harber', 84, 558957060, 'AB+', '5430 Becker Street'
);

/* INSERT QUERY NO: 151 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
805051951, 'Stacie O\'Keefe', 82, 225475434, 'O+', '6924 Cordelia Park'
);

/* INSERT QUERY NO: 152 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
152226271, 'Lacy Orn', 8, 129566489, 'A+', '5171 Dorton Park'
);

/* INSERT QUERY NO: 153 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
192691572, 'Rocco Ruecker', 98, 121560626, 'O-', '228 Hoffman Avenue'
);

/* INSERT QUERY NO: 154 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
381926819, 'Isaiah Gerhold', 50, 946556786, 'AB+', '2376 Calypso Avenue'
);

/* INSERT QUERY NO: 155 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
701913313, 'Rebbeca Cartwright', 19, 516471707, 'A+', '243 Iowa Crossing'
);

/* INSERT QUERY NO: 156 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
849409096, 'Donovan Smitham', 57, 284508145, 'O+', '6013 Forest Dale Plaza'
);

/* INSERT QUERY NO: 157 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
172081420, 'Filiberto Effertz', 62, 997183165, 'AB+', '12 Graedel Pass'
);

/* INSERT QUERY NO: 158 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
173833685, 'Roderick Sawayn', 72, 333148835, 'O-', '556 Norway Maple Plaza'
);

/* INSERT QUERY NO: 159 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
399553911, 'Dollie Gutmann', 20, 621408684, 'AB-', '33254 Mockingbird Center'
);

/* INSERT QUERY NO: 160 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
700890939, 'Freddy Zemlak', 78, 595522134, 'AB-', '0 Village Parkway'
);

/* INSERT QUERY NO: 161 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
891122253, 'Morton Watsica', 9, 395905368, 'B+', '31 Westridge Drive'
);

/* INSERT QUERY NO: 162 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
468153715, 'Derrick Fadel', 36, 661854505, 'AB-', '05 Parkside Center'
);

/* INSERT QUERY NO: 163 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
795637090, 'Reinaldo McCullough', 51, 300360526, 'AB+', '25 Green Center'
);

/* INSERT QUERY NO: 164 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
162989426, 'Ali Russel', 31, 638960120, 'B-', '72 Summer Ridge Way'
);

/* INSERT QUERY NO: 165 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
806368153, 'Tatiana Fritsch', 37, 983286166, 'B-', '90 Mifflin Street'
);

/* INSERT QUERY NO: 166 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
873253901, 'Eddy Parisian', 58, 498203319, 'O+', '61046 Hallows Junction'
);

/* INSERT QUERY NO: 167 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
512706648, 'Saul Dibbert', 95, 412979064, 'AB+', '740 Bluejay Road'
);

/* INSERT QUERY NO: 168 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
208979838, 'Adam Bayer', 59, 774202953, 'O-', '5 Westend Lane'
);

/* INSERT QUERY NO: 169 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
476660373, 'Louann Hilpert', 26, 865593123, 'AB-', '9 Londonderry Plaza'
);

/* INSERT QUERY NO: 170 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
509908909, 'Danial Sauer', 84, 799005701, 'O-', '05 Sunnyside Crossing'
);

/* INSERT QUERY NO: 171 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
903222492, 'Ramonita Koss', 25, 385597630, 'AB+', '1 Rowland Parkway'
);

/* INSERT QUERY NO: 172 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
997054860, 'Bobby Crona', 3, 688660916, 'O+', '45128 Bluestem Junction'
);

/* INSERT QUERY NO: 173 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
193893976, 'Wenona Sanford', 23, 400199934, 'B-', '22 Buhler Hill'
);

/* INSERT QUERY NO: 174 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
439160786, 'Malorie Rippin', 42, 527283095, 'O+', '3 Myrtle Pass'
);

/* INSERT QUERY NO: 175 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
304441921, 'Booker Grimes', 76, 196378813, 'A-', '4034 Forest Dale Hill'
);

/* INSERT QUERY NO: 176 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
165314581, 'Burt Daugherty', 13, 579399056, 'O+', '7 Alpine Park'
);

/* INSERT QUERY NO: 177 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
201937784, 'Denis Lubowitz', 33, 332028877, 'AB+', '09151 Amoth Place'
);

/* INSERT QUERY NO: 178 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
524493474, 'Hong Harber', 36, 884305768, 'O-', '4 Carberry Lane'
);

/* INSERT QUERY NO: 179 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
807290486, 'Sammy Flatley', 20, 729587117, 'AB-', '48360 Mandrake Drive'
);

/* INSERT QUERY NO: 180 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
267987096, 'Roma O\'Kon', 27, 795864542, 'A-', '4 Red Cloud Junction'
);

/* INSERT QUERY NO: 181 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
534891938, 'Prince Ortiz', 26, 786741685, 'AB+', '57577 Talmadge Junction'
);

/* INSERT QUERY NO: 182 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
690320218, 'Victor Hettinger', 15, 820595671, 'AB-', '26477 Ludington Court'
);

/* INSERT QUERY NO: 183 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
566967269, 'Omar Stehr', 47, 476109626, 'AB-', '53 Dexter Parkway'
);

/* INSERT QUERY NO: 184 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
489436862, 'Mahalia Cummings', 98, 636241408, 'AB-', '6486 Ramsey Point'
);

/* INSERT QUERY NO: 185 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
764789959, 'Winter Barton', 83, 278155687, 'B+', '1211 Crownhardt Circle'
);

/* INSERT QUERY NO: 186 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
193023786, 'Lea Mohr', 72, 797367785, 'O-', '5 Hollow Ridge Street'
);

/* INSERT QUERY NO: 187 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
217030855, 'Bud Bahringer', 31, 633563092, 'AB+', '1124 Dunning Road'
);

/* INSERT QUERY NO: 188 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
627557892, 'Bong Willms', 81, 290667501, 'AB+', '20752 Mallory Circle'
);

/* INSERT QUERY NO: 189 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
393341976, 'an Schimmel', 35, 651901746, 'B-', '749 Norway Maple Avenue'
);

/* INSERT QUERY NO: 190 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
536730685, 'Sharleen Bartoletti', 42, 731079509, 'AB-', '155 Monument Trail'
);

/* INSERT QUERY NO: 191 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
298610512, 'Janice Emmerich', 98, 554264065, 'B+', '09158 Maple Wood Hill'
);

/* INSERT QUERY NO: 192 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
345063732, 'Dane Berge', 32, 947202885, 'AB-', '1950 Shasta Parkway'
);

/* INSERT QUERY NO: 193 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
853446046, 'Dorris Lesch', 24, 868378046, 'B-', '41 Division Avenue'
);

/* INSERT QUERY NO: 194 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
788126890, 'Walker Green', 81, 965044750, 'AB-', '9518 Manley Road'
);

/* INSERT QUERY NO: 195 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
356411576, 'Nannette Raynor', 71, 644078657, 'B+', '03 Cody Hill'
);

/* INSERT QUERY NO: 196 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
974599335, 'Steve Fahey', 54, 783560649, 'AB-', '7 Almo Crossing'
);

/* INSERT QUERY NO: 197 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
544885031, 'Wesley Maggio', 60, 600977139, 'O+', '242 Claremont Junction'
);

/* INSERT QUERY NO: 198 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
853375353, 'Norman Wehner', 86, 283283030, 'O+', '05 Pepper Wood Park'
);

/* INSERT QUERY NO: 199 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
151246203, 'Ross Zulauf', 41, 660172548, 'AB+', '7620 Forest Run Court'
);

/* INSERT QUERY NO: 200 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
793974852, 'Damon Leannon', 26, 490502690, 'A-', '01 Sutherland Park'
);

/* INSERT QUERY NO: 201 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
555912165, 'Wilton Lebsack', 10, 693240009, 'A+', '46 Hovde Circle'
);

/* INSERT QUERY NO: 202 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
287814528, 'Liz Hegmann', 95, 982963121, 'AB+', '85759 Dryden Junction'
);

/* INSERT QUERY NO: 203 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
238829850, 'Leonel Runolfsdottir', 88, 791951345, 'AB-', '203 Annamark Circle'
);

/* INSERT QUERY NO: 204 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
952202682, 'Sherman Kovacek', 100, 669856243, 'AB+', '0704 Del Sol Crossing'
);

/* INSERT QUERY NO: 205 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
198956260, 'Ike Hilll', 76, 944980236, 'AB-', '4 Oak Place'
);

/* INSERT QUERY NO: 206 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
118486919, 'Augustina Predovic', 81, 147075220, 'A-', '216 Stoughton Alley'
);

/* INSERT QUERY NO: 207 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
404411873, 'Maryjane Johns', 82, 274385535, 'O+', '42 Grim Trail'
);

/* INSERT QUERY NO: 208 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
368570275, 'Omar Johns', 47, 783910057, 'AB-', '367 Harper Lane'
);

/* INSERT QUERY NO: 209 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
300578452, 'September Lynch', 57, 878819047, 'B+', '9 Di Loreto Hill'
);

/* INSERT QUERY NO: 210 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
123377591, 'Ali Hand', 81, 185563179, 'AB+', '40774 Donald Alley'
);

/* INSERT QUERY NO: 211 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
709290657, 'Terra Borer', 6, 618391042, 'AB+', '3427 Lien Park'
);

/* INSERT QUERY NO: 212 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
800926768, 'Twanda Abbott', 5, 569250361, 'AB+', '710 Meadow Ridge Center'
);

/* INSERT QUERY NO: 213 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
313981003, 'Jeanene Mosciski', 13, 817981844, 'O-', '60073 Westridge Trail'
);

/* INSERT QUERY NO: 214 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
364238656, 'Alexander Keeling', 50, 345138349, 'A-', '37060 Arrowood Avenue'
);

/* INSERT QUERY NO: 215 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
319051307, 'Kathe Nicolas', 99, 900897598, 'O-', '25358 Buena Vista Road'
);

/* INSERT QUERY NO: 216 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
670716622, 'Hong Borer', 13, 544092493, 'AB+', '74509 4th Parkway'
);

/* INSERT QUERY NO: 217 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
763711964, 'Shane Stoltenberg', 34, 353215283, 'AB+', '45642 Grayhawk Trail'
);

/* INSERT QUERY NO: 218 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
614835560, 'Clare Gleichner', 81, 334087873, 'AB+', '8 Londonderry Junction'
);

/* INSERT QUERY NO: 219 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
830985128, 'Oren Muller', 88, 535419211, 'O+', '57319 Melby Alley'
);

/* INSERT QUERY NO: 220 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
788443614, 'King Reichert', 51, 792058423, 'AB+', '69 Pearson Junction'
);

/* INSERT QUERY NO: 221 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
309402065, 'Darell Greenfelder', 98, 149013249, 'O+', '34174 Monument Hill'
);

/* INSERT QUERY NO: 222 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
226355255, 'Evelyn Jaskolski', 82, 577005215, 'AB+', '14 Carey Terrace'
);

/* INSERT QUERY NO: 223 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
211439534, 'Renay Schultz', 1, 152066862, 'AB-', '64159 Kim Hill'
);

/* INSERT QUERY NO: 224 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
215815075, 'Jamee Stracke', 22, 825370836, 'B-', '794 Hoard Terrace'
);

/* INSERT QUERY NO: 225 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
984257874, 'Jan Douglas', 24, 461799598, 'AB-', '5 Ludington Alley'
);

/* INSERT QUERY NO: 226 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
135006949, 'Rudolf Mayer', 31, 330693531, 'A+', '899 Forest Run Lane'
);

/* INSERT QUERY NO: 227 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
321816742, 'Gladis Toy', 4, 486620349, 'B-', '93995 Blaine Court'
);

/* INSERT QUERY NO: 228 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
366000161, 'Laquanda Dibbert', 45, 185391674, 'A+', '25510 Claremont Street'
);

/* INSERT QUERY NO: 229 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
297672267, 'Cole Gaylord', 12, 634669782, 'O-', '1 Bluejay Park'
);

/* INSERT QUERY NO: 230 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
867662841, 'Iliana Hagenes', 30, 513968278, 'AB-', '0548 Arkansas Trail'
);

/* INSERT QUERY NO: 231 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
213526644, 'Rosario Kilback', 15, 454888573, 'A+', '07 Sunfield Court'
);

/* INSERT QUERY NO: 232 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
404455602, 'Aisha Nienow', 10, 289182623, 'O-', '85087 Clyde Gallagher Park'
);

/* INSERT QUERY NO: 233 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
538397237, 'Freda Jacobi', 29, 966514734, 'O+', '8 Spenser Street'
);

/* INSERT QUERY NO: 234 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
933912911, 'Kraig Kemmer', 16, 571120464, 'B+', '728 Meadow Ridge Plaza'
);

/* INSERT QUERY NO: 235 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
714689951, 'Toni Koch', 96, 472280381, 'AB-', '1 Fulton Way'
);

/* INSERT QUERY NO: 236 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
279896072, 'Charleen Bailey', 32, 656218439, 'A-', '17729 Prairie Rose Parkway'
);

/* INSERT QUERY NO: 237 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
436213770, 'Keith Kihn', 8, 570121568, 'AB+', '042 Glacier Hill Drive'
);

/* INSERT QUERY NO: 238 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
296763625, 'Maurice Roob', 8, 173377315, 'B+', '6659 Buena Vista Park'
);

/* INSERT QUERY NO: 239 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
276131342, 'Walter Runte', 81, 520492069, 'AB+', '3984 Arapahoe Pass'
);

/* INSERT QUERY NO: 240 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
988362047, 'Britta Hyatt', 23, 578237970, 'AB-', '802 Badeau Point'
);

/* INSERT QUERY NO: 241 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
985948733, 'Reanna Gislason', 45, 659017785, 'AB+', '52792 Stone Corner Trail'
);

/* INSERT QUERY NO: 242 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
502758935, 'Aura Connelly', 62, 135573038, 'B+', '6518 Eastwood Street'
);

/* INSERT QUERY NO: 243 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
711675860, 'Fannie Robel', 25, 963298172, 'O+', '1173 Hoepker Place'
);

/* INSERT QUERY NO: 244 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
127138773, 'Efren Jakubowski', 24, 771150425, 'AB+', '4 Sherman Terrace'
);

/* INSERT QUERY NO: 245 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
594016924, 'Darrick Stroman', 70, 896510332, 'AB-', '46 Jenifer Hill'
);

/* INSERT QUERY NO: 246 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
732062425, 'Lacey Wehner', 55, 535101752, 'O+', '7356 Moose Alley'
);

/* INSERT QUERY NO: 247 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
920794449, 'Hal Pollich', 48, 930253065, 'O+', '496 Hayes Avenue'
);

/* INSERT QUERY NO: 248 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
760009545, 'Nickolas Lehner', 55, 355128500, 'B+', '249 Fairfield Junction'
);

/* INSERT QUERY NO: 249 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
299232473, 'Royce Goldner', 12, 416558769, 'B+', '37128 Burrows Place'
);

/* INSERT QUERY NO: 250 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
765758519, 'Alexander Littel', 37, 363678891, 'O+', '378 Mallory Point'
);

/* INSERT QUERY NO: 251 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
435117599, 'Jess Swaniawski', 24, 123579384, 'AB-', '0991 Comanche Circle'
);

/* INSERT QUERY NO: 252 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
592336730, 'Stephania Cronin', 69, 338317265, 'B+', '05 Gina Place'
);

/* INSERT QUERY NO: 253 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
285281032, 'Morton Sawayn', 32, 718021859, 'A-', '5 Pepper Wood Street'
);

/* INSERT QUERY NO: 254 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
645639451, 'Machelle Kshlerin', 13, 714070026, 'O+', '54897 Dayton Hill'
);

/* INSERT QUERY NO: 255 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
486268126, 'Le Hegmann', 13, 993357189, 'AB-', '8 Algoma Road'
);

/* INSERT QUERY NO: 256 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
386368152, 'Denita Moen', 71, 119628273, 'AB+', '5 Hauk Hill'
);

/* INSERT QUERY NO: 257 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
715821256, 'Terry Wisozk', 24, 600245479, 'AB+', '9 David Drive'
);

/* INSERT QUERY NO: 258 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
719566446, 'Margret Spinka', 65, 382644410, 'AB+', '6238 8th Road'
);

/* INSERT QUERY NO: 259 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
243764793, 'Lucius McGlynn', 14, 575444885, 'B-', '1692 Ronald Regan Place'
);

/* INSERT QUERY NO: 260 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
523266961, 'Ron Paucek', 80, 170022059, 'AB+', '8954 7th Place'
);

/* INSERT QUERY NO: 261 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
901462702, 'Claude Kemmer', 1, 979409695, 'AB-', '1 Oneill Junction'
);

/* INSERT QUERY NO: 262 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
696032705, 'Willie Daniel', 65, 963700073, 'O-', '2152 Ridgeview Street'
);

/* INSERT QUERY NO: 263 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
434408554, 'Byron Metz', 7, 961828680, 'A-', '91 Northwestern Park'
);

/* INSERT QUERY NO: 264 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
247539709, 'Vicente Becker', 68, 872162983, 'AB+', '259 1st Avenue'
);

/* INSERT QUERY NO: 265 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
133727354, 'Wilson Lesch', 45, 312665328, 'O-', '1 Ronald Regan Junction'
);

/* INSERT QUERY NO: 266 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
956250588, 'Antonio VonRueden', 22, 534459839, 'A-', '914 Browning Park'
);

/* INSERT QUERY NO: 267 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
972943007, 'Dianna Swaniawski', 34, 652680528, 'O-', '204 Wayridge Way'
);

/* INSERT QUERY NO: 268 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
183281957, 'Neda Leannon', 45, 361470505, 'O+', '2 Granby Crossing'
);

/* INSERT QUERY NO: 269 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
997109381, 'Bryon Rolfson', 76, 916734892, 'AB-', '6 Carpenter Lane'
);

/* INSERT QUERY NO: 270 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
389569695, 'Hugo Stokes', 35, 855759380, 'B+', '800 Eastlawn Street'
);

/* INSERT QUERY NO: 271 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
638149534, 'Vernice Bernhard', 80, 998408365, 'AB+', '870 Schmedeman Court'
);

/* INSERT QUERY NO: 272 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
424409717, 'Lynnette Maggio', 51, 397241753, 'AB-', '75326 Anderson Avenue'
);

/* INSERT QUERY NO: 273 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
756917697, 'Johnathan Okuneva', 5, 190515729, 'AB+', '362 Namekagon Pass'
);

/* INSERT QUERY NO: 274 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
800007290, 'Carmina Jerde', 9, 950633816, 'AB+', '61 Loftsgordon Circle'
);

/* INSERT QUERY NO: 275 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
286533098, 'Levi Terry', 47, 568508531, 'A-', '278 Sycamore Drive'
);

/* INSERT QUERY NO: 276 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
997154011, 'Krissy Mante', 12, 174877767, 'AB+', '7495 Clemons Circle'
);

/* INSERT QUERY NO: 277 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
938536757, 'Seth Schaefer', 35, 531377777, 'O+', '0 Milwaukee Hill'
);

/* INSERT QUERY NO: 278 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
595866004, 'Meaghan Murray', 25, 649765839, 'O+', '6 Boyd Trail'
);

/* INSERT QUERY NO: 279 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
556703117, 'Clemente Renner', 14, 504062024, 'AB+', '6861 Porter Avenue'
);

/* INSERT QUERY NO: 280 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
634709776, 'Jed Rowe', 76, 668329005, 'AB+', '702 Daystar Avenue'
);

/* INSERT QUERY NO: 281 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
701580588, 'Casey Weimann', 3, 633205134, 'AB+', '0679 Mallard Trail'
);

/* INSERT QUERY NO: 282 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
256568833, 'Carla West', 90, 604213845, 'AB-', '3 Bay Pass'
);

/* INSERT QUERY NO: 283 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
896255500, 'Keith Strosin', 91, 460849831, 'AB-', '47281 Sunfield Street'
);

/* INSERT QUERY NO: 284 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
968666024, 'Augustine Koelpin', 30, 350539411, 'B+', '5 Mesta Hill'
);

/* INSERT QUERY NO: 285 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
876801036, 'Thao Auer', 47, 335666969, 'A+', '95871 1st Terrace'
);

/* INSERT QUERY NO: 286 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
315173157, 'Lera Reilly', 36, 361060920, 'AB+', '98 Nobel Circle'
);

/* INSERT QUERY NO: 287 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
825690718, 'Jason Graham', 85, 328100106, 'O-', '5 Duke Alley'
);

/* INSERT QUERY NO: 288 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
461748297, 'Frankie Christiansen', 2, 467467458, 'AB-', '858 Gulseth Parkway'
);

/* INSERT QUERY NO: 289 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
876613887, 'Rosa Stiedemann', 100, 331075557, 'AB-', '672 Hauk Terrace'
);

/* INSERT QUERY NO: 290 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
405786471, 'Lanny Schowalter', 34, 410892021, 'O+', '44 Spaight Place'
);

/* INSERT QUERY NO: 291 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
641982747, 'Londa Morar', 91, 949319070, 'O-', '89 Trailsway Drive'
);

/* INSERT QUERY NO: 292 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
660476746, 'Al Yost', 35, 697540781, 'AB+', '634 Saint Paul Junction'
);

/* INSERT QUERY NO: 293 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
721141100, 'Cristy Bruen', 37, 907368053, 'AB-', '38145 Schurz Point'
);

/* INSERT QUERY NO: 294 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
836857419, 'Rudolf Kuhic', 37, 820480166, 'A-', '2093 Badeau Way'
);

/* INSERT QUERY NO: 295 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
739216977, 'Kimbery Kuhn', 1, 141132538, 'AB-', '63 Dryden Pass'
);

/* INSERT QUERY NO: 296 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
168791341, 'Frieda Swift', 63, 291093215, 'AB-', '3 Park Meadow Court'
);

/* INSERT QUERY NO: 297 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
656763069, 'Branden McLaughlin', 27, 727409103, 'O-', '219 Park Meadow Court'
);

/* INSERT QUERY NO: 298 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
346529486, 'Rueben Heaney', 53, 941231753, 'A-', '2 Mockingbird Plaza'
);

/* INSERT QUERY NO: 299 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
842514480, 'Rashida Satterfield', 19, 435671780, 'B+', '1219 Bluejay Drive'
);

/* INSERT QUERY NO: 300 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
924243034, 'Tammi Bauch', 54, 997090564, 'O-', '1 Roxbury Drive'
);

/* INSERT QUERY NO: 301 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
608211556, 'Taren Wolff', 67, 674499916, 'AB+', '96 Fulton Way'
);

/* INSERT QUERY NO: 302 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
363393841, 'Brenna Stoltenberg', 72, 317719769, 'AB+', '35 Raven Lane'
);

/* INSERT QUERY NO: 303 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
357219331, 'Sheryl Bergstrom', 100, 486809678, 'AB-', '913 Packers Trail'
);

/* INSERT QUERY NO: 304 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
238061000, 'Alphonso Harber', 87, 927955536, 'AB-', '69 Lunder Junction'
);

/* INSERT QUERY NO: 305 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
372173938, 'Ron Walter', 5, 704724405, 'AB+', '6135 Onsgard Court'
);

/* INSERT QUERY NO: 306 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
975519907, 'Wyatt Willms', 67, 239909985, 'AB-', '673 Fallview Hill'
);

/* INSERT QUERY NO: 307 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
289033441, 'Justa Huel', 68, 301761342, 'B-', '335 Mifflin Drive'
);

/* INSERT QUERY NO: 308 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
853816541, 'Santo Gorczany', 38, 809524562, 'O-', '8 Hovde Lane'
);

/* INSERT QUERY NO: 309 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
177737126, 'Elliott Stracke', 25, 725988676, 'O+', '08615 Reindahl Street'
);

/* INSERT QUERY NO: 310 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
512772195, 'Nigel Langosh', 1, 441945635, 'B+', '2172 Hagan Circle'
);

/* INSERT QUERY NO: 311 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
354586041, 'Verdell Goyette', 77, 471354181, 'AB+', '261 Dunning Circle'
);

/* INSERT QUERY NO: 312 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
738970208, 'Mellissa Considine', 20, 170088906, 'AB+', '55 Heath Avenue'
);

/* INSERT QUERY NO: 313 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
442809446, 'Leopoldo Heathcote', 25, 557836444, 'O+', '944 Old Gate Way'
);

/* INSERT QUERY NO: 314 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
284054928, 'Kenneth Medhurst', 19, 735787719, 'B-', '8346 Union Junction'
);

/* INSERT QUERY NO: 315 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
663473126, 'Alfonso Pfeffer', 76, 856729703, 'AB-', '5 Sheridan Park'
);

/* INSERT QUERY NO: 316 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
299227756, 'Justina Barton', 100, 227204531, 'AB+', '58 Little Fleur Pass'
);

/* INSERT QUERY NO: 317 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
403627618, 'Moses Kuphal', 44, 702064546, 'AB-', '32 Spenser Place'
);

/* INSERT QUERY NO: 318 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
219307670, 'Sid Pfannerstill', 87, 801485476, 'AB+', '6352 Maple Wood Place'
);

/* INSERT QUERY NO: 319 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
174089937, 'Jenice Schroeder', 25, 853487488, 'AB+', '86205 Vahlen Point'
);

/* INSERT QUERY NO: 320 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
608259484, 'Oscar Lowe', 76, 832214807, 'O-', '264 Waxwing Court'
);

/* INSERT QUERY NO: 321 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
503490986, 'Hung Bosco', 46, 916894583, 'A-', '9862 Ilene Drive'
);

/* INSERT QUERY NO: 322 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
421517837, 'Blossom Robel', 31, 540055915, 'AB+', '6 Pepper Wood Lane'
);

/* INSERT QUERY NO: 323 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
430537269, 'Winford Borer', 100, 837266235, 'AB+', '92 Fallview Circle'
);

/* INSERT QUERY NO: 324 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
526554970, 'Brice Turcotte', 5, 191107112, 'O-', '7 Annamark Drive'
);

/* INSERT QUERY NO: 325 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
176627306, 'Louisa Toy', 46, 223364819, 'O-', '9 Farragut Terrace'
);

/* INSERT QUERY NO: 326 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
737254942, 'Lori Walter', 78, 169517852, 'B-', '5395 Raven Alley'
);

/* INSERT QUERY NO: 327 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
885429897, 'Dominic Nader', 46, 312705966, 'A-', '1358 Buena Vista Plaza'
);

/* INSERT QUERY NO: 328 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
874756460, 'Allyson Collins', 100, 656698947, 'AB+', '05 Northview Park'
);

/* INSERT QUERY NO: 329 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
275768613, 'Venetta Gaylord', 52, 705106135, 'B+', '48559 Tony Park'
);

/* INSERT QUERY NO: 330 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
601070880, 'Hisako VonRueden', 97, 164557202, 'O+', '5452 Artisan Place'
);

/* INSERT QUERY NO: 331 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
386159372, 'Sylvester Senger', 13, 643204407, 'AB+', '474 Rigney Place'
);

/* INSERT QUERY NO: 332 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
672975622, 'Tobias Prosacco', 2, 873458333, 'O+', '464 Di Loreto Junction'
);

/* INSERT QUERY NO: 333 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
789041587, 'Theodore Doyle', 39, 264994010, 'B+', '2 Service Hill'
);

/* INSERT QUERY NO: 334 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
650987994, 'Lucien Doyle', 40, 473292729, 'AB+', '532 Farragut Place'
);

/* INSERT QUERY NO: 335 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
868763962, 'Florentino Mraz', 69, 626763662, 'AB-', '455 Roxbury Court'
);

/* INSERT QUERY NO: 336 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
563423940, 'Yong Kuhn', 37, 196130003, 'O+', '2 Eastlawn Way'
);

/* INSERT QUERY NO: 337 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
286479654, 'Jamal Crooks', 79, 871380403, 'O-', '660 Crescent Oaks Avenue'
);

/* INSERT QUERY NO: 338 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
564333576, 'Karine Muller', 17, 407553220, 'AB-', '10 Lighthouse Bay Alley'
);

/* INSERT QUERY NO: 339 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
360131111, 'Lyman Leffler', 85, 407573153, 'O-', '8033 Laurel Point'
);

/* INSERT QUERY NO: 340 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
206266771, 'Marketta Stokes', 60, 946123021, 'AB+', '9616 Schlimgen Drive'
);

/* INSERT QUERY NO: 341 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
609250260, 'Priscila Lockman', 5, 687728178, 'O+', '19 Sunbrook Drive'
);

/* INSERT QUERY NO: 342 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
643262759, 'Rickie McDermott', 100, 403838155, 'B+', '23140 Carpenter Circle'
);

/* INSERT QUERY NO: 343 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
216072634, 'Pablo Homenick', 30, 997822041, 'O-', '5 Red Cloud Center'
);

/* INSERT QUERY NO: 344 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
768586270, 'Gladys Daugherty', 36, 472228706, 'AB-', '462 Sutteridge Circle'
);

/* INSERT QUERY NO: 345 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
998092386, 'Maude Lebsack', 18, 229212391, 'B-', '2 Kipling Pass'
);

/* INSERT QUERY NO: 346 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
495063022, 'Jorge Franecki', 24, 148993722, 'AB-', '78235 Utah Junction'
);

/* INSERT QUERY NO: 347 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
876209214, 'Marlin Harris', 44, 456220376, 'O+', '868 Gulseth Pass'
);

/* INSERT QUERY NO: 348 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
863055717, 'Shae Denesik', 51, 709596454, 'A+', '845 Myrtle Terrace'
);

/* INSERT QUERY NO: 349 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
165894936, 'Zachary Schroeder', 84, 414238126, 'AB+', '181 Ridge Oak Court'
);

/* INSERT QUERY NO: 350 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
668247279, 'Eddy Kozey', 78, 764206509, 'AB-', '90925 Paget Plaza'
);

/* INSERT QUERY NO: 351 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
225326382, 'Esteban Hagenes', 2, 115573620, 'O-', '083 Leroy Circle'
);

/* INSERT QUERY NO: 352 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
319006878, 'Claude Hettinger', 40, 923113633, 'AB+', '7853 Eagle Crest Center'
);

/* INSERT QUERY NO: 353 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
115726411, 'Latoria Hudson', 60, 397559562, 'AB+', '28744 Twin Pines Crossing'
);

/* INSERT QUERY NO: 354 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
346867691, 'Ellen Homenick', 12, 948277280, 'A+', '52 Fair Oaks Center'
);

/* INSERT QUERY NO: 355 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
910023133, 'Lashanda Halvorson', 65, 438927786, 'O+', '51858 Coolidge Hill'
);

/* INSERT QUERY NO: 356 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
780697425, 'Geraldine Dibbert', 60, 331799907, 'AB-', '20151 Gina Drive'
);

/* INSERT QUERY NO: 357 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
169744728, 'Erin Howell', 84, 133271109, 'O-', '3316 Pepper Wood Center'
);

/* INSERT QUERY NO: 358 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
432669332, 'Brook Zieme', 3, 495885859, 'B-', '15853 Brickson Park Park'
);

/* INSERT QUERY NO: 359 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
958213532, 'Kelley Langosh', 83, 760541099, 'AB-', '6045 Atwood Avenue'
);

/* INSERT QUERY NO: 360 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
198714826, 'Cassey Jakubowski', 77, 211644692, 'AB-', '5539 Norway Maple Place'
);

/* INSERT QUERY NO: 361 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
941229357, 'Connie Swaniawski', 67, 381083911, 'A-', '402 Farwell Center'
);

/* INSERT QUERY NO: 362 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
684241404, 'Zachary Marvin', 54, 402017902, 'AB+', '6767 Ruskin Terrace'
);

/* INSERT QUERY NO: 363 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
514826814, 'Mathew Homenick', 99, 606755740, 'A+', '4806 Portage Junction'
);

/* INSERT QUERY NO: 364 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
394080381, 'Blake Bailey', 31, 738465597, 'B+', '8720 Gerald Drive'
);

/* INSERT QUERY NO: 365 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
776622516, 'Ilona Roberts', 82, 451881922, 'O-', '99336 West Park'
);

/* INSERT QUERY NO: 366 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
586232427, 'Leonel Cormier', 13, 162560228, 'AB+', '42216 Magdeline Junction'
);

/* INSERT QUERY NO: 367 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
342554405, 'Coralie Daniel', 99, 470475858, 'O-', '57314 Emmet Lane'
);

/* INSERT QUERY NO: 368 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
995541939, 'Marlena Larkin', 69, 143312786, 'AB-', '393 Prentice Junction'
);

/* INSERT QUERY NO: 369 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
610144170, 'Shakia Buckridge', 49, 443147914, 'O-', '329 Glendale Circle'
);

/* INSERT QUERY NO: 370 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
248413591, 'Johana Boyle', 31, 944935700, 'O-', '4 Schlimgen Street'
);

/* INSERT QUERY NO: 371 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
848414798, 'Malcom Douglas', 37, 341510639, 'A+', '08 John Wall Park'
);

/* INSERT QUERY NO: 372 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
570914688, 'Darla McDermott', 59, 415895621, 'B+', '5769 Golden Leaf Park'
);

/* INSERT QUERY NO: 373 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
166260903, 'Tessie Reinger', 64, 691339979, 'AB-', '1 Caliangt Park'
);

/* INSERT QUERY NO: 374 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
806781132, 'Graig Olson', 83, 479337397, 'B-', '83 Texas Pass'
);

/* INSERT QUERY NO: 375 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
453378632, 'Katharyn Kling', 61, 389994831, 'AB+', '4837 8th Drive'
);

/* INSERT QUERY NO: 376 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
156503032, 'Dwight Mohr', 10, 128636593, 'O-', '12 Morning Point'
);

/* INSERT QUERY NO: 377 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
166992864, 'Orval Rippin', 29, 137812933, 'O-', '0 Forest Run Center'
);

/* INSERT QUERY NO: 378 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
409046850, 'Lu Collier', 26, 519999542, 'B+', '6296 Gerald Crossing'
);

/* INSERT QUERY NO: 379 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
136163741, 'Willette Spencer', 90, 738605142, 'O+', '801 Bobwhite Center'
);

/* INSERT QUERY NO: 380 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
726124427, 'Tula Welch', 47, 562431965, 'AB-', '90 Dorton Junction'
);

/* INSERT QUERY NO: 381 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
243467809, 'Samara Gibson', 60, 603020606, 'B-', '49 Melvin Avenue'
);

/* INSERT QUERY NO: 382 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
318642942, 'Manuel Keeling', 23, 960353796, 'O-', '8 Blaine Pass'
);

/* INSERT QUERY NO: 383 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
264161742, 'Floyd Bogisich', 21, 931553091, 'O+', '36990 Grover Center'
);

/* INSERT QUERY NO: 384 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
236775411, 'Viola Sauer', 32, 132222726, 'AB-', '55 Dryden Junction'
);

/* INSERT QUERY NO: 385 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
542958839, 'Ambrose Senger', 96, 912685309, 'O-', '003 Banding Avenue'
);

/* INSERT QUERY NO: 386 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
583589231, 'Lula Feeney', 70, 426867681, 'AB-', '0709 Fairfield Junction'
);

/* INSERT QUERY NO: 387 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
253284965, 'Corrin Luettgen', 17, 729282160, 'O-', '2 Truax Point'
);

/* INSERT QUERY NO: 388 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
709110900, 'Krystin Bosco', 17, 139360786, 'A-', '8053 Katie Terrace'
);

/* INSERT QUERY NO: 389 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
391479893, 'Jordan Breitenberg', 90, 141687949, 'AB+', '0504 Clyde Gallagher Terrace'
);

/* INSERT QUERY NO: 390 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
487328284, 'Brenton Jewess', 76, 850192356, 'A+', '63 Doe Crossing Terrace'
);

/* INSERT QUERY NO: 391 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
116762461, 'Shirley Koepp', 97, 719540841, 'AB+', '82 Killdeer Road'
);

/* INSERT QUERY NO: 392 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
374785307, 'Shanelle Ferry', 16, 411728925, 'A+', '26 Valley Edge Circle'
);

/* INSERT QUERY NO: 393 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
374327147, 'Benton Zieme', 40, 790356261, 'O-', '0784 Green Center'
);

/* INSERT QUERY NO: 394 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
158966862, 'Jamie Tremblay', 28, 141233479, 'AB+', '3 Tennyson Park'
);

/* INSERT QUERY NO: 395 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
947037384, 'Noel Kuhic', 72, 134241412, 'O+', '55 Orin Court'
);

/* INSERT QUERY NO: 396 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
140166931, 'Arline Gerhold', 23, 577227666, 'AB-', '57 Riverside Trail'
);

/* INSERT QUERY NO: 397 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
346964536, 'Rico Kub', 54, 439234818, 'O-', '220 Menomonie Parkway'
);

/* INSERT QUERY NO: 398 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
736180442, 'Timothy Waelchi', 44, 392113228, 'A+', '07643 Glacier Hill Junction'
);

/* INSERT QUERY NO: 399 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
644934596, 'Les Mosciski', 61, 958729018, 'AB-', '40843 Farmco Plaza'
);

/* INSERT QUERY NO: 400 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
653044424, 'August Hermiston', 67, 275944329, 'B-', '83640 Holy Cross Parkway'
);

/* INSERT QUERY NO: 401 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
518155053, 'Dede Morissette', 76, 544020477, 'AB+', '1 7th Avenue'
);

/* INSERT QUERY NO: 402 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
444192710, 'Ernest Bernhard', 72, 503747430, 'O-', '62114 Fallview Lane'
);

/* INSERT QUERY NO: 403 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
750064469, 'Renna Spencer', 50, 632330297, 'B+', '011 Moulton Hill'
);

/* INSERT QUERY NO: 404 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
585974426, 'Rickey Harris', 99, 260535366, 'A+', '1 Little Fleur Avenue'
);

/* INSERT QUERY NO: 405 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
133761058, 'Suzann Simonis', 70, 545161221, 'AB-', '2459 Hermina Pass'
);

/* INSERT QUERY NO: 406 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
179151510, 'Tenesha Ullrich', 89, 433485508, 'AB-', '0 Northport Terrace'
);

/* INSERT QUERY NO: 407 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
447320870, 'Cleta Jerde', 20, 231437375, 'A+', '93329 Northwestern Plaza'
);

/* INSERT QUERY NO: 408 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
467841716, 'Luis Larkin', 35, 721914967, 'O-', '168 Hintze Crossing'
);

/* INSERT QUERY NO: 409 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
599231477, 'Ambrose Haag', 55, 528611097, 'B+', '0478 Clarendon Hill'
);

/* INSERT QUERY NO: 410 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
684124083, 'Miguel Quitzon', 75, 176619127, 'B-', '76 Bobwhite Alley'
);

/* INSERT QUERY NO: 411 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
208740987, 'Maryln Prosacco', 60, 325114954, 'A-', '69746 Fremont Road'
);

/* INSERT QUERY NO: 412 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
833451511, 'Edmund Parisian', 81, 196347932, 'O-', '436 Esker Road'
);

/* INSERT QUERY NO: 413 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
558402134, 'Loree O\'Connell', 59, 238948377, 'AB+', '6 Reindahl Parkway'
);

/* INSERT QUERY NO: 414 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
509277186, 'Phillis Connelly', 38, 270969057, 'B-', '4 Kensington Way'
);

/* INSERT QUERY NO: 415 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
948241072, 'Lane Ebert', 93, 845089050, 'AB+', '5087 Clarendon Center'
);

/* INSERT QUERY NO: 416 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
697145938, 'Jovan Upton', 61, 263114970, 'B-', '151 Red Cloud Plaza'
);

/* INSERT QUERY NO: 417 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
497497776, 'Mariah Prohaska', 34, 907460815, 'O-', '379 Leroy Lane'
);

/* INSERT QUERY NO: 418 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
978348890, 'Roseanna Hoeger', 59, 541506810, 'O+', '11901 Summit Parkway'
);

/* INSERT QUERY NO: 419 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
350510277, 'Giovanni Kertzmann', 10, 831892067, 'O+', '8 Barnett Trail'
);

/* INSERT QUERY NO: 420 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
387365678, 'Francene Gottlieb', 65, 895390067, 'AB-', '442 Redwing Trail'
);

/* INSERT QUERY NO: 421 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
971940922, 'Ewa Boyer', 58, 392755327, 'B+', '1622 Longview Alley'
);

/* INSERT QUERY NO: 422 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
887717038, 'Jarod Crist', 73, 993086603, 'AB-', '640 Talisman Plaza'
);

/* INSERT QUERY NO: 423 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
742541081, 'Gino Macejkovic', 12, 379938279, 'AB+', '0218 Melvin Way'
);

/* INSERT QUERY NO: 424 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
798047128, 'Lovie Grant', 83, 321713981, 'A+', '1 Valley Edge Lane'
);

/* INSERT QUERY NO: 425 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
208440070, 'Maegan Pfeffer', 84, 543545200, 'O-', '499 Mccormick Terrace'
);

/* INSERT QUERY NO: 426 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
867886330, 'Lenny Wuckert', 15, 491025154, 'AB+', '92 Bay Crossing'
);

/* INSERT QUERY NO: 427 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
831234620, 'Regine Douglas', 45, 116575150, 'O-', '78 Clemons Park'
);

/* INSERT QUERY NO: 428 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
424870917, 'Newton Cartwright', 58, 316799035, 'AB+', '8981 Melrose Park'
);

/* INSERT QUERY NO: 429 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
977599626, 'America Lowe', 2, 934774400, 'O-', '2 Sherman Junction'
);

/* INSERT QUERY NO: 430 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
282690944, 'Deana Hoeger', 1, 188181184, 'A+', '4567 Loeprich Avenue'
);

/* INSERT QUERY NO: 431 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
162697762, 'Nettie Ruecker', 50, 845209402, 'AB+', '456 Green Ridge Drive'
);

/* INSERT QUERY NO: 432 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
335045909, 'Alita Murazik', 26, 302981064, 'O-', '8068 Buena Vista Alley'
);

/* INSERT QUERY NO: 433 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
557446669, 'Houston Windler', 15, 148477241, 'AB+', '3321 Ridgeway Junction'
);

/* INSERT QUERY NO: 434 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
496018551, 'Ka Morissette', 15, 970383082, 'AB+', '266 Dorton Drive'
);

/* INSERT QUERY NO: 435 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
670832662, 'Elvis Bernhard', 76, 838577702, 'O+', '1 1st Point'
);

/* INSERT QUERY NO: 436 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
614160425, 'Elmo Ferry', 4, 465624352, 'AB+', '4 Del Sol Plaza'
);

/* INSERT QUERY NO: 437 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
695611377, 'Virgil Price', 19, 372347416, 'AB-', '0 Mandrake Junction'
);

/* INSERT QUERY NO: 438 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
606918197, 'Alix Block', 91, 609721240, 'B-', '3 Bunker Hill Lane'
);

/* INSERT QUERY NO: 439 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
245799434, 'Malcom Morissette', 46, 704449778, 'B+', '9171 Steensland Junction'
);

/* INSERT QUERY NO: 440 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
399620305, 'Tomoko Lakin', 74, 731599183, 'AB-', '98642 Gulseth Trail'
);

/* INSERT QUERY NO: 441 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
774868393, 'Elease Hand', 29, 355545661, 'O+', '133 Butternut Trail'
);

/* INSERT QUERY NO: 442 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
455799376, 'Anette Johnson', 55, 150499863, 'B+', '4 Melrose Trail'
);

/* INSERT QUERY NO: 443 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
226260525, 'Evelia Cole', 50, 791540583, 'O-', '897 Hallows Point'
);

/* INSERT QUERY NO: 444 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
638713388, 'Jerold Yundt', 2, 806951141, 'AB+', '17498 American Junction'
);

/* INSERT QUERY NO: 445 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
564483683, 'Honey Upton', 3, 791398798, 'O+', '123 Arkansas Avenue'
);

/* INSERT QUERY NO: 446 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
223256573, 'Tawanda Kassulke', 61, 161305375, 'A-', '089 Logan Alley'
);

/* INSERT QUERY NO: 447 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
637640979, 'Alta Huel', 28, 496105718, 'AB-', '47323 Sachtjen Junction'
);

/* INSERT QUERY NO: 448 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
834955090, 'Ty Emmerich', 87, 424769396, 'AB-', '69 Division Point'
);

/* INSERT QUERY NO: 449 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
209672087, 'Dorian Will', 50, 865759822, 'A+', '578 Lakewood Place'
);

/* INSERT QUERY NO: 450 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
175297093, 'Isadora Luettgen', 28, 976721841, 'AB+', '9133 Pond Street'
);

/* INSERT QUERY NO: 451 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100839729, 'Ike Ankunding', 52, 625813556, 'B+', '975 Anniversary Park'
);

/* INSERT QUERY NO: 452 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
710628570, 'Weldon Wilderman', 14, 448625884, 'O-', '310 Columbus Avenue'
);

/* INSERT QUERY NO: 453 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
929670489, 'Shawna Harber', 56, 404065974, 'AB+', '8 Boyd Circle'
);

/* INSERT QUERY NO: 454 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
793339948, 'Refugio Feil', 41, 259737533, 'AB-', '860 David Junction'
);

/* INSERT QUERY NO: 455 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
604632535, 'Chastity Yundt', 24, 145395676, 'B+', '058 Ronald Regan Plaza'
);

/* INSERT QUERY NO: 456 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
868969030, 'Karry Dickens', 29, 433709211, 'B-', '097 Grover Way'
);

/* INSERT QUERY NO: 457 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
448849743, 'Dorthy Gibson', 49, 709998886, 'AB-', '505 Thierer Lane'
);

/* INSERT QUERY NO: 458 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
141248540, 'Eladia Romaguera', 47, 229652702, 'AB-', '5231 Golf Plaza'
);

/* INSERT QUERY NO: 459 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
425524557, 'Janeen Bins', 91, 710223549, 'A+', '40751 Logan Plaza'
);

/* INSERT QUERY NO: 460 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
192414954, 'Dinah Gleichner', 17, 723985849, 'AB-', '410 Lake View Lane'
);

/* INSERT QUERY NO: 461 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
318592001, 'Joshua Conn', 78, 874489901, 'AB-', '9 Forest Run Way'
);

/* INSERT QUERY NO: 462 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
326497537, 'Cary Kris', 11, 661624108, 'O+', '4082 Dawn Street'
);

/* INSERT QUERY NO: 463 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
985244799, 'Shelby Considine', 65, 891753633, 'O-', '0 Vera Terrace'
);

/* INSERT QUERY NO: 464 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
507577837, 'Mireya Greenholt', 79, 281703177, 'A+', '1894 Rockefeller Place'
);

/* INSERT QUERY NO: 465 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
391486089, 'Shera Ernser', 52, 844441294, 'B-', '5402 Manley Circle'
);

/* INSERT QUERY NO: 466 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
223143904, 'Conrad Krajcik', 13, 664283134, 'B+', '800 Donald Parkway'
);

/* INSERT QUERY NO: 467 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
757973574, 'Debrah Schaden', 5, 458752337, 'AB-', '91582 Schmedeman Place'
);

/* INSERT QUERY NO: 468 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
756757055, 'Terrance Gutkowski', 12, 510013790, 'O-', '73810 Hallows Point'
);

/* INSERT QUERY NO: 469 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
541420933, 'Marta Pouros', 78, 685518872, 'A-', '92 Eggendart Center'
);

/* INSERT QUERY NO: 470 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
214002988, 'Kimbery Kirlin', 19, 392556426, 'AB+', '711 Superior Parkway'
);

/* INSERT QUERY NO: 471 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
274892255, 'Fairy Schuster', 60, 297637696, 'A-', '4548 Elmside Terrace'
);

/* INSERT QUERY NO: 472 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
894345162, 'Frankie Batz', 11, 304262034, 'AB+', '80 Marquette Crossing'
);

/* INSERT QUERY NO: 473 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
359966153, 'Melinda Wilderman', 14, 479947797, 'A-', '55451 Oriole Place'
);

/* INSERT QUERY NO: 474 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
184444979, 'Emely Auer', 39, 192174460, 'AB+', '7754 Washington Crossing'
);

/* INSERT QUERY NO: 475 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
979777334, 'Adelina Brakus', 64, 318897828, 'AB+', '4792 Transport Street'
);

/* INSERT QUERY NO: 476 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
732885712, 'Raymundo Tillman', 51, 749884725, 'O+', '549 7th Way'
);

/* INSERT QUERY NO: 477 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
521165267, 'Salvador Pfeffer', 100, 869355803, 'B-', '0 Hoard Trail'
);

/* INSERT QUERY NO: 478 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
454055361, 'Rosena Bosco', 53, 979048793, 'B-', '39 Straubel Lane'
);

/* INSERT QUERY NO: 479 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
122976530, 'Roxie Bernier', 20, 892125406, 'O-', '4 Kings Drive'
);

/* INSERT QUERY NO: 480 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
758793891, 'Linn Runolfsdottir', 65, 351574562, 'O+', '164 Debs Pass'
);

/* INSERT QUERY NO: 481 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
944752490, 'Pearly Prohaska', 39, 440563748, 'B-', '8 Havey Avenue'
);

/* INSERT QUERY NO: 482 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
125074868, 'Izetta Schimmel', 45, 631113477, 'AB-', '6035 Springview Road'
);

/* INSERT QUERY NO: 483 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
918225994, 'Chong Dicki', 7, 450554475, 'AB-', '9 Gateway Lane'
);

/* INSERT QUERY NO: 484 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
551097402, 'Kristopher Hirthe', 23, 964396933, 'B-', '5 Fisk Plaza'
);

/* INSERT QUERY NO: 485 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
477739872, 'Beata Zulauf', 28, 818116882, 'AB+', '9 Village Green Crossing'
);

/* INSERT QUERY NO: 486 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
964674679, 'Mariana Homenick', 99, 472140886, 'AB-', '6913 Sycamore Center'
);

/* INSERT QUERY NO: 487 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
700943594, 'Dorinda Batz', 18, 590447840, 'AB+', '52 Elka Point'
);

/* INSERT QUERY NO: 488 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
915365165, 'Cesar Okuneva', 46, 543303553, 'AB-', '5170 Hovde Circle'
);

/* INSERT QUERY NO: 489 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
937083736, 'Delmer Corkery', 8, 960625111, 'AB-', '11 Victoria Place'
);

/* INSERT QUERY NO: 490 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
109030302, 'Edmund Padberg', 32, 541103065, 'AB-', '76 Charing Cross Road'
);

/* INSERT QUERY NO: 491 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
628747693, 'Dudley Russel', 7, 915520813, 'O+', '0 Dakota Court'
);

/* INSERT QUERY NO: 492 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
555442249, 'Kristofer Botsford', 100, 456302832, 'B-', '11 Ilene Street'
);

/* INSERT QUERY NO: 493 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
200160739, 'Noah Turner', 56, 834491659, 'O+', '430 Clove Place'
);

/* INSERT QUERY NO: 494 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
738218900, 'Inger Daugherty', 46, 622725694, 'AB-', '1473 Spenser Point'
);

/* INSERT QUERY NO: 495 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
989452807, 'Venus Ziemann', 95, 147971660, 'AB-', '5 2nd Center'
);

/* INSERT QUERY NO: 496 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
737864976, 'Tasia Hilpert', 43, 627936445, 'AB-', '09831 Crest Line Hill'
);

/* INSERT QUERY NO: 497 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
635925148, 'Temika Davis', 22, 111973614, 'O+', '31561 Elgar Avenue'
);

/* INSERT QUERY NO: 498 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
826770121, 'Genaro Watsica', 95, 449477635, 'AB+', '996 Arapahoe Circle'
);

/* INSERT QUERY NO: 499 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
866297088, 'Efrain Rath', 89, 218359847, 'AB+', '5519 Tony Parkway'
);

/* INSERT QUERY NO: 500 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
230582041, 'Christeen Gutmann', 81, 447827508, 'AB-', '986 Talisman Center'
);

/* INSERT QUERY NO: 501 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
858999210, 'Glennis VonRueden', 32, 778731983, 'AB+', '389 Eastwood Trail'
);

/* INSERT QUERY NO: 502 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
531412674, 'Lavona Stark', 14, 596760597, 'B-', '3 Manley Pass'
);

/* INSERT QUERY NO: 503 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
760297746, 'Saul Robel', 74, 594167255, 'B+', '5 Gerald Plaza'
);

/* INSERT QUERY NO: 504 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
999728144, 'Tommy Schneider', 56, 127334981, 'AB+', '9154 Ridgeway Parkway'
);

/* INSERT QUERY NO: 505 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
639225399, 'Glennis Daniel', 34, 480027708, 'O+', '59 Golf Course Alley'
);

/* INSERT QUERY NO: 506 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
694973500, 'Ned Bosco', 55, 139367376, 'AB+', '499 Granby Way'
);

/* INSERT QUERY NO: 507 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
797519473, 'Anneliese Bahringer', 40, 466044840, 'AB+', '223 Norway Maple Point'
);

/* INSERT QUERY NO: 508 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
772002908, 'Gerardo Nader', 69, 649687841, 'O-', '4062 Fuller Court'
);

/* INSERT QUERY NO: 509 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
772377059, 'Horace Parisian', 41, 981597055, 'O+', '92434 Beilfuss Alley'
);

/* INSERT QUERY NO: 510 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
230240109, 'Chasity Hauck', 26, 817020506, 'B-', '35 Evergreen Alley'
);

/* INSERT QUERY NO: 511 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
583686373, 'Danilo Hansen', 72, 491722264, 'B+', '2655 Armistice Way'
);

/* INSERT QUERY NO: 512 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
319608343, 'Nicole Greenfelder', 80, 350677445, 'O+', '53 Warner Center'
);

/* INSERT QUERY NO: 513 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
717324029, 'Melita Lowe', 87, 212814162, 'AB+', '81 Swallow Park'
);

/* INSERT QUERY NO: 514 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
826605308, 'Alphonso Hirthe', 92, 725265569, 'AB-', '22 Calypso Pass'
);

/* INSERT QUERY NO: 515 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
105945142, 'Cathern Hauck', 14, 473118019, 'AB-', '527 Bayside Crossing'
);

/* INSERT QUERY NO: 516 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
203195214, 'Kelle Carter', 45, 874754805, 'AB-', '2 Judy Circle'
);

/* INSERT QUERY NO: 517 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
705542442, 'Kirby Cole', 76, 432662239, 'A+', '8 Texas Terrace'
);

/* INSERT QUERY NO: 518 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
849560875, 'Jewell Moen', 42, 337259739, 'AB-', '8 Surrey Crossing'
);

/* INSERT QUERY NO: 519 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
660006187, 'Dewitt Osinski', 30, 985907406, 'A-', '5592 3rd Court'
);

/* INSERT QUERY NO: 520 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
209227516, 'Darell Mitchell', 27, 542876444, 'AB-', '5587 Steensland Way'
);

/* INSERT QUERY NO: 521 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
609423978, 'Jamar Hand', 59, 395422094, 'AB+', '99 Knutson Drive'
);

/* INSERT QUERY NO: 522 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
737255073, 'Roscoe Zemlak', 36, 214280063, 'AB-', '54 Pawling Road'
);

/* INSERT QUERY NO: 523 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
667767027, 'Carey Auer', 97, 349989883, 'AB-', '109 School Avenue'
);

/* INSERT QUERY NO: 524 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
200769246, 'Bessie Herman', 72, 850217225, 'O+', '7 Dapin Park'
);

/* INSERT QUERY NO: 525 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
479032816, 'Rolando Ratke', 4, 264236023, 'A-', '0458 American Ash Court'
);

/* INSERT QUERY NO: 526 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
706253956, 'Donald Douglas', 60, 374837723, 'AB+', '98070 Daystar Street'
);

/* INSERT QUERY NO: 527 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
633931892, 'Guadalupe Schimmel', 29, 476966696, 'AB-', '7 Scofield Plaza'
);

/* INSERT QUERY NO: 528 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
856598387, 'Lawerence Quitzon', 19, 901414211, 'AB-', '76591 Warrior Circle'
);

/* INSERT QUERY NO: 529 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
505255227, 'Jere Bogan', 85, 129829532, 'B-', '4807 Norway Maple Avenue'
);

/* INSERT QUERY NO: 530 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
480408472, 'Kennith White', 89, 485826377, 'B+', '78 Lukken Lane'
);

/* INSERT QUERY NO: 531 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
902868693, 'Milagro Dietrich', 47, 375018178, 'B-', '69 Mendota Lane'
);

/* INSERT QUERY NO: 532 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
371538020, 'Dahlia Bartoletti', 8, 362606096, 'O+', '012 Emmet Alley'
);

/* INSERT QUERY NO: 533 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
752803629, 'Pete Krajcik', 65, 249952586, 'AB-', '60 Nobel Trail'
);

/* INSERT QUERY NO: 534 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
532293158, 'Kathie Lakin', 50, 252101903, 'AB-', '8 Troy Plaza'
);

/* INSERT QUERY NO: 535 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
669289445, 'Rodrick Borer', 91, 622397492, 'AB-', '37914 Corscot Parkway'
);

/* INSERT QUERY NO: 536 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
301883189, 'Carmine Collins', 74, 281029642, 'AB-', '39 Springview Terrace'
);

/* INSERT QUERY NO: 537 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
605615251, 'Florence Lesch', 39, 795580801, 'AB-', '8586 Garrison Road'
);

/* INSERT QUERY NO: 538 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
112833444, 'Joellen Larson', 33, 823619272, 'O-', '048 Mosinee Pass'
);

/* INSERT QUERY NO: 539 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
531101070, 'Dominica Pacocha', 59, 545767653, 'O-', '26 Kenwood Lane'
);

/* INSERT QUERY NO: 540 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
617352061, 'Maria Gusikowski', 22, 901711722, 'AB+', '6697 Kim Crossing'
);

/* INSERT QUERY NO: 541 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
910459906, 'Miguel Shields', 6, 193924252, 'A+', '24001 Northfield Road'
);

/* INSERT QUERY NO: 542 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
645437169, 'Sang Ondricka', 93, 214506965, 'AB+', '9 Rusk Plaza'
);

/* INSERT QUERY NO: 543 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
397342369, 'Shery Armstrong', 62, 212291349, 'AB-', '76188 Center Trail'
);

/* INSERT QUERY NO: 544 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
155957181, 'Lavonne Will', 84, 575608407, 'A-', '4375 North Alley'
);

/* INSERT QUERY NO: 545 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
945708648, 'Emerson Kassulke', 62, 296384998, 'A-', '4439 Sundown Trail'
);

/* INSERT QUERY NO: 546 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
437041011, 'Burt Bahringer', 96, 659829722, 'AB+', '5554 Carpenter Court'
);

/* INSERT QUERY NO: 547 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
959885997, 'Lamar Morissette', 98, 330729699, 'AB+', '111 Doe Crossing Point'
);

/* INSERT QUERY NO: 548 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
584243656, 'Carroll Ruecker', 64, 546356184, 'AB+', '9611 Morrow Pass'
);

/* INSERT QUERY NO: 549 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
228786585, 'Emilia Spinka', 24, 271508937, 'AB-', '73 Muir Park'
);

/* INSERT QUERY NO: 550 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
479915457, 'Vivien Volkman', 96, 835054507, 'AB-', '8 Muir Point'
);

/* INSERT QUERY NO: 551 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
848387409, 'Jason Mayert', 98, 345618274, 'AB+', '688 Dapin Terrace'
);

/* INSERT QUERY NO: 552 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
618549340, 'Chae Hettinger', 47, 572242741, 'A-', '3929 Redwing Hill'
);

/* INSERT QUERY NO: 553 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
347489825, 'Detra McDermott', 11, 423508747, 'O+', '18860 Hintze Way'
);

/* INSERT QUERY NO: 554 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
364838805, 'Madonna Christiansen', 51, 347772364, 'A-', '35 Gale Drive'
);

/* INSERT QUERY NO: 555 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
531166168, 'Mario Schaden', 44, 513200604, 'AB+', '3 Coolidge Way'
);

/* INSERT QUERY NO: 556 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
161057816, 'Britta Lakin', 70, 103139367, 'AB-', '9 Maple Wood Road'
);

/* INSERT QUERY NO: 557 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
451098434, 'Lurline Leffler', 47, 372491466, 'O+', '70559 Sutteridge Place'
);

/* INSERT QUERY NO: 558 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
910679345, 'Jarred Wehner', 28, 984188038, 'A-', '2674 Merrick Drive'
);

/* INSERT QUERY NO: 559 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
608810289, 'Max Skiles', 98, 913254069, 'AB+', '5821 Southridge Center'
);

/* INSERT QUERY NO: 560 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
833993913, 'Quinn Zboncak', 75, 587135018, 'AB+', '281 Orin Place'
);

/* INSERT QUERY NO: 561 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
787823343, 'Melodie Rice', 20, 909920322, 'AB-', '83450 3rd Way'
);

/* INSERT QUERY NO: 562 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
842788938, 'Junior Oberbrunner', 5, 160183281, 'A+', '645 Vidon Drive'
);

/* INSERT QUERY NO: 563 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
864731304, 'Elva Reinger', 100, 714932886, 'O-', '3835 5th Hill'
);

/* INSERT QUERY NO: 564 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
642355338, 'Nolan Schmitt', 94, 787499424, 'AB+', '0 Sugar Parkway'
);

/* INSERT QUERY NO: 565 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
941382856, 'Phoebe Wilkinson', 99, 501418327, 'B-', '1 Farwell Point'
);

/* INSERT QUERY NO: 566 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
291931264, 'Lia Schultz', 49, 440823272, 'A-', '477 Hoffman Circle'
);

/* INSERT QUERY NO: 567 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
887271033, 'Dominica Greenholt', 62, 121014817, 'AB-', '4940 Eagan Point'
);

/* INSERT QUERY NO: 568 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
367603314, 'Israel Wolf', 35, 158870254, 'O-', '7 Luster Street'
);

/* INSERT QUERY NO: 569 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
893376738, 'Maia Gusikowski', 47, 326150244, 'O-', '04608 Division Hill'
);

/* INSERT QUERY NO: 570 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
276327373, 'Christel Kuhn', 77, 976487876, 'O+', '2168 Victoria Court'
);

/* INSERT QUERY NO: 571 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
976754460, 'Wayne Nader', 64, 966063563, 'A+', '87 Pond Center'
);

/* INSERT QUERY NO: 572 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
503653250, 'Alane Dicki', 50, 151771069, 'O-', '9 Fordem Parkway'
);

/* INSERT QUERY NO: 573 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
362966420, 'Carey Kulas', 98, 135924671, 'AB+', '7 Talisman Center'
);

/* INSERT QUERY NO: 574 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
249984185, 'Claire Hessel', 72, 203589501, 'AB+', '764 Sunbrook Junction'
);

/* INSERT QUERY NO: 575 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
430204203, 'Rory Bernhard', 63, 562593326, 'AB+', '26017 Carpenter Trail'
);

/* INSERT QUERY NO: 576 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
888881451, 'Jimmy Hudson', 19, 913656652, 'AB-', '88078 Dixon Hill'
);

/* INSERT QUERY NO: 577 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
571366130, 'Lashanda Adams', 67, 183739596, 'O-', '6478 Karstens Plaza'
);

/* INSERT QUERY NO: 578 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
381355987, 'Ivonne Aufderhar', 87, 787647956, 'O+', '460 Commercial Avenue'
);

/* INSERT QUERY NO: 579 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
584971967, 'Rogelio Kunde', 94, 507908528, 'AB+', '11392 Transport Place'
);

/* INSERT QUERY NO: 580 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
744440698, 'Andera Little', 6, 130481965, 'B-', '80 Main Junction'
);

/* INSERT QUERY NO: 581 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
732046185, 'Kellee Johnson', 17, 365548359, 'A-', '770 Crownhardt Road'
);

/* INSERT QUERY NO: 582 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
818099951, 'Jamal Pfannerstill', 88, 952871976, 'B-', '9 Sugar Parkway'
);

/* INSERT QUERY NO: 583 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
445603120, 'Cornelius Walker', 27, 446499146, 'AB+', '16 Valley Edge Street'
);

/* INSERT QUERY NO: 584 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
937855031, 'Tori Kozey', 75, 369330861, 'AB+', '4190 Stephen Parkway'
);

/* INSERT QUERY NO: 585 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
166772539, 'Prince Haley', 69, 627907000, 'AB+', '05 Mcbride Way'
);

/* INSERT QUERY NO: 586 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
871157515, 'Onie Koelpin', 74, 817955681, 'AB-', '078 Lakeland Road'
);

/* INSERT QUERY NO: 587 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
848634634, 'Boyce Johnston', 97, 612417163, 'AB-', '36 Lake View Circle'
);

/* INSERT QUERY NO: 588 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
118683246, 'Ross Cummings', 67, 315986305, 'A+', '8 Helena Road'
);

/* INSERT QUERY NO: 589 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
274655611, 'Shella Macejkovic', 8, 316513563, 'AB+', '8 Reindahl Plaza'
);

/* INSERT QUERY NO: 590 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
756713353, 'Christen Johnson', 90, 970498363, 'O+', '2178 Schmedeman Parkway'
);

/* INSERT QUERY NO: 591 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
672144451, 'Dewey Heidenreich', 3, 601733065, 'AB-', '31 Pawling Parkway'
);

/* INSERT QUERY NO: 592 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
666402681, 'Connie Walter', 49, 378603924, 'AB-', '81 Mitchell Junction'
);

/* INSERT QUERY NO: 593 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
477096328, 'Val Hintz', 38, 770426183, 'B-', '661 Cottonwood Point'
);

/* INSERT QUERY NO: 594 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
968142666, 'Krysta Kshlerin', 19, 184914153, 'AB+', '445 2nd Drive'
);

/* INSERT QUERY NO: 595 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
468932857, 'Karrie Blanda', 64, 705159523, 'O-', '648 Chinook Drive'
);

/* INSERT QUERY NO: 596 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
766567728, 'Burton Wyman', 42, 328857816, 'A+', '78260 Orin Parkway'
);

/* INSERT QUERY NO: 597 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
605260672, 'Winifred Mante', 61, 221274892, 'O+', '8250 Everett Crossing'
);

/* INSERT QUERY NO: 598 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
351753147, 'Verna Hane', 29, 118052687, 'AB-', '20244 Prairie Rose Alley'
);

/* INSERT QUERY NO: 599 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
702206978, 'Jesus Hilpert', 89, 670215788, 'A-', '9 Bartillon Circle'
);

/* INSERT QUERY NO: 600 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
522039936, 'Stacy Conn', 9, 818619042, 'O+', '474 Sommers Point'
);

/* INSERT QUERY NO: 601 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
565562793, 'Royce Macejkovic', 10, 976536364, 'AB+', '990 Forest Dale Lane'
);

/* INSERT QUERY NO: 602 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
355251710, 'Shasta Stoltenberg', 85, 544254274, 'AB-', '64 Emmet Drive'
);

/* INSERT QUERY NO: 603 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
312780854, 'Scarlett Nader', 33, 534520873, 'AB+', '81172 Petterle Drive'
);

/* INSERT QUERY NO: 604 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
790045257, 'Petrina Crist', 93, 279762674, 'O-', '95 Eagan Circle'
);

/* INSERT QUERY NO: 605 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
254713094, 'Randall Rohan', 60, 473036614, 'O+', '1422 Novick Circle'
);

/* INSERT QUERY NO: 606 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
837435914, 'Georgiana Towne', 3, 179841017, 'AB-', '91 Hazelcrest Pass'
);

/* INSERT QUERY NO: 607 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
503077610, 'Miquel Rath', 43, 617557675, 'B-', '4 Grover Hill'
);

/* INSERT QUERY NO: 608 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
397235716, 'Adella Marquardt', 58, 904829237, 'O+', '02 Monument Trail'
);

/* INSERT QUERY NO: 609 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
375468349, 'Evelyn Murazik', 92, 764634437, 'AB+', '39 Johnson Lane'
);

/* INSERT QUERY NO: 610 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
124105184, 'Jewel Heathcote', 57, 195597353, 'AB+', '1015 Havey Place'
);

/* INSERT QUERY NO: 611 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
411555979, 'Graig Bogisich', 85, 846848433, 'AB-', '37729 Everett Hill'
);

/* INSERT QUERY NO: 612 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
118876074, 'Micheal Davis', 100, 625592101, 'A+', '8303 Merry Terrace'
);

/* INSERT QUERY NO: 613 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
405135876, 'Lavon Ryan', 46, 130469732, 'AB+', '9695 Tomscot Park'
);

/* INSERT QUERY NO: 614 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
559833245, 'Jeff Nader', 53, 943482860, 'AB+', '22 Loeprich Crossing'
);

/* INSERT QUERY NO: 615 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
387276100, 'Steffanie White', 23, 239447115, 'AB+', '165 Evergreen Place'
);

/* INSERT QUERY NO: 616 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
739637733, 'Rudolph Wintheiser', 1, 274611828, 'B+', '06 Gina Court'
);

/* INSERT QUERY NO: 617 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
857239485, 'Darrick Dickens', 98, 494918577, 'B+', '1321 Eastlawn Lane'
);

/* INSERT QUERY NO: 618 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
703110918, 'Michael Osinski', 26, 419024299, 'AB-', '108 Hollow Ridge Street'
);

/* INSERT QUERY NO: 619 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
512636137, 'Ericka Jast', 22, 878803583, 'AB+', '78450 Melrose Junction'
);

/* INSERT QUERY NO: 620 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
183336824, 'Pedro Hyatt', 46, 770477233, 'AB-', '10 Golf View Drive'
);

/* INSERT QUERY NO: 621 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
971196431, 'Dagmar Brown', 88, 507335249, 'AB-', '820 Dixon Place'
);

/* INSERT QUERY NO: 622 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
109832447, 'Mckenzie Nienow', 44, 918245776, 'AB+', '63 Eggendart Parkway'
);

/* INSERT QUERY NO: 623 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
794662123, 'Pamula Aufderhar', 46, 388214592, 'AB+', '64129 Milwaukee Circle'
);

/* INSERT QUERY NO: 624 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
576713506, 'Chad Kertzmann', 94, 301296755, 'O+', '790 Lunder Alley'
);

/* INSERT QUERY NO: 625 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
483844418, 'Ervin Kris', 36, 131884700, 'AB+', '8 Bobwhite Street'
);

/* INSERT QUERY NO: 626 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
257599953, 'Lorelei Lynch', 11, 283774412, 'O+', '674 8th Place'
);

/* INSERT QUERY NO: 627 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
125968577, 'Marjory Cronin', 5, 209453909, 'O-', '9694 Hollow Ridge Center'
);

/* INSERT QUERY NO: 628 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
485522290, 'Jackie Bailey', 79, 140635405, 'O-', '4461 Fulton Circle'
);

/* INSERT QUERY NO: 629 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
501792888, 'Alvaro Harris', 99, 313866989, 'AB+', '03365 Center Place'
);

/* INSERT QUERY NO: 630 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
960489992, 'Kirk Ondricka', 12, 567722446, 'AB-', '6892 Crowley Alley'
);

/* INSERT QUERY NO: 631 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
290703975, 'Ian Armstrong', 61, 211237056, 'AB-', '21 Briar Crest Place'
);

/* INSERT QUERY NO: 632 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
649704634, 'Earl Howell', 74, 114374092, 'A+', '23 North Parkway'
);

/* INSERT QUERY NO: 633 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
492469129, 'Hung Emard', 23, 523706226, 'AB-', '53 Marcy Circle'
);

/* INSERT QUERY NO: 634 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
624071848, 'Latrice O\'Keefe', 16, 715726986, 'AB+', '95245 New Castle Park'
);

/* INSERT QUERY NO: 635 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
552704258, 'Wilford Murphy', 42, 898914982, 'B+', '330 Holy Cross Circle'
);

/* INSERT QUERY NO: 636 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
978666553, 'Catina Blick', 21, 119927360, 'AB+', '31 Old Gate Circle'
);

/* INSERT QUERY NO: 637 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
736189340, 'Mitchell Gusikowski', 54, 144269205, 'O-', '2286 Petterle Center'
);

/* INSERT QUERY NO: 638 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
334130301, 'Pat Medhurst', 1, 518926892, 'AB-', '038 3rd Point'
);

/* INSERT QUERY NO: 639 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
235387340, 'Scott Rosenbaum', 26, 866408029, 'AB-', '9630 Independence Plaza'
);

/* INSERT QUERY NO: 640 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
965152081, 'Roxie Toy', 31, 805176994, 'AB+', '78537 Golden Leaf Place'
);

/* INSERT QUERY NO: 641 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
164169898, 'Francis Murray', 48, 479417332, 'O-', '179 Red Cloud Circle'
);

/* INSERT QUERY NO: 642 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
570746314, 'Clayton Shanahan', 28, 649911264, 'A+', '928 Victoria Street'
);

/* INSERT QUERY NO: 643 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
232533839, 'Len Bernier', 14, 748311417, 'B-', '337 Logan Circle'
);

/* INSERT QUERY NO: 644 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
849397491, 'Eliseo Wisozk', 33, 571517080, 'AB-', '2 Westend Place'
);

/* INSERT QUERY NO: 645 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
598164720, 'Ardelia Medhurst', 6, 848805747, 'B-', '63973 Buell Park'
);

/* INSERT QUERY NO: 646 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
379317242, 'Leonel Tillman', 38, 844735294, 'O-', '3 Graceland Terrace'
);

/* INSERT QUERY NO: 647 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
715122698, 'Thanh Hettinger', 44, 983176533, 'A+', '98881 Grayhawk Avenue'
);

/* INSERT QUERY NO: 648 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
996498717, 'Monnie Bashirian', 45, 213504309, 'O-', '317 Algoma Point'
);

/* INSERT QUERY NO: 649 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
163821900, 'Euna White', 47, 382553154, 'AB-', '3 Dennis Road'
);

/* INSERT QUERY NO: 650 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
923079128, 'Delmar Howell', 48, 330282537, 'A+', '21 Bartelt Lane'
);

/* INSERT QUERY NO: 651 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
674091156, 'Micki Leannon', 25, 748631457, 'AB-', '9 Schiller Park'
);

/* INSERT QUERY NO: 652 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
595193007, 'Lou Schuppe', 1, 988407005, 'A-', '4593 Pennsylvania Park'
);

/* INSERT QUERY NO: 653 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
144051288, 'Patrick Kassulke', 31, 673267648, 'B-', '90994 Hauk Parkway'
);

/* INSERT QUERY NO: 654 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
819324436, 'Tashina Hilll', 14, 332016437, 'A+', '9979 International Drive'
);

/* INSERT QUERY NO: 655 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
747049709, 'Ivory D\'Amore', 33, 629410831, 'AB-', '404 Iowa Hill'
);

/* INSERT QUERY NO: 656 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
779493990, 'Dinah Wiegand', 54, 614609936, 'A-', '7 Lighthouse Bay Way'
);

/* INSERT QUERY NO: 657 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
980554750, 'Ahmad Kozey', 50, 667154577, 'AB+', '3 Thompson Circle'
);

/* INSERT QUERY NO: 658 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
232152541, 'Stefan Kautzer', 21, 807725020, 'A-', '8 Northview Circle'
);

/* INSERT QUERY NO: 659 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
263321982, 'Carlton Feest', 99, 542051096, 'AB-', '595 Buell Parkway'
);

/* INSERT QUERY NO: 660 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
952988041, 'Salina Buckridge', 55, 346343087, 'O-', '554 Sunbrook Circle'
);

/* INSERT QUERY NO: 661 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
896401366, 'Julia Shields', 81, 198663416, 'AB+', '10 7th Point'
);

/* INSERT QUERY NO: 662 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
596288959, 'Jarred Wuckert', 85, 972321681, 'AB+', '041 Arizona Street'
);

/* INSERT QUERY NO: 663 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
674051585, 'Gonzalo Altenwerth', 52, 985637867, 'AB-', '78 Sunbrook Circle'
);

/* INSERT QUERY NO: 664 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
282520753, 'Louie Walsh', 33, 960049915, 'AB+', '09 Ronald Regan Avenue'
);

/* INSERT QUERY NO: 665 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
946536394, 'Breana Kovacek', 68, 836457005, 'AB-', '26 Calypso Center'
);

/* INSERT QUERY NO: 666 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
796995920, 'Mary Jenkins', 47, 394933789, 'O+', '290 Towne Road'
);

/* INSERT QUERY NO: 667 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
609417233, 'Jillian Schamberger', 30, 879077034, 'A-', '64 Northridge Court'
);

/* INSERT QUERY NO: 668 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
408875198, 'Darren Adams', 54, 336247089, 'A-', '29 Huxley Center'
);

/* INSERT QUERY NO: 669 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
488849587, 'Mellie Hand', 37, 333433887, 'B-', '3564 Moland Road'
);

/* INSERT QUERY NO: 670 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
651156782, 'Foster Wisozk', 58, 155248851, 'AB+', '57 Shopko Junction'
);

/* INSERT QUERY NO: 671 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
486711559, 'Hsiu Roob', 93, 776747568, 'A+', '09 Mccormick Way'
);

/* INSERT QUERY NO: 672 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
508220584, 'Dallas O\'Hara', 92, 650159610, 'B-', '15210 Eagan Trail'
);

/* INSERT QUERY NO: 673 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
984732360, 'Lesley Streich', 6, 143871611, 'A-', '24 David Court'
);

/* INSERT QUERY NO: 674 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
613321870, 'Eunice Williamson', 73, 936436283, 'AB+', '3560 6th Plaza'
);

/* INSERT QUERY NO: 675 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
485195007, 'Phillip Wisozk', 99, 807530573, 'AB-', '9924 Westridge Parkway'
);

/* INSERT QUERY NO: 676 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
618908148, 'Gaye Kub', 68, 671331382, 'AB+', '50 Warner Alley'
);

/* INSERT QUERY NO: 677 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
678602842, 'Renna Mueller', 18, 904535983, 'AB+', '00 Transport Park'
);

/* INSERT QUERY NO: 678 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
777188163, 'Nellie Cartwright', 51, 741680481, 'A+', '82 Buell Pass'
);

/* INSERT QUERY NO: 679 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
756898581, 'Ross Kiehn', 58, 771125927, 'AB-', '61969 Ludington Center'
);

/* INSERT QUERY NO: 680 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
902517008, 'Errol Botsford', 20, 534328724, 'AB+', '2205 Haas Park'
);

/* INSERT QUERY NO: 681 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
848171369, 'Darcey Crona', 25, 555360196, 'AB-', '634 Jay Pass'
);

/* INSERT QUERY NO: 682 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
656189519, 'Dena Williamson', 67, 791028688, 'O-', '5 Portage Point'
);

/* INSERT QUERY NO: 683 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
870381081, 'Katelyn Murazik', 44, 558303295, 'A+', '6399 Londonderry Parkway'
);

/* INSERT QUERY NO: 684 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
564675910, 'Helene Paucek', 7, 659811766, 'AB-', '802 Transport Road'
);

/* INSERT QUERY NO: 685 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
712056845, 'Clarence Keeling', 92, 804043243, 'O+', '56155 Drewry Terrace'
);

/* INSERT QUERY NO: 686 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
900957531, 'Jadwiga Leffler', 15, 407246628, 'AB+', '53397 Prairie Rose Court'
);

/* INSERT QUERY NO: 687 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
139306775, 'Serita Reynolds', 69, 867287625, 'A-', '420 New Castle Parkway'
);

/* INSERT QUERY NO: 688 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
262372916, 'Zachery Nikolaus', 43, 935484350, 'AB-', '954 Pine View Drive'
);

/* INSERT QUERY NO: 689 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
746933721, 'Queen Hoeger', 71, 683879463, 'O-', '7 Crownhardt Drive'
);

/* INSERT QUERY NO: 690 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
780411567, 'Jame Leffler', 78, 581798723, 'AB+', '52379 Washington Street'
);

/* INSERT QUERY NO: 691 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
391166576, 'Santiago Bergstrom', 59, 846336617, 'AB+', '1014 Melrose Crossing'
);

/* INSERT QUERY NO: 692 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
416127127, 'Archie Goyette', 92, 962481942, 'AB-', '708 Mccormick Trail'
);

/* INSERT QUERY NO: 693 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
185820417, 'Josef Green', 13, 264618551, 'AB-', '29597 Grover Center'
);

/* INSERT QUERY NO: 694 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
550938786, 'Asa Quitzon', 93, 112019701, 'AB+', '1062 Drewry Street'
);

/* INSERT QUERY NO: 695 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
272364173, 'Arla Marvin', 96, 377045447, 'B-', '2061 Laurel Terrace'
);

/* INSERT QUERY NO: 696 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
163918649, 'Donte Bailey', 32, 888658183, 'AB+', '5665 Claremont Drive'
);

/* INSERT QUERY NO: 697 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
680208566, 'Lesley Kertzmann', 45, 132231572, 'AB+', '99 Mayfield Way'
);

/* INSERT QUERY NO: 698 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
660350458, 'Chelsea Brakus', 91, 427965138, 'A+', '0920 Susan Plaza'
);

/* INSERT QUERY NO: 699 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
483186847, 'Kandace Feest', 82, 217559468, 'A-', '182 Talmadge Road'
);

/* INSERT QUERY NO: 700 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
763298348, 'Christian Lueilwitz', 20, 489187435, 'O+', '3 Colorado Way'
);

/* INSERT QUERY NO: 701 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
265080970, 'Andre D\'Amore', 16, 949057423, 'AB-', '3 Lawn Drive'
);

/* INSERT QUERY NO: 702 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
484084938, 'Marya Bahringer', 99, 928934342, 'O-', '7 Rockefeller Trail'
);

/* INSERT QUERY NO: 703 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
524232738, 'Edmundo Zemlak', 73, 147840017, 'B-', '61541 Farmco Plaza'
);

/* INSERT QUERY NO: 704 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
941384165, 'Carlton Carroll', 39, 634110034, 'O-', '60798 Brickson Park Place'
);

/* INSERT QUERY NO: 705 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
484650877, 'Lance Jakubowski', 84, 863444117, 'A+', '7526 Rutledge Hill'
);

/* INSERT QUERY NO: 706 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
236356449, 'Maryjane Weissnat', 71, 625069861, 'AB-', '07 Derek Center'
);

/* INSERT QUERY NO: 707 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
830094186, 'German Will', 21, 344009239, 'AB+', '25 Shoshone Center'
);

/* INSERT QUERY NO: 708 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
909549037, 'Ellamae Halvorson', 52, 943857996, 'B+', '457 Prentice Crossing'
);

/* INSERT QUERY NO: 709 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
994041747, 'Sharilyn Considine', 52, 913389802, 'O-', '5 Larry Trail'
);

/* INSERT QUERY NO: 710 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
532751690, 'Michael Jaskolski', 19, 166279192, 'B-', '21 Green Ridge Plaza'
);

/* INSERT QUERY NO: 711 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
568133062, 'Malika Leannon', 99, 784276187, 'AB-', '117 Carpenter Point'
);

/* INSERT QUERY NO: 712 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
286362018, 'Clyde Treutel', 53, 860398430, 'O-', '1655 Bowman Parkway'
);

/* INSERT QUERY NO: 713 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
468088987, 'Marlena Spinka', 38, 181589842, 'B-', '2391 Garrison Center'
);

/* INSERT QUERY NO: 714 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
235242762, 'Gerald Bashirian', 40, 562156443, 'AB+', '01933 Anderson Way'
);

/* INSERT QUERY NO: 715 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
374552537, 'Bette Kozey', 100, 816563697, 'AB+', '47102 Tennyson Drive'
);

/* INSERT QUERY NO: 716 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
895424208, 'Carlie Price', 60, 279050227, 'O+', '223 Towne Hill'
);

/* INSERT QUERY NO: 717 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
989014392, 'Leia Russel', 47, 693965290, 'AB+', '75 Porter Plaza'
);

/* INSERT QUERY NO: 718 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
321039134, 'Rolland Bahringer', 31, 282139067, 'AB-', '870 Miller Street'
);

/* INSERT QUERY NO: 719 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
945986179, 'Tom Kuhlman', 8, 250473183, 'B-', '72255 Garrison Parkway'
);

/* INSERT QUERY NO: 720 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
439815268, 'Sergio Rowe', 73, 930148930, 'AB-', '35 Gateway Parkway'
);

/* INSERT QUERY NO: 721 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
828324712, 'Gerard Dicki', 59, 995872670, 'A-', '1 Miller Point'
);

/* INSERT QUERY NO: 722 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
886258950, 'Efren Braun', 52, 168328932, 'AB+', '07235 Vahlen Street'
);

/* INSERT QUERY NO: 723 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
943498615, 'Porfirio Spinka', 67, 163601355, 'A-', '89780 North Street'
);

/* INSERT QUERY NO: 724 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
575095226, 'Wayne Wuckert', 82, 902022935, 'AB-', '36701 Monica Place'
);

/* INSERT QUERY NO: 725 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
921771154, 'Lanny Senger', 87, 136905414, 'O+', '32351 Nevada Hill'
);

/* INSERT QUERY NO: 726 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
838201554, 'Lonnie Thompson', 85, 251503003, 'A+', '57462 Larry Center'
);

/* INSERT QUERY NO: 727 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
399158227, 'Bobby Daugherty', 80, 403076019, 'O-', '214 Evergreen Avenue'
);

/* INSERT QUERY NO: 728 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
401198543, 'Royce Haag', 55, 153349993, 'AB-', '27 Meadow Ridge Avenue'
);

/* INSERT QUERY NO: 729 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
595987814, 'Palmer Gibson', 43, 632832211, 'AB+', '83067 Lillian Alley'
);

/* INSERT QUERY NO: 730 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
430392554, 'Jed Waelchi', 34, 398221541, 'AB+', '7 Hermina Street'
);

/* INSERT QUERY NO: 731 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
485102908, 'Sheryl Hudson', 93, 679973148, 'AB+', '34 Lakeland Way'
);

/* INSERT QUERY NO: 732 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
496763307, 'Jay Abbott', 98, 194382756, 'O+', '13 Raven Parkway'
);

/* INSERT QUERY NO: 733 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
362474028, 'Micheal Turner', 95, 402614189, 'AB+', '97 Blue Bill Park Alley'
);

/* INSERT QUERY NO: 734 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
615060630, 'May Mitchell', 64, 614132391, 'O-', '7 Oriole Trail'
);

/* INSERT QUERY NO: 735 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
243953169, 'Sebastian Hagenes', 92, 106410719, 'B-', '6551 Spenser Lane'
);

/* INSERT QUERY NO: 736 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
732235258, 'Manuel Morissette', 6, 992393466, 'AB+', '3 Oxford Junction'
);

/* INSERT QUERY NO: 737 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
589994403, 'Forest Jacobs', 19, 705558012, 'AB-', '0998 Aberg Place'
);

/* INSERT QUERY NO: 738 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
526465030, 'Kassie Kunde', 72, 729770637, 'B-', '4 Old Shore Circle'
);

/* INSERT QUERY NO: 739 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
331778094, 'Sharon Walter', 97, 989936743, 'AB-', '2 Ryan Road'
);

/* INSERT QUERY NO: 740 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
249483234, 'Darlena Kris', 21, 256722894, 'O-', '02786 Ruskin Alley'
);

/* INSERT QUERY NO: 741 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
565623531, 'Pierre Kunde', 62, 497962212, 'A+', '1 Di Loreto Park'
);

/* INSERT QUERY NO: 742 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
883447715, 'Zachariah Howe', 85, 462985436, 'B-', '890 Sunnyside Avenue'
);

/* INSERT QUERY NO: 743 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
115672448, 'Yong Fritsch', 92, 413885480, 'AB+', '1 Caliangt Park'
);

/* INSERT QUERY NO: 744 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
101317344, 'Hollis Stracke', 26, 958485763, 'B+', '29844 Cardinal Terrace'
);

/* INSERT QUERY NO: 745 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
196506776, 'Freeman Morar', 65, 457863074, 'B-', '05 Valley Edge Trail'
);

/* INSERT QUERY NO: 746 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
554936075, 'Arnetta Hartmann', 8, 137176612, 'B+', '16 Grayhawk Way'
);

/* INSERT QUERY NO: 747 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
798679302, 'Phoebe Corwin', 10, 197186269, 'AB+', '40 Alpine Park'
);

/* INSERT QUERY NO: 748 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
282923331, 'Felix McGlynn', 31, 852448156, 'O-', '956 East Drive'
);

/* INSERT QUERY NO: 749 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
484689668, 'Evan Cartwright', 10, 926956053, 'AB-', '1421 Morrow Place'
);

/* INSERT QUERY NO: 750 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
396624336, 'Wilda Schimmel', 34, 186871065, 'AB+', '9900 Everett Plaza'
);

/* INSERT QUERY NO: 751 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
977057416, 'Jo Kessler', 34, 863329436, 'A-', '17661 Graedel Street'
);

/* INSERT QUERY NO: 752 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
332569556, 'Katelin Willms', 89, 315915163, 'AB+', '89 Meadow Vale Point'
);

/* INSERT QUERY NO: 753 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
674546377, 'Bronwyn Tromp', 82, 775834803, 'B+', '0 Prairieview Hill'
);

/* INSERT QUERY NO: 754 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
827691764, 'Osvaldo Hermann', 18, 938511762, 'O-', '06089 Vidon Plaza'
);

/* INSERT QUERY NO: 755 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
586016284, 'Genna Thompson', 36, 310589783, 'O+', '2474 Almo Alley'
);

/* INSERT QUERY NO: 756 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
425010942, 'Salley Gulgowski', 76, 256440439, 'AB+', '95 Mifflin Junction'
);

/* INSERT QUERY NO: 757 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
355504577, 'Elise Adams', 65, 216041708, 'AB-', '5 Hudson Avenue'
);

/* INSERT QUERY NO: 758 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
776724456, 'Madonna Abshire', 96, 941191250, 'O-', '92 Milwaukee Pass'
);

/* INSERT QUERY NO: 759 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
939285731, 'Willy O\'Hara', 72, 686574366, 'AB+', '16076 Dapin Drive'
);

/* INSERT QUERY NO: 760 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
729995172, 'Gilbert Wisoky', 100, 196452423, 'AB+', '276 Jana Parkway'
);

/* INSERT QUERY NO: 761 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
776987871, 'Courtney Bosco', 6, 690804926, 'AB+', '21 3rd Road'
);

/* INSERT QUERY NO: 762 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
915378851, 'Debroah Carroll', 46, 221931687, 'A-', '6356 Jackson Parkway'
);

/* INSERT QUERY NO: 763 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
868866129, 'Shauna Waelchi', 64, 487721542, 'AB+', '90 Express Drive'
);

/* INSERT QUERY NO: 764 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
167283912, 'Andreas Schinner', 70, 844054665, 'A-', '0906 Banding Way'
);

/* INSERT QUERY NO: 765 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
279411561, 'Marcelo Huels', 73, 391349413, 'O+', '9 Stuart Center'
);

/* INSERT QUERY NO: 766 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
614227664, 'Demarcus Price', 68, 267593223, 'AB+', '2 Hoffman Junction'
);

/* INSERT QUERY NO: 767 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
636494214, 'Vanita Osinski', 69, 253300518, 'AB-', '7192 Kim Plaza'
);

/* INSERT QUERY NO: 768 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
507324739, 'Shad Lehner', 45, 818264316, 'O-', '292 Fuller Alley'
);

/* INSERT QUERY NO: 769 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
504450325, 'Pansy Gutmann', 19, 604247045, 'AB-', '15 Petterle Plaza'
);

/* INSERT QUERY NO: 770 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
482159272, 'Moises Tillman', 33, 607579415, 'AB-', '039 Pawling Plaza'
);

/* INSERT QUERY NO: 771 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
408119220, 'Rosanne Cronin', 42, 862339592, 'O+', '55 Di Loreto Street'
);

/* INSERT QUERY NO: 772 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
806124594, 'Sal Konopelski', 84, 332413701, 'AB+', '321 Cascade Road'
);

/* INSERT QUERY NO: 773 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
696199847, 'Kathrin Rodriguez', 21, 368807667, 'AB+', '95 American Ash Trail'
);

/* INSERT QUERY NO: 774 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
520952753, 'Shakita Lemke', 67, 932700276, 'O-', '420 Oxford Avenue'
);

/* INSERT QUERY NO: 775 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
121713742, 'Gabriel Howe', 77, 443143897, 'AB-', '6 Dapin Street'
);

/* INSERT QUERY NO: 776 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
578263986, 'Eric Funk', 71, 895497700, 'AB-', '22777 Hanover Park'
);

/* INSERT QUERY NO: 777 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
524482517, 'Tasia Purdy', 51, 145539438, 'AB+', '6 Butternut Pass'
);

/* INSERT QUERY NO: 778 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
588311329, 'Loretta Brown', 49, 640571784, 'AB+', '68971 Pankratz Hill'
);

/* INSERT QUERY NO: 779 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
582766994, 'Marlon Oberbrunner', 76, 146399037, 'A+', '4 Westport Place'
);

/* INSERT QUERY NO: 780 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
188887427, 'Isaac Sawayn', 6, 581554201, 'AB-', '95 Sage Place'
);

/* INSERT QUERY NO: 781 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
520702851, 'Jules Wunsch', 91, 792921669, 'B-', '44380 Donald Place'
);

/* INSERT QUERY NO: 782 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
881140170, 'Sunny Wolf', 41, 616832398, 'A+', '2323 Marquette Lane'
);

/* INSERT QUERY NO: 783 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
779291315, 'Verena Bartoletti', 65, 170480969, 'AB+', '702 Charing Cross Junction'
);

/* INSERT QUERY NO: 784 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
492615424, 'Bruce Lynch', 79, 651090926, 'AB+', '79966 Sundown Terrace'
);

/* INSERT QUERY NO: 785 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
163785674, 'Vergie Hoeger', 59, 323714483, 'O+', '75 Transport Way'
);

/* INSERT QUERY NO: 786 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
286793870, 'Ali Moore', 10, 460815085, 'AB+', '32529 Bartillon Terrace'
);

/* INSERT QUERY NO: 787 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
403133696, 'Elwanda Gutkowski', 27, 346800464, 'B+', '7552 Crownhardt Crossing'
);

/* INSERT QUERY NO: 788 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
373922789, 'Roosevelt Green', 72, 862079374, 'O-', '39 Twin Pines Place'
);

/* INSERT QUERY NO: 789 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
145846102, 'Fidel Simonis', 47, 359180737, 'AB-', '584 Loomis Alley'
);

/* INSERT QUERY NO: 790 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
327409705, 'Thanh Johnson', 8, 114751216, 'A-', '609 Rieder Place'
);

/* INSERT QUERY NO: 791 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
805258941, 'Rick Schimmel', 39, 411143089, 'AB-', '7 Eagan Terrace'
);

/* INSERT QUERY NO: 792 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
450008275, 'Maura Leffler', 37, 867019976, 'O+', '1591 Cordelia Street'
);

/* INSERT QUERY NO: 793 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
364723963, 'Kristen Carroll', 63, 835202451, 'AB+', '002 5th Alley'
);

/* INSERT QUERY NO: 794 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
613714227, 'Devin Kessler', 84, 511131205, 'AB+', '74736 Glendale Street'
);

/* INSERT QUERY NO: 795 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
597329935, 'Takako O\'Conner', 76, 319323088, 'AB+', '96709 Myrtle Court'
);

/* INSERT QUERY NO: 796 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
811893888, 'Karla Metz', 100, 128599714, 'B-', '3 Gale Way'
);

/* INSERT QUERY NO: 797 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
682887924, 'Thao Berge', 15, 159215653, 'AB+', '504 Mandrake Park'
);

/* INSERT QUERY NO: 798 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
545552363, 'Margy Toy', 55, 585409753, 'B+', '43 Lyons Parkway'
);

/* INSERT QUERY NO: 799 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
880781172, 'Marcellus Wolf', 64, 997598119, 'B-', '73 Autumn Leaf Street'
);

/* INSERT QUERY NO: 800 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
632905530, 'Lucio Osinski', 28, 714649695, 'A-', '2124 Northridge Center'
);

/* INSERT QUERY NO: 801 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
581086488, 'Jules Runolfsson', 21, 132607942, 'B+', '9 Pierstorff Circle'
);

/* INSERT QUERY NO: 802 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
371956335, 'Noe Hartmann', 52, 604345765, 'AB+', '3005 Jenna Park'
);

/* INSERT QUERY NO: 803 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
212424176, 'Desire Runolfsdottir', 94, 766463404, 'AB-', '97909 Morning Junction'
);

/* INSERT QUERY NO: 804 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
865580326, 'Earle Raynor', 42, 543650299, 'O+', '63639 Basil Avenue'
);

/* INSERT QUERY NO: 805 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
701148643, 'Andrew Spinka', 25, 845458686, 'A+', '539 Vera Junction'
);

/* INSERT QUERY NO: 806 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
359532751, 'Franklyn Nitzsche', 48, 414780104, 'AB+', '57677 Oriole Court'
);

/* INSERT QUERY NO: 807 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
110959113, 'Jeannetta Schulist', 21, 532070012, 'B+', '23154 Green Ridge Point'
);

/* INSERT QUERY NO: 808 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
277110877, 'Earl Larkin', 9, 648038769, 'AB+', '5 Meadow Ridge Junction'
);

/* INSERT QUERY NO: 809 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
632829023, 'Cornell Swift', 66, 192349263, 'AB-', '2202 Dixon Circle'
);

/* INSERT QUERY NO: 810 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
933442764, 'Loma Hane', 3, 793372111, 'AB-', '476 Warrior Crossing'
);

/* INSERT QUERY NO: 811 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
181116192, 'Jeromy Block', 95, 147368857, 'O-', '51 Sheridan Center'
);

/* INSERT QUERY NO: 812 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
702281617, 'Sherwood Hickle', 72, 243343052, 'B+', '56831 Namekagon Park'
);

/* INSERT QUERY NO: 813 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
156661151, 'Neal Toy', 99, 422073591, 'AB-', '90745 Elka Road'
);

/* INSERT QUERY NO: 814 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
900070748, 'Philip Weissnat', 91, 418390032, 'A-', '6448 Bashford Park'
);

/* INSERT QUERY NO: 815 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
688888955, 'Chanelle Bergstrom', 95, 647770175, 'AB+', '919 Susan Center'
);

/* INSERT QUERY NO: 816 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
949288569, 'Kyle Bednar', 16, 494616800, 'O-', '5769 Riverside Avenue'
);

/* INSERT QUERY NO: 817 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
421456857, 'Judson Schroeder', 46, 895151784, 'AB+', '1 Kim Drive'
);

/* INSERT QUERY NO: 818 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
478452980, 'Euna Little', 43, 131808985, 'AB-', '15 Annamark Center'
);

/* INSERT QUERY NO: 819 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
511696682, 'Jc Schmitt', 21, 709725643, 'B+', '04537 Sugar Plaza'
);

/* INSERT QUERY NO: 820 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
214835113, 'Gordon Leuschke', 23, 689828807, 'O-', '893 Hovde Park'
);

/* INSERT QUERY NO: 821 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
175953721, 'Jani Swift', 67, 603580576, 'AB+', '4 Donald Way'
);

/* INSERT QUERY NO: 822 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
890680731, 'Cortez Muller', 97, 625643410, 'O+', '6555 Lukken Way'
);

/* INSERT QUERY NO: 823 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
728410265, 'Leandro Kuhlman', 30, 451960456, 'AB+', '0414 1st Pass'
);

/* INSERT QUERY NO: 824 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
552396992, 'Ezra Connelly', 50, 429341087, 'A-', '0553 Hanson Center'
);

/* INSERT QUERY NO: 825 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
868392240, 'Alexander Roberts', 89, 258201468, 'AB-', '480 Eagan Street'
);

/* INSERT QUERY NO: 826 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
784742545, 'Lawana Stokes', 64, 849817490, 'AB-', '8867 Westridge Plaza'
);

/* INSERT QUERY NO: 827 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
666732621, 'Samual Nader', 5, 283875763, 'AB-', '580 Northview Crossing'
);

/* INSERT QUERY NO: 828 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
612284740, 'Will Langworth', 18, 215937742, 'B+', '23759 Valley Edge Circle'
);

/* INSERT QUERY NO: 829 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
942890884, 'Shanda Hilpert', 85, 384598790, 'AB-', '92 Quincy Hill'
);

/* INSERT QUERY NO: 830 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
846678765, 'Gretchen Hermiston', 69, 487957426, 'AB+', '2 Forest Road'
);

/* INSERT QUERY NO: 831 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
905180813, 'Russ Greenfelder', 78, 556765681, 'AB+', '0200 Montana Point'
);

/* INSERT QUERY NO: 832 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
402370841, 'Galen Donnelly', 85, 361069926, 'A-', '34 Reinke Plaza'
);

/* INSERT QUERY NO: 833 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
368598590, 'Erik Blanda', 23, 116871723, 'AB+', '36792 Dexter Avenue'
);

/* INSERT QUERY NO: 834 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
443076047, 'Johnnie Bradtke', 96, 906205106, 'AB+', '26944 Florence Junction'
);

/* INSERT QUERY NO: 835 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
848496450, 'Efrain Quitzon', 22, 744956135, 'AB+', '7 Duke Drive'
);

/* INSERT QUERY NO: 836 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
274209072, 'Noe McClure', 39, 874159892, 'B-', '6 Lillian Junction'
);

/* INSERT QUERY NO: 837 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
250277843, 'Sue Predovic', 38, 978027323, 'AB+', '76 Bunker Hill Park'
);

/* INSERT QUERY NO: 838 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
618324054, 'Inell DuBuque', 34, 947057751, 'AB+', '19770 Gale Parkway'
);

/* INSERT QUERY NO: 839 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
360842153, 'Dylan Conn', 65, 395749180, 'B+', '84 Fair Oaks Parkway'
);

/* INSERT QUERY NO: 840 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
690591989, 'Etta Kerluke', 6, 185116928, 'AB+', '4889 Maywood Place'
);

/* INSERT QUERY NO: 841 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
694244572, 'Chaya Grady', 85, 704047855, 'AB-', '97 Melby Junction'
);

/* INSERT QUERY NO: 842 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
477744017, 'Roosevelt Corwin', 72, 817916624, 'AB+', '938 Mallory Avenue'
);

/* INSERT QUERY NO: 843 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
721496727, 'Alecia Buckridge', 58, 477116515, 'A-', '5 Parkside Crossing'
);

/* INSERT QUERY NO: 844 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
665858415, 'Shaunta Rempel', 23, 745783406, 'A-', '83039 Haas Lane'
);

/* INSERT QUERY NO: 845 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
954268369, 'Carmela Kuphal', 56, 897660621, 'AB+', '489 Dakota Center'
);

/* INSERT QUERY NO: 846 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
805431362, 'Roma Howell', 4, 318110459, 'AB+', '6968 Grim Park'
);

/* INSERT QUERY NO: 847 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
300894071, 'Jina Prohaska', 54, 743464506, 'B-', '3284 Thierer Trail'
);

/* INSERT QUERY NO: 848 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
587560489, 'Evan Kunze', 80, 594391126, 'B+', '4513 Northwestern Court'
);

/* INSERT QUERY NO: 849 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
693944141, 'Matha Zulauf', 66, 846461244, 'AB-', '1 Summerview Hill'
);

/* INSERT QUERY NO: 850 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
977165189, 'Dominic Donnelly', 98, 423321971, 'AB+', '28 Nancy Street'
);

/* INSERT QUERY NO: 851 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
965047526, 'Barbra Schneider', 46, 982768305, 'O+', '483 Tennessee Plaza'
);

/* INSERT QUERY NO: 852 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
999518066, 'Priscila Jacobs', 73, 773132930, 'A+', '76 Oneill Park'
);

/* INSERT QUERY NO: 853 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
604506329, 'Gwen Doyle', 75, 934563334, 'O+', '87950 Aberg Plaza'
);

/* INSERT QUERY NO: 854 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
932702402, 'Abigail Terry', 19, 154725466, 'B-', '10607 Bartillon Court'
);

/* INSERT QUERY NO: 855 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
114876856, 'Robert Hettinger', 52, 907025630, 'AB+', '9 Rigney Park'
);

/* INSERT QUERY NO: 856 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
961128658, 'Christena Thiel', 1, 324049900, 'O+', '2697 Thackeray Way'
);

/* INSERT QUERY NO: 857 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
507816732, 'Coy McKenzie', 21, 451071950, 'AB-', '1 Dottie Court'
);

/* INSERT QUERY NO: 858 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
398354746, 'Trudie Adams', 66, 348234700, 'AB+', '3756 Cottonwood Place'
);

/* INSERT QUERY NO: 859 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
990468294, 'Steve O\'Reilly', 10, 985227203, 'AB-', '3729 Westridge Center'
);

/* INSERT QUERY NO: 860 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
377723851, 'Julius Hand', 76, 289015345, 'A-', '011 Randy Crossing'
);

/* INSERT QUERY NO: 861 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
538773317, 'Lazaro Jenkins', 86, 719461833, 'O+', '704 Lawn Hill'
);

/* INSERT QUERY NO: 862 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
508746713, 'Tamica Kihn', 71, 771320972, 'AB+', '5983 Scofield Trail'
);

/* INSERT QUERY NO: 863 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
482890206, 'Richard Collins', 81, 707757160, 'AB-', '6 Dexter Park'
);

/* INSERT QUERY NO: 864 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
725287100, 'Xavier Bernhard', 57, 890892602, 'A-', '2425 Debra Pass'
);

/* INSERT QUERY NO: 865 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
308968102, 'Elroy Carroll', 17, 397075268, 'AB+', '9 Fisk Crossing'
);

/* INSERT QUERY NO: 866 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
505505530, 'James Kautzer', 43, 824203778, 'AB-', '89639 Comanche Road'
);

/* INSERT QUERY NO: 867 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
287432315, 'Gerri Yundt', 78, 802312707, 'AB+', '8 Hansons Court'
);

/* INSERT QUERY NO: 868 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
320284569, 'Giovanni Boyle', 42, 353198356, 'O-', '710 2nd Lane'
);

/* INSERT QUERY NO: 869 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
763610755, 'Clark Klocko', 62, 596136923, 'AB+', '5 Almo Road'
);

/* INSERT QUERY NO: 870 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
431581524, 'Brent Schuster', 37, 554624809, 'O-', '81 Tennyson Terrace'
);

/* INSERT QUERY NO: 871 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
279822436, 'Renate Stroman', 74, 584104024, 'AB+', '22656 8th Pass'
);

/* INSERT QUERY NO: 872 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
393694568, 'Wendell Bogisich', 80, 491453857, 'O+', '03 Lerdahl Trail'
);

/* INSERT QUERY NO: 873 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
484228143, 'Fran Swift', 38, 188415336, 'O+', '032 Hanson Crossing'
);

/* INSERT QUERY NO: 874 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
677925964, 'Ignacio Cummings', 34, 413913153, 'AB+', '54365 Thompson Pass'
);

/* INSERT QUERY NO: 875 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
416187741, 'Marco Thiel', 72, 804097858, 'O-', '58 Charing Cross Avenue'
);

/* INSERT QUERY NO: 876 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
783583289, 'Damien Abbott', 7, 742207955, 'A+', '28362 Northview Court'
);

/* INSERT QUERY NO: 877 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
198075532, 'Zona Predovic', 73, 948833498, 'O+', '309 Fisk Avenue'
);

/* INSERT QUERY NO: 878 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
901676984, 'Thaddeus Kemmer', 34, 882943327, 'O+', '077 Southridge Road'
);

/* INSERT QUERY NO: 879 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
224008229, 'Lorena Gusikowski', 40, 530717035, 'A-', '11782 Milwaukee Junction'
);

/* INSERT QUERY NO: 880 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
321411820, 'Kary Luettgen', 4, 678300026, 'O+', '89963 Cordelia Plaza'
);

/* INSERT QUERY NO: 881 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
607207526, 'Willa Raynor', 18, 635201577, 'O-', '9 Delaware Parkway'
);

/* INSERT QUERY NO: 882 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
673121425, 'Lacy Huel', 100, 773490074, 'AB-', '660 Bunting Center'
);

/* INSERT QUERY NO: 883 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
473276574, 'Calvin Skiles', 59, 760997265, 'B-', '09757 Sugar Terrace'
);

/* INSERT QUERY NO: 884 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
767178200, 'Emmitt Denesik', 91, 453901765, 'O+', '703 Vahlen Avenue'
);

/* INSERT QUERY NO: 885 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
361841583, 'Dannie Little', 100, 708981973, 'A+', '5859 Fairfield Park'
);

/* INSERT QUERY NO: 886 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
299414042, 'Dylan Parisian', 28, 100516060, 'AB-', '70738 Almo Trail'
);

/* INSERT QUERY NO: 887 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
947338722, 'Octavio Jenkins', 41, 784012843, 'AB+', '270 Calypso Court'
);

/* INSERT QUERY NO: 888 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
753724518, 'Nicholas Dare', 79, 908753483, 'O+', '294 Mockingbird Place'
);

/* INSERT QUERY NO: 889 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
370844923, 'Josphine Lemke', 70, 370509550, 'B+', '3125 Forest Dale Place'
);

/* INSERT QUERY NO: 890 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
503736654, 'Jamison Howell', 36, 512765434, 'AB+', '768 Carey Crossing'
);

/* INSERT QUERY NO: 891 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
859641363, 'Elidia Marvin', 18, 763124773, 'B+', '4760 Jana Place'
);

/* INSERT QUERY NO: 892 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
630843902, 'Earl Pfeffer', 56, 718818618, 'O+', '0 Dayton Court'
);

/* INSERT QUERY NO: 893 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
428141006, 'Amos Volkman', 13, 538308877, 'AB+', '5 Scott Junction'
);

/* INSERT QUERY NO: 894 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
169201244, 'Tisha Ebert', 17, 713051108, 'AB-', '8 Fordem Alley'
);

/* INSERT QUERY NO: 895 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
939340972, 'Lanny Hoeger', 58, 987618239, 'AB+', '5 Almo Circle'
);

/* INSERT QUERY NO: 896 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
944589198, 'Leota Mann', 53, 927141217, 'AB-', '74 Thackeray Parkway'
);

/* INSERT QUERY NO: 897 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
456657859, 'Orval Wunsch', 49, 600922669, 'O+', '5538 Village Green Terrace'
);

/* INSERT QUERY NO: 898 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
197855406, 'Madonna Swaniawski', 46, 804460683, 'O+', '62283 Starling Circle'
);

/* INSERT QUERY NO: 899 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
707526536, 'Myung Moore', 83, 867145199, 'O+', '230 Service Point'
);

/* INSERT QUERY NO: 900 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
944469748, 'Karry Grimes', 76, 539723543, 'B+', '889 Tennessee Junction'
);

/* INSERT QUERY NO: 901 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
473651975, 'Marylou Hilpert', 72, 516647446, 'AB+', '512 4th Center'
);

/* INSERT QUERY NO: 902 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
491186759, 'Lyman Quitzon', 59, 187224256, 'O+', '94 Pepper Wood Trail'
);

/* INSERT QUERY NO: 903 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
472409344, 'Carmelina Stamm', 80, 941200092, 'B-', '78 Birchwood Plaza'
);

/* INSERT QUERY NO: 904 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
661650741, 'Jeanene Okuneva', 53, 375787131, 'AB+', '255 Karstens Court'
);

/* INSERT QUERY NO: 905 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
505564904, 'Olive Glover', 68, 523583649, 'AB-', '9204 Mifflin Crossing'
);

/* INSERT QUERY NO: 906 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
611120573, 'Kary Conn', 46, 606274656, 'O+', '303 Cambridge Place'
);

/* INSERT QUERY NO: 907 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
451946576, 'Levi Kozey', 42, 126876035, 'AB+', '47 Kings Avenue'
);

/* INSERT QUERY NO: 908 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
844110230, 'Clint Wehner', 65, 492569625, 'O+', '2290 Northfield Alley'
);

/* INSERT QUERY NO: 909 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
852636774, 'Trista Dicki', 54, 631751925, 'B-', '4224 Charing Cross Parkway'
);

/* INSERT QUERY NO: 910 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
704044037, 'Jason Harber', 32, 832806029, 'AB+', '0 Stang Crossing'
);

/* INSERT QUERY NO: 911 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
505087286, 'Romelia Lindgren', 45, 628626446, 'AB-', '10497 Village Green Road'
);

/* INSERT QUERY NO: 912 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
461662647, 'Dee Weimann', 25, 100118383, 'AB-', '28013 Darwin Road'
);

/* INSERT QUERY NO: 913 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
184644202, 'Edmundo Hintz', 75, 468108331, 'AB+', '21033 Saint Paul Junction'
);

/* INSERT QUERY NO: 914 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
560481616, 'Arnulfo Bruen', 45, 259940251, 'AB+', '400 Gerald Drive'
);

/* INSERT QUERY NO: 915 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
362289590, 'Vinita Parisian', 70, 506156209, 'AB+', '2 6th Street'
);

/* INSERT QUERY NO: 916 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
437935207, 'Rufus Smith', 88, 642146412, 'O+', '09 Sutteridge Street'
);

/* INSERT QUERY NO: 917 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
707650475, 'Heriberto Stracke', 75, 574820375, 'O-', '6754 International Parkway'
);

/* INSERT QUERY NO: 918 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
685993929, 'Elene Casper', 49, 597692019, 'AB-', '24 Monument Road'
);

/* INSERT QUERY NO: 919 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
409128474, 'Ta McClure', 70, 936284448, 'AB-', '7167 Dexter Way'
);

/* INSERT QUERY NO: 920 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
810485606, 'Harland Cummerata', 97, 961572720, 'A+', '678 Prentice Place'
);

/* INSERT QUERY NO: 921 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
630030364, 'Grace Ratke', 46, 206318871, 'AB+', '73 Esch Lane'
);

/* INSERT QUERY NO: 922 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
754959645, 'Bernardina Wunsch', 16, 315240843, 'AB-', '0 Valley Edge Center'
);

/* INSERT QUERY NO: 923 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
312842324, 'Emil Frami', 7, 597264570, 'AB-', '336 Debs Point'
);

/* INSERT QUERY NO: 924 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
610319930, 'Alyse Lemke', 74, 241208507, 'O-', '0 Eliot Road'
);

/* INSERT QUERY NO: 925 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
472802955, 'Sherlyn King', 81, 565714792, 'AB+', '6948 Moland Road'
);

/* INSERT QUERY NO: 926 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
752100430, 'Bonny Hills', 13, 426678038, 'AB-', '46426 Dakota Trail'
);

/* INSERT QUERY NO: 927 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
346572634, 'Denver Gutkowski', 37, 672517211, 'AB+', '28 Blue Bill Park Junction'
);

/* INSERT QUERY NO: 928 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
506859911, 'Trinity Bergstrom', 59, 162347987, 'A+', '2 Ridgeview Lane'
);

/* INSERT QUERY NO: 929 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
256209098, 'Shauna Lesch', 51, 915514818, 'A+', '0063 American Ash Plaza'
);

/* INSERT QUERY NO: 930 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
680962282, 'Miss Hudson', 59, 388947725, 'B-', '28 Surrey Street'
);

/* INSERT QUERY NO: 931 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
411091678, 'Theron Paucek', 34, 654844883, 'AB-', '35592 Coolidge Point'
);

/* INSERT QUERY NO: 932 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
510098248, 'Laurence Schulist', 20, 888976767, 'O-', '47153 Melrose Center'
);

/* INSERT QUERY NO: 933 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
807600523, 'Ryan Crooks', 55, 180514062, 'A+', '7 Novick Road'
);

/* INSERT QUERY NO: 934 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
403504043, 'Chia Zulauf', 9, 706299677, 'O+', '87960 Forest Dale Place'
);

/* INSERT QUERY NO: 935 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
869924541, 'Eldridge Koss', 1, 936800054, 'B+', '0 Anhalt Lane'
);

/* INSERT QUERY NO: 936 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
714358869, 'Alessandra Wuckert', 34, 119887193, 'O+', '416 Charing Cross Park'
);

/* INSERT QUERY NO: 937 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
844210296, 'Lincoln Schulist', 92, 554401619, 'O-', '6083 Eggendart Alley'
);

/* INSERT QUERY NO: 938 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
262593679, 'Karole Wunsch', 89, 536084333, 'A-', '4 Moland Terrace'
);

/* INSERT QUERY NO: 939 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
598405989, 'Karisa Klein', 91, 927378005, 'O+', '66830 Hanover Lane'
);

/* INSERT QUERY NO: 940 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
973965794, 'Markita Mayert', 23, 663690027, 'AB+', '72585 Badeau Street'
);

/* INSERT QUERY NO: 941 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
158942730, 'Adrien Kreiger', 99, 393127432, 'B-', '016 Lerdahl Trail'
);

/* INSERT QUERY NO: 942 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
617202536, 'Blair Schuppe', 53, 339359666, 'AB-', '3015 Macpherson Junction'
);

/* INSERT QUERY NO: 943 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
972815673, 'Charlene Nicolas', 3, 336318881, 'AB-', '90 5th Circle'
);

/* INSERT QUERY NO: 944 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
672499867, 'Aurea Goodwin', 28, 823022316, 'AB-', '59690 Macpherson Lane'
);

/* INSERT QUERY NO: 945 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
972765722, 'Miquel Lemke', 100, 413129698, 'O+', '141 Gale Center'
);

/* INSERT QUERY NO: 946 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
776725161, 'Woodrow Macejkovic', 72, 180610696, 'AB+', '61849 8th Park'
);

/* INSERT QUERY NO: 947 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
619523667, 'Miranda Haag', 23, 533794385, 'A+', '8454 Jana Junction'
);

/* INSERT QUERY NO: 948 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
132003056, 'Sophie Hammes', 35, 220027828, 'AB+', '35213 Eagle Crest Place'
);

/* INSERT QUERY NO: 949 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
441431605, 'Caron Jacobi', 61, 529315450, 'O-', '0 Acker Park'
);

/* INSERT QUERY NO: 950 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
152429787, 'Magdalena Jacobi', 85, 811421638, 'AB-', '20 Lakeland Parkway'
);

/* INSERT QUERY NO: 951 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
548646326, 'Maynard Harvey', 28, 944845689, 'AB+', '43444 Hansons Avenue'
);

/* INSERT QUERY NO: 952 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
541254727, 'Sylvester Kuhic', 37, 621603557, 'A-', '968 Merchant Pass'
);

/* INSERT QUERY NO: 953 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
320240735, 'Melodi Schultz', 95, 272626940, 'AB-', '67800 Chinook Circle'
);

/* INSERT QUERY NO: 954 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
366156195, 'Emiko Lindgren', 63, 223744705, 'AB+', '67632 Sunnyside Pass'
);

/* INSERT QUERY NO: 955 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
436864642, 'Alfredo Emmerich', 38, 979002440, 'AB+', '4 Blaine Circle'
);

/* INSERT QUERY NO: 956 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
769444653, 'Jenna Langosh', 9, 530362638, 'O+', '8 Sage Plaza'
);

/* INSERT QUERY NO: 957 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
854288686, 'Lyndon Ryan', 37, 495124473, 'AB+', '0026 Bartelt Junction'
);

/* INSERT QUERY NO: 958 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
178401916, 'Bobbie Lynch', 89, 975793407, 'A+', '07 Dennis Point'
);

/* INSERT QUERY NO: 959 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
468062475, 'Rashad Christiansen', 76, 737322319, 'B-', '950 Everett Center'
);

/* INSERT QUERY NO: 960 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
857199647, 'Renato Block', 43, 659258770, 'O-', '6 Roth Lane'
);

/* INSERT QUERY NO: 961 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
987946248, 'Jennette Funk', 68, 545794851, 'AB-', '51 Moose Street'
);

/* INSERT QUERY NO: 962 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
240927027, 'Eliza Schmeler', 3, 615269459, 'AB-', '47715 Forster Avenue'
);

/* INSERT QUERY NO: 963 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
312429239, 'Santa Franecki', 96, 750080194, 'AB+', '22 Heffernan Park'
);

/* INSERT QUERY NO: 964 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
981593741, 'Maynard Lynch', 55, 862014069, 'AB-', '38 Hagan Crossing'
);

/* INSERT QUERY NO: 965 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
421191515, 'Sook Dooley', 79, 241307598, 'O-', '82 Prairie Rose Alley'
);

/* INSERT QUERY NO: 966 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
804331679, 'Darcey Marquardt', 29, 407736809, 'AB-', '4 Tennessee Drive'
);

/* INSERT QUERY NO: 967 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
237338725, 'Lorita Lang', 82, 699966964, 'O+', '7011 Myrtle Junction'
);

/* INSERT QUERY NO: 968 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
692857686, 'Alexa Heidenreich', 4, 276053687, 'AB-', '3 John Wall Hill'
);

/* INSERT QUERY NO: 969 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
583075175, 'Joey Langosh', 79, 433233022, 'A+', '7343 Bartillon Point'
);

/* INSERT QUERY NO: 970 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
915789396, 'Myrtis Koss', 43, 402067817, 'AB+', '193 Glendale Circle'
);

/* INSERT QUERY NO: 971 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
949579435, 'Jefferson Gutkowski', 5, 885387834, 'AB+', '643 Ramsey Street'
);

/* INSERT QUERY NO: 972 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
287861279, 'Seth Fahey', 1, 261646004, 'AB+', '4247 Golf Course Terrace'
);

/* INSERT QUERY NO: 973 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
754816849, 'Leroy Will', 71, 659867981, 'O+', '876 Sugar Court'
);

/* INSERT QUERY NO: 974 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
469749884, 'Fredric Kris', 10, 659992777, 'O-', '44 Surrey Road'
);

/* INSERT QUERY NO: 975 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
951795864, 'Elisabeth Russel', 60, 200181515, 'AB-', '0955 Barnett Point'
);

/* INSERT QUERY NO: 976 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
804316461, 'Paul Jacobson', 70, 805549184, 'A+', '24 Village Place'
);

/* INSERT QUERY NO: 977 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
425810936, 'Ignacia Beahan', 30, 162590768, 'O+', '0 Bayside Park'
);

/* INSERT QUERY NO: 978 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
491624524, 'Ian Dibbert', 44, 983173887, 'B+', '354 Johnson Street'
);

/* INSERT QUERY NO: 979 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
492018633, 'Kelvin Cole', 30, 777363052, 'A-', '7 Springview Lane'
);

/* INSERT QUERY NO: 980 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
635649324, 'Oralia Hills', 48, 588964852, 'B-', '8 Moose Road'
);

/* INSERT QUERY NO: 981 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
551630916, 'Warren Trantow', 94, 895163231, 'AB+', '426 Kedzie Drive'
);

/* INSERT QUERY NO: 982 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
529137301, 'Stewart Denesik', 18, 158089502, 'AB+', '0 Norway Maple Street'
);

/* INSERT QUERY NO: 983 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
855462563, 'Troy Ruecker', 99, 691423005, 'AB-', '94410 Dawn Avenue'
);

/* INSERT QUERY NO: 984 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
472086914, 'Lanora Botsford', 82, 116074332, 'B-', '9 Cherokee Way'
);

/* INSERT QUERY NO: 985 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
342040390, 'Norman Shanahan', 79, 305387052, 'B+', '2 Ruskin Plaza'
);

/* INSERT QUERY NO: 986 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
469360628, 'Philomena Simonis', 28, 355054780, 'AB+', '595 Ruskin Way'
);

/* INSERT QUERY NO: 987 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
776451342, 'Nichol Hagenes', 74, 881332187, 'B+', '80015 Green Ridge Pass'
);

/* INSERT QUERY NO: 988 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
724104751, 'Evia Farrell', 85, 490987267, 'B-', '10982 Moose Avenue'
);

/* INSERT QUERY NO: 989 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
677741831, 'Rod Muller', 78, 879052113, 'B-', '11593 Ridgeway Plaza'
);

/* INSERT QUERY NO: 990 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
130679412, 'Jude Renner', 77, 765634061, 'A+', '388 5th Crossing'
);

/* INSERT QUERY NO: 991 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
923865461, 'Odette Ernser', 44, 243650841, 'O+', '9 Browning Junction'
);

/* INSERT QUERY NO: 992 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
200602343, 'Santina Aimonetti', 23, 509246082, 'O+', '439 Colorado Way'
);

/* INSERT QUERY NO: 993 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
486652325, 'Darwin Collins', 98, 229031203, 'B-', '380 Linden Drive'
);

/* INSERT QUERY NO: 994 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
208559327, 'Stacey Morissette', 26, 341039413, 'O+', '6604 Morrow Pass'
);

/* INSERT QUERY NO: 995 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
372543055, 'Shelley Kerluke', 42, 619025560, 'B+', '04 Dryden Avenue'
);

/* INSERT QUERY NO: 996 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
232394782, 'Dalton Dare', 10, 784737176, 'AB-', '25402 Fair Oaks Parkway'
);

/* INSERT QUERY NO: 997 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
909223236, 'Cameron Bradtke', 97, 219771538, 'B-', '9 5th Parkway'
);

/* INSERT QUERY NO: 998 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
680831498, 'Emmett Beer', 7, 203041969, 'AB-', '4926 Mcbride Street'
);

/* INSERT QUERY NO: 999 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
181770853, 'Lyla Williamson', 48, 788312908, 'AB+', '538 Mccormick Junction'
);

/* INSERT QUERY NO: 1000 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
732227365, 'Alec Stoltenberg', 69, 562736741, 'AB-', '367 Vahlen Junction'
);

/* INSERT QUERY NO: 1 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000000, 'Alphonse Kuhlman', 30, 647047517, 'AB+', '63 Vernon Drive'
);

/* INSERT QUERY NO: 2 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000001, 'Nicolasa Wunsch', 65, 721053181, 'O+', '50417 Rowland Pass'
);

/* INSERT QUERY NO: 3 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000002, 'Theodore Denesik', 30, 836193382, 'B-', '394 Armistice Drive'
);

/* INSERT QUERY NO: 4 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000003, 'Lino Robel', 6, 422724607, 'O-', '83655 Mccormick Center'
);

/* INSERT QUERY NO: 5 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000004, 'Antwan Torphy', 96, 647967012, 'O-', '2707 Spohn Pass'
);

/* INSERT QUERY NO: 6 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000005, 'Chang Dicki', 81, 523078625, 'B+', '5 Thackeray Crossing'
);

/* INSERT QUERY NO: 7 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000006, 'Sharonda Sipes', 21, 222149778, 'O-', '796 Aberg Junction'
);

/* INSERT QUERY NO: 8 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000007, 'Moshe Kiehn', 31, 190909726, 'O-', '11070 Stang Street'
);

/* INSERT QUERY NO: 9 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000008, 'Les Littel', 89, 577668189, 'AB-', '809 Annamark Place'
);

/* INSERT QUERY NO: 10 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000009, 'Phil Schroeder', 54, 497034730, 'AB-', '0 Clyde Gallagher Trail'
);

/* INSERT QUERY NO: 11 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000010, 'Erich Ernser', 55, 359979152, 'A-', '72453 7th Center'
);

/* INSERT QUERY NO: 12 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000011, 'Myrtice Jakubowski', 55, 640320345, 'O+', '7021 Swallow Avenue'
);

/* INSERT QUERY NO: 13 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000012, 'Conchita Von', 1, 346013869, 'AB+', '54 Spohn Court'
);

/* INSERT QUERY NO: 14 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000013, 'Kenda Bins', 39, 181700636, 'AB-', '01 Grover Terrace'
);

/* INSERT QUERY NO: 15 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000014, 'Rosena Moore', 99, 995794055, 'AB-', '300 Dennis Avenue'
);

/* INSERT QUERY NO: 16 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000015, 'Vella Homenick', 29, 359615135, 'O+', '136 Sachtjen Hill'
);

/* INSERT QUERY NO: 17 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000016, 'Gerardo Pollich', 38, 608550707, 'O-', '98154 Fieldstone Road'
);

/* INSERT QUERY NO: 18 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000017, 'Florida Wehner', 14, 554373681, 'A+', '44614 Lakewood Trail'
);

/* INSERT QUERY NO: 19 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000018, 'Fidela Konopelski', 75, 334286839, 'O-', '18 Lighthouse Bay Crossing'
);

/* INSERT QUERY NO: 20 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000019, 'Akiko Abbott', 82, 943379131, 'O-', '047 Jay Pass'
);

/* INSERT QUERY NO: 21 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000020, 'Danny Towne', 56, 145491667, 'AB-', '3 Killdeer Point'
);

/* INSERT QUERY NO: 22 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000021, 'Rolland Becker', 61, 957349312, 'B+', '467 Northport Parkway'
);

/* INSERT QUERY NO: 23 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000022, 'Arlen Dietrich', 25, 185918851, 'O+', '153 Dixon Circle'
);

/* INSERT QUERY NO: 24 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000023, 'Eve Miller', 79, 219769436, 'O+', '4 Marquette Drive'
);

/* INSERT QUERY NO: 25 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000024, 'Roxanna Howe', 52, 533325495, 'O+', '9993 Katie Trail'
);

/* INSERT QUERY NO: 26 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000025, 'Chauncey Strosin', 57, 344639943, 'O-', '85 Blue Bill Park Drive'
);

/* INSERT QUERY NO: 27 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000026, 'Lanie Conroy', 87, 245922456, 'O+', '103 Memorial Avenue'
);

/* INSERT QUERY NO: 28 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000027, 'Garth Towne', 17, 850423713, 'B+', '331 Bunker Hill Street'
);

/* INSERT QUERY NO: 29 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000028, 'Kristine Kuhlman', 71, 180904209, 'AB-', '5 Thierer Pass'
);

/* INSERT QUERY NO: 30 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000029, 'Queenie Hackett', 10, 479374084, 'A-', '529 Forest Run Street'
);

/* INSERT QUERY NO: 31 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000030, 'Minh McKenzie', 76, 926983456, 'B-', '5544 Almo Hill'
);

/* INSERT QUERY NO: 32 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000031, 'Myesha Smith', 87, 435682720, 'AB-', '4634 Marquette Street'
);

/* INSERT QUERY NO: 33 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000032, 'Jasmin Purdy', 94, 736101211, 'AB-', '041 Luster Way'
);

/* INSERT QUERY NO: 34 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000033, 'Tanesha Stokes', 28, 632744410, 'B+', '6 Clarendon Street'
);

/* INSERT QUERY NO: 35 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000034, 'Clotilde Pagac', 90, 372320595, 'AB+', '59763 Forest Run Plaza'
);

/* INSERT QUERY NO: 36 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000035, 'Augustina Renner', 19, 207875515, 'O-', '56 Barnett Pass'
);

/* INSERT QUERY NO: 37 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000036, 'Arlie Bins', 32, 879523803, 'O-', '2 Clemons Alley'
);

/* INSERT QUERY NO: 38 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000037, 'Lyndon Olson', 97, 654856314, 'AB-', '98465 Haas Point'
);

/* INSERT QUERY NO: 39 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000038, 'Terrance Gleichner', 90, 957218697, 'B-', '09443 Muir Road'
);

/* INSERT QUERY NO: 40 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000039, 'Jessi Muller', 10, 590334621, 'AB+', '253 Spohn Drive'
);

/* INSERT QUERY NO: 41 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000040, 'Sally Effertz', 25, 894125247, 'O+', '3762 Crowley Place'
);

/* INSERT QUERY NO: 42 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000041, 'Miquel Douglas', 66, 564240303, 'AB-', '18828 Victoria Alley'
);

/* INSERT QUERY NO: 43 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000042, 'Margarete Parisian', 79, 489970337, 'B-', '3936 Jenna Place'
);

/* INSERT QUERY NO: 44 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000043, 'Osvaldo Boyle', 96, 859769720, 'O+', '918 Autumn Leaf Circle'
);

/* INSERT QUERY NO: 45 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000044, 'Neil Christiansen', 63, 447079116, 'AB-', '157 Bluestem Avenue'
);

/* INSERT QUERY NO: 46 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000045, 'Angelika Roberts', 5, 925612948, 'AB+', '7779 Blue Bill Park Center'
);

/* INSERT QUERY NO: 47 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000046, 'Greg Wisozk', 18, 389604673, 'O+', '96 New Castle Junction'
);

/* INSERT QUERY NO: 48 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000047, 'Roy Kling', 78, 545286089, 'A-', '2187 Shelley Terrace'
);

/* INSERT QUERY NO: 49 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000048, 'Dale Cremin', 95, 517370750, 'O-', '0 Golf Place'
);

/* INSERT QUERY NO: 50 */
INSERT INTO PERSON(SSN, name, age, phone_nb, blood_grp, address)
VALUES
(
100000049, 'Joslyn Veum', 42, 400475339, 'O-', '720 Pankratz Road'
);




/* INSERT QUERY NO: 1 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
719864564, 1829, '14:00:00', '8:00:00', NULL, 'wlarcombe0@tuttocitta.it', 'rfn732T'
);

/* INSERT QUERY NO: 2 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
289931136, 2616, '20:00:00', '8:00:00', NULL, 'bghiotto1@goo.gl', 'wg4jnL'
);

/* INSERT QUERY NO: 3 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
612392381, 1732, '14:00:00', '20:00:00', NULL, 'rdunridge2@msn.com', 'CrQuiz84p'
);

/* INSERT QUERY NO: 4 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
930735058, 4561, '14:00:00', '20:00:00', NULL, 'mgodsal3@wikia.com', 'rE0U78wvsik'
);

/* INSERT QUERY NO: 5 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
715244303, 3282, '8:00:00', '14:00:00', NULL, 'bromaine4@yolasite.com', 'gSlGSSRK'
);

/* INSERT QUERY NO: 6 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
512102233, 3458, '2:00:00', '14:00:00', NULL, 'jogborne5@mozilla.org', 'JaQVQf'
);

/* INSERT QUERY NO: 7 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
457614703, 4707, '20:00:00', '14:00:00', NULL, 'tcrispe6@mtv.com', 'nPDaIY7a'
);

/* INSERT QUERY NO: 8 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
310672150, 1987, '14:00:00', '14:00:00', NULL, 'besherwood7@ycombinator.com', 'Nge49bsH6s'
);

/* INSERT QUERY NO: 9 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
873888404, 4346, '20:00:00', '20:00:00', NULL, 'rmacgeaney8@cyberchimps.com', 'gKWUDfhQLKW9'
);

/* INSERT QUERY NO: 10 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
660354682, 2389, '14:00:00', '14:00:00', NULL, 'bsorbey9@people.com.cn', 'iwiE64f'
);

/* INSERT QUERY NO: 11 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
492172191, 4415, '14:00:00', '2:00:00', NULL, 'doloughlina@squidoo.com', 'YbowWdnw'
);

/* INSERT QUERY NO: 12 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
983465195, 2341, '20:00:00', '2:00:00', NULL, 'ztrenouthb@opensource.org', 'x16rhD8pO'
);

/* INSERT QUERY NO: 13 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
914493402, 1954, '2:00:00', '20:00:00', NULL, 'jgirardengoc@bloomberg.com', 'WrqGNds0e'
);

/* INSERT QUERY NO: 14 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
984208013, 1371, '14:00:00', '8:00:00', NULL, 'stibbettsd@sourceforge.net', 'YV7ilFC'
);

/* INSERT QUERY NO: 15 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
388287820, 3906, '14:00:00', '8:00:00', NULL, 'geagane@ca.gov', 'hS5o9lwO'
);

/* INSERT QUERY NO: 16 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
825172416, 4665, '2:00:00', '20:00:00', NULL, 'mbernlif@ca.gov', '6Jmyo2'
);

/* INSERT QUERY NO: 17 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
647800044, 2988, '2:00:00', '14:00:00', NULL, 'tdedrickg@npr.org', 'skz0Iw'
);

/* INSERT QUERY NO: 18 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
631260728, 3282, '14:00:00', '14:00:00', NULL, 'jcolleyh@aboutads.info', 'xYy19hIIvaw5'
);

/* INSERT QUERY NO: 19 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
119826631, 1517, '2:00:00', '20:00:00', NULL, 'dmacmeartyi@senate.gov', '9LffJK'
);

/* INSERT QUERY NO: 20 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
808550212, 4022, '8:00:00', '20:00:00', NULL, 'phartilj@nsw.gov.au', 'augW1J2oU'
);

/* INSERT QUERY NO: 21 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
475261394, 2660, '14:00:00', '14:00:00', NULL, 'nlaurensk@cam.ac.uk', 'csCj89hv'
);

/* INSERT QUERY NO: 22 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
359329466, 1669, '14:00:00', '14:00:00', NULL, 'gluskl@cloudflare.com', 'ooAZSF'
);

/* INSERT QUERY NO: 23 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
445728692, 3077, '14:00:00', '14:00:00', NULL, 'dhayesm@gravatar.com', 'QZCu3g3IJzE'
);

/* INSERT QUERY NO: 24 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
714781229, 2091, '8:00:00', '20:00:00', NULL, 'mmallatrattn@gmpg.org', 'xFTYvQ9U'
);

/* INSERT QUERY NO: 25 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
279291110, 1925, '14:00:00', '14:00:00', NULL, 'dbrockhouseo@discuz.net', 'JVu458k7cz'
);

/* INSERT QUERY NO: 26 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
957895538, 1854, '14:00:00', '14:00:00', NULL, 'tmormanp@cyberchimps.com', 'Ig0W6qEZx'
);

/* INSERT QUERY NO: 27 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
551382777, 4230, '20:00:00', '2:00:00', NULL, 'swankaq@uiuc.edu', 'F5n8jlxflx'
);

/* INSERT QUERY NO: 28 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
103872682, 3482, '14:00:00', '8:00:00', NULL, 'bclerkr@merriam-webster.com', 'l5gxHkMU'
);

/* INSERT QUERY NO: 29 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
177315911, 2644, '14:00:00', '14:00:00', NULL, 'jgoslins@free.fr', 'V1JrNx'
);

/* INSERT QUERY NO: 30 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
191218411, 4768, '14:00:00', '8:00:00', NULL, 'bmagsont@yale.edu', 'aQXh4Nz8'
);

/* INSERT QUERY NO: 31 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
866970274, 4056, '14:00:00', '20:00:00', NULL, 'ksilversonu@berkeley.edu', 'k2QUoSrXY7C'
);

/* INSERT QUERY NO: 32 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
573640603, 4024, '14:00:00', '2:00:00', NULL, 'bkauschkev@ask.com', 'e0kPVRvhY'
);

/* INSERT QUERY NO: 33 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
777774691, 3329, '14:00:00', '14:00:00', NULL, 'jmccutcheonw@rambler.ru', 'e2z6Yy'
);

/* INSERT QUERY NO: 34 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
884664527, 4693, '14:00:00', '14:00:00', NULL, 'eellingfordx@seattletimes.com', 'ljpY14A8n'
);

/* INSERT QUERY NO: 35 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
691122502, 4852, '14:00:00', '14:00:00', NULL, 'kprowtingy@sina.com.cn', 'tLjKAfz'
);

/* INSERT QUERY NO: 36 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
425002608, 1079, '20:00:00', '14:00:00', NULL, 'rcogglesz@posterous.com', 'dYhBDXc'
);

/* INSERT QUERY NO: 37 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
186782291, 4528, '14:00:00', '14:00:00', NULL, 'sdelmonti10@oakley.com', 'OkerIWbY'
);

/* INSERT QUERY NO: 38 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
124135489, 1593, '14:00:00', '14:00:00', NULL, 'bskayman11@springer.com', 'scsxXjBat'
);

/* INSERT QUERY NO: 39 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
487134501, 4409, '14:00:00', '14:00:00', NULL, 'fcurthoys12@nih.gov', 'LgO7N97AsVo'
);

/* INSERT QUERY NO: 40 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
473906866, 4432, '14:00:00', '14:00:00', NULL, 'bguye13@tinyurl.com', 'JwqmWPiw'
);

/* INSERT QUERY NO: 41 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
360224711, 4607, '20:00:00', '14:00:00', NULL, 'jmorl14@icio.us', 'uOVfEAB'
);

/* INSERT QUERY NO: 42 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
994606592, 2632, '20:00:00', '2:00:00', NULL, 'sboffey15@usatoday.com', 'p1KWx3Gi1zk'
);

/* INSERT QUERY NO: 43 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
770910840, 1536, '20:00:00', '14:00:00', NULL, 'spinchen16@google.fr', 'SAlmr0'
);

/* INSERT QUERY NO: 44 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
335456678, 4952, '20:00:00', '8:00:00', NULL, 'lplues17@typepad.com', 'b0lNcCCCRh'
);

/* INSERT QUERY NO: 45 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
793952572, 1869, '2:00:00', '2:00:00', NULL, 'kemslie18@cafepress.com', 'xQJxtD'
);

/* INSERT QUERY NO: 46 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
489363943, 2874, '14:00:00', '2:00:00', NULL, 'gyves19@washington.edu', 'w0iMQDxc'
);

/* INSERT QUERY NO: 47 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
121696724, 2666, '20:00:00', '14:00:00', NULL, 'fbanane1a@tripod.com', 'Wg94ObRkPER'
);

/* INSERT QUERY NO: 48 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
154886895, 3131, '14:00:00', '20:00:00', NULL, 'dwinkle1b@apache.org', 'QJonu6rm'
);

/* INSERT QUERY NO: 49 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
938104487, 1393, '14:00:00', '14:00:00', NULL, 'pmckiddin1c@sphinn.com', 'BDkyuAZgPbY'
);

/* INSERT QUERY NO: 50 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
535157826, 4674, '20:00:00', '14:00:00', NULL, 'shatherill1d@artisteer.com', 'viOHrTaXNQw'
);

/* INSERT QUERY NO: 51 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
415461433, 4302, '20:00:00', '14:00:00', NULL, 'gbrocks1e@myspace.com', '8LLjwL2'
);

/* INSERT QUERY NO: 52 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
464544418, 3527, '8:00:00', '8:00:00', NULL, 'aheggadon1f@engadget.com', 'PiudQfMreFJ'
);

/* INSERT QUERY NO: 549 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
228786585, 4427, '20:00:00', '14:00:00', NULL, 'gguichardf8@sciencedirect.com', 'z8Ku2Ldbrt'
);

/* INSERT QUERY NO: 550 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
479915457, 3159, '2:00:00', '14:00:00', NULL, 'cfeldonf9@hugedomains.com', 'hBEx6g6slB'
);
/* INSERT QUERY NO: 53 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
672033550, 4967, '20:00:00', '14:00:00', NULL, 'gbrechin1g@chronoengine.com', 'LVTM05UmogTm'
);

/* INSERT QUERY NO: 54 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
429725355, 2261, '14:00:00', '20:00:00', NULL, 'fstquenin1h@google.es', 'B3s8nwrx9x6'
);

/* INSERT QUERY NO: 55 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
705858701, 1982, '14:00:00', '8:00:00', NULL, 'mkalf1i@reddit.com', 'jM4WLK5WKKL'
);

/* INSERT QUERY NO: 56 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
621335778, 3716, '14:00:00', '14:00:00', NULL, 'alecordier1j@over-blog.com', '6uhn3wmndr'
);

/* INSERT QUERY NO: 57 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
575164400, 3374, '14:00:00', '20:00:00', NULL, 'lseabrocke1k@163.com', 'OzOnWEtG'
);

/* INSERT QUERY NO: 58 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
940795975, 1585, '14:00:00', '20:00:00', NULL, 'gstpierre1l@google.com', 'QG8df53lD'
);

/* INSERT QUERY NO: 59 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
601013900, 1628, '14:00:00', '20:00:00', NULL, 'bmullineux1m@sciencedirect.com', 'AHOrdjqJZCo'
);

/* INSERT QUERY NO: 60 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
730109764, 4690, '14:00:00', '14:00:00', NULL, 'hstanlike1n@hostgator.com', 'GWwWejMBwWJS'
);

/* INSERT QUERY NO: 61 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
371393640, 1245, '8:00:00', '20:00:00', NULL, 'adsouza1o@ocn.ne.jp', 'xstArIKe'
);

/* INSERT QUERY NO: 62 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
140874616, 4556, '20:00:00', '14:00:00', NULL, 'dbeade1p@blogs.com', 'NotiQOZnr'
);

/* INSERT QUERY NO: 63 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
459184233, 2316, '20:00:00', '14:00:00', NULL, 'lmessenbird1q@parallels.com', 'XWUfsIxryWC'
);

/* INSERT QUERY NO: 64 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
866113252, 4246, '14:00:00', '14:00:00', NULL, 'polongain1r@digg.com', 'UK46yyUpk'
);

/* INSERT QUERY NO: 65 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
126972984, 2584, '14:00:00', '20:00:00', NULL, 'sjewett1s@uiuc.edu', '2rMdG1Ap'
);

/* INSERT QUERY NO: 66 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
993412112, 2641, '20:00:00', '14:00:00', NULL, 'bcradock1t@google.com.br', 'JQ5W5zKlVjLp'
);

/* INSERT QUERY NO: 67 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
925745525, 4684, '14:00:00', '20:00:00', NULL, 'ascullard1u@sina.com.cn', '7AotbbUMM'
);

/* INSERT QUERY NO: 68 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
182081400, 4946, '14:00:00', '14:00:00', NULL, 'jemanson1v@usgs.gov', 'tnbCOFrUn'
);

/* INSERT QUERY NO: 69 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
117394836, 2900, '14:00:00', '14:00:00', NULL, 'bmcgilben1w@boston.com', 'QCwAIWoB5N'
);

/* INSERT QUERY NO: 70 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
501394739, 3903, '2:00:00', '14:00:00', NULL, 'zstrathern1x@networksolutions.com', 'FbRp9wG'
);

/* INSERT QUERY NO: 71 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
340408620, 1099, '14:00:00', '8:00:00', NULL, 'sfurnell1y@opensource.org', 'hUoSsuuS'
);

/* INSERT QUERY NO: 72 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
430780731, 2365, '20:00:00', '14:00:00', NULL, 'wbensen1z@mapy.cz', 'aKrazEn'
);

/* INSERT QUERY NO: 73 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
623872532, 4571, '14:00:00', '14:00:00', NULL, 'ncranefield20@newsvine.com', 'ytJhzgKtdb'
);

/* INSERT QUERY NO: 74 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
185038326, 1044, '20:00:00', '14:00:00', NULL, 'bgilardengo21@histats.com', 'bPz3ev9'
);

/* INSERT QUERY NO: 75 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
491831873, 1978, '20:00:00', '20:00:00', NULL, 'aopenshaw22@cdc.gov', 'wBiaoaZ7Z'
);

/* INSERT QUERY NO: 76 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
698293213, 2819, '20:00:00', '14:00:00', NULL, 'bjemmison23@nymag.com', 'ysQO3bONj5wk'
);

/* INSERT QUERY NO: 77 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
375143626, 4498, '2:00:00', '20:00:00', NULL, 'plaflin24@ihg.com', '8lZlyne1Etj'
);

/* INSERT QUERY NO: 78 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
638836364, 3390, '14:00:00', '20:00:00', NULL, 'mpozer25@people.com.cn', '5cXXzPSNF'
);

/* INSERT QUERY NO: 79 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
918337884, 2587, '14:00:00', '14:00:00', NULL, 'palldre26@posterous.com', 'T80jogUCGl'
);

/* INSERT QUERY NO: 80 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
842471721, 1475, '14:00:00', '8:00:00', NULL, 'abeverley27@springer.com', 'iBQRVSM1pZ8'
);

/* INSERT QUERY NO: 81 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
356738982, 3804, '20:00:00', '8:00:00', NULL, 'jmorrott28@comsenz.com', '0ObXFYd9nXq'
);

/* INSERT QUERY NO: 82 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
194742711, 3125, '8:00:00', '20:00:00', NULL, 'ggredden29@elegantthemes.com', 'aFQJtdOjcQ'
);

/* INSERT QUERY NO: 83 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
211364019, 2222, '14:00:00', '14:00:00', NULL, 'iconsadine2a@icio.us', 'QA6Tc7I'
);

/* INSERT QUERY NO: 84 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
963810136, 3675, '14:00:00', '20:00:00', NULL, 'lraiman2b@tinyurl.com', 'RBWc5iARpm'
);

/* INSERT QUERY NO: 85 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
919309389, 3470, '14:00:00', '14:00:00', NULL, 'naldine2c@microsoft.com', 'SEPGE81TrKaD'
);

/* INSERT QUERY NO: 86 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
669865712, 2635, '14:00:00', '14:00:00', NULL, 'vguiver2d@gmpg.org', 'oiZm9oY'
);

/* INSERT QUERY NO: 87 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
922900770, 2278, '2:00:00', '20:00:00', NULL, 'jmanicomb2e@goo.gl', '8arX59'
);

/* INSERT QUERY NO: 88 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
287723150, 2471, '14:00:00', '20:00:00', NULL, 'wohartnedy2f@cnn.com', 'gvZj6hQ'
);

/* INSERT QUERY NO: 89 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
723280917, 4243, '14:00:00', '14:00:00', NULL, 'lwye2g@1688.com', 'YCeIuB'
);

/* INSERT QUERY NO: 90 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
470919590, 2690, '2:00:00', '20:00:00', NULL, 'lwestover2h@mit.edu', 'q1pazqz0'
);

/* INSERT QUERY NO: 91 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
928205785, 2823, '14:00:00', '14:00:00', NULL, 'ecastillo2i@harvard.edu', 'RoIQcxhtR'
);

/* INSERT QUERY NO: 92 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
653392014, 4364, '20:00:00', '14:00:00', NULL, 'bmcettigen2j@home.pl', 'LQ06mmeFy2'
);

/* INSERT QUERY NO: 93 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
951629806, 2251, '14:00:00', '20:00:00', NULL, 'emallinar2k@nifty.com', 'GDZEsuXw'
);

/* INSERT QUERY NO: 94 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
918710235, 3950, '2:00:00', '14:00:00', NULL, 'mvinau2l@foxnews.com', 'bMCRBaayT'
);

/* INSERT QUERY NO: 95 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
990766229, 4827, '14:00:00', '20:00:00', NULL, 'twiffen2m@comsenz.com', 'G388jc0PgY6f'
);

/* INSERT QUERY NO: 96 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
230214203, 1332, '14:00:00', '2:00:00', NULL, 'sminor2n@nba.com', 'TINacfkhqy'
);

/* INSERT QUERY NO: 97 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
530814872, 3060, '2:00:00', '20:00:00', NULL, 'lcoggill2o@ucsd.edu', '5s2o0g'
);

/* INSERT QUERY NO: 98 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
899871823, 1149, '2:00:00', '14:00:00', NULL, 'srackham2p@hud.gov', '8oxyxWP5OLM'
);

/* INSERT QUERY NO: 99 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
946973645, 3099, '14:00:00', '14:00:00', 719864564, 'cderrett2q@apache.org', 'ENt3PbFYZ'
);

/* INSERT QUERY NO: 100 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
903691734, 3856, '14:00:00', '14:00:00', 289931136, 'kruddell2r@sohu.com', 'ifsR94N'
);

/* INSERT QUERY NO: 101 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
766416145, 1556, '2:00:00', '20:00:00', 612392381, 'rroullier2s@t-online.de', 'uLUKQy1TkdD'
);

/* INSERT QUERY NO: 102 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
804528239, 4306, '20:00:00', '14:00:00', 930735058, 'ddurrans2t@theglobeandmail.com', 'ax7kLhA'
);

/* INSERT QUERY NO: 103 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
512843118, 3972, '8:00:00', '2:00:00', 715244303, 'bmarcombe2u@harvard.edu', 'DCTczcJTl'
);

/* INSERT QUERY NO: 104 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
774957501, 2367, '20:00:00', '20:00:00', 512102233, 'ckinane2v@icq.com', 'x9CRt4'
);

/* INSERT QUERY NO: 105 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
495694915, 2244, '14:00:00', '14:00:00', 457614703, 'jconey2w@reference.com', 'vhNIq1OOY'
);

/* INSERT QUERY NO: 106 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
171593598, 2653, '14:00:00', '20:00:00', 310672150, 'ayitzovitz2x@seesaa.net', 'Ek6LDzgnp9'
);

/* INSERT QUERY NO: 107 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
122326525, 4159, '20:00:00', '14:00:00', 873888404, 'wandrin2y@guardian.co.uk', '0xF1syNomq3Y'
);

/* INSERT QUERY NO: 108 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
832951625, 2665, '8:00:00', '14:00:00', 660354682, 'wnendick2z@admin.ch', 'l7TNmzH'
);

/* INSERT QUERY NO: 109 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
322799860, 1775, '14:00:00', '14:00:00', 492172191, 'agregorin30@hatena.ne.jp', 'mtSNuHYbM'
);

/* INSERT QUERY NO: 110 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
266856407, 4967, '20:00:00', '20:00:00', 983465195, 'chaggerstone31@oracle.com', 'suci8Rc8cPZ6'
);

/* INSERT QUERY NO: 111 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
312948516, 1148, '8:00:00', '14:00:00', 914493402, 'sjaeggi32@github.io', 'ywJtCM4deJ6'
);

/* INSERT QUERY NO: 112 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
308823827, 1412, '14:00:00', '14:00:00', 984208013, 'clamboll33@jimdo.com', 'B2j6LE5Cg'
);

/* INSERT QUERY NO: 113 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
743888109, 2804, '20:00:00', '14:00:00', 388287820, 'seate34@mlb.com', 'svq7aO'
);

/* INSERT QUERY NO: 114 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
817143562, 4498, '14:00:00', '14:00:00', 825172416, 'htraill35@sphinn.com', 'XHjiYVBuWd'
);

/* INSERT QUERY NO: 115 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
629790842, 1458, '14:00:00', '14:00:00', 647800044, 'csivorn36@qq.com', 'f9kUAoFZZPMD'
);

/* INSERT QUERY NO: 116 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
693228371, 1153, '14:00:00', '20:00:00', 631260728, 'loclery37@google.ca', 'NAqLkvSSLx'
);

/* INSERT QUERY NO: 117 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
616144403, 4050, '2:00:00', '20:00:00', 119826631, 'estallibrass38@miitbeian.gov.cn', 'IXUx470xAOmh'
);

/* INSERT QUERY NO: 118 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
126761321, 4248, '14:00:00', '20:00:00', 808550212, 'lpettyfar39@scientificamerican.com', 'xaWxfjf'
);

/* INSERT QUERY NO: 119 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
397684749, 4004, '14:00:00', '14:00:00', 475261394, 'ibarreau3a@usnews.com', 'vMNW4U3K'
);

/* INSERT QUERY NO: 120 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
484825287, 3179, '14:00:00', '14:00:00', 359329466, 'blane3b@nih.gov', 'kGK0h7'
);

/* INSERT QUERY NO: 121 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
523757677, 4359, '8:00:00', '20:00:00', 445728692, 'ccossons3c@hhs.gov', 'yvdskqJ5MhG'
);

/* INSERT QUERY NO: 122 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
237429652, 3660, '14:00:00', '14:00:00', 714781229, 'mlydster3d@privacy.gov.au', '7uzsGi'
);

/* INSERT QUERY NO: 123 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
390610069, 4162, '14:00:00', '8:00:00', 279291110, 'bbuesden3e@va.gov', 'bKK4KUnCpQ'
);

/* INSERT QUERY NO: 124 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
715909011, 3834, '14:00:00', '14:00:00', 957895538, 'bsynan3f@moonfruit.com', 'xcybasHEf'
);

/* INSERT QUERY NO: 125 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
607629134, 1065, '14:00:00', '8:00:00', 551382777, 'itookey3g@xinhuanet.com', 'q8CanAZ0AQVy'
);

/* INSERT QUERY NO: 126 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
741538843, 1287, '14:00:00', '14:00:00', 103872682, 'ndavidwitz3h@about.com', 'kaH1mDfmJ056'
);

/* INSERT QUERY NO: 127 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
509613980, 1686, '14:00:00', '14:00:00', 177315911, 'adoy3i@si.edu', 'pSw73uhP'
);

/* INSERT QUERY NO: 128 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
153036692, 3966, '20:00:00', '20:00:00', 191218411, 'tstrangeway3j@blogger.com', 'ZKcefJzhYb1p'
);

/* INSERT QUERY NO: 129 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
701361481, 2030, '14:00:00', '20:00:00', 866970274, 'cfransman3k@wikia.com', '9PZLEcUr6y'
);

/* INSERT QUERY NO: 130 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
433897691, 1495, '14:00:00', '14:00:00', 573640603, 'egrinham3l@spiegel.de', 'kuDFB7Q'
);

/* INSERT QUERY NO: 131 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
998186931, 3638, '20:00:00', '14:00:00', 777774691, 'mwoollaston3m@google.com.hk', 'hDiWSAhpYg3'
);

/* INSERT QUERY NO: 132 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
175231134, 2435, '14:00:00', '14:00:00', 884664527, 'pgillan3n@columbia.edu', 'w1hxhBOne2w'
);

/* INSERT QUERY NO: 133 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
509134177, 4107, '20:00:00', '14:00:00', 691122502, 'dkalderon3o@instagram.com', 'PNkJQvGR'
);

/* INSERT QUERY NO: 134 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
282228258, 4580, '20:00:00', '14:00:00', 425002608, 'eskene3p@51.la', 'L45eHIRzO'
);

/* INSERT QUERY NO: 135 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
461086395, 2225, '14:00:00', '20:00:00', 186782291, 'braftery3q@census.gov', 'SaWcoF'
);

/* INSERT QUERY NO: 136 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
415547870, 4732, '14:00:00', '20:00:00', 124135489, 'gmcreedy3r@smugmug.com', 'pUc1wiby'
);

/* INSERT QUERY NO: 137 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
546991060, 2672, '2:00:00', '14:00:00', 487134501, 'dkornousek3s@issuu.com', 'Lnv95ihcJ0Dt'
);

/* INSERT QUERY NO: 138 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
189407024, 1806, '14:00:00', '2:00:00', 473906866, 'fphilp3t@abc.net.au', 'tVIAbhCddH'
);

/* INSERT QUERY NO: 139 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
684791763, 2902, '14:00:00', '14:00:00', 360224711, 'nbellany3u@clickbank.net', 'CXeLvWYvCH'
);

/* INSERT QUERY NO: 140 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
646633407, 2587, '8:00:00', '14:00:00', 994606592, 'mbilliard3v@rediff.com', 'S9JtGZR'
);

/* INSERT QUERY NO: 141 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
150056392, 2493, '20:00:00', '14:00:00', 770910840, 'jlody3w@tripod.com', 'Pc5KXlxL'
);

/* INSERT QUERY NO: 142 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
344378609, 2689, '14:00:00', '20:00:00', 335456678, 'lshooter3x@google.com.hk', '1JPTCckL0'
);

/* INSERT QUERY NO: 143 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
944336070, 3009, '14:00:00', '2:00:00', 793952572, 'rbendell3y@wunderground.com', 'pT8myaqWl'
);

/* INSERT QUERY NO: 144 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
460441481, 2761, '14:00:00', '2:00:00', 489363943, 'dmcdonald3z@google.de', 'O6Zui45M1L'
);

/* INSERT QUERY NO: 145 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
292741371, 4884, '14:00:00', '14:00:00', 121696724, 'dyansons40@go.com', '84NUX7Tay'
);

/* INSERT QUERY NO: 146 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
521126071, 2545, '14:00:00', '20:00:00', 154886895, 'cdaintrey41@jiathis.com', 'MWBToS7'
);

/* INSERT QUERY NO: 147 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
826274730, 1288, '2:00:00', '14:00:00', 938104487, 'emouncher42@sourceforge.net', 'SwuLV1ok'
);

/* INSERT QUERY NO: 148 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
830940458, 3814, '2:00:00', '14:00:00', 535157826, 'rbriamo43@answers.com', 'Czh2mZY5'
);

/* INSERT QUERY NO: 149 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
369207259, 3766, '14:00:00', '20:00:00', 415461433, 'rboman44@ucla.edu', 'hZnfhJ'
);

/* INSERT QUERY NO: 150 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
873307640, 3907, '20:00:00', '8:00:00', 464544418, 'ckillby45@uol.com.br', 'ntSJMxED'
);

/* INSERT QUERY NO: 151 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
805051951, 3356, '20:00:00', '14:00:00', 672033550, 'mspringall46@g.co', 'WDBB6md'
);

/* INSERT QUERY NO: 152 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
152226271, 4633, '2:00:00', '14:00:00', 429725355, 'nlurner47@stumbleupon.com', 'bqcKmx5Hs'
);

/* INSERT QUERY NO: 153 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
192691572, 2310, '2:00:00', '20:00:00', 705858701, 'cmichelin48@newsvine.com', '1pkMqx1K'
);

/* INSERT QUERY NO: 154 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
381926819, 3778, '14:00:00', '14:00:00', 621335778, 'lschonfeld49@sogou.com', 'VAoZELfE0'
);

/* INSERT QUERY NO: 155 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
701913313, 3066, '14:00:00', '14:00:00', 575164400, 'dhambrick4a@telegraph.co.uk', 'gcqyySeNgRV'
);

/* INSERT QUERY NO: 156 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
849409096, 2447, '20:00:00', '20:00:00', 940795975, 'fburbridge4b@zimbio.com', 'rQjlfCwNCTA'
);

/* INSERT QUERY NO: 157 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
172081420, 4621, '20:00:00', '20:00:00', 601013900, 'ccraft4c@surveymonkey.com', 'Ulb4OOi7'
);

/* INSERT QUERY NO: 158 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
173833685, 3107, '2:00:00', '14:00:00', 730109764, 'riacomi4d@woothemes.com', 'CeFRidpdo'
);

/* INSERT QUERY NO: 159 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
399553911, 4011, '14:00:00', '14:00:00', 371393640, 'mwestoff4e@google.cn', 'yciZ8FmzSzgO'
);

/* INSERT QUERY NO: 160 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
700890939, 3241, '14:00:00', '20:00:00', 140874616, 'cgettings4f@privacy.gov.au', 'XOQ0YPC'
);

/* INSERT QUERY NO: 161 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
891122253, 4429, '14:00:00', '20:00:00', 459184233, 'bgierek4g@pinterest.com', 'ZloN1aDXLR'
);

/* INSERT QUERY NO: 162 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
468153715, 4217, '14:00:00', '14:00:00', 866113252, 'mkilmurry4h@businesswire.com', 'VmeEnED8Ttd'
);

/* INSERT QUERY NO: 163 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
795637090, 3939, '20:00:00', '14:00:00', 126972984, 'sclawsley4i@amazon.co.uk', 'uSJ1iw'
);

/* INSERT QUERY NO: 164 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
162989426, 2972, '20:00:00', '20:00:00', 993412112, 'larundell4j@va.gov', '0np7tXr'
);

/* INSERT QUERY NO: 165 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
806368153, 1668, '14:00:00', '14:00:00', 925745525, 'tmaurice4k@bizjournals.com', 'i4L2zAH'
);

/* INSERT QUERY NO: 166 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
873253901, 2270, '14:00:00', '2:00:00', 182081400, 'bdockrey4l@gravatar.com', 'kQrRR3JxqY8w'
);

/* INSERT QUERY NO: 167 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
512706648, 1714, '14:00:00', '14:00:00', 117394836, 'mcheetam4m@themeforest.net', 'RtS9Fwz8b'
);

/* INSERT QUERY NO: 168 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
208979838, 1774, '14:00:00', '8:00:00', 501394739, 'rdadge4n@com.com', 'NcobzmN'
);

/* INSERT QUERY NO: 169 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
476660373, 4922, '14:00:00', '8:00:00', 340408620, 'pleek4o@omniture.com', 'GOjDfC2M'
);

/* INSERT QUERY NO: 170 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
509908909, 4565, '14:00:00', '14:00:00', 430780731, 'npennycook4p@prnewswire.com', 'KenI3nCGawEA'
);

/* INSERT QUERY NO: 171 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
903222492, 2374, '14:00:00', '20:00:00', 623872532, 'jdilliway4q@deliciousdays.com', 'GjHA82gZO2'
);

/* INSERT QUERY NO: 172 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
997054860, 3470, '20:00:00', '20:00:00', 185038326, 'rchitty4r@surveymonkey.com', 'Iu1TBt4MeFj'
);

/* INSERT QUERY NO: 173 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
193893976, 3617, '14:00:00', '14:00:00', 491831873, 'mshelton4s@earthlink.net', 'IHOLcVlUJeH'
);

/* INSERT QUERY NO: 174 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
439160786, 1016, '14:00:00', '2:00:00', 698293213, 'dtouzey4t@squarespace.com', 'iEmWrYHP'
);

/* INSERT QUERY NO: 175 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
304441921, 1943, '14:00:00', '20:00:00', 375143626, 'mvanhault4u@umn.edu', 'elMC2d'
);

/* INSERT QUERY NO: 176 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
165314581, 1628, '8:00:00', '20:00:00', 638836364, 'sriccione4v@tiny.cc', 'YL75aiZwdN1V'
);

/* INSERT QUERY NO: 177 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
201937784, 4059, '14:00:00', '14:00:00', 918337884, 'mhuyton4w@newsvine.com', '9y8M6FYy9m0l'
);

/* INSERT QUERY NO: 178 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
524493474, 3714, '14:00:00', '14:00:00', 842471721, 'clarret4x@wp.com', 'Wk9Jupcmc7Vm'
);

/* INSERT QUERY NO: 179 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
807290486, 3484, '2:00:00', '8:00:00', 356738982, 'vburton4y@amazon.de', 'EHf5hqn8N'
);

/* INSERT QUERY NO: 180 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
267987096, 3493, '20:00:00', '8:00:00', 194742711, 'kruffey4z@flickr.com', 'IHJu2s42C'
);

/* INSERT QUERY NO: 181 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
534891938, 1391, '14:00:00', '14:00:00', 211364019, 'omckern50@rediff.com', 'glW7F2fID2wy'
);

/* INSERT QUERY NO: 182 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
690320218, 2570, '8:00:00', '14:00:00', 963810136, 'jsowrey51@yale.edu', 'kHJIEIzf1'
);

/* INSERT QUERY NO: 183 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
566967269, 2699, '14:00:00', '20:00:00', 919309389, 'pdand52@rediff.com', 'ZJCnZU'
);

/* INSERT QUERY NO: 184 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
489436862, 3248, '20:00:00', '20:00:00', 669865712, 'kskeates53@senate.gov', 'GGiB5Yt'
);

/* INSERT QUERY NO: 185 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
764789959, 4971, '20:00:00', '14:00:00', 922900770, 'mstennet54@discovery.com', 't8vFQnRL'
);

/* INSERT QUERY NO: 186 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
193023786, 1608, '14:00:00', '20:00:00', 287723150, 'ldiggar55@mashable.com', 'Uyfib49Tz8'
);

/* INSERT QUERY NO: 187 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
217030855, 4238, '2:00:00', '14:00:00', 723280917, 'bseamark56@tinyurl.com', 'AAu8kWfk'
);

/* INSERT QUERY NO: 188 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
627557892, 4297, '8:00:00', '14:00:00', 470919590, 'fbatterton57@bluehost.com', 'qzvcDj38U'
);

/* INSERT QUERY NO: 189 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
393341976, 2103, '20:00:00', '2:00:00', 928205785, 'osim58@wired.com', '5FsxniI'
);

/* INSERT QUERY NO: 190 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
536730685, 2864, '14:00:00', '20:00:00', 653392014, 'cteasdale59@smugmug.com', 'BnXHpxc2'
);

/* INSERT QUERY NO: 191 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
298610512, 1938, '14:00:00', '14:00:00', 951629806, 'mcolvill5a@odnoklassniki.ru', 'W3hG3xI'
);

/* INSERT QUERY NO: 192 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
345063732, 1252, '14:00:00', '20:00:00', 918710235, 'aszymanowski5b@umn.edu', 'IwcjcKxl8fcx'
);

/* INSERT QUERY NO: 193 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
853446046, 4794, '2:00:00', '14:00:00', 990766229, 'hschindler5c@jugem.jp', 'WNXigXII'
);

/* INSERT QUERY NO: 194 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
788126890, 2270, '20:00:00', '20:00:00', 230214203, 'lpaunton5d@blog.com', 'sS0nvs0Yh6'
);

/* INSERT QUERY NO: 195 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
356411576, 2044, '14:00:00', '14:00:00', 530814872, 'holdey5e@tinyurl.com', 'ngYZDK'
);

/* INSERT QUERY NO: 196 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
974599335, 3287, '8:00:00', '14:00:00', 899871823, 'bmcinility5f@alexa.com', 'pUBJSeLd9'
);

/* INSERT QUERY NO: 197 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
544885031, 3279, '20:00:00', '14:00:00', 946973645, 'csewter5g@utexas.edu', 'AIa3UPDddZUp'
);

/* INSERT QUERY NO: 198 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
853375353, 3441, '14:00:00', '8:00:00', 903691734, 'sjaquet5h@bbc.co.uk', '4sr0nZAO'
);

/* INSERT QUERY NO: 199 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
151246203, 1775, '14:00:00', '14:00:00', 766416145, 'tburdekin5i@prlog.org', 'RBrlv9RdnWq'
);

/* INSERT QUERY NO: 200 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
793974852, 4274, '14:00:00', '20:00:00', 804528239, 'mpimbley5j@amazon.com', 'k4rHm4ZRaw'
);

/* INSERT QUERY NO: 201 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
555912165, 2571, '20:00:00', '14:00:00', 512843118, 'ayakov5k@drupal.org', 'n2TzuhA'
);

/* INSERT QUERY NO: 202 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
287814528, 4816, '20:00:00', '14:00:00', 774957501, 'ageertz5l@simplemachines.org', 'jtIIdIH0SUt'
);

/* INSERT QUERY NO: 203 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
238829850, 3288, '8:00:00', '14:00:00', 495694915, 'rcanizares5m@independent.co.uk', 'nIPojgZw'
);

/* INSERT QUERY NO: 204 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
952202682, 4385, '14:00:00', '14:00:00', 171593598, 'nbarber5n@surveymonkey.com', 'MkCcGs'
);

/* INSERT QUERY NO: 205 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
198956260, 2076, '2:00:00', '2:00:00', 122326525, 'agoodhall5o@biglobe.ne.jp', 'IA8Meikxb'
);

/* INSERT QUERY NO: 206 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
118486919, 3935, '14:00:00', '2:00:00', 832951625, 'cbowie5p@myspace.com', 'WjfB4tl'
);

/* INSERT QUERY NO: 207 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
404411873, 3822, '14:00:00', '14:00:00', 322799860, 'pjindrak5q@businesswire.com', 'wTPzVwnTLZy'
);

/* INSERT QUERY NO: 208 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
368570275, 2622, '20:00:00', '8:00:00', 266856407, 'codger5r@yahoo.com', 'FJ00YfVKU9bS'
);

/* INSERT QUERY NO: 209 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
300578452, 4985, '8:00:00', '14:00:00', 312948516, 'bmastrantone5s@icio.us', 'KBc0catVzsD3'
);

/* INSERT QUERY NO: 210 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
123377591, 3400, '14:00:00', '14:00:00', 308823827, 'dyurtsev5t@yahoo.com', 'XZRfeS47ffx'
);

/* INSERT QUERY NO: 211 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
709290657, 2074, '14:00:00', '14:00:00', 743888109, 'lcalbaithe5u@washington.edu', 'iLxf1QP'
);

/* INSERT QUERY NO: 212 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
800926768, 2098, '8:00:00', '20:00:00', 817143562, 'bwinwright5v@mysql.com', 'LwHIgMr'
);

/* INSERT QUERY NO: 213 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
313981003, 4329, '14:00:00', '8:00:00', 629790842, 'oandrosik5w@mac.com', 'xfUrU5yBpq'
);

/* INSERT QUERY NO: 214 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
364238656, 2743, '14:00:00', '14:00:00', 693228371, 'ryandell5x@washington.edu', 'mPdrzic'
);

/* INSERT QUERY NO: 215 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
319051307, 1147, '14:00:00', '14:00:00', 616144403, 'jmacalister5y@pbs.org', 'T1CqAv'
);

/* INSERT QUERY NO: 216 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
670716622, 1825, '14:00:00', '20:00:00', 126761321, 'kwhisker5z@google.it', 'lLOA78ZBVo'
);

/* INSERT QUERY NO: 217 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
763711964, 4936, '2:00:00', '14:00:00', 397684749, 'jpoundsford60@elpais.com', 'NQtnKEV'
);

/* INSERT QUERY NO: 218 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
614835560, 3189, '14:00:00', '14:00:00', 484825287, 'mwhitwood61@japanpost.jp', '9Ow0pIpow0LH'
);

/* INSERT QUERY NO: 219 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
830985128, 2875, '14:00:00', '14:00:00', 523757677, 'vrudge62@e-recht24.de', 'PweRN8'
);

/* INSERT QUERY NO: 220 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
788443614, 2675, '14:00:00', '14:00:00', 237429652, 'aswinglehurst63@alibaba.com', 'Xko3IxSJ2'
);

/* INSERT QUERY NO: 221 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
309402065, 2443, '14:00:00', '14:00:00', 390610069, 'udesimone64@sun.com', 'dSgn7m4m'
);

/* INSERT QUERY NO: 222 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
226355255, 2943, '14:00:00', '14:00:00', 715909011, 'eheims65@sun.com', 'dObmyu0NCB'
);

/* INSERT QUERY NO: 223 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
211439534, 2526, '14:00:00', '14:00:00', 607629134, 'mtourle66@howstuffworks.com', 'lBzzDnN0'
);

/* INSERT QUERY NO: 224 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
215815075, 1710, '14:00:00', '14:00:00', 741538843, 'bhamly67@vk.com', '8knLTTA3Mm0j'
);

/* INSERT QUERY NO: 225 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
984257874, 2753, '14:00:00', '8:00:00', 509613980, 'wwrate68@sbwire.com', '9ABbKsg9UR'
);

/* INSERT QUERY NO: 226 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
135006949, 3363, '14:00:00', '2:00:00', 153036692, 'scarnall69@typepad.com', 'nAHsrB7hC0'
);

/* INSERT QUERY NO: 227 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
321816742, 3627, '2:00:00', '14:00:00', 701361481, 'dbranno6a@flavors.me', 'BXzeeIPL3'
);

/* INSERT QUERY NO: 228 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
366000161, 2141, '8:00:00', '14:00:00', 433897691, 'mcorten6b@naver.com', 'khZKORe'
);

/* INSERT QUERY NO: 229 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
297672267, 4213, '20:00:00', '14:00:00', 998186931, 'gtreslove6c@mit.edu', 'IljwNSzz9'
);

/* INSERT QUERY NO: 230 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
867662841, 1944, '14:00:00', '14:00:00', 175231134, 'eregenhardt6d@abc.net.au', '06TRHgaaUVQR'
);

/* INSERT QUERY NO: 231 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
213526644, 1498, '14:00:00', '14:00:00', 509134177, 'fskilling6e@google.ca', 'hiWl8HH41Jr'
);

/* INSERT QUERY NO: 232 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
404455602, 1461, '14:00:00', '8:00:00', 282228258, 'mtoupe6f@sun.com', 'jUUefB35'
);

/* INSERT QUERY NO: 233 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
538397237, 3494, '14:00:00', '14:00:00', 461086395, 'gframpton6g@dot.gov', 'clGAFBLwoB'
);

/* INSERT QUERY NO: 234 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
933912911, 2687, '14:00:00', '2:00:00', 415547870, 'cingray6h@nytimes.com', 'tYLNeukyQwu'
);

/* INSERT QUERY NO: 235 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
714689951, 4631, '8:00:00', '14:00:00', 546991060, 'lhudd6i@com.com', 'o1ZpdkQw'
);

/* INSERT QUERY NO: 236 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
279896072, 4420, '2:00:00', '14:00:00', 189407024, 'proger6j@cbc.ca', 'zBNEZi'
);

/* INSERT QUERY NO: 237 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
436213770, 2935, '14:00:00', '8:00:00', 684791763, 'edewsbury6k@cbc.ca', '0kvywxuE2'
);

/* INSERT QUERY NO: 238 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
296763625, 2504, '20:00:00', '20:00:00', 646633407, 'bdytham6l@dot.gov', '4mcxQ8NEf'
);

/* INSERT QUERY NO: 239 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
276131342, 3227, '14:00:00', '14:00:00', 150056392, 'tgribbell6m@wired.com', '3FCpxJjUoqkF'
);

/* INSERT QUERY NO: 240 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
988362047, 4805, '2:00:00', '14:00:00', 344378609, 'atilburn6n@youtu.be', 'o39GdIVnz0'
);

/* INSERT QUERY NO: 241 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
985948733, 1559, '14:00:00', '14:00:00', 944336070, 'jlittlemore6o@mediafire.com', 'SN67tmc0w'
);

/* INSERT QUERY NO: 242 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
502758935, 1604, '20:00:00', '20:00:00', 460441481, 'jbuterton6p@vk.com', 'FTWolmCaXVU'
);

/* INSERT QUERY NO: 243 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
711675860, 4744, '20:00:00', '14:00:00', 292741371, 'saudus6q@arstechnica.com', 'IFVNI5BZDJV'
);

/* INSERT QUERY NO: 244 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
127138773, 4599, '14:00:00', '14:00:00', 521126071, 'lhousegoe6r@blogger.com', 'G0s6yJ'
);

/* INSERT QUERY NO: 245 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
594016924, 3279, '20:00:00', '8:00:00', 826274730, 'mcolebeck6s@phpbb.com', 'xkwZjZYB869'
);

/* INSERT QUERY NO: 246 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
732062425, 1986, '14:00:00', '14:00:00', 830940458, 'cpavek6t@house.gov', 'd9WNlfZ9tXB'
);

/* INSERT QUERY NO: 247 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
920794449, 3354, '14:00:00', '14:00:00', 369207259, 'gskoof6u@aol.com', 'qJDcqZ'
);

/* INSERT QUERY NO: 248 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
760009545, 1391, '14:00:00', '8:00:00', 873307640, 'mreddy6v@google.com.br', 'qi2YR8zRIj'
);

/* INSERT QUERY NO: 249 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
299232473, 1008, '14:00:00', '20:00:00', 805051951, 'tberanek6w@github.com', 'vGO3VkK5Ak'
);

/* INSERT QUERY NO: 250 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
765758519, 2498, '14:00:00', '14:00:00', 152226271, 'wtremblett6x@va.gov', 'egrXVJCdJ'
);

/* INSERT QUERY NO: 251 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
435117599, 1546, '20:00:00', '20:00:00', 192691572, 'hgilbey6y@marketwatch.com', 'FYpPy1lW'
);

/* INSERT QUERY NO: 252 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
592336730, 4951, '8:00:00', '14:00:00', 381926819, 'jschutter6z@hibu.com', 'xS6z8N1632'
);

/* INSERT QUERY NO: 253 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
285281032, 4905, '14:00:00', '20:00:00', 701913313, 'sghidetti70@cafepress.com', 'YNBx7CI4G'
);

/* INSERT QUERY NO: 254 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
645639451, 4629, '14:00:00', '14:00:00', 849409096, 'rkeming71@msu.edu', 'ODZgb4'
);

/* INSERT QUERY NO: 255 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
486268126, 3396, '20:00:00', '14:00:00', 172081420, 'ncleghorn72@wired.com', 'XLwSp6Z7Xs'
);

/* INSERT QUERY NO: 256 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
386368152, 3207, '2:00:00', '14:00:00', 173833685, 'tpardue73@furl.net', 'Ps42f1zMj'
);

/* INSERT QUERY NO: 257 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
715821256, 3230, '14:00:00', '14:00:00', 399553911, 'ppimley74@indiatimes.com', 'KzF2aD9'
);

/* INSERT QUERY NO: 258 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
719566446, 2902, '14:00:00', '20:00:00', 700890939, 'achattaway75@cocolog-nifty.com', '610185myQTrx'
);

/* INSERT QUERY NO: 259 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
243764793, 1401, '14:00:00', '14:00:00', 891122253, 'plangforth76@simplemachines.org', 'WjmI1wKvpgQ'
);

/* INSERT QUERY NO: 260 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
523266961, 2962, '20:00:00', '20:00:00', 468153715, 'pchaffin77@usatoday.com', 'b13Cbow'
);

/* INSERT QUERY NO: 261 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
901462702, 3327, '20:00:00', '20:00:00', 795637090, 'leasby78@github.com', 'kWq8eRkzn'
);

/* INSERT QUERY NO: 262 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
696032705, 3385, '14:00:00', '14:00:00', 162989426, 'jchipchase79@theglobeandmail.com', 'JJp1wsHhsE5'
);

/* INSERT QUERY NO: 263 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
434408554, 1845, '20:00:00', '2:00:00', 806368153, 'hbonaire7a@youku.com', '8P9sX5CjDKA'
);

/* INSERT QUERY NO: 264 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
247539709, 4980, '20:00:00', '14:00:00', 873253901, 'ahuncote7b@cnbc.com', 'BGhm3Do8IP92'
);

/* INSERT QUERY NO: 265 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
133727354, 4773, '20:00:00', '2:00:00', 512706648, 'wbirnie7c@unc.edu', 'Q8Zbi0NUiTE'
);

/* INSERT QUERY NO: 266 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
956250588, 1736, '2:00:00', '2:00:00', 208979838, 'asample7d@com.com', 'THtM6iOOU0'
);

/* INSERT QUERY NO: 267 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
972943007, 2273, '14:00:00', '14:00:00', 476660373, 'jschenfisch7e@exblog.jp', 'MGdnOv'
);

/* INSERT QUERY NO: 268 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
183281957, 2558, '20:00:00', '20:00:00', 509908909, 'eanstee7f@themeforest.net', 'hUm4DfEA'
);

/* INSERT QUERY NO: 269 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
997109381, 2942, '14:00:00', '20:00:00', 903222492, 'fverlinden7g@slashdot.org', 'U8Cvdh1'
);

/* INSERT QUERY NO: 270 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
389569695, 1359, '14:00:00', '20:00:00', 997054860, 'bmatejovsky7h@census.gov', 'ILNe8MkxDC5'
);

/* INSERT QUERY NO: 271 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
638149534, 3735, '14:00:00', '20:00:00', 193893976, 'estolberger7i@va.gov', 'Pm0whIVFJ'
);

/* INSERT QUERY NO: 272 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
424409717, 2539, '20:00:00', '20:00:00', 439160786, 'bohannay7j@technorati.com', 'GtCm7KWJ7R'
);

/* INSERT QUERY NO: 273 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
756917697, 1155, '8:00:00', '2:00:00', 304441921, 'ftaig7k@deviantart.com', 'JtUceXK3'
);

/* INSERT QUERY NO: 274 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
800007290, 1660, '20:00:00', '20:00:00', 165314581, 'pchasteney7l@chron.com', 'YNGekd'
);

/* INSERT QUERY NO: 275 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
286533098, 2951, '2:00:00', '20:00:00', 201937784, 'gjanata7m@jalbum.net', 'XBj8ZT'
);

/* INSERT QUERY NO: 276 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
997154011, 4254, '20:00:00', '14:00:00', 524493474, 'rbousquet7n@geocities.com', 'JaIKJfJHj4'
);

/* INSERT QUERY NO: 277 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
938536757, 3068, '14:00:00', '14:00:00', 807290486, 'acosgrave7o@sogou.com', 'tyyyAr7ayz'
);

/* INSERT QUERY NO: 278 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
595866004, 2258, '8:00:00', '20:00:00', 267987096, 'bcrab7p@mapy.cz', 'Gwu8Kxu5zC'
);

/* INSERT QUERY NO: 279 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
556703117, 3661, '20:00:00', '8:00:00', 534891938, 'jshilito7q@webmd.com', 'a21p8N'
);

/* INSERT QUERY NO: 280 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
634709776, 3665, '8:00:00', '14:00:00', 690320218, 'tcasazza7r@comcast.net', 'q1tq9vSBk5JH'
);

/* INSERT QUERY NO: 281 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
701580588, 3925, '8:00:00', '14:00:00', 566967269, 'dminillo7s@about.com', 'K3abW8XlZ0'
);

/* INSERT QUERY NO: 282 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
256568833, 1523, '2:00:00', '14:00:00', 489436862, 'squarmby7t@studiopress.com', 'aE5sc4PbGcyT'
);

/* INSERT QUERY NO: 283 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
896255500, 3622, '14:00:00', '14:00:00', 764789959, 'tbraams7u@spiegel.de', 'LpeeWjoo'
);

/* INSERT QUERY NO: 284 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
968666024, 1057, '14:00:00', '20:00:00', 193023786, 'sklouz7v@photobucket.com', 'zsYuKtGZ9e'
);

/* INSERT QUERY NO: 285 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
876801036, 1642, '14:00:00', '20:00:00', 217030855, 'achilde7w@gmpg.org', 'o2nOcpVA7'
);

/* INSERT QUERY NO: 286 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
315173157, 1240, '2:00:00', '14:00:00', 627557892, 'kwinckles7x@wikipedia.org', 'HDCnGfV'
);

/* INSERT QUERY NO: 287 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
825690718, 1183, '2:00:00', '2:00:00', 393341976, 'kjurasek7y@domainmarket.com', '4AW98R7u'
);

/* INSERT QUERY NO: 288 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
461748297, 1774, '14:00:00', '2:00:00', 536730685, 'lnobriga7z@google.cn', 'vcUxg5mOIG5V'
);

/* INSERT QUERY NO: 289 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
876613887, 1240, '20:00:00', '2:00:00', 298610512, 'atremellier80@wiley.com', 'nbeI0jc'
);

/* INSERT QUERY NO: 290 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
405786471, 2595, '14:00:00', '14:00:00', 345063732, 'jskottle81@deviantart.com', 'nqJLfRV'
);

/* INSERT QUERY NO: 291 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
641982747, 2447, '14:00:00', '14:00:00', 853446046, 'mquest82@forbes.com', 'mAJTtqrjpEBv'
);

/* INSERT QUERY NO: 292 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
660476746, 4195, '2:00:00', '14:00:00', 788126890, 'ntresvina83@dell.com', 'rMF5UUo9gEud'
);

/* INSERT QUERY NO: 293 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
721141100, 2392, '20:00:00', '14:00:00', 356411576, 'othoresby84@samsung.com', 'XIowDKsSt4'
);

/* INSERT QUERY NO: 294 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
836857419, 4840, '20:00:00', '14:00:00', 974599335, 'lnobes85@biglobe.ne.jp', '94gNvWS'
);

/* INSERT QUERY NO: 295 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
739216977, 1285, '14:00:00', '14:00:00', 544885031, 'gbolstridge86@aol.com', 'eGPv7xca'
);

/* INSERT QUERY NO: 296 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
168791341, 1340, '8:00:00', '14:00:00', 853375353, 'tcamamill87@virginia.edu', 'j6adW3e'
);

/* INSERT QUERY NO: 297 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
656763069, 3375, '20:00:00', '8:00:00', 151246203, 'eskehan88@list-manage.com', 'K86IYo'
);

/* INSERT QUERY NO: 298 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
346529486, 3590, '14:00:00', '14:00:00', 793974852, 'adivell89@altervista.org', 'uQfed1Q'
);

/* INSERT QUERY NO: 299 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
842514480, 2450, '8:00:00', '14:00:00', 555912165, 'sgibben8a@weather.com', 'VJwZoOQ'
);

/* INSERT QUERY NO: 300 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
924243034, 3135, '14:00:00', '14:00:00', 287814528, 'karnolds8b@etsy.com', 'jyct4xbRDVn'
);

/* INSERT QUERY NO: 301 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
608211556, 3337, '14:00:00', '20:00:00', 238829850, 'kdowyer8c@yahoo.com', 'LL748Sn0'
);

/* INSERT QUERY NO: 302 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
363393841, 2544, '14:00:00', '14:00:00', 952202682, 'jodogherty8d@sfgate.com', 'COYfNPwYV'
);

/* INSERT QUERY NO: 303 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
357219331, 2121, '20:00:00', '14:00:00', 198956260, 'wrottery8e@spiegel.de', 'u0KcKBZ1k'
);

/* INSERT QUERY NO: 304 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
238061000, 2734, '14:00:00', '2:00:00', 118486919, 'lhanscom8f@friendfeed.com', 'jDUCpkP9ew'
);

/* INSERT QUERY NO: 305 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
372173938, 2194, '8:00:00', '2:00:00', 404411873, 'tsterrick8g@mit.edu', 'idmJkJ1PqZe'
);

/* INSERT QUERY NO: 306 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
975519907, 1856, '20:00:00', '14:00:00', 368570275, 'bhallick8h@chron.com', 'fOPjgvYBNKng'
);

/* INSERT QUERY NO: 307 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
289033441, 3589, '14:00:00', '20:00:00', 300578452, 'byushin8i@wsj.com', 'F3RA0kmfvt'
);

/* INSERT QUERY NO: 308 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
853816541, 4712, '20:00:00', '14:00:00', 123377591, 'mgromley8j@hatena.ne.jp', 'drLQ6o7D'
);

/* INSERT QUERY NO: 309 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
177737126, 3320, '14:00:00', '2:00:00', 709290657, 'slassetter8k@mapy.cz', 'LY2I26SnD1V'
);

/* INSERT QUERY NO: 310 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
512772195, 4548, '8:00:00', '20:00:00', 800926768, 'fsharp8l@ask.com', 'WBFmTcAM'
);

/* INSERT QUERY NO: 311 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
354586041, 4430, '2:00:00', '8:00:00', 313981003, 'blehrer8m@go.com', '8aCrTs'
);

/* INSERT QUERY NO: 312 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
738970208, 1333, '14:00:00', '14:00:00', 364238656, 'jmissenden8n@harvard.edu', '0ejzjB0iAju'
);

/* INSERT QUERY NO: 313 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
442809446, 2903, '20:00:00', '20:00:00', 319051307, 'mcapineer8o@weibo.com', 'jdEESL9X6'
);

/* INSERT QUERY NO: 314 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
284054928, 1092, '14:00:00', '8:00:00', 670716622, 'ptzuker8p@nydailynews.com', 'Dig9MzxRkuMu'
);

/* INSERT QUERY NO: 315 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
663473126, 4892, '14:00:00', '2:00:00', 763711964, 'obernakiewicz8q@bbc.co.uk', 'RYdUkPB8'
);

/* INSERT QUERY NO: 316 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
299227756, 4556, '14:00:00', '20:00:00', 614835560, 'lambrosio8r@samsung.com', 'x4o2JehkMZ'
);

/* INSERT QUERY NO: 317 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
403627618, 1238, '8:00:00', '20:00:00', 830985128, 'mnorth8s@dion.ne.jp', 'et1qGJMoX'
);

/* INSERT QUERY NO: 318 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
219307670, 4803, '8:00:00', '14:00:00', 788443614, 'lhansed8t@miibeian.gov.cn', '9n0x8ufp48jT'
);

/* INSERT QUERY NO: 319 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
174089937, 4752, '14:00:00', '2:00:00', 309402065, 'nmosley8u@microsoft.com', 'igKoR3'
);

/* INSERT QUERY NO: 320 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
608259484, 2440, '2:00:00', '8:00:00', 226355255, 'bmcgennis8v@tripadvisor.com', 'blALqAxSX7s'
);

/* INSERT QUERY NO: 321 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
503490986, 2143, '14:00:00', '20:00:00', 211439534, 'dlouder8w@about.me', 'aGen0X2TqR'
);

/* INSERT QUERY NO: 322 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
421517837, 1303, '14:00:00', '2:00:00', 215815075, 'cmooreed8x@adobe.com', 'Gi7YOcuhsuE'
);

/* INSERT QUERY NO: 323 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
430537269, 4569, '14:00:00', '14:00:00', 984257874, 'hgarriock8y@moonfruit.com', '62HXUfH'
);

/* INSERT QUERY NO: 324 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
526554970, 4847, '2:00:00', '20:00:00', 135006949, 'ifee8z@loc.gov', 'uX6mVTN42xxC'
);

/* INSERT QUERY NO: 325 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
176627306, 2908, '20:00:00', '14:00:00', 321816742, 'krawlcliffe90@cyberchimps.com', 'u6nSJw'
);

/* INSERT QUERY NO: 326 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
737254942, 1008, '14:00:00', '20:00:00', 366000161, 'rkinner91@amazon.com', 'UFvRjZ'
);

/* INSERT QUERY NO: 327 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
885429897, 2931, '14:00:00', '14:00:00', 297672267, 'ymcmeeking92@ucsd.edu', 'MPz4vPZVY'
);

/* INSERT QUERY NO: 328 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
874756460, 4395, '2:00:00', '14:00:00', 867662841, 'scoston93@about.com', 'iIymNY3p'
);

/* INSERT QUERY NO: 329 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
275768613, 3412, '2:00:00', '20:00:00', 213526644, 'smaytom94@jiathis.com', 'izSkjaz6Gzdb'
);

/* INSERT QUERY NO: 330 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
601070880, 2063, '14:00:00', '14:00:00', 404455602, 'hjacks95@example.com', 'GKUCqaf'
);

/* INSERT QUERY NO: 331 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
386159372, 1110, '14:00:00', '14:00:00', 538397237, 'bfullilove96@discovery.com', 'u4PARtMZg576'
);

/* INSERT QUERY NO: 332 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
672975622, 2631, '14:00:00', '20:00:00', 933912911, 'fmacgauhy97@msn.com', 'NjydNpvsS2W'
);

/* INSERT QUERY NO: 333 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
789041587, 4388, '20:00:00', '14:00:00', 714689951, 'nbroggio98@utexas.edu', 'nmidLRVI'
);

/* INSERT QUERY NO: 334 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
650987994, 3911, '20:00:00', '20:00:00', 279896072, 'pcapps99@tamu.edu', 'Ofuapw'
);

/* INSERT QUERY NO: 335 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
868763962, 1566, '14:00:00', '14:00:00', 436213770, 'nandreotti9a@github.io', 'SL36kdANQM'
);

/* INSERT QUERY NO: 336 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
563423940, 1380, '14:00:00', '2:00:00', 296763625, 'rbunton9b@i2i.jp', 'mRPRS9cmckZ'
);

/* INSERT QUERY NO: 337 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
286479654, 4481, '20:00:00', '14:00:00', 276131342, 'dblankett9c@multiply.com', '61riho'
);

/* INSERT QUERY NO: 338 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
564333576, 3728, '14:00:00', '14:00:00', 988362047, 'lgreatbanks9d@loc.gov', 'RSB8RRth'
);

/* INSERT QUERY NO: 339 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
360131111, 4326, '20:00:00', '20:00:00', 985948733, 'twhitby9e@who.int', 'zfrvQL'
);

/* INSERT QUERY NO: 340 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
206266771, 3410, '20:00:00', '20:00:00', 502758935, 'qscandred9f@example.com', 'KuYh5EjlZF'
);

/* INSERT QUERY NO: 341 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
609250260, 4015, '2:00:00', '14:00:00', 711675860, 'basman9g@spotify.com', 'iftnJC'
);

/* INSERT QUERY NO: 342 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
643262759, 3497, '14:00:00', '20:00:00', 127138773, 'ryurmanovev9h@github.io', 'HvUVaBGSF3An'
);

/* INSERT QUERY NO: 343 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
216072634, 1129, '20:00:00', '14:00:00', 594016924, 'sdigg9i@msn.com', 'X4JVV16GT'
);

/* INSERT QUERY NO: 344 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
768586270, 1186, '8:00:00', '14:00:00', 732062425, 'mdegenhardt9j@oaic.gov.au', '1MpflSan6dp5'
);

/* INSERT QUERY NO: 345 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
998092386, 3205, '20:00:00', '20:00:00', 920794449, 'blimon9k@google.co.uk', 'btu7asVatJ6'
);

/* INSERT QUERY NO: 346 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
495063022, 2818, '14:00:00', '14:00:00', 760009545, 'hcartmill9l@umich.edu', 'DgoeNtS'
);

/* INSERT QUERY NO: 347 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
876209214, 1523, '14:00:00', '14:00:00', 299232473, 'sboam9m@4shared.com', 'JKjenGuW'
);

/* INSERT QUERY NO: 348 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
863055717, 4631, '20:00:00', '20:00:00', 765758519, 'thaughton9n@springer.com', 'b6XFw8JNKECK'
);

/* INSERT QUERY NO: 349 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
165894936, 2422, '14:00:00', '8:00:00', 435117599, 'edanbye9o@mashable.com', 'qnLmlq9TZs'
);

/* INSERT QUERY NO: 350 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
668247279, 4280, '2:00:00', '14:00:00', 592336730, 'hbrokenshire9p@cornell.edu', 'xZGq78Nw'
);

/* INSERT QUERY NO: 351 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
225326382, 1621, '14:00:00', '20:00:00', 285281032, 'eosban9q@sbwire.com', 'qqA71W'
);

/* INSERT QUERY NO: 352 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
319006878, 3315, '14:00:00', '8:00:00', 645639451, 'ccleere9r@harvard.edu', '4ODEzIr'
);

/* INSERT QUERY NO: 353 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
115726411, 4639, '14:00:00', '2:00:00', 486268126, 'twaterfield9s@google.com.br', 'L2XdIVLqa'
);

/* INSERT QUERY NO: 354 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
346867691, 3057, '2:00:00', '8:00:00', 386368152, 'lreuven9t@smh.com.au', 'wTLIhuJtL'
);

/* INSERT QUERY NO: 355 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
910023133, 3976, '20:00:00', '14:00:00', 715821256, 'bends9u@theatlantic.com', '5TwmkuuKJDd'
);

/* INSERT QUERY NO: 356 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
780697425, 1025, '20:00:00', '14:00:00', 719566446, 'emasters9v@mac.com', '2CesaJ'
);

/* INSERT QUERY NO: 357 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
169744728, 3902, '20:00:00', '2:00:00', 243764793, 'lbrittin9w@ycombinator.com', 'LUinJz'
);

/* INSERT QUERY NO: 358 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
432669332, 2406, '8:00:00', '8:00:00', 523266961, 'pkendrew9x@bloglovin.com', 'MKDaKu'
);

/* INSERT QUERY NO: 359 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
958213532, 1633, '14:00:00', '14:00:00', 901462702, 'ndumper9y@sun.com', '5R4a69wzc8'
);

/* INSERT QUERY NO: 360 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
198714826, 2047, '14:00:00', '20:00:00', 696032705, 'dstamper9z@imdb.com', 'dqK3xMWO'
);

/* INSERT QUERY NO: 361 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
941229357, 2579, '8:00:00', '14:00:00', 434408554, 'ldubarrya0@msn.com', 'POj0BoK'
);

/* INSERT QUERY NO: 362 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
684241404, 3477, '20:00:00', '14:00:00', 247539709, 'jhabbijama1@nasa.gov', 'FvkbCyh'
);

/* INSERT QUERY NO: 363 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
514826814, 3787, '14:00:00', '8:00:00', 133727354, 'ipymma2@naver.com', 'hBDZUX'
);

/* INSERT QUERY NO: 364 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
394080381, 3155, '14:00:00', '20:00:00', 956250588, 'dgresera3@google.com.br', 'yDVHsu'
);

/* INSERT QUERY NO: 365 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
776622516, 1266, '8:00:00', '14:00:00', 972943007, 'rboysa4@dailymotion.com', '9FcMz9Rw9sPC'
);

/* INSERT QUERY NO: 366 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
586232427, 2945, '2:00:00', '14:00:00', 183281957, 'wnorawaya5@google.it', 'UBnGGqWXnek'
);

/* INSERT QUERY NO: 367 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
342554405, 2618, '8:00:00', '14:00:00', 997109381, 'tackersa6@cisco.com', 'y9QyxLY4D9s'
);

/* INSERT QUERY NO: 368 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
995541939, 2124, '14:00:00', '14:00:00', 389569695, 'oillinga7@ted.com', 'lWOnAylj9'
);

/* INSERT QUERY NO: 369 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
610144170, 4387, '14:00:00', '14:00:00', 638149534, 'rthaima8@webmd.com', 'LWtoCepDX3m'
);

/* INSERT QUERY NO: 370 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
248413591, 1458, '14:00:00', '14:00:00', 424409717, 'gtetlaa9@typepad.com', 'PRZOpAcixs'
);

/* INSERT QUERY NO: 371 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
848414798, 2417, '14:00:00', '20:00:00', 756917697, 'rvilesaa@networkadvertising.org', 'BAdASe'
);

/* INSERT QUERY NO: 372 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
570914688, 3722, '14:00:00', '14:00:00', 800007290, 'tofihillieab@go.com', 'iM1REDGVt'
);

/* INSERT QUERY NO: 373 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
166260903, 1155, '14:00:00', '14:00:00', 286533098, 'ebanckac@senate.gov', 'BrvVB0YtC'
);

/* INSERT QUERY NO: 374 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
806781132, 2611, '14:00:00', '14:00:00', 997154011, 'hwinchurstad@hatena.ne.jp', 'vLNIc6'
);

/* INSERT QUERY NO: 375 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
453378632, 3643, '14:00:00', '20:00:00', 938536757, 'fipsgraveae@latimes.com', 'rYtPBxvCrc'
);

/* INSERT QUERY NO: 376 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
156503032, 1890, '8:00:00', '14:00:00', 595866004, 'bemsonaf@fc2.com', 'RWsjofvmWGq'
);

/* INSERT QUERY NO: 377 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
166992864, 4552, '8:00:00', '14:00:00', 556703117, 'athringag@lycos.com', 'xzH8Z2hVtx'
);

/* INSERT QUERY NO: 378 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
409046850, 2765, '14:00:00', '20:00:00', 634709776, 'lpuddephattah@virginia.edu', 'lEiyQfIoqar'
);

/* INSERT QUERY NO: 379 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
136163741, 1005, '14:00:00', '14:00:00', 701580588, 'creicharzai@discuz.net', 'UcracrTGS'
);

/* INSERT QUERY NO: 380 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
726124427, 2472, '8:00:00', '20:00:00', 256568833, 'gunsteadaj@foxnews.com', 'tDKeX1w53DJ'
);

/* INSERT QUERY NO: 381 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
243467809, 2592, '14:00:00', '20:00:00', 896255500, 'rtourryak@oracle.com', 'xXOuS1UV'
);

/* INSERT QUERY NO: 382 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
318642942, 4224, '2:00:00', '8:00:00', 968666024, 'swestpfelal@mac.com', 'xRYTUyOvEypX'
);

/* INSERT QUERY NO: 383 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
264161742, 3970, '2:00:00', '14:00:00', 876801036, 'rbleezeam@usnews.com', '0QyaCb'
);

/* INSERT QUERY NO: 384 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
236775411, 1058, '14:00:00', '2:00:00', 315173157, 'lwhitneyan@miitbeian.gov.cn', 'NIASLMCdj'
);

/* INSERT QUERY NO: 385 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
542958839, 3149, '14:00:00', '20:00:00', 825690718, 'lmcpeakeao@nps.gov', '2ksxkQkk656m'
);

/* INSERT QUERY NO: 386 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
583589231, 4005, '8:00:00', '14:00:00', 461748297, 'sdunningap@whitehouse.gov', 'W48gVUVYk40'
);

/* INSERT QUERY NO: 387 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
253284965, 1784, '8:00:00', '14:00:00', 876613887, 'lcluelyaq@boston.com', 'kilHNpK0tQd'
);

/* INSERT QUERY NO: 388 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
709110900, 1876, '20:00:00', '14:00:00', 405786471, 'gshottinar@smugmug.com', 'Ldn7EJ6MYb6'
);

/* INSERT QUERY NO: 389 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
391479893, 3098, '14:00:00', '14:00:00', 641982747, 'jheersmaas@nifty.com', 'ZgIcUkG5R8UK'
);

/* INSERT QUERY NO: 390 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
487328284, 3217, '14:00:00', '14:00:00', 660476746, 'jbelmontat@boston.com', 'jsk9lJj1'
);

/* INSERT QUERY NO: 391 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
116762461, 4768, '14:00:00', '14:00:00', 721141100, 'hcoldbathau@wired.com', 'i4wjvJoi'
);

/* INSERT QUERY NO: 392 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
374785307, 2290, '2:00:00', '20:00:00', 836857419, 'crainsav@mozilla.com', 'zwCyXno'
);

/* INSERT QUERY NO: 393 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
374327147, 1525, '8:00:00', '2:00:00', 739216977, 'fjendrassikaw@sourceforge.net', '47ZzzT3PP'
);

/* INSERT QUERY NO: 394 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
158966862, 4861, '20:00:00', '20:00:00', 168791341, 'lleaveyax@wikispaces.com', 'vDw9eA'
);

/* INSERT QUERY NO: 395 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
947037384, 3341, '14:00:00', '20:00:00', 656763069, 'rrawlinay@google.co.uk', '2vpXAh'
);

/* INSERT QUERY NO: 396 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
140166931, 3051, '14:00:00', '8:00:00', 346529486, 'omurrillaz@pagesperso-orange.fr', 'ewWO96o'
);

/* INSERT QUERY NO: 397 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
346964536, 2936, '14:00:00', '20:00:00', 842514480, 'gdunkirkb0@canalblog.com', 'MIQgMCA'
);

/* INSERT QUERY NO: 398 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
736180442, 2632, '8:00:00', '14:00:00', 924243034, 'pduffreeb1@yellowbook.com', 'FoBHmbBdInVA'
);

/* INSERT QUERY NO: 399 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
644934596, 2461, '20:00:00', '14:00:00', 608211556, 'mnyssensb2@alexa.com', 'IwL60mcg8ho'
);

/* INSERT QUERY NO: 400 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
653044424, 3824, '20:00:00', '14:00:00', 363393841, 'kblowfeldeb3@hhs.gov', 'KjgKoWwTU2yu'
);

/* INSERT QUERY NO: 401 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
518155053, 1729, '14:00:00', '2:00:00', 357219331, 'chartzogsb4@alibaba.com', 'pnuEUAa'
);

/* INSERT QUERY NO: 402 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
444192710, 3555, '14:00:00', '20:00:00', 238061000, 'lhaysomb5@tinyurl.com', 'T6K6TYGg'
);

/* INSERT QUERY NO: 403 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
750064469, 2829, '14:00:00', '20:00:00', 372173938, 'gfulleyloveb6@uol.com.br', 'iaQ91Xb'
);

/* INSERT QUERY NO: 404 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
585974426, 2343, '14:00:00', '14:00:00', 975519907, 'dhedditchb7@stanford.edu', 'gKq6Lt'
);

/* INSERT QUERY NO: 405 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
133761058, 1233, '20:00:00', '14:00:00', 289033441, 'istreetleyb8@people.com.cn', 'f1baQ6Fb9y'
);

/* INSERT QUERY NO: 406 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
179151510, 2061, '20:00:00', '14:00:00', 853816541, 'hgoulderb9@jalbum.net', 'rMnb9JcM'
);

/* INSERT QUERY NO: 407 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
447320870, 3291, '14:00:00', '14:00:00', 177737126, 'bambrogiba@guardian.co.uk', 'VTWWj27gk'
);

/* INSERT QUERY NO: 408 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
467841716, 4662, '8:00:00', '14:00:00', 512772195, 'cokendenbb@oakley.com', 'jXQeBiN'
);

/* INSERT QUERY NO: 409 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
599231477, 4518, '14:00:00', '2:00:00', 354586041, 'swoodhamsbc@amazon.com', 'vQ7pMPd'
);

/* INSERT QUERY NO: 410 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
684124083, 3399, '2:00:00', '8:00:00', 738970208, 'dcrightonbd@ftc.gov', '9IotZ0A4w'
);

/* INSERT QUERY NO: 411 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
208740987, 3873, '20:00:00', '14:00:00', 442809446, 'zcobbinbe@dot.gov', 'tUprVcen8rO'
);

/* INSERT QUERY NO: 412 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
833451511, 3125, '14:00:00', '14:00:00', 284054928, 'aevansbf@github.io', 'P7nJEX2N7Ey8'
);

/* INSERT QUERY NO: 413 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
558402134, 2709, '14:00:00', '8:00:00', 663473126, 'ascudbg@wisc.edu', '9ET1n8Y8Y'
);

/* INSERT QUERY NO: 414 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
509277186, 2536, '14:00:00', '8:00:00', 299227756, 'cludmannbh@home.pl', 'dZLS77T7'
);

/* INSERT QUERY NO: 415 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
948241072, 1604, '14:00:00', '14:00:00', 403627618, 'clahertybi@walmart.com', 'thvucUg47Ko'
);

/* INSERT QUERY NO: 416 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
697145938, 1488, '20:00:00', '14:00:00', 219307670, 'fjoseybj@java.com', 'FzDqbc'
);

/* INSERT QUERY NO: 417 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
497497776, 4669, '14:00:00', '2:00:00', 174089937, 'mculverhousebk@flavors.me', 'Vw7f9ABgmbnb'
);

/* INSERT QUERY NO: 418 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
978348890, 1266, '20:00:00', '20:00:00', 608259484, 'dwornumbl@un.org', 'pTdAvMsyuUM'
);

/* INSERT QUERY NO: 419 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
350510277, 3498, '14:00:00', '14:00:00', 503490986, 'jemerinebm@berkeley.edu', 'BBdfyww20Z'
);

/* INSERT QUERY NO: 420 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
387365678, 2401, '14:00:00', '14:00:00', 421517837, 'tplattsbn@qq.com', 'nLGpKxE'
);

/* INSERT QUERY NO: 421 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
971940922, 4045, '20:00:00', '14:00:00', 430537269, 'ltaplinbo@tuttocitta.it', 'ioaFgWFTz'
);

/* INSERT QUERY NO: 422 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
887717038, 3220, '20:00:00', '8:00:00', 526554970, 'bcromettbp@msn.com', 'U467Lu'
);

/* INSERT QUERY NO: 423 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
742541081, 3070, '2:00:00', '14:00:00', 176627306, 'kchaudronbq@cpanel.net', 'BgRYVoM'
);

/* INSERT QUERY NO: 424 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
798047128, 3940, '20:00:00', '20:00:00', 737254942, 'hcleebr@adobe.com', 'OYlNUDMy0a'
);

/* INSERT QUERY NO: 425 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
208440070, 2768, '20:00:00', '20:00:00', 885429897, 'barrigobs@altervista.org', 'ujUUQJuo4v'
);

/* INSERT QUERY NO: 426 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
867886330, 3481, '14:00:00', '20:00:00', 874756460, 'wtwentymanbt@parallels.com', 'F8oqz7'
);

/* INSERT QUERY NO: 427 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
831234620, 4346, '20:00:00', '20:00:00', 275768613, 'lsnellerbu@europa.eu', 'FU5mOFIKExO'
);

/* INSERT QUERY NO: 428 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
424870917, 1923, '14:00:00', '20:00:00', 601070880, 'nciraldobv@tuttocitta.it', 'LCqtLirqTj'
);

/* INSERT QUERY NO: 429 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
977599626, 2127, '14:00:00', '20:00:00', 386159372, 'jwongbw@theglobeandmail.com', 'B7AkfhL'
);

/* INSERT QUERY NO: 430 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
282690944, 4505, '20:00:00', '14:00:00', 672975622, 'phisebx@ihg.com', 'OGuIAnF'
);

/* INSERT QUERY NO: 431 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
162697762, 4875, '14:00:00', '2:00:00', 789041587, 'kfanthamby@webeden.co.uk', 'UZu9X06t'
);

/* INSERT QUERY NO: 432 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
335045909, 4840, '20:00:00', '20:00:00', 650987994, 'oantonatbz@go.com', 'vZNsri'
);

/* INSERT QUERY NO: 433 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
557446669, 2965, '8:00:00', '14:00:00', 868763962, 'odemangeonc0@netvibes.com', 'K3lOuRp'
);

/* INSERT QUERY NO: 434 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
496018551, 4669, '20:00:00', '2:00:00', 563423940, 'klismorec1@cbslocal.com', 'aTV6bJo'
);

/* INSERT QUERY NO: 435 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
670832662, 1567, '14:00:00', '14:00:00', 286479654, 'cciccettic2@tuttocitta.it', 'cc02NG1'
);

/* INSERT QUERY NO: 436 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
614160425, 4492, '14:00:00', '14:00:00', 564333576, 'ddundonc3@nps.gov', '44raf37'
);

/* INSERT QUERY NO: 437 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
695611377, 1422, '14:00:00', '14:00:00', 360131111, 'ftoulminc4@mlb.com', 'BQP1NuuZqOmD'
);

/* INSERT QUERY NO: 438 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
606918197, 1152, '14:00:00', '14:00:00', 206266771, 'gmeyshamc5@gravatar.com', 'vQh6rTZO'
);

/* INSERT QUERY NO: 439 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
245799434, 2828, '8:00:00', '14:00:00', 609250260, 'cspiersc6@eventbrite.com', 'HzORoogX'
);

/* INSERT QUERY NO: 440 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
399620305, 3931, '14:00:00', '14:00:00', 643262759, 'esiderfinc7@ihg.com', 'duhvm7ApCfx0'
);

/* INSERT QUERY NO: 441 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
774868393, 4448, '20:00:00', '8:00:00', 216072634, 'hmacmanusc8@dot.gov', 'DG37TH'
);

/* INSERT QUERY NO: 442 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
455799376, 4208, '2:00:00', '8:00:00', 768586270, 'cpetrosianc9@hostgator.com', 'vfZKPs9z'
);

/* INSERT QUERY NO: 443 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
226260525, 2123, '20:00:00', '20:00:00', 998092386, 'whefferanca@w3.org', 'EUFYgWhsi4'
);

/* INSERT QUERY NO: 444 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
638713388, 4869, '20:00:00', '14:00:00', 495063022, 'bindecb@phpbb.com', 'yNZ5C1o'
);

/* INSERT QUERY NO: 445 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
564483683, 3999, '20:00:00', '14:00:00', 876209214, 'ceickhoffcc@foxnews.com', '1dH7i3nAbR'
);

/* INSERT QUERY NO: 446 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
223256573, 2837, '14:00:00', '14:00:00', 863055717, 'mlabbezcd@plala.or.jp', 'oCryMK3vxDuh'
);

/* INSERT QUERY NO: 447 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
637640979, 2391, '20:00:00', '20:00:00', 165894936, 'tavrahamiance@loc.gov', 'xi6YDg5l'
);

/* INSERT QUERY NO: 448 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
834955090, 3691, '14:00:00', '14:00:00', 668247279, 'ccostigancf@a8.net', 'Je87J1'
);

/* INSERT QUERY NO: 449 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
209672087, 1048, '14:00:00', '14:00:00', 225326382, 'tgrevattcg@statcounter.com', 'uJVKeGhcd'
);

/* INSERT QUERY NO: 450 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
175297093, 3009, '20:00:00', '20:00:00', 319006878, 'rslotch@hexun.com', 'ALzitv'
);

/* INSERT QUERY NO: 451 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
100839729, 1525, '20:00:00', '20:00:00', 115726411, 'mchomickici@myspace.com', 'TvvN4w'
);

/* INSERT QUERY NO: 452 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
710628570, 3405, '20:00:00', '20:00:00', 346867691, 'tventhamcj@constantcontact.com', 'mMoITbkV'
);

/* INSERT QUERY NO: 453 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
929670489, 1472, '14:00:00', '14:00:00', 910023133, 'bbiglinck@scientificamerican.com', 'knf6MyOtmnD'
);

/* INSERT QUERY NO: 454 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
793339948, 4538, '8:00:00', '20:00:00', 780697425, 'dbewcl@foxnews.com', '3BDV0eOenZX'
);

/* INSERT QUERY NO: 455 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
604632535, 2519, '14:00:00', '14:00:00', 169744728, 'isheepycm@seesaa.net', 'yEMQKjKj'
);

/* INSERT QUERY NO: 456 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
868969030, 1858, '20:00:00', '14:00:00', 432669332, 'isitchcn@dailymotion.com', 'rOB5wYPb1uc'
);

/* INSERT QUERY NO: 457 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
448849743, 4360, '20:00:00', '14:00:00', 958213532, 'oeastcourtco@so-net.ne.jp', 'DTFF0b47'
);

/* INSERT QUERY NO: 458 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
141248540, 1509, '14:00:00', '14:00:00', 198714826, 'mtaylorcp@shutterfly.com', 'qvGGvGI97ei5'
);

/* INSERT QUERY NO: 459 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
425524557, 3148, '8:00:00', '20:00:00', 941229357, 'dgoringcq@tinypic.com', 'z5H4zDGlOb5l'
);

/* INSERT QUERY NO: 460 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
192414954, 2122, '14:00:00', '14:00:00', 684241404, 'mkobpaccr@narod.ru', 'YvQPHOXvwQ2'
);

/* INSERT QUERY NO: 461 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
318592001, 4267, '20:00:00', '14:00:00', 514826814, 'kmorfieldcs@dailymotion.com', '6aFFww'
);

/* INSERT QUERY NO: 462 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
326497537, 3277, '8:00:00', '8:00:00', 394080381, 'rjarretct@slideshare.net', 'sSlfFD3qdi'
);

/* INSERT QUERY NO: 463 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
985244799, 1429, '14:00:00', '20:00:00', 776622516, 'gpurseycu@123-reg.co.uk', 'asM4YIr'
);

/* INSERT QUERY NO: 464 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
507577837, 3139, '14:00:00', '2:00:00', 586232427, 'zdreamercv@lulu.com', '0l6IaxlKWl'
);

/* INSERT QUERY NO: 465 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
391486089, 4384, '2:00:00', '2:00:00', 342554405, 'sangeaucw@friendfeed.com', 'PKIhlvQ2V'
);

/* INSERT QUERY NO: 466 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
223143904, 1747, '14:00:00', '14:00:00', 995541939, 'bkneebonecx@rediff.com', 'KkbOwzJ6Oqy0'
);

/* INSERT QUERY NO: 467 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
757973574, 4734, '2:00:00', '14:00:00', 610144170, 'phailwoodcy@utexas.edu', 'FBpPKf'
);

/* INSERT QUERY NO: 468 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
756757055, 1633, '14:00:00', '20:00:00', 248413591, 'fhazeltinecz@reverbnation.com', 'Niw9Z2mLTzXZ'
);

/* INSERT QUERY NO: 469 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
541420933, 2911, '8:00:00', '8:00:00', 848414798, 'dskased0@facebook.com', '0tbkdsuq20'
);

/* INSERT QUERY NO: 470 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
214002988, 1576, '2:00:00', '20:00:00', 570914688, 'cstoresd1@dmoz.org', 'y4NQT9z'
);

/* INSERT QUERY NO: 471 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
274892255, 4123, '8:00:00', '14:00:00', 166260903, 'csharnockd2@infoseek.co.jp', 'dpAFEF8u'
);

/* INSERT QUERY NO: 472 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
894345162, 1584, '20:00:00', '14:00:00', 806781132, 'jvyvyand3@mozilla.com', 'KPCKXOFpqXR'
);

/* INSERT QUERY NO: 473 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
359966153, 3314, '14:00:00', '14:00:00', 453378632, 'bboyingtond4@biglobe.ne.jp', 'GLcQOL'
);

/* INSERT QUERY NO: 474 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
184444979, 3534, '20:00:00', '20:00:00', 156503032, 'houghtond5@skype.com', 'B77nGPwP'
);

/* INSERT QUERY NO: 475 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
979777334, 2587, '20:00:00', '8:00:00', 166992864, 'vreapd6@weibo.com', 'aPNcImauy'
);

/* INSERT QUERY NO: 476 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
732885712, 2953, '14:00:00', '20:00:00', 409046850, 'xblacklockd7@mozilla.com', 'obPcMWeQ4S'
);

/* INSERT QUERY NO: 477 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
521165267, 1983, '20:00:00', '2:00:00', 136163741, 'rdurhamd8@nbcnews.com', 'hTFxsKU3S'
);

/* INSERT QUERY NO: 478 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
454055361, 1426, '20:00:00', '8:00:00', 726124427, 'jpordalld9@xing.com', 'qHycuzlafDwb'
);

/* INSERT QUERY NO: 479 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
122976530, 3226, '14:00:00', '14:00:00', 243467809, 'hmcgauhyda@ezinearticles.com', 'IjjY2GvQI'
);

/* INSERT QUERY NO: 480 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
758793891, 4651, '14:00:00', '14:00:00', 318642942, 'sbaymandb@jimdo.com', 'I19Nfpgfa'
);

/* INSERT QUERY NO: 481 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
944752490, 3631, '20:00:00', '14:00:00', 264161742, 'mdumbelldc@cloudflare.com', 'omUsfkJY5G'
);

/* INSERT QUERY NO: 482 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
125074868, 2828, '14:00:00', '14:00:00', 236775411, 'wjoontjesdd@google.pl', 'cUqsWLQH5e07'
);

/* INSERT QUERY NO: 483 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
918225994, 2961, '20:00:00', '8:00:00', 542958839, 'gmcpartlingde@about.com', 'XxHPCwr'
);

/* INSERT QUERY NO: 484 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
551097402, 3749, '2:00:00', '14:00:00', 583589231, 'fmassendf@miitbeian.gov.cn', 'ZvmCQIuhYa6'
);

/* INSERT QUERY NO: 485 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
477739872, 3242, '14:00:00', '14:00:00', 253284965, 'ttrundelldg@salon.com', 'tiMPx0uj4y'
);

/* INSERT QUERY NO: 486 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
964674679, 1901, '20:00:00', '20:00:00', 709110900, 'wlisdh@wiley.com', 'bPmGvLQp'
);

/* INSERT QUERY NO: 487 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
700943594, 2234, '20:00:00', '14:00:00', 391479893, 'mivamydi@1688.com', 'UPWjnfh8'
);

/* INSERT QUERY NO: 488 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
915365165, 2049, '20:00:00', '14:00:00', 487328284, 'lstickeldj@squarespace.com', 'y77Rs9d8K'
);

/* INSERT QUERY NO: 489 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
937083736, 3322, '20:00:00', '14:00:00', 116762461, 'fwalkinshawdk@craigslist.org', 'bY8RXrmjE'
);

/* INSERT QUERY NO: 490 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
109030302, 4174, '14:00:00', '14:00:00', 374785307, 'mcrusedl@woothemes.com', 'eMvkWZ'
);

/* INSERT QUERY NO: 491 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
628747693, 4139, '20:00:00', '20:00:00', 374327147, 'kleipolddm@vimeo.com', 'RVY4VA'
);

/* INSERT QUERY NO: 492 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
555442249, 4106, '14:00:00', '14:00:00', 158966862, 'ibiagidn@google.com.br', 'BCW6HFRZl'
);

/* INSERT QUERY NO: 493 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
200160739, 3516, '14:00:00', '14:00:00', 947037384, 'jcritcharddo@nih.gov', 'Ptkjzl'
);

/* INSERT QUERY NO: 494 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
738218900, 4505, '20:00:00', '8:00:00', 140166931, 'kfilyakovdp@wikimedia.org', '4B7v6V976K'
);

/* INSERT QUERY NO: 495 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
989452807, 3780, '20:00:00', '2:00:00', 346964536, 'hlampkedq@psu.edu', 'orvGs0'
);

/* INSERT QUERY NO: 496 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
737864976, 1068, '20:00:00', '20:00:00', 736180442, 'scanadinedr@smugmug.com', 'Fm0blLo'
);

/* INSERT QUERY NO: 497 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
635925148, 1164, '14:00:00', '2:00:00', 644934596, 'ddealds@uol.com.br', 'mpkzVwXZ4'
);

/* INSERT QUERY NO: 498 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
826770121, 3742, '20:00:00', '2:00:00', 653044424, 'jedwarddt@skyrock.com', 'eme09WrH0'
);

/* INSERT QUERY NO: 499 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
866297088, 2094, '20:00:00', '14:00:00', 518155053, 'bsheehandu@bloglines.com', 'HsmtaND8'
);

/* INSERT QUERY NO: 500 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
230582041, 2578, '14:00:00', '14:00:00', 444192710, 'mjelfsdv@theguardian.com', '2gd9wU'
);

/* INSERT QUERY NO: 501 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
858999210, 1812, '20:00:00', '20:00:00', 750064469, 'rmatterseydw@github.io', 'MSCvQWWAxn6O'
);

/* INSERT QUERY NO: 502 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
531412674, 2166, '14:00:00', '14:00:00', 585974426, 'dtrudgeondx@independent.co.uk', 'dHIsUc9z7Fse'
);

/* INSERT QUERY NO: 503 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
760297746, 2502, '14:00:00', '20:00:00', 133761058, 'iianizzidy@t-online.de', 'LCFwfneh'
);

/* INSERT QUERY NO: 504 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
999728144, 3017, '14:00:00', '14:00:00', 179151510, 'ccowldz@nps.gov', 'tCEhcbp59'
);

/* INSERT QUERY NO: 505 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
639225399, 1147, '14:00:00', '14:00:00', 447320870, 'tarmigere0@businesswire.com', 'WW2gRBHK'
);

/* INSERT QUERY NO: 506 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
694973500, 4425, '20:00:00', '20:00:00', 467841716, 'ggoodbannee1@oaic.gov.au', 'EXOPgOuZ'
);

/* INSERT QUERY NO: 507 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
797519473, 3959, '8:00:00', '2:00:00', 599231477, 'apattiee2@storify.com', 'mKZYE6z2VD5'
);

/* INSERT QUERY NO: 508 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
772002908, 3938, '20:00:00', '20:00:00', 684124083, 'criccardellie3@vk.com', '13JjxN0VDnqM'
);

/* INSERT QUERY NO: 509 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
772377059, 3917, '8:00:00', '14:00:00', 208740987, 'bericksone4@is.gd', 'LlgpiqV'
);

/* INSERT QUERY NO: 510 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
230240109, 3416, '20:00:00', '20:00:00', 833451511, 'jseverwrighte5@globo.com', 'znmIP7MuIPQ3'
);

/* INSERT QUERY NO: 511 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
583686373, 2150, '14:00:00', '20:00:00', 558402134, 'clorrimere6@vk.com', 'lvhZahCtwc'
);

/* INSERT QUERY NO: 512 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
319608343, 2661, '8:00:00', '14:00:00', 509277186, 'ccoppere7@comcast.net', 'fQNsoShM'
);

/* INSERT QUERY NO: 513 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
717324029, 2590, '2:00:00', '2:00:00', 948241072, 'cgatee8@sphinn.com', 'WNfr6QHDQP'
);

/* INSERT QUERY NO: 514 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
826605308, 4379, '14:00:00', '14:00:00', 697145938, 'owarlande9@marriott.com', 'Tr3ZWELyCD'
);

/* INSERT QUERY NO: 515 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
105945142, 1780, '14:00:00', '14:00:00', 497497776, 'bmunceyea@rambler.ru', 'aZRToaloHB'
);

/* INSERT QUERY NO: 516 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
203195214, 2684, '14:00:00', '14:00:00', 978348890, 'cmccrearyeb@rediff.com', 'CgtV49nB5'
);

/* INSERT QUERY NO: 517 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
705542442, 3465, '8:00:00', '20:00:00', 350510277, 'cosgorbyec@biglobe.ne.jp', 'cxxiaCRIuOrt'
);

/* INSERT QUERY NO: 518 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
849560875, 4468, '14:00:00', '14:00:00', 387365678, 'mboardmaned@dion.ne.jp', '4ht63SLd8G'
);

/* INSERT QUERY NO: 519 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
660006187, 2676, '14:00:00', '2:00:00', 971940922, 'zvynallee@theglobeandmail.com', 'j74xfBCs327E'
);

/* INSERT QUERY NO: 520 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
209227516, 2840, '14:00:00', '14:00:00', 887717038, 'efielleref@comcast.net', 'ZrzVlGPL76zx'
);

/* INSERT QUERY NO: 521 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
609423978, 2587, '14:00:00', '20:00:00', 742541081, 'clongmuireg@guardian.co.uk', 'l5Vl3C'
);

/* INSERT QUERY NO: 522 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
737255073, 4189, '20:00:00', '20:00:00', 798047128, 'wdecourceyeh@google.com', 'MqDLBvR4'
);

/* INSERT QUERY NO: 523 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
667767027, 2555, '20:00:00', '14:00:00', 208440070, 'orockhillei@vimeo.com', 'ZM0Y9BODm'
);

/* INSERT QUERY NO: 524 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
200769246, 2656, '14:00:00', '20:00:00', 867886330, 'gtebbitej@nyu.edu', '6Gw44sT0n'
);

/* INSERT QUERY NO: 525 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
479032816, 3642, '20:00:00', '2:00:00', 831234620, 'pianizziek@google.pl', 'RFTD0m8x'
);

/* INSERT QUERY NO: 526 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
706253956, 2046, '14:00:00', '8:00:00', 424870917, 'dstovineel@posterous.com', 'LdVAaa22'
);

/* INSERT QUERY NO: 527 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
633931892, 1879, '14:00:00', '14:00:00', 977599626, 'ekuhlenem@ifeng.com', 'iG0YxXAh9'
);

/* INSERT QUERY NO: 528 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
856598387, 3129, '8:00:00', '14:00:00', 282690944, 'tfollinen@odnoklassniki.ru', 'afWzyWJt'
);

/* INSERT QUERY NO: 529 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
505255227, 4856, '14:00:00', '2:00:00', 162697762, 'rdikeeo@boston.com', 'c0UovFrIu'
);

/* INSERT QUERY NO: 530 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
480408472, 4191, '2:00:00', '8:00:00', 335045909, 'pallenderep@friendfeed.com', '0EOHMADcw'
);

/* INSERT QUERY NO: 531 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
902868693, 4365, '14:00:00', '20:00:00', 557446669, 'whawortheq@shutterfly.com', 'HNAE9TiG'
);

/* INSERT QUERY NO: 532 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
371538020, 1693, '2:00:00', '14:00:00', 496018551, 'rchrismaser@biglobe.ne.jp', '9sYa1zSDJ1'
);

/* INSERT QUERY NO: 533 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
752803629, 4729, '20:00:00', '14:00:00', 670832662, 'wmarzellaes@dropbox.com', 'H7J6iV4b'
);

/* INSERT QUERY NO: 534 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
532293158, 2623, '20:00:00', '8:00:00', 614160425, 'hlisimoreet@tumblr.com', 'fVJ5gd1R3pM'
);

/* INSERT QUERY NO: 535 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
669289445, 1291, '8:00:00', '14:00:00', 695611377, 'lraiteu@spiegel.de', '19nSaOK'
);

/* INSERT QUERY NO: 536 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
301883189, 3360, '14:00:00', '14:00:00', 606918197, 'bgoodissonev@kickstarter.com', 'BHtqVR3zed6H'
);

/* INSERT QUERY NO: 537 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
605615251, 3415, '20:00:00', '2:00:00', 245799434, 'jrobicew@guardian.co.uk', 'KLKm2f8I'
);

/* INSERT QUERY NO: 538 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
112833444, 2700, '14:00:00', '20:00:00', 399620305, 'rgollopex@xinhuanet.com', 'sjV2QQP'
);

/* INSERT QUERY NO: 539 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
531101070, 3918, '20:00:00', '20:00:00', 774868393, 'gpercevaley@cloudflare.com', 'ru97ReQqjEC'
);

/* INSERT QUERY NO: 540 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
617352061, 2120, '20:00:00', '14:00:00', 455799376, 'rlileyez@google.com.au', 'uUykJ6U7c'
);

/* INSERT QUERY NO: 541 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
910459906, 1908, '14:00:00', '14:00:00', 226260525, 'ldradeyf0@archive.org', 'PA92JKmmf0G1'
);

/* INSERT QUERY NO: 542 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
645437169, 2401, '14:00:00', '20:00:00', 638713388, 'jcarinef1@instagram.com', 'hlO7pxUl'
);

/* INSERT QUERY NO: 543 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
397342369, 1282, '20:00:00', '20:00:00', 564483683, 'bwifflerf2@cyberchimps.com', 'g0DxloSP'
);

/* INSERT QUERY NO: 544 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
155957181, 1440, '20:00:00', '2:00:00', 223256573, 'fwaldockef3@wisc.edu', 'WHVi8u2LrA8d'
);

/* INSERT QUERY NO: 545 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
945708648, 1053, '20:00:00', '2:00:00', 637640979, 'ryashnovf4@earthlink.net', 'jTkNdc7IdWk'
);

/* INSERT QUERY NO: 546 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
437041011, 2751, '14:00:00', '14:00:00', 834955090, 'jheckneyf5@wordpress.com', 'qLoHuEGi2'
);

/* INSERT QUERY NO: 547 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
959885997, 4770, '14:00:00', '14:00:00', 209672087, 'imeeref6@e-recht24.de', 'P9fclCF3n'
);

/* INSERT QUERY NO: 548 */
INSERT INTO EMPLOYEE(eSSN, salary, shiftBegins, shiftEnds, superSSN, Email, password)
VALUES
(
584243656, 2681, '14:00:00', '14:00:00', 175297093, 'eschrirenf7@linkedin.com', 'nIHIYm'
);



/* INSERT QUERY NO: 1 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
842514480, 'Malaria', 1
);

/* INSERT QUERY NO: 2 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
924243034, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 3 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
608211556, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 4 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
363393841, 'Thalassemia', 1
);

/* INSERT QUERY NO: 5 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
357219331, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 6 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
238061000, 'anemia', NULL
);

/* INSERT QUERY NO: 7 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
372173938, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 8 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
975519907, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 9 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
289033441, 'Thalassemia', 3
);

/* INSERT QUERY NO: 10 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
853816541, 'Malaria', 2
);

/* INSERT QUERY NO: 11 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
177737126, 'Malaria', 1
);

/* INSERT QUERY NO: 12 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
512772195, 'Malaria', 2
);

/* INSERT QUERY NO: 13 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
354586041, 'Thalassemia', 1
);

/* INSERT QUERY NO: 14 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
738970208, 'Malaria', 2
);

/* INSERT QUERY NO: 15 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
442809446, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 16 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
284054928, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 17 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
663473126, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 18 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
299227756, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 19 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
403627618, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 20 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
219307670, 'Malaria', 1
);

/* INSERT QUERY NO: 21 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
174089937, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 22 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
608259484, 'anemia', NULL
);

/* INSERT QUERY NO: 23 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
503490986, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 24 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
421517837, 'Malaria', 3
);

/* INSERT QUERY NO: 25 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
430537269, 'Malaria', 3
);

/* INSERT QUERY NO: 26 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
526554970, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 27 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
176627306, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 28 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
737254942, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 29 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
885429897, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 30 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
874756460, 'Malaria', 1
);

/* INSERT QUERY NO: 31 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
275768613, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 32 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
601070880, 'Malaria', 3
);

/* INSERT QUERY NO: 33 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
386159372, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 34 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
672975622, 'Malaria', 1
);

/* INSERT QUERY NO: 35 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
789041587, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 36 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
650987994, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 37 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
868763962, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 38 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
563423940, 'Thalassemia', 1
);

/* INSERT QUERY NO: 39 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
286479654, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 40 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
564333576, 'Malaria', 1
);

/* INSERT QUERY NO: 41 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
360131111, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 42 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
206266771, 'Malaria', 3
);

/* INSERT QUERY NO: 43 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
609250260, 'Malaria', 3
);

/* INSERT QUERY NO: 44 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
643262759, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 45 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
216072634, 'Malaria', 3
);

/* INSERT QUERY NO: 46 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
768586270, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 47 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
998092386, 'Thalassemia', 2
);

/* INSERT QUERY NO: 48 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
495063022, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 49 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
876209214, 'Malaria', 3
);

/* INSERT QUERY NO: 50 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
863055717, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 51 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
165894936, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 52 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
668247279, 'Malaria', 3
);

/* INSERT QUERY NO: 53 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
225326382, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 54 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
319006878, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 55 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
115726411, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 56 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
346867691, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 57 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
910023133, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 58 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
780697425, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 59 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
169744728, 'Anemia of chronic disease', 3
);

/* INSERT QUERY NO: 60 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
432669332, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 61 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
958213532, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 62 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
198714826, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 63 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
941229357, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 64 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
684241404, 'Aplastic anemia', 2
);

/* INSERT QUERY NO: 65 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
514826814, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 66 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
394080381, 'Malaria', 2
);

/* INSERT QUERY NO: 67 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
776622516, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 68 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
586232427, 'Malaria', 1
);

/* INSERT QUERY NO: 69 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
342554405, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 70 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
995541939, 'Malaria', 2
);

/* INSERT QUERY NO: 71 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
610144170, 'Thalassemia', 3
);

/* INSERT QUERY NO: 72 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
248413591, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 73 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
848414798, 'anemia', NULL
);

/* INSERT QUERY NO: 74 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
570914688, 'anemia', NULL
);

/* INSERT QUERY NO: 75 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
166260903, 'Malaria', 1
);

/* INSERT QUERY NO: 76 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
806781132, 'Malaria', 2
);

/* INSERT QUERY NO: 77 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
453378632, 'Malaria', 3
);

/* INSERT QUERY NO: 78 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
156503032, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 79 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
166992864, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 80 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
409046850, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 81 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
136163741, 'Malaria', 1
);

/* INSERT QUERY NO: 82 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
726124427, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 83 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
243467809, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 84 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
318642942, 'Thalassemia', 1
);

/* INSERT QUERY NO: 85 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
264161742, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 86 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
236775411, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 87 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
542958839, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 88 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
583589231, 'Malaria', 3
);

/* INSERT QUERY NO: 89 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
253284965, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 90 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
709110900, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 91 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
391479893, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 92 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
487328284, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 93 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
116762461, 'Anemia of chronic disease', 2
);

/* INSERT QUERY NO: 94 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
374785307, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 95 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
374327147, 'Malaria', 2
);

/* INSERT QUERY NO: 96 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
158966862, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 97 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
947037384, 'Malaria', 3
);

/* INSERT QUERY NO: 98 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
140166931, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 99 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
346964536, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 100 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
736180442, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 101 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
644934596, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 102 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
653044424, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 103 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
518155053, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 104 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
444192710, 'Malaria', 2
);

/* INSERT QUERY NO: 105 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
750064469, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 106 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
585974426, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 107 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
133761058, 'Malaria', 3
);

/* INSERT QUERY NO: 108 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
179151510, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 109 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
447320870, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 110 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
467841716, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 111 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
599231477, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 112 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
684124083, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 113 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
208740987, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 114 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
833451511, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 115 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
558402134, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 116 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
509277186, 'Malaria', 1
);

/* INSERT QUERY NO: 117 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
948241072, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 118 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
697145938, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 119 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
497497776, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 120 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
978348890, 'Malaria', 1
);

/* INSERT QUERY NO: 121 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
350510277, 'Malaria', 1
);

/* INSERT QUERY NO: 122 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
387365678, 'Malaria', 3
);

/* INSERT QUERY NO: 123 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
971940922, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 124 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
887717038, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 125 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
742541081, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 126 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
798047128, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 127 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
208440070, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 128 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
867886330, 'Thalassemia', 1
);

/* INSERT QUERY NO: 129 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
831234620, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 130 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
424870917, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 131 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
977599626, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 132 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
282690944, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 133 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
162697762, 'Aplastic anemia', 2
);

/* INSERT QUERY NO: 134 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
335045909, 'Thalassemia', 2
);

/* INSERT QUERY NO: 135 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
557446669, 'Malaria', 3
);

/* INSERT QUERY NO: 136 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
496018551, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 137 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
670832662, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 138 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
614160425, 'Malaria', 3
);

/* INSERT QUERY NO: 139 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
695611377, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 140 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
606918197, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 141 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
245799434, 'Malaria', 1
);

/* INSERT QUERY NO: 142 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
399620305, 'Anemia of chronic disease', 3
);

/* INSERT QUERY NO: 143 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
774868393, 'Malaria', 1
);

/* INSERT QUERY NO: 144 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
455799376, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 145 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
226260525, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 146 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
638713388, 'Malaria', 2
);

/* INSERT QUERY NO: 147 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
564483683, 'Malaria', 1
);

/* INSERT QUERY NO: 148 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
223256573, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 149 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
637640979, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 150 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
834955090, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 151 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
209672087, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 152 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
175297093, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 153 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
100839729, 'Thalassemia', 3
);

/* INSERT QUERY NO: 154 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
710628570, 'Thalassemia', 2
);

/* INSERT QUERY NO: 155 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
929670489, 'Malaria', 1
);

/* INSERT QUERY NO: 156 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
793339948, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 157 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
604632535, 'Malaria', 3
);

/* INSERT QUERY NO: 158 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
868969030, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 159 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
448849743, 'Thalassemia', 2
);

/* INSERT QUERY NO: 160 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
141248540, 'Malaria', 3
);

/* INSERT QUERY NO: 161 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
425524557, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 162 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
192414954, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 163 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
318592001, 'Thalassemia', 3
);

/* INSERT QUERY NO: 164 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
326497537, 'Malaria', 1
);

/* INSERT QUERY NO: 165 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
985244799, 'anemia', NULL
);

/* INSERT QUERY NO: 166 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
507577837, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 167 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
391486089, 'Anemia of chronic disease', 2
);

/* INSERT QUERY NO: 168 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
223143904, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 169 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
757973574, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 170 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
756757055, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 171 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
541420933, 'Malaria', 1
);

/* INSERT QUERY NO: 172 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
214002988, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 173 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
274892255, 'Thalassemia', 3
);

/* INSERT QUERY NO: 174 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
894345162, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 175 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
359966153, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 176 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
184444979, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 177 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
979777334, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 178 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
732885712, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 179 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
521165267, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 180 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
454055361, 'Malaria', 2
);

/* INSERT QUERY NO: 181 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
122976530, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 182 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
758793891, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 183 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
944752490, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 184 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
125074868, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 185 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
918225994, 'Malaria', 3
);

/* INSERT QUERY NO: 186 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
551097402, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 187 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
477739872, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 188 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
964674679, 'Malaria', 2
);

/* INSERT QUERY NO: 189 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
700943594, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 190 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
915365165, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 191 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
937083736, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 192 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
109030302, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 193 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
628747693, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 194 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
555442249, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 195 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
200160739, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 196 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
738218900, 'Malaria', 2
);

/* INSERT QUERY NO: 197 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
989452807, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 198 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
737864976, 'Malaria', 1
);

/* INSERT QUERY NO: 199 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
635925148, 'Malaria', 1
);

/* INSERT QUERY NO: 200 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
826770121, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 201 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
866297088, 'Aplastic anemia', 1
);

/* INSERT QUERY NO: 202 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
230582041, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 203 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
858999210, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 204 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
531412674, 'Malaria', 2
);

/* INSERT QUERY NO: 205 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
760297746, 'Malaria', 3
);

/* INSERT QUERY NO: 206 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
999728144, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 207 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
639225399, 'Malaria', 1
);

/* INSERT QUERY NO: 208 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
694973500, 'Thalassemia', 1
);

/* INSERT QUERY NO: 209 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
797519473, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 210 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
772002908, 'Malaria', 2
);

/* INSERT QUERY NO: 211 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
772377059, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 212 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
230240109, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 213 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
583686373, 'Malaria', 2
);

/* INSERT QUERY NO: 214 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
319608343, 'Malaria', 2
);

/* INSERT QUERY NO: 215 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
717324029, 'Thalassemia', 1
);

/* INSERT QUERY NO: 216 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
826605308, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 217 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
105945142, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 218 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
203195214, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 219 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
705542442, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 220 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
849560875, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 221 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
660006187, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 222 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
209227516, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 223 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
609423978, 'Malaria', 1
);

/* INSERT QUERY NO: 224 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
737255073, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 225 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
667767027, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 226 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
200769246, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 227 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
479032816, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 228 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
706253956, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 229 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
633931892, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 230 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
856598387, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 231 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
505255227, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 232 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
480408472, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 233 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
902868693, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 234 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
371538020, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 235 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
752803629, 'Malaria', 3
);

/* INSERT QUERY NO: 236 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
532293158, 'Malaria', 1
);

/* INSERT QUERY NO: 237 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
669289445, 'Malaria', 1
);

/* INSERT QUERY NO: 238 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
301883189, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 239 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
605615251, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 240 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
112833444, 'Malaria', 1
);

/* INSERT QUERY NO: 241 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
531101070, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 242 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
617352061, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 243 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
910459906, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 244 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
645437169, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 245 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
397342369, 'Thalassemia', 3
);

/* INSERT QUERY NO: 246 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
155957181, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 247 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
945708648, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 248 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
437041011, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 249 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
959885997, 'Malaria', 3
);

/* INSERT QUERY NO: 250 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
584243656, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 251 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
228786585, 'Malaria', 3
);

/* INSERT QUERY NO: 252 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
479915457, 'Sickle cell anemia', 3
);

/* INSERT QUERY NO: 253 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
848387409, 'Malaria', 2
);

/* INSERT QUERY NO: 254 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
618549340, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 255 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
347489825, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 256 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
364838805, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 257 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
531166168, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 258 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
161057816, 'Thalassemia', 2
);

/* INSERT QUERY NO: 259 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
451098434, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 260 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
910679345, 'Thalassemia', 3
);

/* INSERT QUERY NO: 261 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
608810289, 'anemia', NULL
);

/* INSERT QUERY NO: 262 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
833993913, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 263 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
787823343, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 264 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
842788938, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 265 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
864731304, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 266 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
642355338, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 267 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
941382856, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 268 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
291931264, 'Malaria', 1
);

/* INSERT QUERY NO: 269 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
887271033, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 270 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
367603314, 'Malaria', 3
);

/* INSERT QUERY NO: 271 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
893376738, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 272 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
276327373, 'Malaria', 1
);

/* INSERT QUERY NO: 273 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
976754460, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 274 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
503653250, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 275 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
362966420, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 276 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
249984185, 'Sickle cell anemia', 2
);

/* INSERT QUERY NO: 277 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
430204203, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 278 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
888881451, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 279 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
571366130, 'Thalassemia', 1
);

/* INSERT QUERY NO: 280 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
381355987, 'Malaria', 3
);

/* INSERT QUERY NO: 281 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
584971967, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 282 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
744440698, 'Malaria', 3
);

/* INSERT QUERY NO: 283 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
732046185, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 284 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
818099951, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 285 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
445603120, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 286 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
937855031, 'Malaria', 3
);

/* INSERT QUERY NO: 287 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
166772539, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 288 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
871157515, 'Thalassemia', 1
);

/* INSERT QUERY NO: 289 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
848634634, 'Sickle cell anemia', 1
);

/* INSERT QUERY NO: 290 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
118683246, 'Myelodysplastic syndrome', 1
);

/* INSERT QUERY NO: 291 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
274655611, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 292 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
756713353, 'Malaria', 1
);

/* INSERT QUERY NO: 293 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
672144451, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 294 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
666402681, 'Malaria', 3
);

/* INSERT QUERY NO: 295 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
477096328, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 296 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
968142666, 'Myelodysplastic syndrome', 2
);

/* INSERT QUERY NO: 297 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
468932857, 'Malaria', 3
);

/* INSERT QUERY NO: 298 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
766567728, 'Myelodysplastic syndrome', 3
);

/* INSERT QUERY NO: 299 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
605260672, 'Malaria', 1
);

/* INSERT QUERY NO: 300 */
INSERT INTO PATIENT(pSSN, disease, emergencyLvl)
VALUES
(
351753147, 'anemia', NULL
);


/* INSERT QUERY NO: 1 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000000, 'Malaria'
);

/* INSERT QUERY NO: 2 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000001, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 3 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000002, 'Sickle cell anemia'
);

/* INSERT QUERY NO: 4 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000003, 'Thalassemia'
);

/* INSERT QUERY NO: 5 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000004, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 6 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000005, 'anemia'
);

/* INSERT QUERY NO: 7 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000006, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 8 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000007, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 9 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000008, 'Thalassemia'
);

/* INSERT QUERY NO: 10 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000009, 'Malaria'
);

/* INSERT QUERY NO: 11 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000010, 'Malaria'
);

/* INSERT QUERY NO: 12 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000011, 'Malaria'
);

/* INSERT QUERY NO: 13 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000012, 'Thalassemia'
);

/* INSERT QUERY NO: 14 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000013, 'Malaria'
);

/* INSERT QUERY NO: 15 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000014, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 16 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000015, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 17 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000016, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 18 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000017, 'Sickle cell anemia'
);

/* INSERT QUERY NO: 19 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000018, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 20 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000019, 'Malaria'
);

/* INSERT QUERY NO: 21 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000020, 'Sickle cell anemia'
);

/* INSERT QUERY NO: 22 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000021, 'anemia'
);

/* INSERT QUERY NO: 23 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000022, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 24 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000023, 'Malaria'
);

/* INSERT QUERY NO: 25 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000024, 'Malaria'
);

/* INSERT QUERY NO: 26 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000025, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 27 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000026, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 28 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000027, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 29 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000028, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 30 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000029, 'Malaria'
);

/* INSERT QUERY NO: 31 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000030, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 32 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000031, 'Malaria'
);

/* INSERT QUERY NO: 33 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000032, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 34 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000033, 'Malaria'
);

/* INSERT QUERY NO: 35 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000034, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 36 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000035, 'Sickle cell anemia'
);

/* INSERT QUERY NO: 37 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000036, 'Sickle cell anemia'
);

/* INSERT QUERY NO: 38 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000037, 'Thalassemia'
);

/* INSERT QUERY NO: 39 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000038, 'Sickle cell anemia'
);

/* INSERT QUERY NO: 40 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000039, 'Malaria'
);

/* INSERT QUERY NO: 41 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000040, 'Sickle cell anemia'
);

/* INSERT QUERY NO: 42 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000041, 'Malaria'
);

/* INSERT QUERY NO: 43 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000042, 'Malaria'
);

/* INSERT QUERY NO: 44 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000043, 'Sickle cell anemia'
);

/* INSERT QUERY NO: 45 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000044, 'Malaria'
);

/* INSERT QUERY NO: 46 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000045, 'Sickle cell anemia'
);

/* INSERT QUERY NO: 47 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000046, 'Thalassemia'
);

/* INSERT QUERY NO: 48 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000047, 'Myelodysplastic syndrome'
);

/* INSERT QUERY NO: 49 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000048, 'Malaria'
);

/* INSERT QUERY NO: 50 */
INSERT INTO PATIENT(pSSN, disease)
VALUES
(
100000049, 'Myelodysplastic syndrome'
);



/* INSERT QUERY NO: 1 */
INSERT INTO DONOR(dSSN)
VALUES
(
842514480
);

/* INSERT QUERY NO: 2 */
INSERT INTO DONOR(dSSN)
VALUES
(
924243034
);

/* INSERT QUERY NO: 3 */
INSERT INTO DONOR(dSSN)
VALUES
(
608211556
);

/* INSERT QUERY NO: 4 */
INSERT INTO DONOR(dSSN)
VALUES
(
363393841
);

/* INSERT QUERY NO: 5 */
INSERT INTO DONOR(dSSN)
VALUES
(
357219331
);

/* INSERT QUERY NO: 6 */
INSERT INTO DONOR(dSSN)
VALUES
(
238061000
);

/* INSERT QUERY NO: 7 */
INSERT INTO DONOR(dSSN)
VALUES
(
372173938
);

/* INSERT QUERY NO: 8 */
INSERT INTO DONOR(dSSN)
VALUES
(
975519907
);

/* INSERT QUERY NO: 9 */
INSERT INTO DONOR(dSSN)
VALUES
(
289033441
);

/* INSERT QUERY NO: 10 */
INSERT INTO DONOR(dSSN)
VALUES
(
853816541
);

/* INSERT QUERY NO: 11 */
INSERT INTO DONOR(dSSN)
VALUES
(
177737126
);

/* INSERT QUERY NO: 12 */
INSERT INTO DONOR(dSSN)
VALUES
(
512772195
);

/* INSERT QUERY NO: 13 */
INSERT INTO DONOR(dSSN)
VALUES
(
354586041
);

/* INSERT QUERY NO: 14 */
INSERT INTO DONOR(dSSN)
VALUES
(
738970208
);

/* INSERT QUERY NO: 15 */
INSERT INTO DONOR(dSSN)
VALUES
(
442809446
);

/* INSERT QUERY NO: 16 */
INSERT INTO DONOR(dSSN)
VALUES
(
284054928
);

/* INSERT QUERY NO: 17 */
INSERT INTO DONOR(dSSN)
VALUES
(
663473126
);

/* INSERT QUERY NO: 18 */
INSERT INTO DONOR(dSSN)
VALUES
(
299227756
);

/* INSERT QUERY NO: 19 */
INSERT INTO DONOR(dSSN)
VALUES
(
403627618
);

/* INSERT QUERY NO: 20 */
INSERT INTO DONOR(dSSN)
VALUES
(
219307670
);

/* INSERT QUERY NO: 21 */
INSERT INTO DONOR(dSSN)
VALUES
(
174089937
);

/* INSERT QUERY NO: 22 */
INSERT INTO DONOR(dSSN)
VALUES
(
608259484
);

/* INSERT QUERY NO: 23 */
INSERT INTO DONOR(dSSN)
VALUES
(
503490986
);

/* INSERT QUERY NO: 24 */
INSERT INTO DONOR(dSSN)
VALUES
(
421517837
);

/* INSERT QUERY NO: 25 */
INSERT INTO DONOR(dSSN)
VALUES
(
430537269
);

/* INSERT QUERY NO: 26 */
INSERT INTO DONOR(dSSN)
VALUES
(
526554970
);

/* INSERT QUERY NO: 27 */
INSERT INTO DONOR(dSSN)
VALUES
(
176627306
);

/* INSERT QUERY NO: 28 */
INSERT INTO DONOR(dSSN)
VALUES
(
737254942
);

/* INSERT QUERY NO: 29 */
INSERT INTO DONOR(dSSN)
VALUES
(
885429897
);

/* INSERT QUERY NO: 30 */
INSERT INTO DONOR(dSSN)
VALUES
(
874756460
);

/* INSERT QUERY NO: 31 */
INSERT INTO DONOR(dSSN)
VALUES
(
275768613
);

/* INSERT QUERY NO: 32 */
INSERT INTO DONOR(dSSN)
VALUES
(
601070880
);

/* INSERT QUERY NO: 33 */
INSERT INTO DONOR(dSSN)
VALUES
(
386159372
);

/* INSERT QUERY NO: 34 */
INSERT INTO DONOR(dSSN)
VALUES
(
672975622
);

/* INSERT QUERY NO: 35 */
INSERT INTO DONOR(dSSN)
VALUES
(
789041587
);

/* INSERT QUERY NO: 36 */
INSERT INTO DONOR(dSSN)
VALUES
(
650987994
);

/* INSERT QUERY NO: 37 */
INSERT INTO DONOR(dSSN)
VALUES
(
868763962
);

/* INSERT QUERY NO: 38 */
INSERT INTO DONOR(dSSN)
VALUES
(
563423940
);

/* INSERT QUERY NO: 39 */
INSERT INTO DONOR(dSSN)
VALUES
(
286479654
);

/* INSERT QUERY NO: 40 */
INSERT INTO DONOR(dSSN)
VALUES
(
564333576
);

/* INSERT QUERY NO: 41 */
INSERT INTO DONOR(dSSN)
VALUES
(
360131111
);

/* INSERT QUERY NO: 42 */
INSERT INTO DONOR(dSSN)
VALUES
(
206266771
);

/* INSERT QUERY NO: 43 */
INSERT INTO DONOR(dSSN)
VALUES
(
609250260
);

/* INSERT QUERY NO: 44 */
INSERT INTO DONOR(dSSN)
VALUES
(
643262759
);

/* INSERT QUERY NO: 45 */
INSERT INTO DONOR(dSSN)
VALUES
(
216072634
);

/* INSERT QUERY NO: 46 */
INSERT INTO DONOR(dSSN)
VALUES
(
768586270
);

/* INSERT QUERY NO: 47 */
INSERT INTO DONOR(dSSN)
VALUES
(
998092386
);

/* INSERT QUERY NO: 48 */
INSERT INTO DONOR(dSSN)
VALUES
(
495063022
);

/* INSERT QUERY NO: 49 */
INSERT INTO DONOR(dSSN)
VALUES
(
876209214
);

/* INSERT QUERY NO: 50 */
INSERT INTO DONOR(dSSN)
VALUES
(
863055717
);

/* INSERT QUERY NO: 51 */
INSERT INTO DONOR(dSSN)
VALUES
(
165894936
);

/* INSERT QUERY NO: 52 */
INSERT INTO DONOR(dSSN)
VALUES
(
668247279
);

/* INSERT QUERY NO: 53 */
INSERT INTO DONOR(dSSN)
VALUES
(
225326382
);

/* INSERT QUERY NO: 54 */
INSERT INTO DONOR(dSSN)
VALUES
(
319006878
);

/* INSERT QUERY NO: 55 */
INSERT INTO DONOR(dSSN)
VALUES
(
115726411
);

/* INSERT QUERY NO: 56 */
INSERT INTO DONOR(dSSN)
VALUES
(
346867691
);

/* INSERT QUERY NO: 57 */
INSERT INTO DONOR(dSSN)
VALUES
(
910023133
);

/* INSERT QUERY NO: 58 */
INSERT INTO DONOR(dSSN)
VALUES
(
780697425
);

/* INSERT QUERY NO: 59 */
INSERT INTO DONOR(dSSN)
VALUES
(
169744728
);

/* INSERT QUERY NO: 60 */
INSERT INTO DONOR(dSSN)
VALUES
(
432669332
);

/* INSERT QUERY NO: 61 */
INSERT INTO DONOR(dSSN)
VALUES
(
958213532
);

/* INSERT QUERY NO: 62 */
INSERT INTO DONOR(dSSN)
VALUES
(
198714826
);

/* INSERT QUERY NO: 63 */
INSERT INTO DONOR(dSSN)
VALUES
(
941229357
);

/* INSERT QUERY NO: 64 */
INSERT INTO DONOR(dSSN)
VALUES
(
684241404
);

/* INSERT QUERY NO: 65 */
INSERT INTO DONOR(dSSN)
VALUES
(
514826814
);

/* INSERT QUERY NO: 66 */
INSERT INTO DONOR(dSSN)
VALUES
(
394080381
);

/* INSERT QUERY NO: 67 */
INSERT INTO DONOR(dSSN)
VALUES
(
776622516
);

/* INSERT QUERY NO: 68 */
INSERT INTO DONOR(dSSN)
VALUES
(
586232427
);

/* INSERT QUERY NO: 69 */
INSERT INTO DONOR(dSSN)
VALUES
(
342554405
);

/* INSERT QUERY NO: 70 */
INSERT INTO DONOR(dSSN)
VALUES
(
995541939
);

/* INSERT QUERY NO: 71 */
INSERT INTO DONOR(dSSN)
VALUES
(
610144170
);

/* INSERT QUERY NO: 72 */
INSERT INTO DONOR(dSSN)
VALUES
(
248413591
);

/* INSERT QUERY NO: 73 */
INSERT INTO DONOR(dSSN)
VALUES
(
848414798
);

/* INSERT QUERY NO: 74 */
INSERT INTO DONOR(dSSN)
VALUES
(
570914688
);

/* INSERT QUERY NO: 75 */
INSERT INTO DONOR(dSSN)
VALUES
(
166260903
);

/* INSERT QUERY NO: 76 */
INSERT INTO DONOR(dSSN)
VALUES
(
806781132
);

/* INSERT QUERY NO: 77 */
INSERT INTO DONOR(dSSN)
VALUES
(
453378632
);

/* INSERT QUERY NO: 78 */
INSERT INTO DONOR(dSSN)
VALUES
(
156503032
);

/* INSERT QUERY NO: 79 */
INSERT INTO DONOR(dSSN)
VALUES
(
166992864
);

/* INSERT QUERY NO: 80 */
INSERT INTO DONOR(dSSN)
VALUES
(
409046850
);

/* INSERT QUERY NO: 81 */
INSERT INTO DONOR(dSSN)
VALUES
(
136163741
);

/* INSERT QUERY NO: 82 */
INSERT INTO DONOR(dSSN)
VALUES
(
726124427
);

/* INSERT QUERY NO: 83 */
INSERT INTO DONOR(dSSN)
VALUES
(
243467809
);

/* INSERT QUERY NO: 84 */
INSERT INTO DONOR(dSSN)
VALUES
(
318642942
);

/* INSERT QUERY NO: 85 */
INSERT INTO DONOR(dSSN)
VALUES
(
264161742
);

/* INSERT QUERY NO: 86 */
INSERT INTO DONOR(dSSN)
VALUES
(
236775411
);

/* INSERT QUERY NO: 87 */
INSERT INTO DONOR(dSSN)
VALUES
(
542958839
);

/* INSERT QUERY NO: 88 */
INSERT INTO DONOR(dSSN)
VALUES
(
583589231
);

/* INSERT QUERY NO: 89 */
INSERT INTO DONOR(dSSN)
VALUES
(
253284965
);

/* INSERT QUERY NO: 90 */
INSERT INTO DONOR(dSSN)
VALUES
(
709110900
);

/* INSERT QUERY NO: 91 */
INSERT INTO DONOR(dSSN)
VALUES
(
391479893
);

/* INSERT QUERY NO: 92 */
INSERT INTO DONOR(dSSN)
VALUES
(
487328284
);

/* INSERT QUERY NO: 93 */
INSERT INTO DONOR(dSSN)
VALUES
(
116762461
);

/* INSERT QUERY NO: 94 */
INSERT INTO DONOR(dSSN)
VALUES
(
374785307
);

/* INSERT QUERY NO: 95 */
INSERT INTO DONOR(dSSN)
VALUES
(
374327147
);

/* INSERT QUERY NO: 96 */
INSERT INTO DONOR(dSSN)
VALUES
(
158966862
);

/* INSERT QUERY NO: 97 */
INSERT INTO DONOR(dSSN)
VALUES
(
947037384
);

/* INSERT QUERY NO: 98 */
INSERT INTO DONOR(dSSN)
VALUES
(
140166931
);

/* INSERT QUERY NO: 99 */
INSERT INTO DONOR(dSSN)
VALUES
(
346964536
);

/* INSERT QUERY NO: 100 */
INSERT INTO DONOR(dSSN)
VALUES
(
736180442
);

/* INSERT QUERY NO: 101 */
INSERT INTO DONOR(dSSN)
VALUES
(
644934596
);

/* INSERT QUERY NO: 102 */
INSERT INTO DONOR(dSSN)
VALUES
(
653044424
);

/* INSERT QUERY NO: 103 */
INSERT INTO DONOR(dSSN)
VALUES
(
518155053
);

/* INSERT QUERY NO: 104 */
INSERT INTO DONOR(dSSN)
VALUES
(
444192710
);

/* INSERT QUERY NO: 105 */
INSERT INTO DONOR(dSSN)
VALUES
(
750064469
);

/* INSERT QUERY NO: 106 */
INSERT INTO DONOR(dSSN)
VALUES
(
585974426
);

/* INSERT QUERY NO: 107 */
INSERT INTO DONOR(dSSN)
VALUES
(
133761058
);

/* INSERT QUERY NO: 108 */
INSERT INTO DONOR(dSSN)
VALUES
(
179151510
);

/* INSERT QUERY NO: 109 */
INSERT INTO DONOR(dSSN)
VALUES
(
447320870
);

/* INSERT QUERY NO: 110 */
INSERT INTO DONOR(dSSN)
VALUES
(
467841716
);

/* INSERT QUERY NO: 111 */
INSERT INTO DONOR(dSSN)
VALUES
(
599231477
);

/* INSERT QUERY NO: 112 */
INSERT INTO DONOR(dSSN)
VALUES
(
684124083
);

/* INSERT QUERY NO: 113 */
INSERT INTO DONOR(dSSN)
VALUES
(
208740987
);

/* INSERT QUERY NO: 114 */
INSERT INTO DONOR(dSSN)
VALUES
(
833451511
);

/* INSERT QUERY NO: 115 */
INSERT INTO DONOR(dSSN)
VALUES
(
558402134
);

/* INSERT QUERY NO: 116 */
INSERT INTO DONOR(dSSN)
VALUES
(
509277186
);

/* INSERT QUERY NO: 117 */
INSERT INTO DONOR(dSSN)
VALUES
(
948241072
);

/* INSERT QUERY NO: 118 */
INSERT INTO DONOR(dSSN)
VALUES
(
697145938
);

/* INSERT QUERY NO: 119 */
INSERT INTO DONOR(dSSN)
VALUES
(
497497776
);

/* INSERT QUERY NO: 120 */
INSERT INTO DONOR(dSSN)
VALUES
(
978348890
);

/* INSERT QUERY NO: 121 */
INSERT INTO DONOR(dSSN)
VALUES
(
350510277
);

/* INSERT QUERY NO: 122 */
INSERT INTO DONOR(dSSN)
VALUES
(
387365678
);

/* INSERT QUERY NO: 123 */
INSERT INTO DONOR(dSSN)
VALUES
(
971940922
);

/* INSERT QUERY NO: 124 */
INSERT INTO DONOR(dSSN)
VALUES
(
887717038
);

/* INSERT QUERY NO: 125 */
INSERT INTO DONOR(dSSN)
VALUES
(
742541081
);

/* INSERT QUERY NO: 126 */
INSERT INTO DONOR(dSSN)
VALUES
(
798047128
);

/* INSERT QUERY NO: 127 */
INSERT INTO DONOR(dSSN)
VALUES
(
208440070
);

/* INSERT QUERY NO: 128 */
INSERT INTO DONOR(dSSN)
VALUES
(
867886330
);

/* INSERT QUERY NO: 129 */
INSERT INTO DONOR(dSSN)
VALUES
(
831234620
);

/* INSERT QUERY NO: 130 */
INSERT INTO DONOR(dSSN)
VALUES
(
424870917
);

/* INSERT QUERY NO: 131 */
INSERT INTO DONOR(dSSN)
VALUES
(
977599626
);

/* INSERT QUERY NO: 132 */
INSERT INTO DONOR(dSSN)
VALUES
(
282690944
);

/* INSERT QUERY NO: 133 */
INSERT INTO DONOR(dSSN)
VALUES
(
162697762
);

/* INSERT QUERY NO: 134 */
INSERT INTO DONOR(dSSN)
VALUES
(
335045909
);

/* INSERT QUERY NO: 135 */
INSERT INTO DONOR(dSSN)
VALUES
(
557446669
);

/* INSERT QUERY NO: 136 */
INSERT INTO DONOR(dSSN)
VALUES
(
496018551
);

/* INSERT QUERY NO: 137 */
INSERT INTO DONOR(dSSN)
VALUES
(
670832662
);

/* INSERT QUERY NO: 138 */
INSERT INTO DONOR(dSSN)
VALUES
(
614160425
);

/* INSERT QUERY NO: 139 */
INSERT INTO DONOR(dSSN)
VALUES
(
695611377
);

/* INSERT QUERY NO: 140 */
INSERT INTO DONOR(dSSN)
VALUES
(
606918197
);

/* INSERT QUERY NO: 141 */
INSERT INTO DONOR(dSSN)
VALUES
(
245799434
);

/* INSERT QUERY NO: 142 */
INSERT INTO DONOR(dSSN)
VALUES
(
399620305
);

/* INSERT QUERY NO: 143 */
INSERT INTO DONOR(dSSN)
VALUES
(
774868393
);

/* INSERT QUERY NO: 144 */
INSERT INTO DONOR(dSSN)
VALUES
(
455799376
);

/* INSERT QUERY NO: 145 */
INSERT INTO DONOR(dSSN)
VALUES
(
226260525
);

/* INSERT QUERY NO: 146 */
INSERT INTO DONOR(dSSN)
VALUES
(
638713388
);

/* INSERT QUERY NO: 147 */
INSERT INTO DONOR(dSSN)
VALUES
(
564483683
);

/* INSERT QUERY NO: 148 */
INSERT INTO DONOR(dSSN)
VALUES
(
223256573
);

/* INSERT QUERY NO: 149 */
INSERT INTO DONOR(dSSN)
VALUES
(
637640979
);

/* INSERT QUERY NO: 150 */
INSERT INTO DONOR(dSSN)
VALUES
(
834955090
);

/* INSERT QUERY NO: 151 */
INSERT INTO DONOR(dSSN)
VALUES
(
209672087
);

/* INSERT QUERY NO: 152 */
INSERT INTO DONOR(dSSN)
VALUES
(
175297093
);

/* INSERT QUERY NO: 153 */
INSERT INTO DONOR(dSSN)
VALUES
(
100839729
);

/* INSERT QUERY NO: 154 */
INSERT INTO DONOR(dSSN)
VALUES
(
710628570
);

/* INSERT QUERY NO: 155 */
INSERT INTO DONOR(dSSN)
VALUES
(
929670489
);

/* INSERT QUERY NO: 156 */
INSERT INTO DONOR(dSSN)
VALUES
(
793339948
);

/* INSERT QUERY NO: 157 */
INSERT INTO DONOR(dSSN)
VALUES
(
604632535
);

/* INSERT QUERY NO: 158 */
INSERT INTO DONOR(dSSN)
VALUES
(
868969030
);

/* INSERT QUERY NO: 159 */
INSERT INTO DONOR(dSSN)
VALUES
(
448849743
);

/* INSERT QUERY NO: 160 */
INSERT INTO DONOR(dSSN)
VALUES
(
141248540
);

/* INSERT QUERY NO: 161 */
INSERT INTO DONOR(dSSN)
VALUES
(
425524557
);

/* INSERT QUERY NO: 162 */
INSERT INTO DONOR(dSSN)
VALUES
(
192414954
);

/* INSERT QUERY NO: 163 */
INSERT INTO DONOR(dSSN)
VALUES
(
318592001
);

/* INSERT QUERY NO: 164 */
INSERT INTO DONOR(dSSN)
VALUES
(
326497537
);

/* INSERT QUERY NO: 165 */
INSERT INTO DONOR(dSSN)
VALUES
(
985244799
);

/* INSERT QUERY NO: 166 */
INSERT INTO DONOR(dSSN)
VALUES
(
507577837
);

/* INSERT QUERY NO: 167 */
INSERT INTO DONOR(dSSN)
VALUES
(
391486089
);

/* INSERT QUERY NO: 168 */
INSERT INTO DONOR(dSSN)
VALUES
(
223143904
);

/* INSERT QUERY NO: 169 */
INSERT INTO DONOR(dSSN)
VALUES
(
757973574
);

/* INSERT QUERY NO: 170 */
INSERT INTO DONOR(dSSN)
VALUES
(
756757055
);

/* INSERT QUERY NO: 171 */
INSERT INTO DONOR(dSSN)
VALUES
(
541420933
);

/* INSERT QUERY NO: 172 */
INSERT INTO DONOR(dSSN)
VALUES
(
214002988
);

/* INSERT QUERY NO: 173 */
INSERT INTO DONOR(dSSN)
VALUES
(
274892255
);

/* INSERT QUERY NO: 174 */
INSERT INTO DONOR(dSSN)
VALUES
(
894345162
);

/* INSERT QUERY NO: 175 */
INSERT INTO DONOR(dSSN)
VALUES
(
359966153
);

/* INSERT QUERY NO: 176 */
INSERT INTO DONOR(dSSN)
VALUES
(
184444979
);

/* INSERT QUERY NO: 177 */
INSERT INTO DONOR(dSSN)
VALUES
(
979777334
);

/* INSERT QUERY NO: 178 */
INSERT INTO DONOR(dSSN)
VALUES
(
732885712
);

/* INSERT QUERY NO: 179 */
INSERT INTO DONOR(dSSN)
VALUES
(
521165267
);

/* INSERT QUERY NO: 180 */
INSERT INTO DONOR(dSSN)
VALUES
(
454055361
);

/* INSERT QUERY NO: 181 */
INSERT INTO DONOR(dSSN)
VALUES
(
122976530
);

/* INSERT QUERY NO: 182 */
INSERT INTO DONOR(dSSN)
VALUES
(
758793891
);

/* INSERT QUERY NO: 183 */
INSERT INTO DONOR(dSSN)
VALUES
(
944752490
);

/* INSERT QUERY NO: 184 */
INSERT INTO DONOR(dSSN)
VALUES
(
125074868
);

/* INSERT QUERY NO: 185 */
INSERT INTO DONOR(dSSN)
VALUES
(
918225994
);

/* INSERT QUERY NO: 186 */
INSERT INTO DONOR(dSSN)
VALUES
(
551097402
);

/* INSERT QUERY NO: 187 */
INSERT INTO DONOR(dSSN)
VALUES
(
477739872
);

/* INSERT QUERY NO: 188 */
INSERT INTO DONOR(dSSN)
VALUES
(
964674679
);

/* INSERT QUERY NO: 189 */
INSERT INTO DONOR(dSSN)
VALUES
(
700943594
);

/* INSERT QUERY NO: 190 */
INSERT INTO DONOR(dSSN)
VALUES
(
915365165
);

/* INSERT QUERY NO: 191 */
INSERT INTO DONOR(dSSN)
VALUES
(
937083736
);

/* INSERT QUERY NO: 192 */
INSERT INTO DONOR(dSSN)
VALUES
(
109030302
);

/* INSERT QUERY NO: 193 */
INSERT INTO DONOR(dSSN)
VALUES
(
628747693
);

/* INSERT QUERY NO: 194 */
INSERT INTO DONOR(dSSN)
VALUES
(
555442249
);

/* INSERT QUERY NO: 195 */
INSERT INTO DONOR(dSSN)
VALUES
(
200160739
);

/* INSERT QUERY NO: 196 */
INSERT INTO DONOR(dSSN)
VALUES
(
738218900
);

/* INSERT QUERY NO: 197 */
INSERT INTO DONOR(dSSN)
VALUES
(
989452807
);

/* INSERT QUERY NO: 198 */
INSERT INTO DONOR(dSSN)
VALUES
(
737864976
);

/* INSERT QUERY NO: 199 */
INSERT INTO DONOR(dSSN)
VALUES
(
635925148
);

/* INSERT QUERY NO: 200 */
INSERT INTO DONOR(dSSN)
VALUES
(
826770121
);

/* INSERT QUERY NO: 201 */
INSERT INTO DONOR(dSSN)
VALUES
(
866297088
);

/* INSERT QUERY NO: 202 */
INSERT INTO DONOR(dSSN)
VALUES
(
230582041
);

/* INSERT QUERY NO: 203 */
INSERT INTO DONOR(dSSN)
VALUES
(
858999210
);

/* INSERT QUERY NO: 204 */
INSERT INTO DONOR(dSSN)
VALUES
(
531412674
);

/* INSERT QUERY NO: 205 */
INSERT INTO DONOR(dSSN)
VALUES
(
760297746
);

/* INSERT QUERY NO: 206 */
INSERT INTO DONOR(dSSN)
VALUES
(
999728144
);

/* INSERT QUERY NO: 207 */
INSERT INTO DONOR(dSSN)
VALUES
(
639225399
);

/* INSERT QUERY NO: 208 */
INSERT INTO DONOR(dSSN)
VALUES
(
694973500
);

/* INSERT QUERY NO: 209 */
INSERT INTO DONOR(dSSN)
VALUES
(
797519473
);

/* INSERT QUERY NO: 210 */
INSERT INTO DONOR(dSSN)
VALUES
(
772002908
);

/* INSERT QUERY NO: 211 */
INSERT INTO DONOR(dSSN)
VALUES
(
772377059
);

/* INSERT QUERY NO: 212 */
INSERT INTO DONOR(dSSN)
VALUES
(
230240109
);

/* INSERT QUERY NO: 213 */
INSERT INTO DONOR(dSSN)
VALUES
(
583686373
);

/* INSERT QUERY NO: 214 */
INSERT INTO DONOR(dSSN)
VALUES
(
319608343
);

/* INSERT QUERY NO: 215 */
INSERT INTO DONOR(dSSN)
VALUES
(
717324029
);

/* INSERT QUERY NO: 216 */
INSERT INTO DONOR(dSSN)
VALUES
(
826605308
);

/* INSERT QUERY NO: 217 */
INSERT INTO DONOR(dSSN)
VALUES
(
105945142
);

/* INSERT QUERY NO: 218 */
INSERT INTO DONOR(dSSN)
VALUES
(
203195214
);

/* INSERT QUERY NO: 219 */
INSERT INTO DONOR(dSSN)
VALUES
(
705542442
);

/* INSERT QUERY NO: 220 */
INSERT INTO DONOR(dSSN)
VALUES
(
849560875
);

/* INSERT QUERY NO: 221 */
INSERT INTO DONOR(dSSN)
VALUES
(
660006187
);

/* INSERT QUERY NO: 222 */
INSERT INTO DONOR(dSSN)
VALUES
(
209227516
);

/* INSERT QUERY NO: 223 */
INSERT INTO DONOR(dSSN)
VALUES
(
609423978
);

/* INSERT QUERY NO: 224 */
INSERT INTO DONOR(dSSN)
VALUES
(
737255073
);

/* INSERT QUERY NO: 225 */
INSERT INTO DONOR(dSSN)
VALUES
(
667767027
);

/* INSERT QUERY NO: 226 */
INSERT INTO DONOR(dSSN)
VALUES
(
200769246
);

/* INSERT QUERY NO: 227 */
INSERT INTO DONOR(dSSN)
VALUES
(
479032816
);

/* INSERT QUERY NO: 228 */
INSERT INTO DONOR(dSSN)
VALUES
(
706253956
);

/* INSERT QUERY NO: 229 */
INSERT INTO DONOR(dSSN)
VALUES
(
633931892
);

/* INSERT QUERY NO: 230 */
INSERT INTO DONOR(dSSN)
VALUES
(
856598387
);

/* INSERT QUERY NO: 231 */
INSERT INTO DONOR(dSSN)
VALUES
(
505255227
);

/* INSERT QUERY NO: 232 */
INSERT INTO DONOR(dSSN)
VALUES
(
480408472
);

/* INSERT QUERY NO: 233 */
INSERT INTO DONOR(dSSN)
VALUES
(
902868693
);

/* INSERT QUERY NO: 234 */
INSERT INTO DONOR(dSSN)
VALUES
(
371538020
);

/* INSERT QUERY NO: 235 */
INSERT INTO DONOR(dSSN)
VALUES
(
752803629
);

/* INSERT QUERY NO: 236 */
INSERT INTO DONOR(dSSN)
VALUES
(
532293158
);

/* INSERT QUERY NO: 237 */
INSERT INTO DONOR(dSSN)
VALUES
(
669289445
);

/* INSERT QUERY NO: 238 */
INSERT INTO DONOR(dSSN)
VALUES
(
301883189
);

/* INSERT QUERY NO: 239 */
INSERT INTO DONOR(dSSN)
VALUES
(
605615251
);

/* INSERT QUERY NO: 240 */
INSERT INTO DONOR(dSSN)
VALUES
(
112833444
);

/* INSERT QUERY NO: 241 */
INSERT INTO DONOR(dSSN)
VALUES
(
531101070
);

/* INSERT QUERY NO: 242 */
INSERT INTO DONOR(dSSN)
VALUES
(
617352061
);

/* INSERT QUERY NO: 243 */
INSERT INTO DONOR(dSSN)
VALUES
(
910459906
);

/* INSERT QUERY NO: 244 */
INSERT INTO DONOR(dSSN)
VALUES
(
645437169
);

/* INSERT QUERY NO: 245 */
INSERT INTO DONOR(dSSN)
VALUES
(
397342369
);

/* INSERT QUERY NO: 246 */
INSERT INTO DONOR(dSSN)
VALUES
(
155957181
);

/* INSERT QUERY NO: 247 */
INSERT INTO DONOR(dSSN)
VALUES
(
945708648
);

/* INSERT QUERY NO: 248 */
INSERT INTO DONOR(dSSN)
VALUES
(
437041011
);

/* INSERT QUERY NO: 249 */
INSERT INTO DONOR(dSSN)
VALUES
(
959885997
);

/* INSERT QUERY NO: 250 */
INSERT INTO DONOR(dSSN)
VALUES
(
584243656
);

/* INSERT QUERY NO: 251 */
INSERT INTO DONOR(dSSN)
VALUES
(
228786585
);

/* INSERT QUERY NO: 252 */
INSERT INTO DONOR(dSSN)
VALUES
(
479915457
);

/* INSERT QUERY NO: 253 */
INSERT INTO DONOR(dSSN)
VALUES
(
848387409
);

/* INSERT QUERY NO: 254 */
INSERT INTO DONOR(dSSN)
VALUES
(
618549340
);

/* INSERT QUERY NO: 255 */
INSERT INTO DONOR(dSSN)
VALUES
(
347489825
);

/* INSERT QUERY NO: 256 */
INSERT INTO DONOR(dSSN)
VALUES
(
364838805
);

/* INSERT QUERY NO: 257 */
INSERT INTO DONOR(dSSN)
VALUES
(
531166168
);

/* INSERT QUERY NO: 258 */
INSERT INTO DONOR(dSSN)
VALUES
(
161057816
);

/* INSERT QUERY NO: 259 */
INSERT INTO DONOR(dSSN)
VALUES
(
451098434
);

/* INSERT QUERY NO: 260 */
INSERT INTO DONOR(dSSN)
VALUES
(
910679345
);

/* INSERT QUERY NO: 261 */
INSERT INTO DONOR(dSSN)
VALUES
(
608810289
);

/* INSERT QUERY NO: 262 */
INSERT INTO DONOR(dSSN)
VALUES
(
833993913
);

/* INSERT QUERY NO: 263 */
INSERT INTO DONOR(dSSN)
VALUES
(
787823343
);

/* INSERT QUERY NO: 264 */
INSERT INTO DONOR(dSSN)
VALUES
(
842788938
);

/* INSERT QUERY NO: 265 */
INSERT INTO DONOR(dSSN)
VALUES
(
864731304
);

/* INSERT QUERY NO: 266 */
INSERT INTO DONOR(dSSN)
VALUES
(
642355338
);

/* INSERT QUERY NO: 267 */
INSERT INTO DONOR(dSSN)
VALUES
(
941382856
);

/* INSERT QUERY NO: 268 */
INSERT INTO DONOR(dSSN)
VALUES
(
291931264
);

/* INSERT QUERY NO: 269 */
INSERT INTO DONOR(dSSN)
VALUES
(
887271033
);

/* INSERT QUERY NO: 270 */
INSERT INTO DONOR(dSSN)
VALUES
(
367603314
);

/* INSERT QUERY NO: 271 */
INSERT INTO DONOR(dSSN)
VALUES
(
893376738
);

/* INSERT QUERY NO: 272 */
INSERT INTO DONOR(dSSN)
VALUES
(
276327373
);

/* INSERT QUERY NO: 273 */
INSERT INTO DONOR(dSSN)
VALUES
(
976754460
);

/* INSERT QUERY NO: 274 */
INSERT INTO DONOR(dSSN)
VALUES
(
503653250
);

/* INSERT QUERY NO: 275 */
INSERT INTO DONOR(dSSN)
VALUES
(
362966420
);

/* INSERT QUERY NO: 276 */
INSERT INTO DONOR(dSSN)
VALUES
(
249984185
);

/* INSERT QUERY NO: 277 */
INSERT INTO DONOR(dSSN)
VALUES
(
430204203
);

/* INSERT QUERY NO: 278 */
INSERT INTO DONOR(dSSN)
VALUES
(
888881451
);

/* INSERT QUERY NO: 279 */
INSERT INTO DONOR(dSSN)
VALUES
(
571366130
);

/* INSERT QUERY NO: 280 */
INSERT INTO DONOR(dSSN)
VALUES
(
381355987
);

/* INSERT QUERY NO: 281 */
INSERT INTO DONOR(dSSN)
VALUES
(
584971967
);

/* INSERT QUERY NO: 282 */
INSERT INTO DONOR(dSSN)
VALUES
(
744440698
);

/* INSERT QUERY NO: 283 */
INSERT INTO DONOR(dSSN)
VALUES
(
732046185
);

/* INSERT QUERY NO: 284 */
INSERT INTO DONOR(dSSN)
VALUES
(
818099951
);

/* INSERT QUERY NO: 285 */
INSERT INTO DONOR(dSSN)
VALUES
(
445603120
);

/* INSERT QUERY NO: 286 */
INSERT INTO DONOR(dSSN)
VALUES
(
937855031
);

/* INSERT QUERY NO: 287 */
INSERT INTO DONOR(dSSN)
VALUES
(
166772539
);

/* INSERT QUERY NO: 288 */
INSERT INTO DONOR(dSSN)
VALUES
(
871157515
);

/* INSERT QUERY NO: 289 */
INSERT INTO DONOR(dSSN)
VALUES
(
848634634
);

/* INSERT QUERY NO: 290 */
INSERT INTO DONOR(dSSN)
VALUES
(
118683246
);

/* INSERT QUERY NO: 291 */
INSERT INTO DONOR(dSSN)
VALUES
(
274655611
);

/* INSERT QUERY NO: 292 */
INSERT INTO DONOR(dSSN)
VALUES
(
756713353
);

/* INSERT QUERY NO: 293 */
INSERT INTO DONOR(dSSN)
VALUES
(
672144451
);

/* INSERT QUERY NO: 294 */
INSERT INTO DONOR(dSSN)
VALUES
(
666402681
);

/* INSERT QUERY NO: 295 */
INSERT INTO DONOR(dSSN)
VALUES
(
477096328
);

/* INSERT QUERY NO: 296 */
INSERT INTO DONOR(dSSN)
VALUES
(
968142666
);

/* INSERT QUERY NO: 297 */
INSERT INTO DONOR(dSSN)
VALUES
(
468932857
);

/* INSERT QUERY NO: 298 */
INSERT INTO DONOR(dSSN)
VALUES
(
766567728
);

/* INSERT QUERY NO: 299 */
INSERT INTO DONOR(dSSN)
VALUES
(
605260672
);

/* INSERT QUERY NO: 300 */
INSERT INTO DONOR(dSSN)
VALUES
(
351753147
);

/* INSERT QUERY NO: 301 */
INSERT INTO DONOR(dSSN)
VALUES
(
702206978
);

/* INSERT QUERY NO: 302 */
INSERT INTO DONOR(dSSN)
VALUES
(
522039936
);

/* INSERT QUERY NO: 303 */
INSERT INTO DONOR(dSSN)
VALUES
(
565562793
);

/* INSERT QUERY NO: 304 */
INSERT INTO DONOR(dSSN)
VALUES
(
355251710
);

/* INSERT QUERY NO: 305 */
INSERT INTO DONOR(dSSN)
VALUES
(
312780854
);

/* INSERT QUERY NO: 306 */
INSERT INTO DONOR(dSSN)
VALUES
(
790045257
);

/* INSERT QUERY NO: 307 */
INSERT INTO DONOR(dSSN)
VALUES
(
254713094
);

/* INSERT QUERY NO: 308 */
INSERT INTO DONOR(dSSN)
VALUES
(
837435914
);

/* INSERT QUERY NO: 309 */
INSERT INTO DONOR(dSSN)
VALUES
(
503077610
);

/* INSERT QUERY NO: 310 */
INSERT INTO DONOR(dSSN)
VALUES
(
397235716
);

/* INSERT QUERY NO: 311 */
INSERT INTO DONOR(dSSN)
VALUES
(
375468349
);

/* INSERT QUERY NO: 312 */
INSERT INTO DONOR(dSSN)
VALUES
(
124105184
);

/* INSERT QUERY NO: 313 */
INSERT INTO DONOR(dSSN)
VALUES
(
411555979
);

/* INSERT QUERY NO: 314 */
INSERT INTO DONOR(dSSN)
VALUES
(
118876074
);

/* INSERT QUERY NO: 315 */
INSERT INTO DONOR(dSSN)
VALUES
(
405135876
);

/* INSERT QUERY NO: 316 */
INSERT INTO DONOR(dSSN)
VALUES
(
559833245
);

/* INSERT QUERY NO: 317 */
INSERT INTO DONOR(dSSN)
VALUES
(
387276100
);

/* INSERT QUERY NO: 318 */
INSERT INTO DONOR(dSSN)
VALUES
(
739637733
);

/* INSERT QUERY NO: 319 */
INSERT INTO DONOR(dSSN)
VALUES
(
857239485
);

/* INSERT QUERY NO: 320 */
INSERT INTO DONOR(dSSN)
VALUES
(
703110918
);

/* INSERT QUERY NO: 321 */
INSERT INTO DONOR(dSSN)
VALUES
(
512636137
);

/* INSERT QUERY NO: 322 */
INSERT INTO DONOR(dSSN)
VALUES
(
183336824
);

/* INSERT QUERY NO: 323 */
INSERT INTO DONOR(dSSN)
VALUES
(
971196431
);

/* INSERT QUERY NO: 324 */
INSERT INTO DONOR(dSSN)
VALUES
(
109832447
);

/* INSERT QUERY NO: 325 */
INSERT INTO DONOR(dSSN)
VALUES
(
794662123
);

/* INSERT QUERY NO: 326 */
INSERT INTO DONOR(dSSN)
VALUES
(
576713506
);

/* INSERT QUERY NO: 327 */
INSERT INTO DONOR(dSSN)
VALUES
(
483844418
);

/* INSERT QUERY NO: 328 */
INSERT INTO DONOR(dSSN)
VALUES
(
257599953
);

/* INSERT QUERY NO: 329 */
INSERT INTO DONOR(dSSN)
VALUES
(
125968577
);

/* INSERT QUERY NO: 330 */
INSERT INTO DONOR(dSSN)
VALUES
(
485522290
);

/* INSERT QUERY NO: 331 */
INSERT INTO DONOR(dSSN)
VALUES
(
501792888
);

/* INSERT QUERY NO: 332 */
INSERT INTO DONOR(dSSN)
VALUES
(
960489992
);

/* INSERT QUERY NO: 333 */
INSERT INTO DONOR(dSSN)
VALUES
(
290703975
);

/* INSERT QUERY NO: 334 */
INSERT INTO DONOR(dSSN)
VALUES
(
649704634
);

/* INSERT QUERY NO: 335 */
INSERT INTO DONOR(dSSN)
VALUES
(
492469129
);

/* INSERT QUERY NO: 336 */
INSERT INTO DONOR(dSSN)
VALUES
(
624071848
);

/* INSERT QUERY NO: 337 */
INSERT INTO DONOR(dSSN)
VALUES
(
552704258
);

/* INSERT QUERY NO: 338 */
INSERT INTO DONOR(dSSN)
VALUES
(
978666553
);

/* INSERT QUERY NO: 339 */
INSERT INTO DONOR(dSSN)
VALUES
(
736189340
);

/* INSERT QUERY NO: 340 */
INSERT INTO DONOR(dSSN)
VALUES
(
334130301
);

/* INSERT QUERY NO: 341 */
INSERT INTO DONOR(dSSN)
VALUES
(
235387340
);

/* INSERT QUERY NO: 342 */
INSERT INTO DONOR(dSSN)
VALUES
(
965152081
);

/* INSERT QUERY NO: 343 */
INSERT INTO DONOR(dSSN)
VALUES
(
164169898
);

/* INSERT QUERY NO: 344 */
INSERT INTO DONOR(dSSN)
VALUES
(
570746314
);

/* INSERT QUERY NO: 345 */
INSERT INTO DONOR(dSSN)
VALUES
(
232533839
);

/* INSERT QUERY NO: 346 */
INSERT INTO DONOR(dSSN)
VALUES
(
849397491
);

/* INSERT QUERY NO: 347 */
INSERT INTO DONOR(dSSN)
VALUES
(
598164720
);

/* INSERT QUERY NO: 348 */
INSERT INTO DONOR(dSSN)
VALUES
(
379317242
);

/* INSERT QUERY NO: 349 */
INSERT INTO DONOR(dSSN)
VALUES
(
715122698
);

/* INSERT QUERY NO: 350 */
INSERT INTO DONOR(dSSN)
VALUES
(
996498717
);

/* INSERT QUERY NO: 351 */
INSERT INTO DONOR(dSSN)
VALUES
(
163821900
);

/* INSERT QUERY NO: 352 */
INSERT INTO DONOR(dSSN)
VALUES
(
923079128
);

/* INSERT QUERY NO: 353 */
INSERT INTO DONOR(dSSN)
VALUES
(
674091156
);

/* INSERT QUERY NO: 354 */
INSERT INTO DONOR(dSSN)
VALUES
(
595193007
);

/* INSERT QUERY NO: 355 */
INSERT INTO DONOR(dSSN)
VALUES
(
144051288
);

/* INSERT QUERY NO: 356 */
INSERT INTO DONOR(dSSN)
VALUES
(
819324436
);

/* INSERT QUERY NO: 357 */
INSERT INTO DONOR(dSSN)
VALUES
(
747049709
);

/* INSERT QUERY NO: 358 */
INSERT INTO DONOR(dSSN)
VALUES
(
779493990
);

/* INSERT QUERY NO: 359 */
INSERT INTO DONOR(dSSN)
VALUES
(
980554750
);

/* INSERT QUERY NO: 360 */
INSERT INTO DONOR(dSSN)
VALUES
(
232152541
);

/* INSERT QUERY NO: 361 */
INSERT INTO DONOR(dSSN)
VALUES
(
263321982
);

/* INSERT QUERY NO: 362 */
INSERT INTO DONOR(dSSN)
VALUES
(
952988041
);

/* INSERT QUERY NO: 363 */
INSERT INTO DONOR(dSSN)
VALUES
(
896401366
);

/* INSERT QUERY NO: 364 */
INSERT INTO DONOR(dSSN)
VALUES
(
596288959
);

/* INSERT QUERY NO: 365 */
INSERT INTO DONOR(dSSN)
VALUES
(
674051585
);

/* INSERT QUERY NO: 366 */
INSERT INTO DONOR(dSSN)
VALUES
(
282520753
);

/* INSERT QUERY NO: 367 */
INSERT INTO DONOR(dSSN)
VALUES
(
946536394
);

/* INSERT QUERY NO: 368 */
INSERT INTO DONOR(dSSN)
VALUES
(
796995920
);

/* INSERT QUERY NO: 369 */
INSERT INTO DONOR(dSSN)
VALUES
(
609417233
);

/* INSERT QUERY NO: 370 */
INSERT INTO DONOR(dSSN)
VALUES
(
408875198
);

/* INSERT QUERY NO: 371 */
INSERT INTO DONOR(dSSN)
VALUES
(
488849587
);

/* INSERT QUERY NO: 372 */
INSERT INTO DONOR(dSSN)
VALUES
(
651156782
);

/* INSERT QUERY NO: 373 */
INSERT INTO DONOR(dSSN)
VALUES
(
486711559
);

/* INSERT QUERY NO: 374 */
INSERT INTO DONOR(dSSN)
VALUES
(
508220584
);

/* INSERT QUERY NO: 375 */
INSERT INTO DONOR(dSSN)
VALUES
(
984732360
);

/* INSERT QUERY NO: 376 */
INSERT INTO DONOR(dSSN)
VALUES
(
613321870
);

/* INSERT QUERY NO: 377 */
INSERT INTO DONOR(dSSN)
VALUES
(
485195007
);

/* INSERT QUERY NO: 378 */
INSERT INTO DONOR(dSSN)
VALUES
(
618908148
);

/* INSERT QUERY NO: 379 */
INSERT INTO DONOR(dSSN)
VALUES
(
678602842
);

/* INSERT QUERY NO: 380 */
INSERT INTO DONOR(dSSN)
VALUES
(
777188163
);

/* INSERT QUERY NO: 381 */
INSERT INTO DONOR(dSSN)
VALUES
(
756898581
);

/* INSERT QUERY NO: 382 */
INSERT INTO DONOR(dSSN)
VALUES
(
902517008
);

/* INSERT QUERY NO: 383 */
INSERT INTO DONOR(dSSN)
VALUES
(
848171369
);

/* INSERT QUERY NO: 384 */
INSERT INTO DONOR(dSSN)
VALUES
(
656189519
);

/* INSERT QUERY NO: 385 */
INSERT INTO DONOR(dSSN)
VALUES
(
870381081
);

/* INSERT QUERY NO: 386 */
INSERT INTO DONOR(dSSN)
VALUES
(
564675910
);

/* INSERT QUERY NO: 387 */
INSERT INTO DONOR(dSSN)
VALUES
(
712056845
);

/* INSERT QUERY NO: 388 */
INSERT INTO DONOR(dSSN)
VALUES
(
900957531
);

/* INSERT QUERY NO: 389 */
INSERT INTO DONOR(dSSN)
VALUES
(
139306775
);

/* INSERT QUERY NO: 390 */
INSERT INTO DONOR(dSSN)
VALUES
(
262372916
);

/* INSERT QUERY NO: 391 */
INSERT INTO DONOR(dSSN)
VALUES
(
746933721
);

/* INSERT QUERY NO: 392 */
INSERT INTO DONOR(dSSN)
VALUES
(
780411567
);

/* INSERT QUERY NO: 393 */
INSERT INTO DONOR(dSSN)
VALUES
(
391166576
);

/* INSERT QUERY NO: 394 */
INSERT INTO DONOR(dSSN)
VALUES
(
416127127
);

/* INSERT QUERY NO: 395 */
INSERT INTO DONOR(dSSN)
VALUES
(
185820417
);

/* INSERT QUERY NO: 396 */
INSERT INTO DONOR(dSSN)
VALUES
(
550938786
);

/* INSERT QUERY NO: 397 */
INSERT INTO DONOR(dSSN)
VALUES
(
272364173
);

/* INSERT QUERY NO: 398 */
INSERT INTO DONOR(dSSN)
VALUES
(
163918649
);

/* INSERT QUERY NO: 399 */
INSERT INTO DONOR(dSSN)
VALUES
(
680208566
);

/* INSERT QUERY NO: 400 */
INSERT INTO DONOR(dSSN)
VALUES
(
660350458
);

/* INSERT QUERY NO: 401 */
INSERT INTO DONOR(dSSN)
VALUES
(
483186847
);

/* INSERT QUERY NO: 402 */
INSERT INTO DONOR(dSSN)
VALUES
(
763298348
);

/* INSERT QUERY NO: 403 */
INSERT INTO DONOR(dSSN)
VALUES
(
265080970
);

/* INSERT QUERY NO: 404 */
INSERT INTO DONOR(dSSN)
VALUES
(
484084938
);

/* INSERT QUERY NO: 405 */
INSERT INTO DONOR(dSSN)
VALUES
(
524232738
);

/* INSERT QUERY NO: 406 */
INSERT INTO DONOR(dSSN)
VALUES
(
941384165
);

/* INSERT QUERY NO: 407 */
INSERT INTO DONOR(dSSN)
VALUES
(
484650877
);

/* INSERT QUERY NO: 408 */
INSERT INTO DONOR(dSSN)
VALUES
(
236356449
);

/* INSERT QUERY NO: 409 */
INSERT INTO DONOR(dSSN)
VALUES
(
830094186
);

/* INSERT QUERY NO: 410 */
INSERT INTO DONOR(dSSN)
VALUES
(
909549037
);

/* INSERT QUERY NO: 411 */
INSERT INTO DONOR(dSSN)
VALUES
(
994041747
);

/* INSERT QUERY NO: 412 */
INSERT INTO DONOR(dSSN)
VALUES
(
532751690
);

/* INSERT QUERY NO: 413 */
INSERT INTO DONOR(dSSN)
VALUES
(
568133062
);

/* INSERT QUERY NO: 414 */
INSERT INTO DONOR(dSSN)
VALUES
(
286362018
);

/* INSERT QUERY NO: 415 */
INSERT INTO DONOR(dSSN)
VALUES
(
468088987
);

/* INSERT QUERY NO: 416 */
INSERT INTO DONOR(dSSN)
VALUES
(
235242762
);

/* INSERT QUERY NO: 417 */
INSERT INTO DONOR(dSSN)
VALUES
(
374552537
);

/* INSERT QUERY NO: 418 */
INSERT INTO DONOR(dSSN)
VALUES
(
895424208
);

/* INSERT QUERY NO: 419 */
INSERT INTO DONOR(dSSN)
VALUES
(
989014392
);

/* INSERT QUERY NO: 420 */
INSERT INTO DONOR(dSSN)
VALUES
(
321039134
);

/* INSERT QUERY NO: 421 */
INSERT INTO DONOR(dSSN)
VALUES
(
945986179
);

/* INSERT QUERY NO: 422 */
INSERT INTO DONOR(dSSN)
VALUES
(
439815268
);

/* INSERT QUERY NO: 423 */
INSERT INTO DONOR(dSSN)
VALUES
(
828324712
);

/* INSERT QUERY NO: 424 */
INSERT INTO DONOR(dSSN)
VALUES
(
886258950
);

/* INSERT QUERY NO: 425 */
INSERT INTO DONOR(dSSN)
VALUES
(
943498615
);

/* INSERT QUERY NO: 426 */
INSERT INTO DONOR(dSSN)
VALUES
(
575095226
);

/* INSERT QUERY NO: 427 */
INSERT INTO DONOR(dSSN)
VALUES
(
921771154
);

/* INSERT QUERY NO: 428 */
INSERT INTO DONOR(dSSN)
VALUES
(
838201554
);

/* INSERT QUERY NO: 429 */
INSERT INTO DONOR(dSSN)
VALUES
(
399158227
);

/* INSERT QUERY NO: 430 */
INSERT INTO DONOR(dSSN)
VALUES
(
401198543
);

/* INSERT QUERY NO: 431 */
INSERT INTO DONOR(dSSN)
VALUES
(
595987814
);

/* INSERT QUERY NO: 432 */
INSERT INTO DONOR(dSSN)
VALUES
(
430392554
);

/* INSERT QUERY NO: 433 */
INSERT INTO DONOR(dSSN)
VALUES
(
485102908
);

/* INSERT QUERY NO: 434 */
INSERT INTO DONOR(dSSN)
VALUES
(
496763307
);

/* INSERT QUERY NO: 435 */
INSERT INTO DONOR(dSSN)
VALUES
(
362474028
);

/* INSERT QUERY NO: 436 */
INSERT INTO DONOR(dSSN)
VALUES
(
615060630
);

/* INSERT QUERY NO: 437 */
INSERT INTO DONOR(dSSN)
VALUES
(
243953169
);

/* INSERT QUERY NO: 438 */
INSERT INTO DONOR(dSSN)
VALUES
(
732235258
);

/* INSERT QUERY NO: 439 */
INSERT INTO DONOR(dSSN)
VALUES
(
589994403
);

/* INSERT QUERY NO: 440 */
INSERT INTO DONOR(dSSN)
VALUES
(
526465030
);

/* INSERT QUERY NO: 441 */
INSERT INTO DONOR(dSSN)
VALUES
(
331778094
);

/* INSERT QUERY NO: 442 */
INSERT INTO DONOR(dSSN)
VALUES
(
249483234
);

/* INSERT QUERY NO: 443 */
INSERT INTO DONOR(dSSN)
VALUES
(
565623531
);

/* INSERT QUERY NO: 444 */
INSERT INTO DONOR(dSSN)
VALUES
(
883447715
);

/* INSERT QUERY NO: 445 */
INSERT INTO DONOR(dSSN)
VALUES
(
115672448
);

/* INSERT QUERY NO: 446 */
INSERT INTO DONOR(dSSN)
VALUES
(
101317344
);

/* INSERT QUERY NO: 447 */
INSERT INTO DONOR(dSSN)
VALUES
(
196506776
);

/* INSERT QUERY NO: 448 */
INSERT INTO DONOR(dSSN)
VALUES
(
554936075
);

/* INSERT QUERY NO: 449 */
INSERT INTO DONOR(dSSN)
VALUES
(
798679302
);

/* INSERT QUERY NO: 450 */
INSERT INTO DONOR(dSSN)
VALUES
(
282923331
);

/* INSERT QUERY NO: 451 */
INSERT INTO DONOR(dSSN)
VALUES
(
484689668
);

/* INSERT QUERY NO: 452 */
INSERT INTO DONOR(dSSN)
VALUES
(
396624336
);

/* INSERT QUERY NO: 453 */
INSERT INTO DONOR(dSSN)
VALUES
(
977057416
);

/* INSERT QUERY NO: 454 */
INSERT INTO DONOR(dSSN)
VALUES
(
332569556
);

/* INSERT QUERY NO: 455 */
INSERT INTO DONOR(dSSN)
VALUES
(
674546377
);

/* INSERT QUERY NO: 456 */
INSERT INTO DONOR(dSSN)
VALUES
(
827691764
);

/* INSERT QUERY NO: 457 */
INSERT INTO DONOR(dSSN)
VALUES
(
586016284
);

/* INSERT QUERY NO: 458 */
INSERT INTO DONOR(dSSN)
VALUES
(
425010942
);

/* INSERT QUERY NO: 459 */
INSERT INTO DONOR(dSSN)
VALUES
(
355504577
);

/* INSERT QUERY NO: 460 */
INSERT INTO DONOR(dSSN)
VALUES
(
776724456
);

/* INSERT QUERY NO: 461 */
INSERT INTO DONOR(dSSN)
VALUES
(
939285731
);

/* INSERT QUERY NO: 462 */
INSERT INTO DONOR(dSSN)
VALUES
(
729995172
);

/* INSERT QUERY NO: 463 */
INSERT INTO DONOR(dSSN)
VALUES
(
776987871
);

/* INSERT QUERY NO: 464 */
INSERT INTO DONOR(dSSN)
VALUES
(
915378851
);

/* INSERT QUERY NO: 465 */
INSERT INTO DONOR(dSSN)
VALUES
(
868866129
);

/* INSERT QUERY NO: 466 */
INSERT INTO DONOR(dSSN)
VALUES
(
167283912
);

/* INSERT QUERY NO: 467 */
INSERT INTO DONOR(dSSN)
VALUES
(
279411561
);

/* INSERT QUERY NO: 468 */
INSERT INTO DONOR(dSSN)
VALUES
(
614227664
);

/* INSERT QUERY NO: 469 */
INSERT INTO DONOR(dSSN)
VALUES
(
636494214
);

/* INSERT QUERY NO: 470 */
INSERT INTO DONOR(dSSN)
VALUES
(
507324739
);

/* INSERT QUERY NO: 471 */
INSERT INTO DONOR(dSSN)
VALUES
(
504450325
);

/* INSERT QUERY NO: 472 */
INSERT INTO DONOR(dSSN)
VALUES
(
482159272
);

/* INSERT QUERY NO: 473 */
INSERT INTO DONOR(dSSN)
VALUES
(
408119220
);

/* INSERT QUERY NO: 474 */
INSERT INTO DONOR(dSSN)
VALUES
(
806124594
);

/* INSERT QUERY NO: 475 */
INSERT INTO DONOR(dSSN)
VALUES
(
696199847
);

/* INSERT QUERY NO: 476 */
INSERT INTO DONOR(dSSN)
VALUES
(
520952753
);

/* INSERT QUERY NO: 477 */
INSERT INTO DONOR(dSSN)
VALUES
(
121713742
);

/* INSERT QUERY NO: 478 */
INSERT INTO DONOR(dSSN)
VALUES
(
578263986
);

/* INSERT QUERY NO: 479 */
INSERT INTO DONOR(dSSN)
VALUES
(
524482517
);

/* INSERT QUERY NO: 480 */
INSERT INTO DONOR(dSSN)
VALUES
(
588311329
);

/* INSERT QUERY NO: 481 */
INSERT INTO DONOR(dSSN)
VALUES
(
582766994
);

/* INSERT QUERY NO: 482 */
INSERT INTO DONOR(dSSN)
VALUES
(
188887427
);

/* INSERT QUERY NO: 483 */
INSERT INTO DONOR(dSSN)
VALUES
(
520702851
);

/* INSERT QUERY NO: 484 */
INSERT INTO DONOR(dSSN)
VALUES
(
881140170
);

/* INSERT QUERY NO: 485 */
INSERT INTO DONOR(dSSN)
VALUES
(
779291315
);

/* INSERT QUERY NO: 486 */
INSERT INTO DONOR(dSSN)
VALUES
(
492615424
);

/* INSERT QUERY NO: 487 */
INSERT INTO DONOR(dSSN)
VALUES
(
163785674
);

/* INSERT QUERY NO: 488 */
INSERT INTO DONOR(dSSN)
VALUES
(
286793870
);

/* INSERT QUERY NO: 489 */
INSERT INTO DONOR(dSSN)
VALUES
(
403133696
);

/* INSERT QUERY NO: 490 */
INSERT INTO DONOR(dSSN)
VALUES
(
373922789
);

/* INSERT QUERY NO: 491 */
INSERT INTO DONOR(dSSN)
VALUES
(
145846102
);

/* INSERT QUERY NO: 492 */
INSERT INTO DONOR(dSSN)
VALUES
(
327409705
);

/* INSERT QUERY NO: 493 */
INSERT INTO DONOR(dSSN)
VALUES
(
805258941
);

/* INSERT QUERY NO: 494 */
INSERT INTO DONOR(dSSN)
VALUES
(
450008275
);

/* INSERT QUERY NO: 495 */
INSERT INTO DONOR(dSSN)
VALUES
(
364723963
);

/* INSERT QUERY NO: 496 */
INSERT INTO DONOR(dSSN)
VALUES
(
613714227
);

/* INSERT QUERY NO: 497 */
INSERT INTO DONOR(dSSN)
VALUES
(
597329935
);

/* INSERT QUERY NO: 498 */
INSERT INTO DONOR(dSSN)
VALUES
(
811893888
);

/* INSERT QUERY NO: 499 */
INSERT INTO DONOR(dSSN)
VALUES
(
682887924
);

/* INSERT QUERY NO: 500 */
INSERT INTO DONOR(dSSN)
VALUES
(
545552363
);

/* INSERT QUERY NO: 501 */
INSERT INTO DONOR(dSSN)
VALUES
(
880781172
);

/* INSERT QUERY NO: 502 */
INSERT INTO DONOR(dSSN)
VALUES
(
632905530
);

/* INSERT QUERY NO: 503 */
INSERT INTO DONOR(dSSN)
VALUES
(
581086488
);

/* INSERT QUERY NO: 504 */
INSERT INTO DONOR(dSSN)
VALUES
(
371956335
);

/* INSERT QUERY NO: 505 */
INSERT INTO DONOR(dSSN)
VALUES
(
212424176
);

/* INSERT QUERY NO: 506 */
INSERT INTO DONOR(dSSN)
VALUES
(
865580326
);

/* INSERT QUERY NO: 507 */
INSERT INTO DONOR(dSSN)
VALUES
(
701148643
);

/* INSERT QUERY NO: 508 */
INSERT INTO DONOR(dSSN)
VALUES
(
359532751
);

/* INSERT QUERY NO: 509 */
INSERT INTO DONOR(dSSN)
VALUES
(
110959113
);

/* INSERT QUERY NO: 510 */
INSERT INTO DONOR(dSSN)
VALUES
(
277110877
);

/* INSERT QUERY NO: 511 */
INSERT INTO DONOR(dSSN)
VALUES
(
632829023
);

/* INSERT QUERY NO: 512 */
INSERT INTO DONOR(dSSN)
VALUES
(
933442764
);

/* INSERT QUERY NO: 513 */
INSERT INTO DONOR(dSSN)
VALUES
(
181116192
);

/* INSERT QUERY NO: 514 */
INSERT INTO DONOR(dSSN)
VALUES
(
702281617
);

/* INSERT QUERY NO: 515 */
INSERT INTO DONOR(dSSN)
VALUES
(
156661151
);

/* INSERT QUERY NO: 516 */
INSERT INTO DONOR(dSSN)
VALUES
(
900070748
);

/* INSERT QUERY NO: 517 */
INSERT INTO DONOR(dSSN)
VALUES
(
688888955
);

/* INSERT QUERY NO: 518 */
INSERT INTO DONOR(dSSN)
VALUES
(
949288569
);

/* INSERT QUERY NO: 519 */
INSERT INTO DONOR(dSSN)
VALUES
(
421456857
);

/* INSERT QUERY NO: 520 */
INSERT INTO DONOR(dSSN)
VALUES
(
478452980
);

/* INSERT QUERY NO: 521 */
INSERT INTO DONOR(dSSN)
VALUES
(
511696682
);

/* INSERT QUERY NO: 522 */
INSERT INTO DONOR(dSSN)
VALUES
(
214835113
);

/* INSERT QUERY NO: 523 */
INSERT INTO DONOR(dSSN)
VALUES
(
175953721
);

/* INSERT QUERY NO: 524 */
INSERT INTO DONOR(dSSN)
VALUES
(
890680731
);

/* INSERT QUERY NO: 525 */
INSERT INTO DONOR(dSSN)
VALUES
(
728410265
);

/* INSERT QUERY NO: 526 */
INSERT INTO DONOR(dSSN)
VALUES
(
552396992
);

/* INSERT QUERY NO: 527 */
INSERT INTO DONOR(dSSN)
VALUES
(
868392240
);

/* INSERT QUERY NO: 528 */
INSERT INTO DONOR(dSSN)
VALUES
(
784742545
);

/* INSERT QUERY NO: 529 */
INSERT INTO DONOR(dSSN)
VALUES
(
666732621
);

/* INSERT QUERY NO: 530 */
INSERT INTO DONOR(dSSN)
VALUES
(
612284740
);

/* INSERT QUERY NO: 531 */
INSERT INTO DONOR(dSSN)
VALUES
(
942890884
);

/* INSERT QUERY NO: 532 */
INSERT INTO DONOR(dSSN)
VALUES
(
846678765
);

/* INSERT QUERY NO: 533 */
INSERT INTO DONOR(dSSN)
VALUES
(
905180813
);

/* INSERT QUERY NO: 534 */
INSERT INTO DONOR(dSSN)
VALUES
(
402370841
);

/* INSERT QUERY NO: 535 */
INSERT INTO DONOR(dSSN)
VALUES
(
368598590
);

/* INSERT QUERY NO: 536 */
INSERT INTO DONOR(dSSN)
VALUES
(
443076047
);

/* INSERT QUERY NO: 537 */
INSERT INTO DONOR(dSSN)
VALUES
(
848496450
);

/* INSERT QUERY NO: 538 */
INSERT INTO DONOR(dSSN)
VALUES
(
274209072
);

/* INSERT QUERY NO: 539 */
INSERT INTO DONOR(dSSN)
VALUES
(
250277843
);

/* INSERT QUERY NO: 540 */
INSERT INTO DONOR(dSSN)
VALUES
(
618324054
);

/* INSERT QUERY NO: 541 */
INSERT INTO DONOR(dSSN)
VALUES
(
360842153
);

/* INSERT QUERY NO: 542 */
INSERT INTO DONOR(dSSN)
VALUES
(
690591989
);

/* INSERT QUERY NO: 543 */
INSERT INTO DONOR(dSSN)
VALUES
(
694244572
);

/* INSERT QUERY NO: 544 */
INSERT INTO DONOR(dSSN)
VALUES
(
477744017
);

/* INSERT QUERY NO: 545 */
INSERT INTO DONOR(dSSN)
VALUES
(
721496727
);

/* INSERT QUERY NO: 546 */
INSERT INTO DONOR(dSSN)
VALUES
(
665858415
);

/* INSERT QUERY NO: 547 */
INSERT INTO DONOR(dSSN)
VALUES
(
954268369
);

/* INSERT QUERY NO: 548 */
INSERT INTO DONOR(dSSN)
VALUES
(
805431362
);

/* INSERT QUERY NO: 549 */
INSERT INTO DONOR(dSSN)
VALUES
(
300894071
);

/* INSERT QUERY NO: 550 */
INSERT INTO DONOR(dSSN)
VALUES
(
587560489
);

/* INSERT QUERY NO: 551 */
INSERT INTO DONOR(dSSN)
VALUES
(
693944141
);

/* INSERT QUERY NO: 552 */
INSERT INTO DONOR(dSSN)
VALUES
(
977165189
);

/* INSERT QUERY NO: 553 */
INSERT INTO DONOR(dSSN)
VALUES
(
965047526
);

/* INSERT QUERY NO: 554 */
INSERT INTO DONOR(dSSN)
VALUES
(
999518066
);

/* INSERT QUERY NO: 555 */
INSERT INTO DONOR(dSSN)
VALUES
(
604506329
);

/* INSERT QUERY NO: 556 */
INSERT INTO DONOR(dSSN)
VALUES
(
932702402
);

/* INSERT QUERY NO: 557 */
INSERT INTO DONOR(dSSN)
VALUES
(
114876856
);

/* INSERT QUERY NO: 558 */
INSERT INTO DONOR(dSSN)
VALUES
(
961128658
);

/* INSERT QUERY NO: 559 */
INSERT INTO DONOR(dSSN)
VALUES
(
507816732
);

/* INSERT QUERY NO: 560 */
INSERT INTO DONOR(dSSN)
VALUES
(
398354746
);

/* INSERT QUERY NO: 561 */
INSERT INTO DONOR(dSSN)
VALUES
(
990468294
);

/* INSERT QUERY NO: 562 */
INSERT INTO DONOR(dSSN)
VALUES
(
377723851
);

/* INSERT QUERY NO: 563 */
INSERT INTO DONOR(dSSN)
VALUES
(
538773317
);

/* INSERT QUERY NO: 564 */
INSERT INTO DONOR(dSSN)
VALUES
(
508746713
);

/* INSERT QUERY NO: 565 */
INSERT INTO DONOR(dSSN)
VALUES
(
482890206
);

/* INSERT QUERY NO: 566 */
INSERT INTO DONOR(dSSN)
VALUES
(
725287100
);

/* INSERT QUERY NO: 567 */
INSERT INTO DONOR(dSSN)
VALUES
(
308968102
);

/* INSERT QUERY NO: 568 */
INSERT INTO DONOR(dSSN)
VALUES
(
505505530
);

/* INSERT QUERY NO: 569 */
INSERT INTO DONOR(dSSN)
VALUES
(
287432315
);

/* INSERT QUERY NO: 570 */
INSERT INTO DONOR(dSSN)
VALUES
(
320284569
);

/* INSERT QUERY NO: 571 */
INSERT INTO DONOR(dSSN)
VALUES
(
763610755
);

/* INSERT QUERY NO: 572 */
INSERT INTO DONOR(dSSN)
VALUES
(
431581524
);

/* INSERT QUERY NO: 573 */
INSERT INTO DONOR(dSSN)
VALUES
(
279822436
);

/* INSERT QUERY NO: 574 */
INSERT INTO DONOR(dSSN)
VALUES
(
393694568
);

/* INSERT QUERY NO: 575 */
INSERT INTO DONOR(dSSN)
VALUES
(
484228143
);

/* INSERT QUERY NO: 576 */
INSERT INTO DONOR(dSSN)
VALUES
(
677925964
);

/* INSERT QUERY NO: 577 */
INSERT INTO DONOR(dSSN)
VALUES
(
416187741
);

/* INSERT QUERY NO: 578 */
INSERT INTO DONOR(dSSN)
VALUES
(
783583289
);

/* INSERT QUERY NO: 579 */
INSERT INTO DONOR(dSSN)
VALUES
(
198075532
);

/* INSERT QUERY NO: 580 */
INSERT INTO DONOR(dSSN)
VALUES
(
901676984
);

/* INSERT QUERY NO: 581 */
INSERT INTO DONOR(dSSN)
VALUES
(
224008229
);

/* INSERT QUERY NO: 582 */
INSERT INTO DONOR(dSSN)
VALUES
(
321411820
);

/* INSERT QUERY NO: 583 */
INSERT INTO DONOR(dSSN)
VALUES
(
607207526
);

/* INSERT QUERY NO: 584 */
INSERT INTO DONOR(dSSN)
VALUES
(
673121425
);

/* INSERT QUERY NO: 585 */
INSERT INTO DONOR(dSSN)
VALUES
(
473276574
);

/* INSERT QUERY NO: 586 */
INSERT INTO DONOR(dSSN)
VALUES
(
767178200
);

/* INSERT QUERY NO: 587 */
INSERT INTO DONOR(dSSN)
VALUES
(
361841583
);

/* INSERT QUERY NO: 588 */
INSERT INTO DONOR(dSSN)
VALUES
(
299414042
);

/* INSERT QUERY NO: 589 */
INSERT INTO DONOR(dSSN)
VALUES
(
947338722
);

/* INSERT QUERY NO: 590 */
INSERT INTO DONOR(dSSN)
VALUES
(
753724518
);

/* INSERT QUERY NO: 591 */
INSERT INTO DONOR(dSSN)
VALUES
(
370844923
);

/* INSERT QUERY NO: 592 */
INSERT INTO DONOR(dSSN)
VALUES
(
503736654
);

/* INSERT QUERY NO: 593 */
INSERT INTO DONOR(dSSN)
VALUES
(
859641363
);

/* INSERT QUERY NO: 594 */
INSERT INTO DONOR(dSSN)
VALUES
(
630843902
);

/* INSERT QUERY NO: 595 */
INSERT INTO DONOR(dSSN)
VALUES
(
428141006
);

/* INSERT QUERY NO: 596 */
INSERT INTO DONOR(dSSN)
VALUES
(
169201244
);

/* INSERT QUERY NO: 597 */
INSERT INTO DONOR(dSSN)
VALUES
(
939340972
);

/* INSERT QUERY NO: 598 */
INSERT INTO DONOR(dSSN)
VALUES
(
944589198
);

/* INSERT QUERY NO: 599 */
INSERT INTO DONOR(dSSN)
VALUES
(
456657859
);

/* INSERT QUERY NO: 600 */
INSERT INTO DONOR(dSSN)
VALUES
(
197855406
);



/* INSERT QUERY NO: 1 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
719864564, 'Doctor'
);

/* INSERT QUERY NO: 2 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
289931136, 'Doctor'
);

/* INSERT QUERY NO: 3 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
612392381, 'Doctor'
);

/* INSERT QUERY NO: 4 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
930735058, 'Doctor'
);

/* INSERT QUERY NO: 5 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
715244303, 'Doctor'
);

/* INSERT QUERY NO: 6 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
512102233, 'Doctor'
);

/* INSERT QUERY NO: 7 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
457614703, 'Doctor'
);

/* INSERT QUERY NO: 8 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
310672150, 'Doctor'
);

/* INSERT QUERY NO: 9 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
873888404, 'Doctor'
);

/* INSERT QUERY NO: 10 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
660354682, 'Doctor'
);

/* INSERT QUERY NO: 11 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
492172191, 'Doctor'
);

/* INSERT QUERY NO: 12 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
983465195, 'Doctor'
);

/* INSERT QUERY NO: 13 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
914493402, 'Doctor'
);

/* INSERT QUERY NO: 14 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
984208013, 'Doctor'
);

/* INSERT QUERY NO: 15 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
388287820, 'Doctor'
);

/* INSERT QUERY NO: 16 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
825172416, 'Doctor'
);

/* INSERT QUERY NO: 17 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
647800044, 'Doctor'
);

/* INSERT QUERY NO: 18 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
631260728, 'Doctor'
);

/* INSERT QUERY NO: 19 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
119826631, 'Doctor'
);

/* INSERT QUERY NO: 20 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
808550212, 'Doctor'
);

/* INSERT QUERY NO: 21 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
475261394, 'Doctor'
);

/* INSERT QUERY NO: 22 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
359329466, 'Doctor'
);

/* INSERT QUERY NO: 23 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
445728692, 'Doctor'
);

/* INSERT QUERY NO: 24 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
714781229, 'Doctor'
);

/* INSERT QUERY NO: 25 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
279291110, 'Doctor'
);

/* INSERT QUERY NO: 26 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
957895538, 'Doctor'
);

/* INSERT QUERY NO: 27 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
551382777, 'Doctor'
);

/* INSERT QUERY NO: 28 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
103872682, 'Doctor'
);

/* INSERT QUERY NO: 29 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
177315911, 'Doctor'
);

/* INSERT QUERY NO: 30 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
191218411, 'Doctor'
);

/* INSERT QUERY NO: 31 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
866970274, 'Doctor'
);

/* INSERT QUERY NO: 32 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
573640603, 'Doctor'
);

/* INSERT QUERY NO: 33 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
777774691, 'Doctor'
);

/* INSERT QUERY NO: 34 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
884664527, 'Doctor'
);

/* INSERT QUERY NO: 35 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
691122502, 'Doctor'
);

/* INSERT QUERY NO: 36 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
425002608, 'Doctor'
);

/* INSERT QUERY NO: 37 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
186782291, 'Doctor'
);

/* INSERT QUERY NO: 38 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
124135489, 'Doctor'
);

/* INSERT QUERY NO: 39 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
487134501, 'Doctor'
);

/* INSERT QUERY NO: 40 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
473906866, 'Doctor'
);

/* INSERT QUERY NO: 41 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
360224711, 'Doctor'
);

/* INSERT QUERY NO: 42 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
994606592, 'Doctor'
);

/* INSERT QUERY NO: 43 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
770910840, 'Doctor'
);

/* INSERT QUERY NO: 44 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
335456678, 'Doctor'
);

/* INSERT QUERY NO: 45 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
793952572, 'Doctor'
);

/* INSERT QUERY NO: 46 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
489363943, 'Doctor'
);

/* INSERT QUERY NO: 47 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
121696724, 'Doctor'
);

/* INSERT QUERY NO: 48 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
154886895, 'Doctor'
);

/* INSERT QUERY NO: 49 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
938104487, 'Doctor'
);

/* INSERT QUERY NO: 50 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
535157826, 'Doctor'
);

/* INSERT QUERY NO: 51 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
415461433, 'Doctor'
);

/* INSERT QUERY NO: 52 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
464544418, 'Doctor'
);

/* INSERT QUERY NO: 53 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
672033550, 'Doctor'
);

/* INSERT QUERY NO: 54 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
429725355, 'Doctor'
);

/* INSERT QUERY NO: 55 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
705858701, 'Doctor'
);

/* INSERT QUERY NO: 56 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
621335778, 'Doctor'
);

/* INSERT QUERY NO: 57 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
575164400, 'Doctor'
);

/* INSERT QUERY NO: 58 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
940795975, 'Doctor'
);

/* INSERT QUERY NO: 59 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
601013900, 'Doctor'
);

/* INSERT QUERY NO: 60 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
730109764, 'Doctor'
);

/* INSERT QUERY NO: 61 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
371393640, 'Doctor'
);

/* INSERT QUERY NO: 62 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
140874616, 'Doctor'
);

/* INSERT QUERY NO: 63 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
459184233, 'Doctor'
);

/* INSERT QUERY NO: 64 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
866113252, 'Doctor'
);

/* INSERT QUERY NO: 65 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
126972984, 'Doctor'
);

/* INSERT QUERY NO: 66 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
993412112, 'Doctor'
);

/* INSERT QUERY NO: 67 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
925745525, 'Doctor'
);

/* INSERT QUERY NO: 68 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
182081400, 'Doctor'
);

/* INSERT QUERY NO: 69 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
117394836, 'Doctor'
);

/* INSERT QUERY NO: 70 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
501394739, 'Doctor'
);

/* INSERT QUERY NO: 71 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
340408620, 'Doctor'
);

/* INSERT QUERY NO: 72 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
430780731, 'Doctor'
);

/* INSERT QUERY NO: 73 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
623872532, 'Doctor'
);

/* INSERT QUERY NO: 74 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
185038326, 'Doctor'
);

/* INSERT QUERY NO: 75 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
491831873, 'Doctor'
);

/* INSERT QUERY NO: 76 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
698293213, 'Doctor'
);

/* INSERT QUERY NO: 77 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
375143626, 'Doctor'
);

/* INSERT QUERY NO: 78 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
638836364, 'Doctor'
);

/* INSERT QUERY NO: 79 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
918337884, 'Doctor'
);

/* INSERT QUERY NO: 80 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
842471721, 'Doctor'
);

/* INSERT QUERY NO: 81 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
356738982, 'Doctor'
);

/* INSERT QUERY NO: 82 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
194742711, 'Doctor'
);

/* INSERT QUERY NO: 83 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
211364019, 'Doctor'
);

/* INSERT QUERY NO: 84 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
963810136, 'Doctor'
);

/* INSERT QUERY NO: 85 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
919309389, 'Doctor'
);

/* INSERT QUERY NO: 86 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
669865712, 'Doctor'
);

/* INSERT QUERY NO: 87 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
922900770, 'Doctor'
);

/* INSERT QUERY NO: 88 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
287723150, 'Doctor'
);

/* INSERT QUERY NO: 89 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
723280917, 'Doctor'
);

/* INSERT QUERY NO: 90 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
470919590, 'Doctor'
);

/* INSERT QUERY NO: 91 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
928205785, 'Doctor'
);

/* INSERT QUERY NO: 92 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
653392014, 'Doctor'
);

/* INSERT QUERY NO: 93 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
951629806, 'Doctor'
);

/* INSERT QUERY NO: 94 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
918710235, 'Doctor'
);

/* INSERT QUERY NO: 95 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
990766229, 'Doctor'
);

/* INSERT QUERY NO: 96 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
230214203, 'Doctor'
);

/* INSERT QUERY NO: 97 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
530814872, 'Doctor'
);

/* INSERT QUERY NO: 98 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
899871823, 'Doctor'
);

/* INSERT QUERY NO: 99 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
946973645, 'Doctor'
);

/* INSERT QUERY NO: 100 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
903691734, 'Doctor'
);

/* INSERT QUERY NO: 101 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
766416145, 'Doctor'
);

/* INSERT QUERY NO: 102 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
804528239, 'Doctor'
);

/* INSERT QUERY NO: 103 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
512843118, 'Doctor'
);

/* INSERT QUERY NO: 104 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
774957501, 'Doctor'
);

/* INSERT QUERY NO: 105 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
495694915, 'Doctor'
);

/* INSERT QUERY NO: 106 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
171593598, 'Doctor'
);

/* INSERT QUERY NO: 107 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
122326525, 'Doctor'
);

/* INSERT QUERY NO: 108 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
832951625, 'Doctor'
);

/* INSERT QUERY NO: 109 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
322799860, 'Doctor'
);

/* INSERT QUERY NO: 110 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
266856407, 'Doctor'
);

/* INSERT QUERY NO: 111 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
312948516, 'Doctor'
);

/* INSERT QUERY NO: 112 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
308823827, 'Doctor'
);

/* INSERT QUERY NO: 113 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
743888109, 'Doctor'
);

/* INSERT QUERY NO: 114 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
817143562, 'Doctor'
);

/* INSERT QUERY NO: 115 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
629790842, 'Doctor'
);

/* INSERT QUERY NO: 116 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
693228371, 'Doctor'
);

/* INSERT QUERY NO: 117 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
616144403, 'Doctor'
);

/* INSERT QUERY NO: 118 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
126761321, 'Doctor'
);

/* INSERT QUERY NO: 119 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
397684749, 'Doctor'
);

/* INSERT QUERY NO: 120 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
484825287, 'Doctor'
);

/* INSERT QUERY NO: 121 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
523757677, 'Doctor'
);

/* INSERT QUERY NO: 122 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
237429652, 'Doctor'
);

/* INSERT QUERY NO: 123 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
390610069, 'Doctor'
);

/* INSERT QUERY NO: 124 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
715909011, 'Doctor'
);

/* INSERT QUERY NO: 125 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
607629134, 'Doctor'
);

/* INSERT QUERY NO: 126 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
741538843, 'Doctor'
);

/* INSERT QUERY NO: 127 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
509613980, 'Doctor'
);

/* INSERT QUERY NO: 128 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
153036692, 'Doctor'
);

/* INSERT QUERY NO: 129 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
701361481, 'Doctor'
);

/* INSERT QUERY NO: 130 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
433897691, 'Doctor'
);

/* INSERT QUERY NO: 131 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
998186931, 'Doctor'
);

/* INSERT QUERY NO: 132 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
175231134, 'Nurse'
);

/* INSERT QUERY NO: 133 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
509134177, 'Nurse'
);

/* INSERT QUERY NO: 134 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
282228258, 'Nurse'
);

/* INSERT QUERY NO: 135 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
461086395, 'Nurse'
);

/* INSERT QUERY NO: 136 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
415547870, 'Nurse'
);

/* INSERT QUERY NO: 137 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
546991060, 'Nurse'
);

/* INSERT QUERY NO: 138 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
189407024, 'Nurse'
);

/* INSERT QUERY NO: 139 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
684791763, 'Nurse'
);

/* INSERT QUERY NO: 140 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
646633407, 'Nurse'
);

/* INSERT QUERY NO: 141 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
150056392, 'Nurse'
);

/* INSERT QUERY NO: 142 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
344378609, 'Nurse'
);

/* INSERT QUERY NO: 143 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
944336070, 'Nurse'
);

/* INSERT QUERY NO: 144 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
460441481, 'Nurse'
);

/* INSERT QUERY NO: 145 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
292741371, 'Nurse'
);

/* INSERT QUERY NO: 146 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
521126071, 'Nurse'
);

/* INSERT QUERY NO: 147 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
826274730, 'Nurse'
);

/* INSERT QUERY NO: 148 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
830940458, 'Nurse'
);

/* INSERT QUERY NO: 149 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
369207259, 'Nurse'
);

/* INSERT QUERY NO: 150 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
873307640, 'Nurse'
);

/* INSERT QUERY NO: 151 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
805051951, 'Nurse'
);

/* INSERT QUERY NO: 152 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
152226271, 'Nurse'
);

/* INSERT QUERY NO: 153 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
192691572, 'Nurse'
);

/* INSERT QUERY NO: 154 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
381926819, 'Nurse'
);

/* INSERT QUERY NO: 155 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
701913313, 'Nurse'
);

/* INSERT QUERY NO: 156 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
849409096, 'Nurse'
);

/* INSERT QUERY NO: 157 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
172081420, 'Nurse'
);

/* INSERT QUERY NO: 158 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
173833685, 'Nurse'
);

/* INSERT QUERY NO: 159 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
399553911, 'Nurse'
);

/* INSERT QUERY NO: 160 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
700890939, 'Nurse'
);

/* INSERT QUERY NO: 161 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
891122253, 'Nurse'
);

/* INSERT QUERY NO: 162 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
468153715, 'Nurse'
);

/* INSERT QUERY NO: 163 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
795637090, 'Nurse'
);

/* INSERT QUERY NO: 164 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
162989426, 'Nurse'
);

/* INSERT QUERY NO: 165 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
806368153, 'Nurse'
);

/* INSERT QUERY NO: 166 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
873253901, 'Nurse'
);

/* INSERT QUERY NO: 167 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
512706648, 'Nurse'
);

/* INSERT QUERY NO: 168 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
208979838, 'Nurse'
);

/* INSERT QUERY NO: 169 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
476660373, 'Nurse'
);

/* INSERT QUERY NO: 170 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
509908909, 'Nurse'
);

/* INSERT QUERY NO: 171 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
903222492, 'Nurse'
);

/* INSERT QUERY NO: 172 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
997054860, 'Nurse'
);

/* INSERT QUERY NO: 173 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
193893976, 'Nurse'
);

/* INSERT QUERY NO: 174 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
439160786, 'Nurse'
);

/* INSERT QUERY NO: 175 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
304441921, 'Nurse'
);

/* INSERT QUERY NO: 176 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
165314581, 'Nurse'
);

/* INSERT QUERY NO: 177 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
201937784, 'Nurse'
);

/* INSERT QUERY NO: 178 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
524493474, 'Nurse'
);

/* INSERT QUERY NO: 179 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
807290486, 'Nurse'
);

/* INSERT QUERY NO: 180 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
267987096, 'Nurse'
);

/* INSERT QUERY NO: 181 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
534891938, 'Nurse'
);

/* INSERT QUERY NO: 182 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
690320218, 'Nurse'
);

/* INSERT QUERY NO: 183 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
566967269, 'Nurse'
);

/* INSERT QUERY NO: 184 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
489436862, 'Nurse'
);

/* INSERT QUERY NO: 185 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
764789959, 'Nurse'
);

/* INSERT QUERY NO: 186 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
193023786, 'Nurse'
);

/* INSERT QUERY NO: 187 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
217030855, 'Nurse'
);

/* INSERT QUERY NO: 188 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
627557892, 'Nurse'
);

/* INSERT QUERY NO: 189 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
393341976, 'Nurse'
);

/* INSERT QUERY NO: 190 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
536730685, 'Nurse'
);

/* INSERT QUERY NO: 191 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
298610512, 'Nurse'
);

/* INSERT QUERY NO: 192 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
345063732, 'Nurse'
);

/* INSERT QUERY NO: 193 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
853446046, 'Nurse'
);

/* INSERT QUERY NO: 194 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
788126890, 'Nurse'
);

/* INSERT QUERY NO: 195 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
356411576, 'Nurse'
);

/* INSERT QUERY NO: 196 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
974599335, 'Nurse'
);

/* INSERT QUERY NO: 197 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
544885031, 'Nurse'
);

/* INSERT QUERY NO: 198 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
853375353, 'Nurse'
);

/* INSERT QUERY NO: 199 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
151246203, 'Nurse'
);

/* INSERT QUERY NO: 200 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
793974852, 'Nurse'
);

/* INSERT QUERY NO: 201 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
555912165, 'Nurse'
);

/* INSERT QUERY NO: 202 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
287814528, 'Nurse'
);

/* INSERT QUERY NO: 203 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
238829850, 'Nurse'
);

/* INSERT QUERY NO: 204 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
952202682, 'Nurse'
);

/* INSERT QUERY NO: 205 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
198956260, 'Nurse'
);

/* INSERT QUERY NO: 206 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
118486919, 'Nurse'
);

/* INSERT QUERY NO: 207 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
404411873, 'Nurse'
);

/* INSERT QUERY NO: 208 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
368570275, 'Nurse'
);

/* INSERT QUERY NO: 209 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
300578452, 'Nurse'
);

/* INSERT QUERY NO: 210 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
123377591, 'Nurse'
);

/* INSERT QUERY NO: 211 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
709290657, 'Nurse'
);

/* INSERT QUERY NO: 212 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
800926768, 'Nurse'
);

/* INSERT QUERY NO: 213 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
313981003, 'Nurse'
);

/* INSERT QUERY NO: 214 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
364238656, 'Nurse'
);

/* INSERT QUERY NO: 215 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
319051307, 'Nurse'
);

/* INSERT QUERY NO: 216 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
670716622, 'Nurse'
);

/* INSERT QUERY NO: 217 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
763711964, 'Nurse'
);

/* INSERT QUERY NO: 218 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
614835560, 'Nurse'
);

/* INSERT QUERY NO: 219 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
830985128, 'Nurse'
);

/* INSERT QUERY NO: 220 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
788443614, 'Nurse'
);

/* INSERT QUERY NO: 221 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
309402065, 'Nurse'
);

/* INSERT QUERY NO: 222 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
226355255, 'Nurse'
);

/* INSERT QUERY NO: 223 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
211439534, 'Nurse'
);

/* INSERT QUERY NO: 224 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
215815075, 'Nurse'
);

/* INSERT QUERY NO: 225 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
984257874, 'Nurse'
);

/* INSERT QUERY NO: 226 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
135006949, 'Nurse'
);

/* INSERT QUERY NO: 227 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
321816742, 'Nurse'
);

/* INSERT QUERY NO: 228 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
366000161, 'Nurse'
);

/* INSERT QUERY NO: 229 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
297672267, 'Nurse'
);

/* INSERT QUERY NO: 230 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
867662841, 'Nurse'
);

/* INSERT QUERY NO: 231 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
213526644, 'Nurse'
);

/* INSERT QUERY NO: 232 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
404455602, 'Nurse'
);

/* INSERT QUERY NO: 233 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
538397237, 'Nurse'
);

/* INSERT QUERY NO: 234 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
933912911, 'Nurse'
);

/* INSERT QUERY NO: 235 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
714689951, 'Nurse'
);

/* INSERT QUERY NO: 236 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
279896072, 'Nurse'
);

/* INSERT QUERY NO: 237 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
436213770, 'Nurse'
);

/* INSERT QUERY NO: 238 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
296763625, 'Nurse'
);

/* INSERT QUERY NO: 239 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
276131342, 'Nurse'
);

/* INSERT QUERY NO: 240 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
988362047, 'Nurse'
);

/* INSERT QUERY NO: 241 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
985948733, 'Nurse'
);

/* INSERT QUERY NO: 242 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
502758935, 'Nurse'
);

/* INSERT QUERY NO: 243 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
711675860, 'Nurse'
);

/* INSERT QUERY NO: 244 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
127138773, 'Nurse'
);

/* INSERT QUERY NO: 245 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
594016924, 'Nurse'
);

/* INSERT QUERY NO: 246 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
732062425, 'Nurse'
);

/* INSERT QUERY NO: 247 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
920794449, 'Nurse'
);

/* INSERT QUERY NO: 248 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
760009545, 'Nurse'
);

/* INSERT QUERY NO: 249 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
299232473, 'Nurse'
);

/* INSERT QUERY NO: 250 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
765758519, 'Nurse'
);

/* INSERT QUERY NO: 251 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
435117599, 'Nurse'
);

/* INSERT QUERY NO: 252 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
592336730, 'Nurse'
);

/* INSERT QUERY NO: 253 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
285281032, 'Nurse'
);

/* INSERT QUERY NO: 254 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
645639451, 'Nurse'
);

/* INSERT QUERY NO: 255 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
486268126, 'Nurse'
);

/* INSERT QUERY NO: 256 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
386368152, 'Nurse'
);

/* INSERT QUERY NO: 257 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
715821256, 'Nurse'
);

/* INSERT QUERY NO: 258 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
719566446, 'Nurse'
);

/* INSERT QUERY NO: 259 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
243764793, 'Nurse'
);

/* INSERT QUERY NO: 260 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
523266961, 'Nurse'
);

/* INSERT QUERY NO: 261 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
901462702, 'Nurse'
);

/* INSERT QUERY NO: 262 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
696032705, 'Nurse'
);

/* INSERT QUERY NO: 263 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
434408554, 'Nurse'
);

/* INSERT QUERY NO: 264 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
247539709, 'Nurse'
);

/* INSERT QUERY NO: 265 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
133727354, 'Nurse'
);

/* INSERT QUERY NO: 266 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
956250588, 'Nurse'
);

/* INSERT QUERY NO: 267 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
972943007, 'Nurse'
);

/* INSERT QUERY NO: 268 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
183281957, 'Nurse'
);

/* INSERT QUERY NO: 269 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
997109381, 'Nurse'
);

/* INSERT QUERY NO: 270 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
389569695, 'Nurse'
);

/* INSERT QUERY NO: 271 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
638149534, 'Nurse'
);

/* INSERT QUERY NO: 272 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
424409717, 'Nurse'
);

/* INSERT QUERY NO: 273 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
756917697, 'Nurse'
);

/* INSERT QUERY NO: 274 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
800007290, 'Nurse'
);

/* INSERT QUERY NO: 275 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
286533098, 'Nurse'
);

/* INSERT QUERY NO: 276 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
997154011, 'Nurse'
);

/* INSERT QUERY NO: 277 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
938536757, 'Nurse'
);

/* INSERT QUERY NO: 278 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
595866004, 'Nurse'
);

/* INSERT QUERY NO: 279 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
556703117, 'Nurse'
);

/* INSERT QUERY NO: 280 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
634709776, 'Nurse'
);

/* INSERT QUERY NO: 281 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
701580588, 'Nurse'
);

/* INSERT QUERY NO: 282 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
256568833, 'Nurse'
);

/* INSERT QUERY NO: 283 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
896255500, 'Nurse'
);

/* INSERT QUERY NO: 284 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
968666024, 'Nurse'
);

/* INSERT QUERY NO: 285 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
876801036, 'Nurse'
);

/* INSERT QUERY NO: 286 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
315173157, 'Nurse'
);

/* INSERT QUERY NO: 287 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
825690718, 'Nurse'
);

/* INSERT QUERY NO: 288 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
461748297, 'Nurse'
);

/* INSERT QUERY NO: 289 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
876613887, 'Nurse'
);

/* INSERT QUERY NO: 290 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
405786471, 'Nurse'
);

/* INSERT QUERY NO: 291 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
641982747, 'Nurse'
);

/* INSERT QUERY NO: 292 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
660476746, 'Nurse'
);

/* INSERT QUERY NO: 293 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
721141100, 'Nurse'
);

/* INSERT QUERY NO: 294 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
836857419, 'Nurse'
);

/* INSERT QUERY NO: 295 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
739216977, 'Nurse'
);

/* INSERT QUERY NO: 296 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
168791341, 'Nurse'
);

/* INSERT QUERY NO: 297 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
656763069, 'Nurse'
);

/* INSERT QUERY NO: 298 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
346529486, 'Nurse'
);

/* INSERT QUERY NO: 299 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
842514480, 'Nurse'
);

/* INSERT QUERY NO: 300 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
924243034, 'Nurse'
);

/* INSERT QUERY NO: 301 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
608211556, 'Nurse'
);

/* INSERT QUERY NO: 302 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
363393841, 'Nurse'
);

/* INSERT QUERY NO: 303 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
357219331, 'Nurse'
);

/* INSERT QUERY NO: 304 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
238061000, 'Nurse'
);

/* INSERT QUERY NO: 305 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
372173938, 'Nurse'
);

/* INSERT QUERY NO: 306 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
975519907, 'Nurse'
);

/* INSERT QUERY NO: 307 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
289033441, 'Nurse'
);

/* INSERT QUERY NO: 308 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
853816541, 'Nurse'
);

/* INSERT QUERY NO: 309 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
177737126, 'Nurse'
);

/* INSERT QUERY NO: 310 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
512772195, 'Nurse'
);

/* INSERT QUERY NO: 311 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
354586041, 'Nurse'
);

/* INSERT QUERY NO: 312 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
738970208, 'Nurse'
);

/* INSERT QUERY NO: 313 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
442809446, 'Nurse'
);

/* INSERT QUERY NO: 314 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
284054928, 'Nurse'
);

/* INSERT QUERY NO: 315 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
663473126, 'Nurse'
);

/* INSERT QUERY NO: 316 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
299227756, 'Nurse'
);

/* INSERT QUERY NO: 317 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
403627618, 'Nurse'
);

/* INSERT QUERY NO: 318 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
219307670, 'Nurse'
);

/* INSERT QUERY NO: 319 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
174089937, 'Nurse'
);

/* INSERT QUERY NO: 320 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
608259484, 'Nurse'
);

/* INSERT QUERY NO: 321 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
503490986, 'Nurse'
);

/* INSERT QUERY NO: 322 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
421517837, 'Nurse'
);

/* INSERT QUERY NO: 323 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
430537269, 'Nurse'
);

/* INSERT QUERY NO: 324 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
526554970, 'Nurse'
);

/* INSERT QUERY NO: 325 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
176627306, 'Nurse'
);

/* INSERT QUERY NO: 326 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
737254942, 'Nurse'
);

/* INSERT QUERY NO: 327 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
885429897, 'Nurse'
);

/* INSERT QUERY NO: 328 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
874756460, 'Nurse'
);

/* INSERT QUERY NO: 329 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
275768613, 'Nurse'
);

/* INSERT QUERY NO: 330 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
601070880, 'Nurse'
);

/* INSERT QUERY NO: 331 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
386159372, 'Nurse'
);

/* INSERT QUERY NO: 332 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
672975622, 'Nurse'
);

/* INSERT QUERY NO: 333 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
789041587, 'Nurse'
);

/* INSERT QUERY NO: 334 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
650987994, 'Nurse'
);

/* INSERT QUERY NO: 335 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
868763962, 'Nurse'
);

/* INSERT QUERY NO: 336 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
563423940, 'Nurse'
);

/* INSERT QUERY NO: 337 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
286479654, 'Nurse'
);

/* INSERT QUERY NO: 338 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
564333576, 'Nurse'
);

/* INSERT QUERY NO: 339 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
360131111, 'Nurse'
);

/* INSERT QUERY NO: 340 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
206266771, 'Nurse'
);

/* INSERT QUERY NO: 341 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
609250260, 'Nurse'
);

/* INSERT QUERY NO: 342 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
643262759, 'Nurse'
);

/* INSERT QUERY NO: 343 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
216072634, 'Nurse'
);

/* INSERT QUERY NO: 344 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
768586270, 'Nurse'
);

/* INSERT QUERY NO: 345 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
998092386, 'Nurse'
);

/* INSERT QUERY NO: 346 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
495063022, 'Nurse'
);

/* INSERT QUERY NO: 347 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
876209214, 'Nurse'
);

/* INSERT QUERY NO: 348 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
863055717, 'Nurse'
);

/* INSERT QUERY NO: 349 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
165894936, 'Nurse'
);

/* INSERT QUERY NO: 350 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
668247279, 'Nurse'
);

/* INSERT QUERY NO: 351 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
225326382, 'Nurse'
);

/* INSERT QUERY NO: 352 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
319006878, 'Nurse'
);

/* INSERT QUERY NO: 353 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
115726411, 'Nurse'
);

/* INSERT QUERY NO: 354 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
346867691, 'Nurse'
);

/* INSERT QUERY NO: 355 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
910023133, 'Nurse'
);

/* INSERT QUERY NO: 356 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
780697425, 'Nurse'
);

/* INSERT QUERY NO: 357 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
169744728, 'Nurse'
);

/* INSERT QUERY NO: 358 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
432669332, 'Nurse'
);

/* INSERT QUERY NO: 359 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
958213532, 'Nurse'
);

/* INSERT QUERY NO: 360 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
198714826, 'Nurse'
);

/* INSERT QUERY NO: 361 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
941229357, 'Nurse'
);

/* INSERT QUERY NO: 362 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
684241404, 'Nurse'
);

/* INSERT QUERY NO: 363 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
514826814, 'Nurse'
);

/* INSERT QUERY NO: 364 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
394080381, 'Nurse'
);

/* INSERT QUERY NO: 365 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
776622516, 'Nurse'
);

/* INSERT QUERY NO: 366 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
586232427, 'Nurse'
);

/* INSERT QUERY NO: 367 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
342554405, 'Nurse'
);

/* INSERT QUERY NO: 368 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
995541939, 'Nurse'
);

/* INSERT QUERY NO: 369 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
610144170, 'Nurse'
);

/* INSERT QUERY NO: 370 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
248413591, 'Nurse'
);

/* INSERT QUERY NO: 371 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
848414798, 'Nurse'
);

/* INSERT QUERY NO: 372 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
570914688, 'Nurse'
);

/* INSERT QUERY NO: 373 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
166260903, 'Nurse'
);

/* INSERT QUERY NO: 374 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
806781132, 'Nurse'
);

/* INSERT QUERY NO: 375 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
453378632, 'Nurse'
);

/* INSERT QUERY NO: 376 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
156503032, 'Nurse'
);

/* INSERT QUERY NO: 377 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
166992864, 'Nurse'
);

/* INSERT QUERY NO: 378 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
409046850, 'Nurse'
);

/* INSERT QUERY NO: 379 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
136163741, 'Nurse'
);

/* INSERT QUERY NO: 380 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
726124427, 'Nurse'
);

/* INSERT QUERY NO: 381 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
243467809, 'Nurse'
);

/* INSERT QUERY NO: 382 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
318642942, 'Nurse'
);

/* INSERT QUERY NO: 383 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
264161742, 'Nurse'
);

/* INSERT QUERY NO: 384 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
236775411, 'Nurse'
);

/* INSERT QUERY NO: 385 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
542958839, 'Nurse'
);

/* INSERT QUERY NO: 386 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
583589231, 'Nurse'
);

/* INSERT QUERY NO: 387 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
253284965, 'Nurse'
);

/* INSERT QUERY NO: 388 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
709110900, 'Nurse'
);

/* INSERT QUERY NO: 389 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
391479893, 'Nurse'
);

/* INSERT QUERY NO: 390 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
487328284, 'Nurse'
);

/* INSERT QUERY NO: 391 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
116762461, 'Nurse'
);

/* INSERT QUERY NO: 392 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
374785307, 'Nurse'
);

/* INSERT QUERY NO: 393 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
374327147, 'Nurse'
);

/* INSERT QUERY NO: 394 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
158966862, 'Nurse'
);

/* INSERT QUERY NO: 395 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
947037384, 'Nurse'
);

/* INSERT QUERY NO: 396 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
140166931, 'Nurse'
);

/* INSERT QUERY NO: 397 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
346964536, 'Nurse'
);

/* INSERT QUERY NO: 398 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
736180442, 'Nurse'
);

/* INSERT QUERY NO: 399 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
644934596, 'Nurse'
);

/* INSERT QUERY NO: 400 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
653044424, 'Nurse'
);

/* INSERT QUERY NO: 401 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
518155053, 'Nurse'
);

/* INSERT QUERY NO: 402 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
444192710, 'Nurse'
);

/* INSERT QUERY NO: 403 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
750064469, 'Nurse'
);

/* INSERT QUERY NO: 404 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
585974426, 'Nurse'
);

/* INSERT QUERY NO: 405 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
133761058, 'Nurse'
);

/* INSERT QUERY NO: 406 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
179151510, 'Nurse'
);

/* INSERT QUERY NO: 407 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
447320870, 'Nurse'
);

/* INSERT QUERY NO: 408 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
467841716, 'Nurse'
);

/* INSERT QUERY NO: 409 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
599231477, 'Nurse'
);

/* INSERT QUERY NO: 410 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
684124083, 'Nurse'
);

/* INSERT QUERY NO: 411 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
208740987, 'Nurse'
);

/* INSERT QUERY NO: 412 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
833451511, 'Nurse'
);

/* INSERT QUERY NO: 413 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
558402134, 'Nurse'
);

/* INSERT QUERY NO: 414 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
509277186, 'Nurse'
);

/* INSERT QUERY NO: 415 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
948241072, 'Nurse'
);

/* INSERT QUERY NO: 416 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
697145938, 'Nurse'
);

/* INSERT QUERY NO: 417 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
497497776, 'Nurse'
);

/* INSERT QUERY NO: 418 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
978348890, 'Nurse'
);

/* INSERT QUERY NO: 419 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
350510277, 'Nurse'
);

/* INSERT QUERY NO: 420 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
387365678, 'Nurse'
);

/* INSERT QUERY NO: 421 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
971940922, 'Nurse'
);

/* INSERT QUERY NO: 422 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
887717038, 'Nurse'
);

/* INSERT QUERY NO: 423 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
742541081, 'Nurse'
);

/* INSERT QUERY NO: 424 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
798047128, 'Nurse'
);

/* INSERT QUERY NO: 425 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
208440070, 'Nurse'
);

/* INSERT QUERY NO: 426 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
867886330, 'Nurse'
);

/* INSERT QUERY NO: 427 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
831234620, 'Nurse'
);

/* INSERT QUERY NO: 428 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
424870917, 'Nurse'
);

/* INSERT QUERY NO: 429 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
977599626, 'Nurse'
);

/* INSERT QUERY NO: 430 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
282690944, 'Nurse'
);

/* INSERT QUERY NO: 431 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
162697762, 'Nurse'
);

/* INSERT QUERY NO: 432 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
335045909, 'Nurse'
);

/* INSERT QUERY NO: 433 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
557446669, 'Nurse'
);

/* INSERT QUERY NO: 434 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
496018551, 'Nurse'
);

/* INSERT QUERY NO: 435 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
670832662, 'Nurse'
);

/* INSERT QUERY NO: 436 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
614160425, 'Nurse'
);

/* INSERT QUERY NO: 437 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
695611377, 'Nurse'
);

/* INSERT QUERY NO: 438 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
606918197, 'Nurse'
);

/* INSERT QUERY NO: 439 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
245799434, 'Nurse'
);

/* INSERT QUERY NO: 440 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
399620305, 'Nurse'
);

/* INSERT QUERY NO: 441 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
774868393, 'Nurse'
);

/* INSERT QUERY NO: 442 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
455799376, 'Nurse'
);

/* INSERT QUERY NO: 443 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
226260525, 'Nurse'
);

/* INSERT QUERY NO: 444 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
638713388, 'Nurse'
);

/* INSERT QUERY NO: 445 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
564483683, 'Nurse'
);

/* INSERT QUERY NO: 446 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
223256573, 'Nurse'
);

/* INSERT QUERY NO: 447 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
637640979, 'Nurse'
);

/* INSERT QUERY NO: 448 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
834955090, 'Nurse'
);

/* INSERT QUERY NO: 449 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
209672087, 'Nurse'
);

/* INSERT QUERY NO: 450 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
175297093, 'Nurse'
);

/* INSERT QUERY NO: 451 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
100839729, 'Nurse'
);

/* INSERT QUERY NO: 452 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
710628570, 'Nurse'
);

/* INSERT QUERY NO: 453 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
929670489, 'Nurse'
);

/* INSERT QUERY NO: 454 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
793339948, 'Nurse'
);

/* INSERT QUERY NO: 455 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
604632535, 'Nurse'
);

/* INSERT QUERY NO: 456 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
868969030, 'Nurse'
);

/* INSERT QUERY NO: 457 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
448849743, 'Nurse'
);

/* INSERT QUERY NO: 458 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
141248540, 'Nurse'
);

/* INSERT QUERY NO: 459 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
425524557, 'Nurse'
);

/* INSERT QUERY NO: 460 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
192414954, 'Nurse'
);

/* INSERT QUERY NO: 461 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
318592001, 'Nurse'
);

/* INSERT QUERY NO: 462 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
326497537, 'Nurse'
);

/* INSERT QUERY NO: 463 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
985244799, 'Nurse'
);

/* INSERT QUERY NO: 464 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
507577837, 'Nurse'
);

/* INSERT QUERY NO: 465 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
391486089, 'Nurse'
);

/* INSERT QUERY NO: 466 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
223143904, 'Nurse'
);

/* INSERT QUERY NO: 467 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
757973574, 'Nurse'
);

/* INSERT QUERY NO: 468 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
756757055, 'Nurse'
);

/* INSERT QUERY NO: 469 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
541420933, 'Nurse'
);

/* INSERT QUERY NO: 470 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
214002988, 'Nurse'
);

/* INSERT QUERY NO: 471 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
274892255, 'Nurse'
);

/* INSERT QUERY NO: 472 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
894345162, 'Nurse'
);

/* INSERT QUERY NO: 473 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
359966153, 'Nurse'
);

/* INSERT QUERY NO: 474 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
184444979, 'Nurse'
);

/* INSERT QUERY NO: 475 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
979777334, 'Nurse'
);

/* INSERT QUERY NO: 476 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
732885712, 'Nurse'
);

/* INSERT QUERY NO: 477 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
521165267, 'Nurse'
);

/* INSERT QUERY NO: 478 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
454055361, 'Nurse'
);

/* INSERT QUERY NO: 479 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
122976530, 'Nurse'
);

/* INSERT QUERY NO: 480 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
758793891, 'Nurse'
);

/* INSERT QUERY NO: 481 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
944752490, 'Nurse'
);

/* INSERT QUERY NO: 482 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
125074868, 'Nurse'
);

/* INSERT QUERY NO: 483 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
918225994, 'Nurse'
);

/* INSERT QUERY NO: 484 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
551097402, 'Nurse'
);

/* INSERT QUERY NO: 485 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
477739872, 'Nurse'
);

/* INSERT QUERY NO: 486 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
964674679, 'Nurse'
);

/* INSERT QUERY NO: 487 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
700943594, 'Nurse'
);

/* INSERT QUERY NO: 488 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
915365165, 'Nurse'
);

/* INSERT QUERY NO: 489 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
937083736, 'Nurse'
);

/* INSERT QUERY NO: 490 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
109030302, 'Nurse'
);

/* INSERT QUERY NO: 491 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
628747693, 'Nurse'
);

/* INSERT QUERY NO: 492 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
555442249, 'Nurse'
);

/* INSERT QUERY NO: 493 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
200160739, 'Nurse'
);

/* INSERT QUERY NO: 494 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
738218900, 'Nurse'
);

/* INSERT QUERY NO: 495 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
989452807, 'Nurse'
);

/* INSERT QUERY NO: 496 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
737864976, 'Nurse'
);

/* INSERT QUERY NO: 497 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
635925148, 'Nurse'
);

/* INSERT QUERY NO: 498 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
826770121, 'Nurse'
);

/* INSERT QUERY NO: 499 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
866297088, 'Nurse'
);

/* INSERT QUERY NO: 500 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
230582041, 'Nurse'
);

/* INSERT QUERY NO: 501 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
858999210, 'Nurse'
);

/* INSERT QUERY NO: 502 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
531412674, 'Nurse'
);

/* INSERT QUERY NO: 503 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
760297746, 'Nurse'
);

/* INSERT QUERY NO: 504 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
999728144, 'Nurse'
);

/* INSERT QUERY NO: 505 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
639225399, 'Nurse'
);

/* INSERT QUERY NO: 506 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
694973500, 'Nurse'
);

/* INSERT QUERY NO: 507 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
797519473, 'Nurse'
);

/* INSERT QUERY NO: 508 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
772002908, 'Nurse'
);

/* INSERT QUERY NO: 509 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
772377059, 'Nurse'
);

/* INSERT QUERY NO: 510 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
230240109, 'Nurse'
);

/* INSERT QUERY NO: 511 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
583686373, 'Nurse'
);

/* INSERT QUERY NO: 512 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
319608343, 'Nurse'
);

/* INSERT QUERY NO: 513 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
717324029, 'Nurse'
);

/* INSERT QUERY NO: 514 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
826605308, 'Nurse'
);

/* INSERT QUERY NO: 515 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
105945142, 'Nurse'
);

/* INSERT QUERY NO: 516 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
203195214, 'Nurse'
);

/* INSERT QUERY NO: 517 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
705542442, 'Nurse'
);

/* INSERT QUERY NO: 518 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
849560875, 'Nurse'
);

/* INSERT QUERY NO: 519 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
660006187, 'Nurse'
);

/* INSERT QUERY NO: 520 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
209227516, 'Nurse'
);

/* INSERT QUERY NO: 521 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
609423978, 'Nurse'
);

/* INSERT QUERY NO: 522 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
737255073, 'Nurse'
);

/* INSERT QUERY NO: 523 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
667767027, 'Nurse'
);

/* INSERT QUERY NO: 524 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
200769246, 'Nurse'
);

/* INSERT QUERY NO: 525 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
479032816, 'Nurse'
);

/* INSERT QUERY NO: 526 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
706253956, 'Nurse'
);

/* INSERT QUERY NO: 527 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
633931892, 'Nurse'
);

/* INSERT QUERY NO: 528 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
856598387, 'Nurse'
);

/* INSERT QUERY NO: 529 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
505255227, 'Nurse'
);

/* INSERT QUERY NO: 530 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
480408472, 'Nurse'
);

/* INSERT QUERY NO: 531 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
902868693, 'Nurse'
);

/* INSERT QUERY NO: 532 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
371538020, 'Nurse'
);

/* INSERT QUERY NO: 533 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
752803629, 'Nurse'
);

/* INSERT QUERY NO: 534 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
532293158, 'Nurse'
);

/* INSERT QUERY NO: 535 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
669289445, 'Nurse'
);

/* INSERT QUERY NO: 536 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
301883189, 'Nurse'
);

/* INSERT QUERY NO: 537 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
605615251, 'Nurse'
);

/* INSERT QUERY NO: 538 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
112833444, 'Nurse'
);

/* INSERT QUERY NO: 539 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
531101070, 'Nurse'
);

/* INSERT QUERY NO: 540 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
617352061, 'Nurse'
);

/* INSERT QUERY NO: 541 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
910459906, 'Nurse'
);

/* INSERT QUERY NO: 542 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
645437169, 'Nurse'
);

/* INSERT QUERY NO: 543 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
397342369, 'Nurse'
);

/* INSERT QUERY NO: 544 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
155957181, 'Nurse'
);

/* INSERT QUERY NO: 545 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
945708648, 'Nurse'
);

/* INSERT QUERY NO: 546 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
437041011, 'Nurse'
);

/* INSERT QUERY NO: 547 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
959885997, 'Nurse'
);

/* INSERT QUERY NO: 548 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
584243656, 'Nurse'
);

/* INSERT QUERY NO: 549 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
228786585, 'Admin'
);

/* INSERT QUERY NO: 550 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
479915457, 'Admin'
);

/* INSERT QUERY NO: 551 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
719864564, 'Admin'
);

/* INSERT QUERY NO: 552 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
289931136, 'Admin'
);

/* INSERT QUERY NO: 553 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
612392381, 'Admin'
);

/* INSERT QUERY NO: 554 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
930735058, 'Admin'
);

/* INSERT QUERY NO: 555 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
715244303, 'Admin'
);

/* INSERT QUERY NO: 556 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
512102233, 'Admin'
);

/* INSERT QUERY NO: 557 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
457614703, 'Admin'
);

/* INSERT QUERY NO: 558 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
310672150, 'Admin'
);

/* INSERT QUERY NO: 559 */
INSERT INTO ROLE(eSSN, role)
VALUES
(
873888404, 'Admin'
);
INSERT INTO ROLE(eSSN, role) VALUES (211364019, 'Admin');



/* INSERT QUERY NO: 1 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6857, 'Bednar LLC', '101 Blackbird Alley'
);

/* INSERT QUERY NO: 2 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8700, 'Funk and Sons', '5 Toban Road'
);

/* INSERT QUERY NO: 3 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2883, 'McCullough LLC', '8 Rockefeller Crossing'
);

/* INSERT QUERY NO: 4 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6589, 'Torphy and Sons', '5857 Hayes Point'
);

/* INSERT QUERY NO: 5 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6685, 'Klocko-Welch', '33563 Paget Hill'
);

/* INSERT QUERY NO: 6 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
12, 'Weber-Collins', '8888 Esker Circle'
);

/* INSERT QUERY NO: 7 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7641, '"Paucek', ' Schuster and Ryan"'
);

/* INSERT QUERY NO: 8 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1218, '"Hahn', ' Roob and Bogan"'
);

/* INSERT QUERY NO: 9 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7250, '"Ortiz', ' Yost and Haley"'
);

/* INSERT QUERY NO: 10 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8621, 'Wiza-Metz', '0236 Declaration Junction'
);

/* INSERT QUERY NO: 11 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2588, 'Weissnat-Volkman', '66 Scofield Parkway'
);

/* INSERT QUERY NO: 12 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4931, 'Bartell Inc', '5 Colorado Road'
);

/* INSERT QUERY NO: 13 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5104, '"Dach', ' Lubowitz and Jacobson"'
);

/* INSERT QUERY NO: 14 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2709, 'Considine Group', '9 Vidon Plaza'
);

/* INSERT QUERY NO: 15 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6898, 'Harvey-Yundt', '75614 International Street'
);

/* INSERT QUERY NO: 16 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6982, 'Farrell-Bradtke', '953 Carpenter Alley'
);

/* INSERT QUERY NO: 17 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7281, '"Boehm', ' Weissnat and Hirthe"'
);

/* INSERT QUERY NO: 18 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6599, '"Konopelski', ' Daugherty and Rogahn"'
);

/* INSERT QUERY NO: 19 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2469, 'Koelpin Group', '8 Stuart Park'
);

/* INSERT QUERY NO: 20 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5413, 'Schamberger-Jenkins', '22537 Vidon Avenue'
);

/* INSERT QUERY NO: 21 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5706, '"Weber', ' Wilderman and Dietrich"'
);

/* INSERT QUERY NO: 22 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5969, 'Hilll-Hane', '3241 Bluejay Parkway'
);

/* INSERT QUERY NO: 23 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5704, 'Donnelly and Sons', '1353 Banding Parkway'
);

/* INSERT QUERY NO: 24 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1860, 'Grady-Schoen', '0 Hazelcrest Court'
);

/* INSERT QUERY NO: 25 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7929, 'Ratke-Barrows', '867 Birchwood Court'
);

/* INSERT QUERY NO: 26 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7102, 'Schmitt-Moen', '77 Fordem Alley'
);

/* INSERT QUERY NO: 27 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4025, 'Boyle Inc', '9123 4th Point'
);

/* INSERT QUERY NO: 28 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
848, '"Cartwright', ' Corwin and Hermiston"'
);

/* INSERT QUERY NO: 29 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7775, 'Moore LLC', '7423 Gulseth Trail'
);

/* INSERT QUERY NO: 30 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8967, '"Steuber', ' Terry and Altenwerth"'
);

/* INSERT QUERY NO: 31 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
466, 'Kub-VonRueden', '8 Longview Alley'
);

/* INSERT QUERY NO: 32 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4342, 'Fahey-Ritchie', '04 Southridge Point'
);

/* INSERT QUERY NO: 33 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
643, '"Senger', ' Barton and Haley"'
);

/* INSERT QUERY NO: 34 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2354, 'Feeney-O\'Keefe', '33 Mcbride Avenue'
);

/* INSERT QUERY NO: 35 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6759, '"Daniel', ' Wunsch and Wisozk"'
);

/* INSERT QUERY NO: 36 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
779, '"Mertz', ' Kemmer and Ruecker"'
);

/* INSERT QUERY NO: 37 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5935, 'Kuhlman and Sons', '57469 Starling Place'
);

/* INSERT QUERY NO: 38 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5180, 'Wilderman and Sons', '99932 Farwell Avenue'
);

/* INSERT QUERY NO: 39 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8571, 'Wisoky Inc', '5610 Northport Avenue'
);

/* INSERT QUERY NO: 40 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1192, 'Ernser-Johns', '180 Calypso Point'
);

/* INSERT QUERY NO: 41 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4673, '"Nader', ' Schinner and Kunde"'
);

/* INSERT QUERY NO: 42 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6115, 'Rosenbaum Group', '325 South Place'
);

/* INSERT QUERY NO: 43 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4325, 'Corkery Group', '2525 Thackeray Drive'
);

/* INSERT QUERY NO: 44 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4662, '"Barton', ' Hartmann and Braun"'
);

/* INSERT QUERY NO: 45 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5093, '"Waters', ' Feest and Volkman"'
);

/* INSERT QUERY NO: 46 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1097, '"Bartell', ' Schuppe and Treutel"'
);

/* INSERT QUERY NO: 47 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5655, '"Schaden', ' Hermann and Schoen"'
);

/* INSERT QUERY NO: 48 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1189, '"Schamberger', ' Kuhic and Carter"'
);

/* INSERT QUERY NO: 49 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5252, 'Hodkiewicz Inc', '8518 Becker Pass'
);

/* INSERT QUERY NO: 50 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5841, 'Schmeler LLC', '2443 Springview Point'
);

/* INSERT QUERY NO: 51 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6607, 'Ledner-West', '1894 Caliangt Pass'
);

/* INSERT QUERY NO: 52 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
879, '"Mayert', ' Pollich and Rau"'
);

/* INSERT QUERY NO: 53 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8878, 'Johns and Sons', '1629 Buena Vista Avenue'
);

/* INSERT QUERY NO: 54 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4534, '"Schaefer', ' Graham and Dicki"'
);

/* INSERT QUERY NO: 55 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2907, '"Metz', ' Heller and Cole"'
);

/* INSERT QUERY NO: 56 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6179, 'Herzog-Hoeger', '9 Banding Center'
);

/* INSERT QUERY NO: 57 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6881, '"Kub', ' Fritsch and Wiza"'
);

/* INSERT QUERY NO: 58 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2903, '"Jenkins', ' Ullrich and Lindgren"'
);

/* INSERT QUERY NO: 59 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4570, 'Cummings-Will', '91033 Fallview Park'
);

/* INSERT QUERY NO: 60 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3735, 'Witting and Sons', '69 Coolidge Crossing'
);

/* INSERT QUERY NO: 61 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1962, 'Hansen-Tromp', '633 Dexter Court'
);

/* INSERT QUERY NO: 62 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5043, '"Keeling', ' Stehr and O\'Hara"'
);

/* INSERT QUERY NO: 63 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6669, 'Prosacco LLC', '6 Riverside Trail'
);

/* INSERT QUERY NO: 64 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5671, '"Moen', ' Reichert and Schiller"'
);

/* INSERT QUERY NO: 65 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8035, '"Shanahan', ' Bergstrom and Pacocha"'
);

/* INSERT QUERY NO: 66 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8315, 'Ledner-Robel', '120 Hallows Terrace'
);

/* INSERT QUERY NO: 67 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5833, '"Hegmann', ' Watsica and Ryan"'
);

/* INSERT QUERY NO: 68 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7516, 'Kilback-Hilpert', '4266 Sunbrook Lane'
);

/* INSERT QUERY NO: 69 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5492, 'Gleason-Schamberger', '8658 Londonderry Court'
);

/* INSERT QUERY NO: 70 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8971, 'Kuphal-Stanton', '92573 Meadow Vale Center'
);

/* INSERT QUERY NO: 71 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
694, 'Smith-Boyle', '8 Sutherland Crossing'
);

/* INSERT QUERY NO: 72 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1854, 'Johnson-Mayert', '31304 Barby Way'
);

/* INSERT QUERY NO: 73 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3459, '"O\'Kon', ' Cruickshank and Reichel"'
);

/* INSERT QUERY NO: 74 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6302, 'Beatty-Luettgen', '282 Valley Edge Alley'
);

/* INSERT QUERY NO: 75 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7175, 'Rolfson LLC', '1 Dorton Way'
);

/* INSERT QUERY NO: 76 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4491, 'White Group', '44 Jackson Circle'
);

/* INSERT QUERY NO: 77 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2899, 'Feil-Carroll', '5455 Elgar Way'
);

/* INSERT QUERY NO: 78 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4609, '"Wiza', ' Haley and Medhurst"'
);

/* INSERT QUERY NO: 79 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4849, 'Wiza Inc', '5117 Ryan Alley'
);

/* INSERT QUERY NO: 80 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6700, '"Tromp', ' Smitham and Schneider"'
);

/* INSERT QUERY NO: 81 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2981, '"Stark', ' Leffler and Lindgren"'
);

/* INSERT QUERY NO: 82 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8963, 'Goodwin Group', '95735 Meadow Vale Avenue'
);

/* INSERT QUERY NO: 83 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3573, 'Wolff LLC', '6 Westport Crossing'
);

/* INSERT QUERY NO: 84 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6665, 'Becker Group', '322 Cambridge Drive'
);

/* INSERT QUERY NO: 85 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8705, 'Cole LLC', '373 Truax Plaza'
);

/* INSERT QUERY NO: 86 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4387, 'Trantow Group', '71008 Northview Junction'
);

/* INSERT QUERY NO: 87 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5521, 'Blick-Emard', '0660 Mallard Place'
);

/* INSERT QUERY NO: 88 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
475, 'Johnston-Schmeler', '0516 Division Street'
);

/* INSERT QUERY NO: 89 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1705, 'Bogan LLC', '6920 Linden Avenue'
);

/* INSERT QUERY NO: 90 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3707, 'Casper Inc', '1 Vernon Pass'
);

/* INSERT QUERY NO: 91 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5259, 'Bosco-Cummings', '5 Rigney Junction'
);

/* INSERT QUERY NO: 92 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3985, 'Hyatt Group', '04960 Comanche Road'
);

/* INSERT QUERY NO: 93 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2350, '"Wehner', ' Hudson and Medhurst"'
);

/* INSERT QUERY NO: 94 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7691, 'Vandervort and Sons', '670 Cambridge Junction'
);

/* INSERT QUERY NO: 95 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4853, 'Cronin Group', '8 Pawling Point'
);

/* INSERT QUERY NO: 96 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7169, 'O\'Keefe Inc', '41803 Old Shore Circle'
);

/* INSERT QUERY NO: 97 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6842, 'Bashirian Inc', '653 Pearson Trail'
);

/* INSERT QUERY NO: 98 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6289, '"Jakubowski', ' Lowe and Zieme"'
);

/* INSERT QUERY NO: 99 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7412, 'Schowalter LLC', '505 Hallows Lane'
);

/* INSERT QUERY NO: 100 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3676, 'Abbott LLC', '0403 Waywood Alley'
);

/* INSERT QUERY NO: 101 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5232, 'Murphy-Padberg', '077 Duke Plaza'
);

/* INSERT QUERY NO: 102 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8140, 'Hermiston-Hodkiewicz', '2078 Oneill Road'
);

/* INSERT QUERY NO: 103 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2750, '"Wisoky', ' Daniel and Tillman"'
);

/* INSERT QUERY NO: 104 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6138, 'Flatley LLC', '2396 Northridge Parkway'
);

/* INSERT QUERY NO: 105 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2177, 'Auer Inc', '146 Dwight Pass'
);

/* INSERT QUERY NO: 106 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
367, 'Steuber-Anderson', '90 Dwight Avenue'
);

/* INSERT QUERY NO: 107 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2656, 'Boyer Inc', '2 Lillian Alley'
);

/* INSERT QUERY NO: 108 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
849, '"Ernser', ' Collier and Willms"'
);

/* INSERT QUERY NO: 109 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
151, 'Wilkinson-Gerlach', '5956 High Crossing Hill'
);

/* INSERT QUERY NO: 110 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3378, 'Gislason-Lowe', '5522 Spaight Point'
);

/* INSERT QUERY NO: 111 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6500, '"Towne', ' Gerlach and Gutmann"'
);

/* INSERT QUERY NO: 112 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2475, '"Steuber', ' Wisoky and Bosco"'
);

/* INSERT QUERY NO: 113 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3190, '"Metz', ' Gaylord and Wiza"'
);

/* INSERT QUERY NO: 114 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4789, '"Erdman', ' Huels and Dickens"'
);

/* INSERT QUERY NO: 115 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3373, '"Klocko', ' Stark and Pollich"'
);

/* INSERT QUERY NO: 116 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6531, 'Denesik-Raynor', '70475 Petterle Court'
);

/* INSERT QUERY NO: 117 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5673, '"Oberbrunner', ' Feest and Murazik"'
);

/* INSERT QUERY NO: 118 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6752, 'Ernser-Crona', '864 Evergreen Terrace'
);

/* INSERT QUERY NO: 119 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1598, 'Funk and Sons', '41 Mallory Trail'
);

/* INSERT QUERY NO: 120 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4421, 'Klein-Donnelly', '26843 Morning Alley'
);

/* INSERT QUERY NO: 121 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6309, 'Harvey Inc', '48305 Becker Court'
);

/* INSERT QUERY NO: 122 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3563, 'Koss-Runolfsdottir', '23388 Shoshone Road'
);

/* INSERT QUERY NO: 123 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1612, 'Bogisich Group', '9513 Spenser Road'
);

/* INSERT QUERY NO: 124 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
76, '"Boehm', ' Parker and Dietrich"'
);

/* INSERT QUERY NO: 125 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5624, 'Carter Group', '136 Kipling Way'
);

/* INSERT QUERY NO: 126 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7423, 'Ruecker Inc', '2356 Dayton Pass'
);

/* INSERT QUERY NO: 127 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
24, '"Shanahan', ' Hoeger and Zemlak"'
);

/* INSERT QUERY NO: 128 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
837, 'Wilderman-Dach', '0 Rieder Center'
);

/* INSERT QUERY NO: 129 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1302, 'Runte-Waelchi', '62286 Dwight Parkway'
);

/* INSERT QUERY NO: 130 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3639, 'Mante-Bruen', '83353 New Castle Street'
);

/* INSERT QUERY NO: 131 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5159, '"Mayer', ' Powlowski and Daugherty"'
);

/* INSERT QUERY NO: 132 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4203, 'Hegmann and Sons', '4950 Fallview Avenue'
);

/* INSERT QUERY NO: 133 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6606, '"DuBuque', ' Bauch and McDermott"'
);

/* INSERT QUERY NO: 134 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3212, 'Pfannerstill Group', '67 Florence Terrace'
);

/* INSERT QUERY NO: 135 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
785, 'Moore and Sons', '985 Village Green Road'
);

/* INSERT QUERY NO: 136 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
174, 'Cremin-Gislason', '672 Anthes Hill'
);

/* INSERT QUERY NO: 137 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4683, '"McGlynn', ' Hintz and Hoeger"'
);

/* INSERT QUERY NO: 138 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3329, '"Schmidt', ' Raynor and Leffler"'
);

/* INSERT QUERY NO: 139 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7448, 'Hane-Herman', '3 Stephen Crossing'
);

/* INSERT QUERY NO: 140 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1296, 'Bashirian Group', '28762 Dahle Drive'
);

/* INSERT QUERY NO: 141 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
738, 'Lowe-Gleichner', '73046 Bowman Pass'
);

/* INSERT QUERY NO: 142 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5777, 'Schulist-Ernser', '4879 Lindbergh Street'
);

/* INSERT QUERY NO: 143 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3238, 'Feeney and Sons', '9987 Manley Terrace'
);

/* INSERT QUERY NO: 144 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6486, '"Predovic', ' Vandervort and Goodwin"'
);

/* INSERT QUERY NO: 145 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1596, 'O\'Kon and Sons', '3 Northland Trail'
);

/* INSERT QUERY NO: 146 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1048, '"Nitzsche', ' Lang and O\'Keefe"'
);

/* INSERT QUERY NO: 147 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4146, 'Stroman-Fahey', '949 Morrow Way'
);

/* INSERT QUERY NO: 148 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5324, 'Mayer-Johnson', '2986 Oak Crossing'
);

/* INSERT QUERY NO: 149 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7567, 'Kerluke and Sons', '977 Kinsman Drive'
);

/* INSERT QUERY NO: 150 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
554, 'Maggio and Sons', '8199 Cambridge Street'
);

/* INSERT QUERY NO: 151 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7291, 'Labadie LLC', '459 Burning Wood Lane'
);

/* INSERT QUERY NO: 152 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8726, 'Ledner and Sons', '0 Russell Terrace'
);

/* INSERT QUERY NO: 153 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2096, 'O\'Keefe-Morar', '0 Hooker Way'
);

/* INSERT QUERY NO: 154 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1521, 'Ebert and Sons', '7 Dayton Street'
);

/* INSERT QUERY NO: 155 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7056, 'Dicki-O\'Reilly', '5331 Anthes Road'
);

/* INSERT QUERY NO: 156 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4856, 'Paucek Group', '65811 Sommers Pass'
);

/* INSERT QUERY NO: 157 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2584, 'Leuschke and Sons', '808 Maple Place'
);

/* INSERT QUERY NO: 158 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1373, 'Lakin-Turner', '34 Debs Junction'
);

/* INSERT QUERY NO: 159 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4650, 'Bogisich and Sons', '39479 Vermont Drive'
);

/* INSERT QUERY NO: 160 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6472, 'Bechtelar-Barrows', '842 Montana Lane'
);

/* INSERT QUERY NO: 161 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3548, 'Mosciski-Ziemann', '5 David Circle'
);

/* INSERT QUERY NO: 162 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2262, 'Predovic Group', '7123 Mcguire Trail'
);

/* INSERT QUERY NO: 163 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8178, 'Carter-Emard', '2603 Shasta Alley'
);

/* INSERT QUERY NO: 164 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
297, 'Corwin-Jacobs', '0 Northfield Road'
);

/* INSERT QUERY NO: 165 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3482, 'Reichert LLC', '55162 Birchwood Circle'
);

/* INSERT QUERY NO: 166 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5500, 'Fritsch Group', '144 Surrey Hill'
);

/* INSERT QUERY NO: 167 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8079, 'Mitchell-Bauch', '17921 Dunning Drive'
);

/* INSERT QUERY NO: 168 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8617, 'Kuhlman-Rodriguez', '2129 Bluejay Court'
);

/* INSERT QUERY NO: 169 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7535, 'Schuppe LLC', '1 Canary Park'
);

/* INSERT QUERY NO: 170 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1434, 'Collins LLC', '843 Amoth Pass'
);

/* INSERT QUERY NO: 171 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8360, 'Kuvalis Inc', '938 American Ash Pass'
);

/* INSERT QUERY NO: 172 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1087, 'Will-Braun', '708 Eagan Lane'
);

/* INSERT QUERY NO: 173 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
128, 'Frami-Auer', '714 Forest Dale Court'
);

/* INSERT QUERY NO: 174 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7125, 'Lubowitz Inc', '8291 Gateway Trail'
);

/* INSERT QUERY NO: 175 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4266, 'Raynor-Christiansen', '3566 Truax Center'
);

/* INSERT QUERY NO: 176 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3394, 'Cassin LLC', '128 Utah Way'
);

/* INSERT QUERY NO: 177 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6755, '"Monahan', ' Legros and Wehner"'
);

/* INSERT QUERY NO: 178 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6621, 'Nitzsche LLC', '42 Sherman Point'
);

/* INSERT QUERY NO: 179 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3138, '"Beier', ' Schiller and Schroeder"'
);

/* INSERT QUERY NO: 180 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5937, 'Willms Inc', '452 Hooker Parkway'
);

/* INSERT QUERY NO: 181 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8166, '"Treutel', ' Runte and Boyle"'
);

/* INSERT QUERY NO: 182 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5429, 'Robel LLC', '2 Moland Drive'
);

/* INSERT QUERY NO: 183 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8470, '"Hane', ' Heathcote and Johns"'
);

/* INSERT QUERY NO: 184 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
597, 'Brakus LLC', '0010 Russell Road'
);

/* INSERT QUERY NO: 185 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
984, '"Huel', ' Hermiston and Jast"'
);

/* INSERT QUERY NO: 186 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2501, '"Brakus', ' Howe and Russel"'
);

/* INSERT QUERY NO: 187 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6297, 'Schneider Inc', '1887 Grim Lane'
);

/* INSERT QUERY NO: 188 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1140, 'Nolan Group', '9199 Glendale Center'
);

/* INSERT QUERY NO: 189 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3331, 'Little-Pfeffer', '11 Northport Way'
);

/* INSERT QUERY NO: 190 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
768, '"Kreiger', ' Corkery and Lind"'
);

/* INSERT QUERY NO: 191 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1581, 'Rempel Inc', '82641 Delladonna Hill'
);

/* INSERT QUERY NO: 192 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7975, 'Cormier-Dietrich', '56633 Grim Road'
);

/* INSERT QUERY NO: 193 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3801, 'Hansen LLC', '08 Quincy Way'
);

/* INSERT QUERY NO: 194 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7387, '"Ritchie', ' Bahringer and Zboncak"'
);

/* INSERT QUERY NO: 195 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8706, 'Murray and Sons', '83 2nd Lane'
);

/* INSERT QUERY NO: 196 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2812, 'Kub Group', '84 Dunning Center'
);

/* INSERT QUERY NO: 197 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7619, 'Murphy Inc', '82451 Waubesa Parkway'
);

/* INSERT QUERY NO: 198 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8220, 'Walsh and Sons', '5 Golf Course Lane'
);

/* INSERT QUERY NO: 199 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5111, 'Powlowski Inc', '15885 Golf Course Trail'
);

/* INSERT QUERY NO: 200 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2466, 'Rodriguez-Luettgen', '8 Vernon Terrace'
);

/* INSERT QUERY NO: 201 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1518, 'Bechtelar Group', '4 Vahlen Junction'
);

/* INSERT QUERY NO: 202 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1984, '"Rempel', ' Wilkinson and McClure"'
);

/* INSERT QUERY NO: 203 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5652, 'Gaylord-Boyer', '24 Gerald Circle'
);

/* INSERT QUERY NO: 204 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1424, '"Stehr', ' Stanton and Hilll"'
);

/* INSERT QUERY NO: 205 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6350, 'Lehner Inc', '6 Butternut Alley'
);

/* INSERT QUERY NO: 206 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
857, '"Howe', ' O\'Reilly and Kohler"'
);

/* INSERT QUERY NO: 207 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3146, '"Jenkins', ' Herzog and Heathcote"'
);

/* INSERT QUERY NO: 208 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6384, '"Harvey', ' Crona and Stracke"'
);

/* INSERT QUERY NO: 209 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7492, 'Hoeger and Sons', '3 Tennessee Place'
);

/* INSERT QUERY NO: 210 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3863, '"Wehner', ' Veum and O\'Conner"'
);

/* INSERT QUERY NO: 211 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4506, 'Armstrong Inc', '82708 Bayside Pass'
);

/* INSERT QUERY NO: 212 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
8672, '"McCullough', ' Dicki and Spencer"'
);

/* INSERT QUERY NO: 213 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7476, 'Moen-Osinski', '53224 Miller Plaza'
);

/* INSERT QUERY NO: 214 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7626, 'Waters Group', '27646 Anhalt Road'
);

/* INSERT QUERY NO: 215 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
7473, 'Lockman and Sons', '0645 Mockingbird Center'
);

/* INSERT QUERY NO: 216 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
224, 'Ankunding and Sons', '7545 Macpherson Alley'
);

/* INSERT QUERY NO: 217 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
3737, 'Mann-Tillman', '3582 Mallory Road'
);

/* INSERT QUERY NO: 218 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
6883, '"Hessel', ' Doyle and Reynolds"'
);

/* INSERT QUERY NO: 219 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
878, '"Cronin', ' Braun and Howe"'
);

/* INSERT QUERY NO: 220 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
1810, '"O\'Keefe', ' Fahey and Marvin"'
);

/* INSERT QUERY NO: 221 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
701, 'Connelly LLC', '2 Artisan Crossing'
);

/* INSERT QUERY NO: 222 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
5194, '"Bednar', ' Osinski and Watsica"'
);

/* INSERT QUERY NO: 223 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
4109, 'Funk-Denesik', '6 Heath Circle'
);

/* INSERT QUERY NO: 224 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2329, 'Huel and Sons', '3313 Tony Hill'
);

/* INSERT QUERY NO: 225 */
INSERT INTO BLOOD_BANK(bCode, bName, bLocation)
VALUES
(
2102, 'Rohan-Nicolas', '536 Roxbury Circle'
);



/* INSERT QUERY NO: 1 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000000, 151246203
);

/* INSERT QUERY NO: 2 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000001, 793974852
);

/* INSERT QUERY NO: 3 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000002, 555912165
);

/* INSERT QUERY NO: 4 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000003, 287814528
);

/* INSERT QUERY NO: 5 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000004, 238829850
);

/* INSERT QUERY NO: 6 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000005, 952202682
);

/* INSERT QUERY NO: 7 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000006, 198956260
);

/* INSERT QUERY NO: 8 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000007, 118486919
);

/* INSERT QUERY NO: 9 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000008, 404411873
);

/* INSERT QUERY NO: 10 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000009, 368570275
);

/* INSERT QUERY NO: 11 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000010, 300578452
);

/* INSERT QUERY NO: 12 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000011, 123377591
);

/* INSERT QUERY NO: 13 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000012, 709290657
);

/* INSERT QUERY NO: 14 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000013, 800926768
);

/* INSERT QUERY NO: 15 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000014, 313981003
);

/* INSERT QUERY NO: 16 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000015, 364238656
);

/* INSERT QUERY NO: 17 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000016, 319051307
);

/* INSERT QUERY NO: 18 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000017, 670716622
);

/* INSERT QUERY NO: 19 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000018, 763711964
);

/* INSERT QUERY NO: 20 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000019, 614835560
);

/* INSERT QUERY NO: 21 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000020, 830985128
);

/* INSERT QUERY NO: 22 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000021, 788443614
);

/* INSERT QUERY NO: 23 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000022, 309402065
);

/* INSERT QUERY NO: 24 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000023, 226355255
);

/* INSERT QUERY NO: 25 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000024, 211439534
);

/* INSERT QUERY NO: 26 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000025, 215815075
);

/* INSERT QUERY NO: 27 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000026, 984257874
);

/* INSERT QUERY NO: 28 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000027, 135006949
);

/* INSERT QUERY NO: 29 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000028, 321816742
);

/* INSERT QUERY NO: 30 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000029, 366000161
);

/* INSERT QUERY NO: 31 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000030, 297672267
);

/* INSERT QUERY NO: 32 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000031, 867662841
);

/* INSERT QUERY NO: 33 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000032, 213526644
);

/* INSERT QUERY NO: 34 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000033, 404455602
);

/* INSERT QUERY NO: 35 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000034, 538397237
);

/* INSERT QUERY NO: 36 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000035, 933912911
);

/* INSERT QUERY NO: 37 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000036, 714689951
);

/* INSERT QUERY NO: 38 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000037, 279896072
);

/* INSERT QUERY NO: 39 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000038, 436213770
);

/* INSERT QUERY NO: 40 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000039, 296763625
);

/* INSERT QUERY NO: 41 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000040, 276131342
);

/* INSERT QUERY NO: 42 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000041, 988362047
);

/* INSERT QUERY NO: 43 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000042, 985948733
);

/* INSERT QUERY NO: 44 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000043, 502758935
);

/* INSERT QUERY NO: 45 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000044, 711675860
);

/* INSERT QUERY NO: 46 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000045, 127138773
);

/* INSERT QUERY NO: 47 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000046, 594016924
);

/* INSERT QUERY NO: 48 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000047, 732062425
);

/* INSERT QUERY NO: 49 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000048, 920794449
);

/* INSERT QUERY NO: 50 */
INSERT INTO GIVES(pSSN, eSSN)
VALUES
(
100000049, 760009545
);



/* INSERT QUERY NO: 1 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1594, 150
);

/* INSERT QUERY NO: 2 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7192, 70
);

/* INSERT QUERY NO: 3 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8071, 450
);

/* INSERT QUERY NO: 4 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
978, 170
);

/* INSERT QUERY NO: 5 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7899, 80
);

/* INSERT QUERY NO: 6 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6609, 80
);

/* INSERT QUERY NO: 7 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1553, 0
);

/* INSERT QUERY NO: 8 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2316, 0
);

/* INSERT QUERY NO: 9 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7029, 0
);

/* INSERT QUERY NO: 10 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6838, 0
);

/* INSERT QUERY NO: 11 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5137, 0
);

/* INSERT QUERY NO: 12 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1250, 0
);

/* INSERT QUERY NO: 13 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3680, 0
);

/* INSERT QUERY NO: 14 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2048, 0
);

/* INSERT QUERY NO: 15 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5195, 0
);

/* INSERT QUERY NO: 16 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4408, 0
);

/* INSERT QUERY NO: 17 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8608, 0
);

/* INSERT QUERY NO: 18 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8993, 0
);

/* INSERT QUERY NO: 19 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4064, 0
);

/* INSERT QUERY NO: 20 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6616, 0
);

/* INSERT QUERY NO: 21 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8783, 0
);

/* INSERT QUERY NO: 22 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4070, 0
);

/* INSERT QUERY NO: 23 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8638, 0
);

/* INSERT QUERY NO: 24 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3872, 0
);

/* INSERT QUERY NO: 25 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7694, 0
);

/* INSERT QUERY NO: 26 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3466, 0
);

/* INSERT QUERY NO: 27 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
386, 0
);

/* INSERT QUERY NO: 28 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4244, 0
);

/* INSERT QUERY NO: 29 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2516, 0
);

/* INSERT QUERY NO: 30 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7810, 0
);

/* INSERT QUERY NO: 31 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6669, 0
);

/* INSERT QUERY NO: 32 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6797, 0
);

/* INSERT QUERY NO: 33 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6457, 0
);

/* INSERT QUERY NO: 34 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3213, 0
);

/* INSERT QUERY NO: 35 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6316, 0
);

/* INSERT QUERY NO: 36 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4262, 0
);

/* INSERT QUERY NO: 37 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8100, 0
);

/* INSERT QUERY NO: 38 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2696, 0
);

/* INSERT QUERY NO: 39 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8132, 0
);

/* INSERT QUERY NO: 40 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3140, 0
);

/* INSERT QUERY NO: 41 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1409, 0
);

/* INSERT QUERY NO: 42 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4410, 0
);

/* INSERT QUERY NO: 43 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6905, 0
);

/* INSERT QUERY NO: 44 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
363, 0
);

/* INSERT QUERY NO: 45 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3363, 0
);

/* INSERT QUERY NO: 46 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5039, 0
);

/* INSERT QUERY NO: 47 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7407, 0
);

/* INSERT QUERY NO: 48 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6775, 0
);

/* INSERT QUERY NO: 49 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2457, 0
);

/* INSERT QUERY NO: 50 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7742, 0
);

/* INSERT QUERY NO: 51 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
450, 0
);

/* INSERT QUERY NO: 52 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7744, 0
);

/* INSERT QUERY NO: 53 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7570, 0
);

/* INSERT QUERY NO: 54 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3084, 0
);

/* INSERT QUERY NO: 55 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1296, 0
);

/* INSERT QUERY NO: 56 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3877, 0
);

/* INSERT QUERY NO: 57 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
526, 0
);

/* INSERT QUERY NO: 58 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4870, 0
);

/* INSERT QUERY NO: 59 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7343, 0
);

/* INSERT QUERY NO: 60 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1304, 0
);

/* INSERT QUERY NO: 61 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4251, 0
);

/* INSERT QUERY NO: 62 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2295, 0
);

/* INSERT QUERY NO: 63 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2740, 0
);

/* INSERT QUERY NO: 64 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6892, 0
);

/* INSERT QUERY NO: 65 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5318, 0
);

/* INSERT QUERY NO: 66 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6160, 0
);

/* INSERT QUERY NO: 67 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2263, 0
);

/* INSERT QUERY NO: 68 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5562, 0
);

/* INSERT QUERY NO: 69 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
192, 0
);

/* INSERT QUERY NO: 70 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8012, 0
);

/* INSERT QUERY NO: 71 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2218, 0
);

/* INSERT QUERY NO: 72 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6064, 0
);

/* INSERT QUERY NO: 73 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1779, 0
);

/* INSERT QUERY NO: 74 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3763, 0
);

/* INSERT QUERY NO: 75 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6708, 0
);

/* INSERT QUERY NO: 76 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
435, 0
);

/* INSERT QUERY NO: 77 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5844, 0
);

/* INSERT QUERY NO: 78 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5355, 0
);

/* INSERT QUERY NO: 79 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8572, 0
);

/* INSERT QUERY NO: 80 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6891, 0
);

/* INSERT QUERY NO: 81 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5384, 0
);

/* INSERT QUERY NO: 82 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3000, 0
);

/* INSERT QUERY NO: 83 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2133, 0
);

/* INSERT QUERY NO: 84 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3352, 0
);

/* INSERT QUERY NO: 85 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7974, 0
);

/* INSERT QUERY NO: 86 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8997, 0
);

/* INSERT QUERY NO: 87 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8804, 0
);

/* INSERT QUERY NO: 88 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8892, 0
);

/* INSERT QUERY NO: 89 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3887, 0
);

/* INSERT QUERY NO: 90 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7563, 0
);

/* INSERT QUERY NO: 91 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5866, 0
);

/* INSERT QUERY NO: 92 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7468, 0
);

/* INSERT QUERY NO: 93 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6710, 0
);

/* INSERT QUERY NO: 94 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2513, 0
);

/* INSERT QUERY NO: 95 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1130, 0
);

/* INSERT QUERY NO: 96 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7765, 0
);

/* INSERT QUERY NO: 97 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1966, 0
);

/* INSERT QUERY NO: 98 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8833, 0
);

/* INSERT QUERY NO: 99 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3144, 0
);

/* INSERT QUERY NO: 100 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7890, 0
);

/* INSERT QUERY NO: 101 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5313, 0
);

/* INSERT QUERY NO: 102 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5994, 0
);

/* INSERT QUERY NO: 103 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
32, 0
);

/* INSERT QUERY NO: 104 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
691, 0
);

/* INSERT QUERY NO: 105 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7127, 0
);

/* INSERT QUERY NO: 106 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3103, 0
);

/* INSERT QUERY NO: 107 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
241, 0
);

/* INSERT QUERY NO: 108 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2902, 0
);

/* INSERT QUERY NO: 109 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4881, 0
);

/* INSERT QUERY NO: 110 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
883, 0
);

/* INSERT QUERY NO: 111 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7702, 0
);

/* INSERT QUERY NO: 112 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4627, 0
);

/* INSERT QUERY NO: 113 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
110, 0
);

/* INSERT QUERY NO: 114 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6292, 0
);

/* INSERT QUERY NO: 115 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5438, 0
);

/* INSERT QUERY NO: 116 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3620, 0
);

/* INSERT QUERY NO: 117 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5485, 0
);

/* INSERT QUERY NO: 118 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8373, 0
);

/* INSERT QUERY NO: 119 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
762, 0
);

/* INSERT QUERY NO: 120 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7795, 0
);

/* INSERT QUERY NO: 121 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5408, 0
);

/* INSERT QUERY NO: 122 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5720, 0
);

/* INSERT QUERY NO: 123 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1542, 0
);

/* INSERT QUERY NO: 124 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2370, 0
);

/* INSERT QUERY NO: 125 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6245, 0
);

/* INSERT QUERY NO: 126 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1896, 0
);

/* INSERT QUERY NO: 127 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2950, 0
);

/* INSERT QUERY NO: 128 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4365, 0
);

/* INSERT QUERY NO: 129 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8861, 0
);

/* INSERT QUERY NO: 130 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6073, 0
);

/* INSERT QUERY NO: 131 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4261, 0
);

/* INSERT QUERY NO: 132 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3182, 0
);

/* INSERT QUERY NO: 133 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
641, 0
);

/* INSERT QUERY NO: 134 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8401, 0
);

/* INSERT QUERY NO: 135 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3132, 0
);

/* INSERT QUERY NO: 136 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7964, 0
);

/* INSERT QUERY NO: 137 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4618, 0
);

/* INSERT QUERY NO: 138 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1943, 0
);

/* INSERT QUERY NO: 139 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5065, 0
);

/* INSERT QUERY NO: 140 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2735, 0
);

/* INSERT QUERY NO: 141 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5584, 0
);

/* INSERT QUERY NO: 142 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7880, 0
);

/* INSERT QUERY NO: 143 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7027, 0
);

/* INSERT QUERY NO: 144 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2383, 0
);

/* INSERT QUERY NO: 145 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1552, 0
);

/* INSERT QUERY NO: 146 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1142, 0
);

/* INSERT QUERY NO: 147 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5877, 0
);

/* INSERT QUERY NO: 148 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5188, 0
);

/* INSERT QUERY NO: 149 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3322, 0
);

/* INSERT QUERY NO: 150 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4142, 0
);

/* INSERT QUERY NO: 151 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6299, 0
);

/* INSERT QUERY NO: 152 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7654, 0
);

/* INSERT QUERY NO: 153 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7803, 0
);

/* INSERT QUERY NO: 154 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7152, 0
);

/* INSERT QUERY NO: 155 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5389, 0
);

/* INSERT QUERY NO: 156 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
134, 0
);

/* INSERT QUERY NO: 157 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3318, 0
);

/* INSERT QUERY NO: 158 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4992, 0
);

/* INSERT QUERY NO: 159 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7774, 0
);

/* INSERT QUERY NO: 160 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6296, 0
);

/* INSERT QUERY NO: 161 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6168, 0
);

/* INSERT QUERY NO: 162 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8138, 0
);

/* INSERT QUERY NO: 163 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1460, 0
);

/* INSERT QUERY NO: 164 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8101, 0
);

/* INSERT QUERY NO: 165 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4701, 0
);

/* INSERT QUERY NO: 166 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4447, 0
);

/* INSERT QUERY NO: 167 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5668, 0
);

/* INSERT QUERY NO: 168 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6802, 0
);

/* INSERT QUERY NO: 169 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2228, 0
);

/* INSERT QUERY NO: 170 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2439, 0
);

/* INSERT QUERY NO: 171 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1777, 0
);

/* INSERT QUERY NO: 172 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6420, 0
);

/* INSERT QUERY NO: 173 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5422, 0
);

/* INSERT QUERY NO: 174 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6987, 0
);

/* INSERT QUERY NO: 175 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8063, 0
);

/* INSERT QUERY NO: 176 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
370, 0
);

/* INSERT QUERY NO: 177 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4147, 0
);

/* INSERT QUERY NO: 178 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3309, 0
);

/* INSERT QUERY NO: 179 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8191, 0
);

/* INSERT QUERY NO: 180 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8359, 0
);

/* INSERT QUERY NO: 181 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3350, 0
);

/* INSERT QUERY NO: 182 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4516, 0
);

/* INSERT QUERY NO: 183 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2866, 0
);

/* INSERT QUERY NO: 184 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2090, 0
);

/* INSERT QUERY NO: 185 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4631, 0
);

/* INSERT QUERY NO: 186 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3882, 0
);

/* INSERT QUERY NO: 187 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1101, 0
);

/* INSERT QUERY NO: 188 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
853, 0
);

/* INSERT QUERY NO: 189 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7379, 0
);

/* INSERT QUERY NO: 190 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5698, 0
);

/* INSERT QUERY NO: 191 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7868, 0
);

/* INSERT QUERY NO: 192 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6204, 0
);

/* INSERT QUERY NO: 193 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8984, 0
);

/* INSERT QUERY NO: 194 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
796, 0
);

/* INSERT QUERY NO: 195 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8454, 0
);

/* INSERT QUERY NO: 196 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3441, 0
);

/* INSERT QUERY NO: 197 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4377, 0
);

/* INSERT QUERY NO: 198 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1117, 0
);

/* INSERT QUERY NO: 199 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6238, 0
);

/* INSERT QUERY NO: 200 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6274, 0
);

/* INSERT QUERY NO: 201 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5406, 0
);

/* INSERT QUERY NO: 202 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3329, 0
);

/* INSERT QUERY NO: 203 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6259, 0
);

/* INSERT QUERY NO: 204 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5953, 0
);

/* INSERT QUERY NO: 205 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3405, 0
);

/* INSERT QUERY NO: 206 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8528, 0
);

/* INSERT QUERY NO: 207 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8136, 0
);

/* INSERT QUERY NO: 208 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8051, 0
);

/* INSERT QUERY NO: 209 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6260, 0
);

/* INSERT QUERY NO: 210 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7872, 0
);

/* INSERT QUERY NO: 211 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4817, 0
);

/* INSERT QUERY NO: 212 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6745, 0
);

/* INSERT QUERY NO: 213 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6376, 0
);

/* INSERT QUERY NO: 214 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1331, 0
);

/* INSERT QUERY NO: 215 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4711, 0
);

/* INSERT QUERY NO: 216 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
432, 0
);

/* INSERT QUERY NO: 217 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4328, 0
);

/* INSERT QUERY NO: 218 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
531, 0
);

/* INSERT QUERY NO: 219 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8778, 0
);

/* INSERT QUERY NO: 220 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
819, 0
);

/* INSERT QUERY NO: 221 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8750, 0
);

/* INSERT QUERY NO: 222 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4715, 0
);

/* INSERT QUERY NO: 223 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2289, 0
);

/* INSERT QUERY NO: 224 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
119, 0
);

/* INSERT QUERY NO: 225 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1499, 0
);

/* INSERT QUERY NO: 226 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3570, 0
);

/* INSERT QUERY NO: 227 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8729, 0
);

/* INSERT QUERY NO: 228 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1590, 0
);

/* INSERT QUERY NO: 229 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2898, 0
);

/* INSERT QUERY NO: 230 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
84, 0
);

/* INSERT QUERY NO: 231 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1373, 0
);

/* INSERT QUERY NO: 232 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5879, 0
);

/* INSERT QUERY NO: 233 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3537, 0
);

/* INSERT QUERY NO: 234 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2231, 0
);

/* INSERT QUERY NO: 235 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1570, 0
);

/* INSERT QUERY NO: 236 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3254, 0
);

/* INSERT QUERY NO: 237 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5655, 0
);

/* INSERT QUERY NO: 238 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1289, 0
);

/* INSERT QUERY NO: 239 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8852, 0
);

/* INSERT QUERY NO: 240 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5936, 0
);

/* INSERT QUERY NO: 241 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1653, 0
);

/* INSERT QUERY NO: 242 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5849, 0
);

/* INSERT QUERY NO: 243 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
760, 0
);

/* INSERT QUERY NO: 244 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
599, 0
);

/* INSERT QUERY NO: 245 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7605, 0
);

/* INSERT QUERY NO: 246 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4739, 0
);

/* INSERT QUERY NO: 247 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8589, 0
);

/* INSERT QUERY NO: 248 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3613, 0
);

/* INSERT QUERY NO: 249 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5546, 0
);

/* INSERT QUERY NO: 250 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4106, 0
);

/* INSERT QUERY NO: 251 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
261, 0
);

/* INSERT QUERY NO: 252 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
508, 0
);

/* INSERT QUERY NO: 253 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3295, 0
);

/* INSERT QUERY NO: 254 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7634, 0
);

/* INSERT QUERY NO: 255 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1466, 0
);

/* INSERT QUERY NO: 256 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2034, 0
);

/* INSERT QUERY NO: 257 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3659, 0
);

/* INSERT QUERY NO: 258 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
322, 0
);

/* INSERT QUERY NO: 259 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4727, 0
);

/* INSERT QUERY NO: 260 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5530, 0
);

/* INSERT QUERY NO: 261 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5549, 0
);

/* INSERT QUERY NO: 262 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
696, 0
);

/* INSERT QUERY NO: 263 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7577, 0
);

/* INSERT QUERY NO: 264 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5558, 0
);

/* INSERT QUERY NO: 265 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3576, 0
);

/* INSERT QUERY NO: 266 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1389, 0
);

/* INSERT QUERY NO: 267 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2984, 0
);

/* INSERT QUERY NO: 268 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6620, 0
);

/* INSERT QUERY NO: 269 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2392, 0
);

/* INSERT QUERY NO: 270 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2017, 0
);

/* INSERT QUERY NO: 271 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4932, 0
);

/* INSERT QUERY NO: 272 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4991, 0
);

/* INSERT QUERY NO: 273 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4486, 0
);

/* INSERT QUERY NO: 274 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4156, 0
);

/* INSERT QUERY NO: 275 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
936, 0
);

/* INSERT QUERY NO: 276 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5888, 0
);

/* INSERT QUERY NO: 277 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3015, 0
);

/* INSERT QUERY NO: 278 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
499, 0
);

/* INSERT QUERY NO: 279 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5708, 0
);

/* INSERT QUERY NO: 280 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5472, 0
);

/* INSERT QUERY NO: 281 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2308, 0
);

/* INSERT QUERY NO: 282 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5405, 0
);

/* INSERT QUERY NO: 283 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7088, 0
);

/* INSERT QUERY NO: 284 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3238, 0
);

/* INSERT QUERY NO: 285 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5700, 0
);

/* INSERT QUERY NO: 286 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2430, 0
);

/* INSERT QUERY NO: 287 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1102, 0
);

/* INSERT QUERY NO: 288 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8135, 0
);

/* INSERT QUERY NO: 289 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7965, 0
);

/* INSERT QUERY NO: 290 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2617, 0
);

/* INSERT QUERY NO: 291 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5324, 0
);

/* INSERT QUERY NO: 292 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4576, 0
);

/* INSERT QUERY NO: 293 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8125, 0
);

/* INSERT QUERY NO: 294 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1372, 0
);

/* INSERT QUERY NO: 295 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5968, 0
);

/* INSERT QUERY NO: 296 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3538, 0
);

/* INSERT QUERY NO: 297 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
596, 0
);

/* INSERT QUERY NO: 298 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2466, 0
);

/* INSERT QUERY NO: 299 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3220, 0
);

/* INSERT QUERY NO: 300 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2360, 0
);

/* INSERT QUERY NO: 301 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2890, 0
);

/* INSERT QUERY NO: 302 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
954, 0
);

/* INSERT QUERY NO: 303 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6041, 0
);

/* INSERT QUERY NO: 304 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6645, 0
);

/* INSERT QUERY NO: 305 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7521, 0
);

/* INSERT QUERY NO: 306 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6349, 0
);

/* INSERT QUERY NO: 307 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1325, 0
);

/* INSERT QUERY NO: 308 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1062, 0
);

/* INSERT QUERY NO: 309 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1610, 0
);

/* INSERT QUERY NO: 310 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3970, 0
);

/* INSERT QUERY NO: 311 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6115, 0
);

/* INSERT QUERY NO: 312 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1167, 0
);

/* INSERT QUERY NO: 313 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1437, 0
);

/* INSERT QUERY NO: 314 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1593, 0
);

/* INSERT QUERY NO: 315 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1012, 0
);

/* INSERT QUERY NO: 316 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2385, 0
);

/* INSERT QUERY NO: 317 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6598, 0
);

/* INSERT QUERY NO: 318 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7928, 0
);

/* INSERT QUERY NO: 319 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2384, 0
);

/* INSERT QUERY NO: 320 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5748, 0
);

/* INSERT QUERY NO: 321 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8431, 0
);

/* INSERT QUERY NO: 322 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2389, 0
);

/* INSERT QUERY NO: 323 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6155, 0
);

/* INSERT QUERY NO: 324 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6832, 0
);

/* INSERT QUERY NO: 325 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8047, 0
);

/* INSERT QUERY NO: 326 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1572, 0
);

/* INSERT QUERY NO: 327 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3900, 0
);

/* INSERT QUERY NO: 328 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4592, 0
);

/* INSERT QUERY NO: 329 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3111, 0
);

/* INSERT QUERY NO: 330 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8952, 0
);

/* INSERT QUERY NO: 331 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5524, 0
);

/* INSERT QUERY NO: 332 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1061, 0
);

/* INSERT QUERY NO: 333 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7056, 0
);

/* INSERT QUERY NO: 334 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1940, 0
);

/* INSERT QUERY NO: 335 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6850, 0
);

/* INSERT QUERY NO: 336 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5451, 0
);

/* INSERT QUERY NO: 337 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2304, 0
);

/* INSERT QUERY NO: 338 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2419, 0
);

/* INSERT QUERY NO: 339 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5171, 0
);

/* INSERT QUERY NO: 340 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7794, 0
);

/* INSERT QUERY NO: 341 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6122, 0
);

/* INSERT QUERY NO: 342 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8490, 0
);

/* INSERT QUERY NO: 343 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1971, 0
);

/* INSERT QUERY NO: 344 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6297, 0
);

/* INSERT QUERY NO: 345 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4249, 0
);

/* INSERT QUERY NO: 346 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4556, 0
);

/* INSERT QUERY NO: 347 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4906, 0
);

/* INSERT QUERY NO: 348 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2016, 0
);

/* INSERT QUERY NO: 349 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3632, 0
);

/* INSERT QUERY NO: 350 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2964, 0
);

/* INSERT QUERY NO: 351 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6037, 0
);

/* INSERT QUERY NO: 352 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6152, 0
);

/* INSERT QUERY NO: 353 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3379, 0
);

/* INSERT QUERY NO: 354 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3521, 0
);

/* INSERT QUERY NO: 355 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4187, 0
);

/* INSERT QUERY NO: 356 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6380, 0
);

/* INSERT QUERY NO: 357 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1153, 0
);

/* INSERT QUERY NO: 358 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8940, 0
);

/* INSERT QUERY NO: 359 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
809, 0
);

/* INSERT QUERY NO: 360 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6486, 0
);

/* INSERT QUERY NO: 361 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8918, 0
);

/* INSERT QUERY NO: 362 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1516, 0
);

/* INSERT QUERY NO: 363 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6733, 0
);

/* INSERT QUERY NO: 364 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2159, 0
);

/* INSERT QUERY NO: 365 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2684, 0
);

/* INSERT QUERY NO: 366 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3287, 0
);

/* INSERT QUERY NO: 367 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7341, 0
);

/* INSERT QUERY NO: 368 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3964, 0
);

/* INSERT QUERY NO: 369 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2915, 0
);

/* INSERT QUERY NO: 370 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
803, 0
);

/* INSERT QUERY NO: 371 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
670, 0
);

/* INSERT QUERY NO: 372 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5514, 0
);

/* INSERT QUERY NO: 373 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8304, 0
);

/* INSERT QUERY NO: 374 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2862, 0
);

/* INSERT QUERY NO: 375 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8777, 0
);

/* INSERT QUERY NO: 376 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5694, 0
);

/* INSERT QUERY NO: 377 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1306, 0
);

/* INSERT QUERY NO: 378 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6887, 0
);

/* INSERT QUERY NO: 379 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1768, 0
);

/* INSERT QUERY NO: 380 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1084, 0
);

/* INSERT QUERY NO: 381 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4890, 0
);

/* INSERT QUERY NO: 382 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4102, 0
);

/* INSERT QUERY NO: 383 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3858, 0
);

/* INSERT QUERY NO: 384 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3187, 0
);

/* INSERT QUERY NO: 385 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7378, 0
);

/* INSERT QUERY NO: 386 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7858, 0
);

/* INSERT QUERY NO: 387 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2342, 0
);

/* INSERT QUERY NO: 388 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8755, 0
);

/* INSERT QUERY NO: 389 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3289, 0
);

/* INSERT QUERY NO: 390 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1680, 0
);

/* INSERT QUERY NO: 391 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
4021, 0
);

/* INSERT QUERY NO: 392 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
3686, 0
);

/* INSERT QUERY NO: 393 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
662, 0
);

/* INSERT QUERY NO: 394 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8904, 0
);

/* INSERT QUERY NO: 395 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
6261, 0
);

/* INSERT QUERY NO: 396 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
7457, 0
);

/* INSERT QUERY NO: 397 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
8328, 0
);

/* INSERT QUERY NO: 398 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
1974, 0
);

/* INSERT QUERY NO: 399 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
2285, 0
);

/* INSERT QUERY NO: 400 */
INSERT INTO BLOOD_STOCK(sCode, quantity)
VALUES
(
5653, 0
);



/* INSERT QUERY NO: 1 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
1, '2021-12-24', 'A+', 1594
);

/* INSERT QUERY NO: 2 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
2, '2021-12-15', 'A+', 1594
);

/* INSERT QUERY NO: 3 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
3, '2022-03-23', 'A+', 1594
);

/* INSERT QUERY NO: 4 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
4, '2022-02-16', 'A+', 1594
);

/* INSERT QUERY NO: 5 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
5, '2021-12-21', 'A+', 1594
);

/* INSERT QUERY NO: 6 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
6, '2022-04-28', 'A+', 1594
);

/* INSERT QUERY NO: 7 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
7, '2021-03-09', 'A+', 1594
);

/* INSERT QUERY NO: 8 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
8, '2021-04-04', 'A+', 1594
);

/* INSERT QUERY NO: 9 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
9, '2021-04-30', 'A+', 1594
);

/* INSERT QUERY NO: 10 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
10, '2021-03-22', 'A+', 1594
);

/* INSERT QUERY NO: 11 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
11, '2022-04-01', 'A+', 1594
);

/* INSERT QUERY NO: 12 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
12, '2021-10-08', 'A+', 1594
);

/* INSERT QUERY NO: 13 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
13, '2021-05-27', 'A+', 1594
);

/* INSERT QUERY NO: 14 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
14, '2021-05-06', 'A+', 1594
);

/* INSERT QUERY NO: 15 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
15, '2021-05-20', 'A+', 1594
);

/* INSERT QUERY NO: 16 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
16, '2021-08-11', 'A+', 1594
);

/* INSERT QUERY NO: 17 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
17, '2021-09-14', 'A+', 1594
);

/* INSERT QUERY NO: 18 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
18, '2021-11-15', 'A+', 1594
);

/* INSERT QUERY NO: 19 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
19, '2022-01-10', 'A+', 1594
);

/* INSERT QUERY NO: 20 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
20, '2021-08-18', 'A+', 1594
);

/* INSERT QUERY NO: 21 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
21, '2021-06-29', 'A+', 1594
);

/* INSERT QUERY NO: 22 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
22, '2021-11-26', 'A+', 1594
);

/* INSERT QUERY NO: 23 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
23, '2021-07-10', 'A+', 1594
);

/* INSERT QUERY NO: 24 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
24, '2022-04-01', 'A+', 1594
);

/* INSERT QUERY NO: 25 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
25, '2021-09-05', 'A+', 1594
);

/* INSERT QUERY NO: 26 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
26, '2021-03-25', 'A+', 1594
);

/* INSERT QUERY NO: 27 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
27, '2021-07-30', 'A+', 1594
);

/* INSERT QUERY NO: 28 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
28, '2022-01-16', 'A+', 1594
);

/* INSERT QUERY NO: 29 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
29, '2021-06-29', 'A+', 1594
);

/* INSERT QUERY NO: 30 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
30, '2021-09-27', 'A+', 1594
);

/* INSERT QUERY NO: 31 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
31, '2021-08-14', 'A+', 1594
);

/* INSERT QUERY NO: 32 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
32, '2021-06-26', 'A+', 1594
);

/* INSERT QUERY NO: 33 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
33, '2021-09-16', 'A+', 1594
);

/* INSERT QUERY NO: 34 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
34, '2021-05-09', 'A+', 1594
);

/* INSERT QUERY NO: 35 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
35, '2022-03-21', 'A+', 1594
);

/* INSERT QUERY NO: 36 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
36, '2021-06-24', 'A+', 1594
);

/* INSERT QUERY NO: 37 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
37, '2022-04-11', 'A+', 1594
);

/* INSERT QUERY NO: 38 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
38, '2022-04-24', 'A+', 1594
);

/* INSERT QUERY NO: 39 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
39, '2021-12-18', 'A+', 1594
);

/* INSERT QUERY NO: 40 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
40, '2021-05-01', 'A+', 1594
);

/* INSERT QUERY NO: 41 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
41, '2021-08-19', 'A+', 1594
);

/* INSERT QUERY NO: 42 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
42, '2021-08-24', 'A+', 1594
);

/* INSERT QUERY NO: 43 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
43, '2021-07-19', 'A+', 1594
);

/* INSERT QUERY NO: 44 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
44, '2021-03-25', 'A+', 1594
);

/* INSERT QUERY NO: 45 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
45, '2021-03-21', 'A+', 1594
);

/* INSERT QUERY NO: 46 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
46, '2021-12-19', 'A+', 1594
);

/* INSERT QUERY NO: 47 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
47, '2021-06-10', 'A+', 1594
);

/* INSERT QUERY NO: 48 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
48, '2021-11-21', 'A+', 1594
);

/* INSERT QUERY NO: 49 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
49, '2021-11-12', 'A+', 1594
);

/* INSERT QUERY NO: 50 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
50, '2021-06-25', 'A+', 1594
);

/* INSERT QUERY NO: 51 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
51, '2021-04-27', 'A+', 1594
);

/* INSERT QUERY NO: 52 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
52, '2021-10-03', 'A+', 1594
);

/* INSERT QUERY NO: 53 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
53, '2021-03-01', 'A+', 1594
);

/* INSERT QUERY NO: 54 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
54, '2022-02-03', 'A+', 1594
);

/* INSERT QUERY NO: 55 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
55, '2022-03-04', 'A+', 1594
);

/* INSERT QUERY NO: 56 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
56, '2021-11-29', 'A+', 1594
);

/* INSERT QUERY NO: 57 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
57, '2021-12-31', 'A+', 1594
);

/* INSERT QUERY NO: 58 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
58, '2021-03-17', 'A+', 1594
);

/* INSERT QUERY NO: 59 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
59, '2022-03-17', 'A+', 1594
);

/* INSERT QUERY NO: 60 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
60, '2022-04-16', 'A+', 1594
);

/* INSERT QUERY NO: 61 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
61, '2021-11-23', 'A+', 1594
);

/* INSERT QUERY NO: 62 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
62, '2021-10-27', 'A+', 1594
);

/* INSERT QUERY NO: 63 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
63, '2021-06-03', 'A+', 1594
);

/* INSERT QUERY NO: 64 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
64, '2021-07-05', 'A+', 1594
);

/* INSERT QUERY NO: 65 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
65, '2021-06-14', 'A+', 1594
);

/* INSERT QUERY NO: 66 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
66, '2021-11-28', 'A+', 1594
);

/* INSERT QUERY NO: 67 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
67, '2022-02-17', 'A+', 1594
);

/* INSERT QUERY NO: 68 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
68, '2022-01-05', 'A+', 1594
);

/* INSERT QUERY NO: 69 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
69, '2021-09-17', 'A+', 1594
);

/* INSERT QUERY NO: 70 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
70, '2021-11-29', 'A+', 1594
);

/* INSERT QUERY NO: 71 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
71, '2021-11-25', 'A+', 1594
);

/* INSERT QUERY NO: 72 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
72, '2022-01-09', 'A+', 1594
);

/* INSERT QUERY NO: 73 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
73, '2021-11-11', 'A+', 1594
);

/* INSERT QUERY NO: 74 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
74, '2021-10-29', 'A+', 1594
);

/* INSERT QUERY NO: 75 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
75, '2021-11-12', 'A+', 1594
);

/* INSERT QUERY NO: 76 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
76, '2021-05-25', 'A+', 1594
);

/* INSERT QUERY NO: 77 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
77, '2021-12-10', 'A+', 1594
);

/* INSERT QUERY NO: 78 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
78, '2021-10-29', 'A+', 1594
);

/* INSERT QUERY NO: 79 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
79, '2021-04-25', 'A+', 1594
);

/* INSERT QUERY NO: 80 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
80, '2022-02-18', 'A+', 1594
);

/* INSERT QUERY NO: 81 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
81, '2021-03-01', 'A+', 1594
);

/* INSERT QUERY NO: 82 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
82, '2021-08-20', 'A+', 1594
);

/* INSERT QUERY NO: 83 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
83, '2022-01-01', 'A+', 1594
);

/* INSERT QUERY NO: 84 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
84, '2021-10-01', 'A+', 1594
);

/* INSERT QUERY NO: 85 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
85, '2021-05-30', 'A+', 1594
);

/* INSERT QUERY NO: 86 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
86, '2022-04-14', 'A+', 1594
);

/* INSERT QUERY NO: 87 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
87, '2021-10-18', 'A+', 1594
);

/* INSERT QUERY NO: 88 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
88, '2021-05-09', 'A+', 1594
);

/* INSERT QUERY NO: 89 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
89, '2021-04-14', 'A+', 1594
);

/* INSERT QUERY NO: 90 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
90, '2021-05-05', 'A+', 1594
);

/* INSERT QUERY NO: 91 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
91, '2021-12-23', 'A+', 1594
);

/* INSERT QUERY NO: 92 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
92, '2021-04-06', 'A+', 1594
);

/* INSERT QUERY NO: 93 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
93, '2022-01-25', 'A+', 1594
);

/* INSERT QUERY NO: 94 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
94, '2022-02-20', 'A+', 1594
);

/* INSERT QUERY NO: 95 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
95, '2022-01-29', 'A+', 1594
);

/* INSERT QUERY NO: 96 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
96, '2022-02-12', 'A+', 1594
);

/* INSERT QUERY NO: 97 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
97, '2022-03-04', 'A+', 1594
);

/* INSERT QUERY NO: 98 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
98, '2021-07-24', 'A+', 1594
);

/* INSERT QUERY NO: 99 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
99, '2022-02-09', 'A+', 1594
);

/* INSERT QUERY NO: 100 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
100, '2022-03-17', 'A+', 1594
);

/* INSERT QUERY NO: 101 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
101, '2021-10-01', 'A+', 1594
);

/* INSERT QUERY NO: 102 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
102, '2021-05-08', 'A+', 1594
);

/* INSERT QUERY NO: 103 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
103, '2022-01-13', 'A+', 1594
);

/* INSERT QUERY NO: 104 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
104, '2021-05-07', 'A+', 1594
);

/* INSERT QUERY NO: 105 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
105, '2022-04-05', 'A+', 1594
);

/* INSERT QUERY NO: 106 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
106, '2021-11-05', 'A+', 1594
);

/* INSERT QUERY NO: 107 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
107, '2021-06-21', 'A+', 1594
);

/* INSERT QUERY NO: 108 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
108, '2022-02-09', 'A+', 1594
);

/* INSERT QUERY NO: 109 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
109, '2021-10-26', 'A+', 1594
);

/* INSERT QUERY NO: 110 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
110, '2021-06-20', 'A+', 1594
);

/* INSERT QUERY NO: 111 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
111, '2021-07-04', 'A+', 1594
);

/* INSERT QUERY NO: 112 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
112, '2021-05-14', 'A+', 1594
);

/* INSERT QUERY NO: 113 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
113, '2021-12-05', 'A+', 1594
);

/* INSERT QUERY NO: 114 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
114, '2022-03-27', 'A+', 1594
);

/* INSERT QUERY NO: 115 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
115, '2021-07-14', 'A+', 1594
);

/* INSERT QUERY NO: 116 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
116, '2021-05-18', 'A+', 1594
);

/* INSERT QUERY NO: 117 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
117, '2021-03-08', 'A+', 1594
);

/* INSERT QUERY NO: 118 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
118, '2021-03-06', 'A+', 1594
);

/* INSERT QUERY NO: 119 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
119, '2021-10-27', 'A+', 1594
);

/* INSERT QUERY NO: 120 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
120, '2022-03-05', 'A+', 1594
);

/* INSERT QUERY NO: 121 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
121, '2021-03-23', 'A+', 1594
);

/* INSERT QUERY NO: 122 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
122, '2021-06-07', 'A+', 1594
);

/* INSERT QUERY NO: 123 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
123, '2021-07-05', 'A+', 1594
);

/* INSERT QUERY NO: 124 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
124, '2021-05-18', 'A+', 1594
);

/* INSERT QUERY NO: 125 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
125, '2021-06-16', 'A+', 1594
);

/* INSERT QUERY NO: 126 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
126, '2021-10-16', 'A+', 1594
);

/* INSERT QUERY NO: 127 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
127, '2022-03-18', 'A+', 1594
);

/* INSERT QUERY NO: 128 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
128, '2021-08-29', 'A+', 1594
);

/* INSERT QUERY NO: 129 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
129, '2021-07-10', 'A+', 1594
);

/* INSERT QUERY NO: 130 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
130, '2021-12-29', 'A+', 1594
);

/* INSERT QUERY NO: 131 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
131, '2022-04-24', 'A+', 1594
);

/* INSERT QUERY NO: 132 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
132, '2022-01-22', 'A+', 1594
);

/* INSERT QUERY NO: 133 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
133, '2022-01-27', 'A+', 1594
);

/* INSERT QUERY NO: 134 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
134, '2022-03-03', 'A+', 1594
);

/* INSERT QUERY NO: 135 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
135, '2021-07-15', 'A+', 1594
);

/* INSERT QUERY NO: 136 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
136, '2021-05-29', 'A+', 1594
);

/* INSERT QUERY NO: 137 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
137, '2022-04-26', 'A+', 1594
);

/* INSERT QUERY NO: 138 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
138, '2022-01-15', 'A+', 1594
);

/* INSERT QUERY NO: 139 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
139, '2022-01-07', 'A+', 1594
);

/* INSERT QUERY NO: 140 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
140, '2021-09-22', 'A+', 1594
);

/* INSERT QUERY NO: 141 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
141, '2021-03-04', 'A+', 1594
);

/* INSERT QUERY NO: 142 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
142, '2022-02-25', 'A+', 1594
);

/* INSERT QUERY NO: 143 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
143, '2022-04-23', 'A+', 1594
);

/* INSERT QUERY NO: 144 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
144, '2021-09-08', 'A+', 1594
);

/* INSERT QUERY NO: 145 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
145, '2022-01-24', 'A+', 1594
);

/* INSERT QUERY NO: 146 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
146, '2021-12-11', 'A+', 1594
);

/* INSERT QUERY NO: 147 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
147, '2021-03-18', 'A+', 1594
);

/* INSERT QUERY NO: 148 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
148, '2021-07-29', 'A+', 1594
);

/* INSERT QUERY NO: 149 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
149, '2021-11-05', 'A+', 1594
);

/* INSERT QUERY NO: 150 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
150, '2021-05-11', 'A+', 1594
);

/* INSERT QUERY NO: 151 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
151, '2021-09-05', 'A+', 7192
);

/* INSERT QUERY NO: 152 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
152, '2022-01-08', 'A+', 7192
);

/* INSERT QUERY NO: 153 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
153, '2021-06-10', 'A+', 7192
);

/* INSERT QUERY NO: 154 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
154, '2021-08-03', 'A+', 7192
);

/* INSERT QUERY NO: 155 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
155, '2021-08-26', 'A+', 7192
);

/* INSERT QUERY NO: 156 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
156, '2021-05-17', 'A+', 7192
);

/* INSERT QUERY NO: 157 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
157, '2021-11-11', 'A+', 7192
);

/* INSERT QUERY NO: 158 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
158, '2021-06-21', 'A+', 7192
);

/* INSERT QUERY NO: 159 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
159, '2022-04-18', 'A+', 7192
);

/* INSERT QUERY NO: 160 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
160, '2021-12-19', 'A+', 7192
);

/* INSERT QUERY NO: 161 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
161, '2021-06-16', 'A+', 7192
);

/* INSERT QUERY NO: 162 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
162, '2022-02-12', 'A+', 7192
);

/* INSERT QUERY NO: 163 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
163, '2021-04-20', 'A+', 7192
);

/* INSERT QUERY NO: 164 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
164, '2021-06-29', 'A+', 7192
);

/* INSERT QUERY NO: 165 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
165, '2022-02-11', 'A+', 7192
);

/* INSERT QUERY NO: 166 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
166, '2021-10-31', 'A+', 7192
);

/* INSERT QUERY NO: 167 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
167, '2021-12-17', 'A+', 7192
);

/* INSERT QUERY NO: 168 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
168, '2022-02-06', 'A+', 7192
);

/* INSERT QUERY NO: 169 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
169, '2021-07-09', 'A+', 7192
);

/* INSERT QUERY NO: 170 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
170, '2022-02-11', 'A+', 7192
);

/* INSERT QUERY NO: 171 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
171, '2021-10-27', 'A+', 7192
);

/* INSERT QUERY NO: 172 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
172, '2021-04-21', 'A+', 7192
);

/* INSERT QUERY NO: 173 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
173, '2021-07-09', 'A+', 7192
);

/* INSERT QUERY NO: 174 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
174, '2022-02-16', 'A+', 7192
);

/* INSERT QUERY NO: 175 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
175, '2021-08-09', 'A+', 7192
);

/* INSERT QUERY NO: 176 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
176, '2021-04-28', 'A+', 7192
);

/* INSERT QUERY NO: 177 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
177, '2021-10-28', 'A+', 7192
);

/* INSERT QUERY NO: 178 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
178, '2021-09-06', 'A+', 7192
);

/* INSERT QUERY NO: 179 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
179, '2021-11-09', 'A+', 7192
);

/* INSERT QUERY NO: 180 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
180, '2021-05-14', 'A+', 7192
);

/* INSERT QUERY NO: 181 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
181, '2022-04-24', 'A+', 7192
);

/* INSERT QUERY NO: 182 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
182, '2021-11-02', 'A+', 7192
);

/* INSERT QUERY NO: 183 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
183, '2022-04-22', 'A+', 7192
);

/* INSERT QUERY NO: 184 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
184, '2021-06-17', 'A+', 7192
);

/* INSERT QUERY NO: 185 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
185, '2021-04-14', 'A+', 7192
);

/* INSERT QUERY NO: 186 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
186, '2021-10-30', 'A+', 7192
);

/* INSERT QUERY NO: 187 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
187, '2021-10-30', 'A+', 7192
);

/* INSERT QUERY NO: 188 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
188, '2022-02-11', 'A+', 7192
);

/* INSERT QUERY NO: 189 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
189, '2022-03-19', 'A+', 7192
);

/* INSERT QUERY NO: 190 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
190, '2021-06-04', 'A+', 7192
);

/* INSERT QUERY NO: 191 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
191, '2021-05-13', 'A+', 7192
);

/* INSERT QUERY NO: 192 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
192, '2022-01-15', 'A+', 7192
);

/* INSERT QUERY NO: 193 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
193, '2021-11-05', 'A+', 7192
);

/* INSERT QUERY NO: 194 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
194, '2021-08-11', 'A+', 7192
);

/* INSERT QUERY NO: 195 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
195, '2021-11-21', 'A+', 7192
);

/* INSERT QUERY NO: 196 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
196, '2021-11-12', 'A+', 7192
);

/* INSERT QUERY NO: 197 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
197, '2022-01-31', 'A+', 7192
);

/* INSERT QUERY NO: 198 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
198, '2021-11-20', 'A+', 7192
);

/* INSERT QUERY NO: 199 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
199, '2021-04-08', 'A+', 7192
);

/* INSERT QUERY NO: 200 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
200, '2021-10-26', 'A+', 7192
);

/* INSERT QUERY NO: 201 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
201, '2021-07-25', 'A+', 7192
);

/* INSERT QUERY NO: 202 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
202, '2022-03-19', 'A+', 7192
);

/* INSERT QUERY NO: 203 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
203, '2022-01-05', 'A+', 7192
);

/* INSERT QUERY NO: 204 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
204, '2021-11-04', 'A+', 7192
);

/* INSERT QUERY NO: 205 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
205, '2021-06-29', 'A+', 7192
);

/* INSERT QUERY NO: 206 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
206, '2021-04-03', 'A+', 7192
);

/* INSERT QUERY NO: 207 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
207, '2022-01-03', 'A+', 7192
);

/* INSERT QUERY NO: 208 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
208, '2021-08-04', 'A+', 7192
);

/* INSERT QUERY NO: 209 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
209, '2022-03-28', 'A+', 7192
);

/* INSERT QUERY NO: 210 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
210, '2021-03-01', 'A+', 7192
);

/* INSERT QUERY NO: 211 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
211, '2021-11-01', 'A+', 7192
);

/* INSERT QUERY NO: 212 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
212, '2022-04-13', 'A+', 7192
);

/* INSERT QUERY NO: 213 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
213, '2021-04-11', 'A+', 7192
);

/* INSERT QUERY NO: 214 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
214, '2021-11-27', 'A+', 7192
);

/* INSERT QUERY NO: 215 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
215, '2022-04-21', 'A+', 7192
);

/* INSERT QUERY NO: 216 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
216, '2021-05-09', 'A+', 7192
);

/* INSERT QUERY NO: 217 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
217, '2022-01-02', 'A+', 7192
);

/* INSERT QUERY NO: 218 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
218, '2022-02-01', 'A+', 7192
);

/* INSERT QUERY NO: 219 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
219, '2021-08-02', 'A+', 7192
);

/* INSERT QUERY NO: 220 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
220, '2022-01-27', 'A+', 7192
);

/* INSERT QUERY NO: 221 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
221, '2021-11-23', 'A+', 8071
);

/* INSERT QUERY NO: 222 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
222, '2021-08-19', 'A+', 8071
);

/* INSERT QUERY NO: 223 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
223, '2021-09-08', 'A+', 8071
);

/* INSERT QUERY NO: 224 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
224, '2021-07-31', 'A+', 8071
);

/* INSERT QUERY NO: 225 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
225, '2021-12-23', 'A+', 8071
);

/* INSERT QUERY NO: 226 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
226, '2021-10-25', 'A+', 8071
);

/* INSERT QUERY NO: 227 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
227, '2021-03-27', 'A+', 8071
);

/* INSERT QUERY NO: 228 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
228, '2022-01-23', 'A+', 8071
);

/* INSERT QUERY NO: 229 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
229, '2021-04-26', 'A+', 8071
);

/* INSERT QUERY NO: 230 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
230, '2021-03-07', 'A+', 8071
);

/* INSERT QUERY NO: 231 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
231, '2021-05-19', 'A+', 8071
);

/* INSERT QUERY NO: 232 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
232, '2022-02-22', 'A+', 8071
);

/* INSERT QUERY NO: 233 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
233, '2021-09-21', 'A+', 8071
);

/* INSERT QUERY NO: 234 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
234, '2021-09-04', 'A+', 8071
);

/* INSERT QUERY NO: 235 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
235, '2021-08-22', 'A+', 8071
);

/* INSERT QUERY NO: 236 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
236, '2021-09-11', 'A+', 8071
);

/* INSERT QUERY NO: 237 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
237, '2022-01-02', 'A+', 8071
);

/* INSERT QUERY NO: 238 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
238, '2022-03-14', 'A+', 8071
);

/* INSERT QUERY NO: 239 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
239, '2021-10-22', 'A+', 8071
);

/* INSERT QUERY NO: 240 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
240, '2021-12-15', 'A+', 8071
);

/* INSERT QUERY NO: 241 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
241, '2022-01-27', 'A+', 8071
);

/* INSERT QUERY NO: 242 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
242, '2021-12-20', 'A+', 8071
);

/* INSERT QUERY NO: 243 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
243, '2021-11-30', 'A+', 8071
);

/* INSERT QUERY NO: 244 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
244, '2022-03-13', 'A+', 8071
);

/* INSERT QUERY NO: 245 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
245, '2021-09-17', 'A+', 8071
);

/* INSERT QUERY NO: 246 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
246, '2021-06-23', 'A+', 8071
);

/* INSERT QUERY NO: 247 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
247, '2022-04-21', 'A+', 8071
);

/* INSERT QUERY NO: 248 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
248, '2021-10-27', 'A+', 8071
);

/* INSERT QUERY NO: 249 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
249, '2022-04-24', 'A+', 8071
);

/* INSERT QUERY NO: 250 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
250, '2022-01-01', 'A+', 8071
);

/* INSERT QUERY NO: 251 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
251, '2021-03-09', 'A+', 8071
);

/* INSERT QUERY NO: 252 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
252, '2021-11-01', 'A+', 8071
);

/* INSERT QUERY NO: 253 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
253, '2021-06-11', 'A+', 8071
);

/* INSERT QUERY NO: 254 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
254, '2021-05-10', 'A+', 8071
);

/* INSERT QUERY NO: 255 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
255, '2021-11-08', 'A+', 8071
);

/* INSERT QUERY NO: 256 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
256, '2022-01-08', 'A+', 8071
);

/* INSERT QUERY NO: 257 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
257, '2021-10-28', 'A+', 8071
);

/* INSERT QUERY NO: 258 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
258, '2021-03-20', 'A+', 8071
);

/* INSERT QUERY NO: 259 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
259, '2021-03-14', 'A+', 8071
);

/* INSERT QUERY NO: 260 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
260, '2022-01-28', 'A+', 8071
);

/* INSERT QUERY NO: 261 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
261, '2021-07-26', 'A+', 8071
);

/* INSERT QUERY NO: 262 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
262, '2021-08-27', 'A+', 8071
);

/* INSERT QUERY NO: 263 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
263, '2021-09-18', 'A+', 8071
);

/* INSERT QUERY NO: 264 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
264, '2021-11-15', 'A+', 8071
);

/* INSERT QUERY NO: 265 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
265, '2021-08-31', 'A+', 8071
);

/* INSERT QUERY NO: 266 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
266, '2022-02-06', 'A+', 8071
);

/* INSERT QUERY NO: 267 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
267, '2021-04-16', 'A+', 8071
);

/* INSERT QUERY NO: 268 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
268, '2021-08-25', 'A+', 8071
);

/* INSERT QUERY NO: 269 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
269, '2021-09-18', 'A+', 8071
);

/* INSERT QUERY NO: 270 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
270, '2021-03-20', 'A+', 8071
);

/* INSERT QUERY NO: 271 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
271, '2021-03-27', 'A+', 8071
);

/* INSERT QUERY NO: 272 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
272, '2021-09-01', 'A+', 8071
);

/* INSERT QUERY NO: 273 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
273, '2021-05-14', 'A+', 8071
);

/* INSERT QUERY NO: 274 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
274, '2021-11-03', 'A+', 8071
);

/* INSERT QUERY NO: 275 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
275, '2021-07-06', 'A+', 8071
);

/* INSERT QUERY NO: 276 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
276, '2022-01-29', 'A+', 8071
);

/* INSERT QUERY NO: 277 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
277, '2022-04-13', 'A+', 8071
);

/* INSERT QUERY NO: 278 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
278, '2021-09-03', 'A+', 8071
);

/* INSERT QUERY NO: 279 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
279, '2021-08-13', 'A+', 8071
);

/* INSERT QUERY NO: 280 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
280, '2021-03-30', 'A+', 8071
);

/* INSERT QUERY NO: 281 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
281, '2021-06-24', 'A+', 8071
);

/* INSERT QUERY NO: 282 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
282, '2021-11-21', 'A+', 8071
);

/* INSERT QUERY NO: 283 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
283, '2022-04-13', 'A+', 8071
);

/* INSERT QUERY NO: 284 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
284, '2021-12-26', 'A+', 8071
);

/* INSERT QUERY NO: 285 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
285, '2022-02-25', 'A+', 8071
);

/* INSERT QUERY NO: 286 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
286, '2022-03-01', 'A+', 8071
);

/* INSERT QUERY NO: 287 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
287, '2021-08-30', 'A+', 8071
);

/* INSERT QUERY NO: 288 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
288, '2021-11-18', 'A+', 8071
);

/* INSERT QUERY NO: 289 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
289, '2021-11-06', 'A+', 8071
);

/* INSERT QUERY NO: 290 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
290, '2021-04-04', 'A+', 8071
);

/* INSERT QUERY NO: 291 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
291, '2021-04-23', 'A+', 8071
);

/* INSERT QUERY NO: 292 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
292, '2021-06-13', 'A+', 8071
);

/* INSERT QUERY NO: 293 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
293, '2021-03-20', 'A+', 8071
);

/* INSERT QUERY NO: 294 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
294, '2021-12-18', 'A+', 8071
);

/* INSERT QUERY NO: 295 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
295, '2021-10-02', 'A+', 8071
);

/* INSERT QUERY NO: 296 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
296, '2021-09-15', 'A+', 8071
);

/* INSERT QUERY NO: 297 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
297, '2021-06-04', 'A+', 8071
);

/* INSERT QUERY NO: 298 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
298, '2021-09-14', 'A+', 8071
);

/* INSERT QUERY NO: 299 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
299, '2021-10-13', 'A+', 8071
);

/* INSERT QUERY NO: 300 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
300, '2021-09-20', 'A+', 8071
);

/* INSERT QUERY NO: 301 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
301, '2021-10-17', 'A+', 8071
);

/* INSERT QUERY NO: 302 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
302, '2022-03-09', 'A+', 8071
);

/* INSERT QUERY NO: 303 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
303, '2022-02-10', 'A+', 8071
);

/* INSERT QUERY NO: 304 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
304, '2021-06-05', 'A+', 8071
);

/* INSERT QUERY NO: 305 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
305, '2022-01-18', 'A+', 8071
);

/* INSERT QUERY NO: 306 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
306, '2022-01-13', 'A+', 8071
);

/* INSERT QUERY NO: 307 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
307, '2021-08-08', 'A+', 8071
);

/* INSERT QUERY NO: 308 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
308, '2021-09-18', 'A+', 8071
);

/* INSERT QUERY NO: 309 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
309, '2021-03-17', 'A+', 8071
);

/* INSERT QUERY NO: 310 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
310, '2022-03-15', 'A+', 8071
);

/* INSERT QUERY NO: 311 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
311, '2021-11-20', 'A+', 8071
);

/* INSERT QUERY NO: 312 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
312, '2021-08-19', 'A+', 8071
);

/* INSERT QUERY NO: 313 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
313, '2021-08-03', 'A+', 8071
);

/* INSERT QUERY NO: 314 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
314, '2021-05-13', 'A+', 8071
);

/* INSERT QUERY NO: 315 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
315, '2021-12-11', 'A+', 8071
);

/* INSERT QUERY NO: 316 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
316, '2021-04-18', 'A+', 8071
);

/* INSERT QUERY NO: 317 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
317, '2021-09-21', 'A+', 8071
);

/* INSERT QUERY NO: 318 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
318, '2021-04-15', 'A+', 8071
);

/* INSERT QUERY NO: 319 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
319, '2021-03-26', 'A+', 8071
);

/* INSERT QUERY NO: 320 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
320, '2022-03-27', 'A+', 8071
);

/* INSERT QUERY NO: 321 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
321, '2021-07-27', 'A+', 8071
);

/* INSERT QUERY NO: 322 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
322, '2021-10-30', 'A+', 8071
);

/* INSERT QUERY NO: 323 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
323, '2022-02-03', 'A+', 8071
);

/* INSERT QUERY NO: 324 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
324, '2021-09-10', 'A+', 8071
);

/* INSERT QUERY NO: 325 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
325, '2022-03-24', 'A+', 8071
);

/* INSERT QUERY NO: 326 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
326, '2022-03-22', 'A+', 8071
);

/* INSERT QUERY NO: 327 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
327, '2021-09-12', 'A+', 8071
);

/* INSERT QUERY NO: 328 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
328, '2022-03-24', 'A+', 8071
);

/* INSERT QUERY NO: 329 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
329, '2021-09-23', 'A+', 8071
);

/* INSERT QUERY NO: 330 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
330, '2021-10-05', 'A+', 8071
);

/* INSERT QUERY NO: 331 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
331, '2021-12-21', 'A+', 8071
);

/* INSERT QUERY NO: 332 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
332, '2021-09-10', 'A+', 8071
);

/* INSERT QUERY NO: 333 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
333, '2021-04-20', 'A+', 8071
);

/* INSERT QUERY NO: 334 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
334, '2021-10-24', 'A+', 8071
);

/* INSERT QUERY NO: 335 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
335, '2022-02-10', 'A+', 8071
);

/* INSERT QUERY NO: 336 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
336, '2021-06-28', 'A+', 8071
);

/* INSERT QUERY NO: 337 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
337, '2021-12-06', 'A+', 8071
);

/* INSERT QUERY NO: 338 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
338, '2021-07-22', 'A+', 8071
);

/* INSERT QUERY NO: 339 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
339, '2022-02-04', 'A+', 8071
);

/* INSERT QUERY NO: 340 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
340, '2021-07-31', 'A+', 8071
);

/* INSERT QUERY NO: 341 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
341, '2021-11-09', 'A+', 8071
);

/* INSERT QUERY NO: 342 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
342, '2022-04-10', 'A+', 8071
);

/* INSERT QUERY NO: 343 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
343, '2022-01-27', 'A+', 8071
);

/* INSERT QUERY NO: 344 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
344, '2021-03-21', 'A+', 8071
);

/* INSERT QUERY NO: 345 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
345, '2021-11-26', 'A+', 8071
);

/* INSERT QUERY NO: 346 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
346, '2021-07-01', 'A+', 8071
);

/* INSERT QUERY NO: 347 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
347, '2021-06-17', 'A+', 8071
);

/* INSERT QUERY NO: 348 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
348, '2022-01-20', 'A+', 8071
);

/* INSERT QUERY NO: 349 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
349, '2021-07-14', 'A+', 8071
);

/* INSERT QUERY NO: 350 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
350, '2021-09-30', 'A+', 8071
);

/* INSERT QUERY NO: 351 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
351, '2021-08-16', 'A+', 8071
);

/* INSERT QUERY NO: 352 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
352, '2021-09-19', 'A+', 8071
);

/* INSERT QUERY NO: 353 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
353, '2021-09-03', 'A+', 8071
);

/* INSERT QUERY NO: 354 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
354, '2021-10-30', 'A+', 8071
);

/* INSERT QUERY NO: 355 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
355, '2022-03-22', 'A+', 8071
);

/* INSERT QUERY NO: 356 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
356, '2021-09-27', 'A+', 8071
);

/* INSERT QUERY NO: 357 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
357, '2022-02-23', 'A+', 8071
);

/* INSERT QUERY NO: 358 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
358, '2021-11-22', 'A+', 8071
);

/* INSERT QUERY NO: 359 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
359, '2021-05-31', 'A+', 8071
);

/* INSERT QUERY NO: 360 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
360, '2021-11-15', 'A+', 8071
);

/* INSERT QUERY NO: 361 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
361, '2021-06-24', 'A+', 8071
);

/* INSERT QUERY NO: 362 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
362, '2021-12-31', 'A+', 8071
);

/* INSERT QUERY NO: 363 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
363, '2021-05-29', 'A+', 8071
);

/* INSERT QUERY NO: 364 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
364, '2022-03-08', 'A+', 8071
);

/* INSERT QUERY NO: 365 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
365, '2021-07-16', 'A+', 8071
);

/* INSERT QUERY NO: 366 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
366, '2021-11-17', 'A+', 8071
);

/* INSERT QUERY NO: 367 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
367, '2022-03-11', 'A+', 8071
);

/* INSERT QUERY NO: 368 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
368, '2021-07-11', 'A+', 8071
);

/* INSERT QUERY NO: 369 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
369, '2021-11-01', 'A+', 8071
);

/* INSERT QUERY NO: 370 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
370, '2021-12-09', 'A+', 8071
);

/* INSERT QUERY NO: 371 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
371, '2021-05-19', 'A+', 8071
);

/* INSERT QUERY NO: 372 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
372, '2022-01-31', 'A+', 8071
);

/* INSERT QUERY NO: 373 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
373, '2022-02-19', 'A+', 8071
);

/* INSERT QUERY NO: 374 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
374, '2021-12-22', 'A-', 8071
);

/* INSERT QUERY NO: 375 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
375, '2021-06-11', 'A-', 8071
);

/* INSERT QUERY NO: 376 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
376, '2021-03-18', 'A-', 8071
);

/* INSERT QUERY NO: 377 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
377, '2021-06-13', 'A-', 8071
);

/* INSERT QUERY NO: 378 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
378, '2022-01-09', 'A-', 8071
);

/* INSERT QUERY NO: 379 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
379, '2021-12-17', 'A-', 8071
);

/* INSERT QUERY NO: 380 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
380, '2021-08-03', 'A-', 8071
);

/* INSERT QUERY NO: 381 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
381, '2021-09-22', 'A-', 8071
);

/* INSERT QUERY NO: 382 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
382, '2021-12-17', 'A-', 8071
);

/* INSERT QUERY NO: 383 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
383, '2022-04-03', 'A-', 8071
);

/* INSERT QUERY NO: 384 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
384, '2021-07-14', 'A-', 8071
);

/* INSERT QUERY NO: 385 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
385, '2022-02-08', 'A-', 8071
);

/* INSERT QUERY NO: 386 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
386, '2022-03-04', 'A-', 8071
);

/* INSERT QUERY NO: 387 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
387, '2022-03-18', 'A-', 8071
);

/* INSERT QUERY NO: 388 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
388, '2022-02-10', 'A-', 8071
);

/* INSERT QUERY NO: 389 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
389, '2021-11-26', 'AB+', 8071
);

/* INSERT QUERY NO: 390 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
390, '2021-03-19', 'AB+', 8071
);

/* INSERT QUERY NO: 391 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
391, '2022-01-12', 'AB+', 8071
);

/* INSERT QUERY NO: 392 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
392, '2022-01-11', 'AB+', 8071
);

/* INSERT QUERY NO: 393 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
393, '2021-09-19', 'AB+', 8071
);

/* INSERT QUERY NO: 394 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
394, '2021-07-31', 'AB+', 8071
);

/* INSERT QUERY NO: 395 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
395, '2021-07-20', 'AB+', 8071
);

/* INSERT QUERY NO: 396 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
396, '2021-10-06', 'AB+', 8071
);

/* INSERT QUERY NO: 397 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
397, '2022-01-02', 'AB+', 8071
);

/* INSERT QUERY NO: 398 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
398, '2021-04-19', 'AB+', 8071
);

/* INSERT QUERY NO: 399 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
399, '2021-10-22', 'AB+', 8071
);

/* INSERT QUERY NO: 400 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
400, '2022-04-14', 'AB+', 8071
);

/* INSERT QUERY NO: 401 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
401, '2021-04-24', 'AB+', 8071
);

/* INSERT QUERY NO: 402 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
402, '2021-09-23', 'AB+', 8071
);

/* INSERT QUERY NO: 403 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
403, '2021-10-16', 'AB+', 8071
);

/* INSERT QUERY NO: 404 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
404, '2021-06-05', 'AB+', 8071
);

/* INSERT QUERY NO: 405 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
405, '2021-09-03', 'AB+', 8071
);

/* INSERT QUERY NO: 406 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
406, '2021-09-12', 'AB+', 8071
);

/* INSERT QUERY NO: 407 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
407, '2021-10-03', 'AB+', 8071
);

/* INSERT QUERY NO: 408 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
408, '2022-03-25', 'AB+', 8071
);

/* INSERT QUERY NO: 409 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
409, '2022-04-02', 'AB+', 8071
);

/* INSERT QUERY NO: 410 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
410, '2021-05-08', 'AB+', 8071
);

/* INSERT QUERY NO: 411 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
411, '2022-01-22', 'AB+', 8071
);

/* INSERT QUERY NO: 412 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
412, '2021-03-04', 'AB+', 8071
);

/* INSERT QUERY NO: 413 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
413, '2021-12-29', 'AB+', 8071
);

/* INSERT QUERY NO: 414 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
414, '2021-08-15', 'AB+', 8071
);

/* INSERT QUERY NO: 415 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
415, '2021-12-27', 'AB+', 8071
);

/* INSERT QUERY NO: 416 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
416, '2021-07-10', 'AB+', 8071
);

/* INSERT QUERY NO: 417 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
417, '2022-04-12', 'AB+', 8071
);

/* INSERT QUERY NO: 418 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
418, '2021-08-21', 'AB+', 8071
);

/* INSERT QUERY NO: 419 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
419, '2022-03-14', 'AB+', 8071
);

/* INSERT QUERY NO: 420 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
420, '2022-02-28', 'AB+', 8071
);

/* INSERT QUERY NO: 421 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
421, '2021-11-26', 'AB+', 8071
);

/* INSERT QUERY NO: 422 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
422, '2021-08-26', 'AB+', 8071
);

/* INSERT QUERY NO: 423 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
423, '2022-02-17', 'AB+', 8071
);

/* INSERT QUERY NO: 424 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
424, '2021-10-31', 'AB+', 8071
);

/* INSERT QUERY NO: 425 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
425, '2021-11-03', 'AB+', 8071
);

/* INSERT QUERY NO: 426 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
426, '2022-04-21', 'AB+', 8071
);

/* INSERT QUERY NO: 427 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
427, '2022-03-24', 'AB+', 8071
);

/* INSERT QUERY NO: 428 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
428, '2022-02-02', 'AB+', 8071
);

/* INSERT QUERY NO: 429 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
429, '2022-04-07', 'AB+', 8071
);

/* INSERT QUERY NO: 430 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
430, '2022-04-16', 'AB+', 8071
);

/* INSERT QUERY NO: 431 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
431, '2022-02-26', 'AB+', 8071
);

/* INSERT QUERY NO: 432 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
432, '2021-05-03', 'AB+', 8071
);

/* INSERT QUERY NO: 433 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
433, '2021-07-25', 'AB+', 8071
);

/* INSERT QUERY NO: 434 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
434, '2022-02-12', 'AB+', 8071
);

/* INSERT QUERY NO: 435 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
435, '2021-04-14', 'AB+', 8071
);

/* INSERT QUERY NO: 436 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
436, '2021-08-03', 'AB+', 8071
);

/* INSERT QUERY NO: 437 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
437, '2021-11-13', 'AB+', 8071
);

/* INSERT QUERY NO: 438 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
438, '2022-01-27', 'AB+', 8071
);

/* INSERT QUERY NO: 439 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
439, '2022-03-02', 'AB+', 8071
);

/* INSERT QUERY NO: 440 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
440, '2021-06-27', 'AB+', 8071
);

/* INSERT QUERY NO: 441 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
441, '2021-06-25', 'AB+', 8071
);

/* INSERT QUERY NO: 442 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
442, '2022-02-20', 'AB+', 8071
);

/* INSERT QUERY NO: 443 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
443, '2021-05-04', 'AB+', 8071
);

/* INSERT QUERY NO: 444 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
444, '2021-10-07', 'AB+', 8071
);

/* INSERT QUERY NO: 445 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
445, '2022-04-17', 'AB+', 8071
);

/* INSERT QUERY NO: 446 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
446, '2021-06-13', 'AB+', 8071
);

/* INSERT QUERY NO: 447 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
447, '2022-01-22', 'AB+', 8071
);

/* INSERT QUERY NO: 448 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
448, '2021-05-18', 'AB+', 8071
);

/* INSERT QUERY NO: 449 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
449, '2022-01-03', 'AB+', 8071
);

/* INSERT QUERY NO: 450 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
450, '2022-04-15', 'AB+', 8071
);

/* INSERT QUERY NO: 451 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
451, '2021-03-17', 'AB+', 8071
);

/* INSERT QUERY NO: 452 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
452, '2021-11-16', 'AB+', 8071
);

/* INSERT QUERY NO: 453 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
453, '2021-05-25', 'AB+', 8071
);

/* INSERT QUERY NO: 454 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
454, '2021-12-22', 'AB+', 8071
);

/* INSERT QUERY NO: 455 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
455, '2021-08-23', 'AB+', 8071
);

/* INSERT QUERY NO: 456 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
456, '2022-02-25', 'AB+', 8071
);

/* INSERT QUERY NO: 457 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
457, '2022-02-19', 'AB+', 8071
);

/* INSERT QUERY NO: 458 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
458, '2021-08-31', 'AB+', 8071
);

/* INSERT QUERY NO: 459 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
459, '2021-10-05', 'AB+', 8071
);

/* INSERT QUERY NO: 460 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
460, '2021-05-07', 'AB+', 8071
);

/* INSERT QUERY NO: 461 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
461, '2021-08-23', 'AB+', 8071
);

/* INSERT QUERY NO: 462 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
462, '2021-09-01', 'AB+', 8071
);

/* INSERT QUERY NO: 463 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
463, '2021-03-24', 'AB+', 8071
);

/* INSERT QUERY NO: 464 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
464, '2021-12-24', 'AB+', 8071
);

/* INSERT QUERY NO: 465 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
465, '2021-04-21', 'AB+', 8071
);

/* INSERT QUERY NO: 466 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
466, '2021-07-10', 'AB+', 8071
);

/* INSERT QUERY NO: 467 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
467, '2021-04-27', 'AB+', 8071
);

/* INSERT QUERY NO: 468 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
468, '2021-04-02', 'AB+', 8071
);

/* INSERT QUERY NO: 469 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
469, '2021-10-31', 'AB+', 8071
);

/* INSERT QUERY NO: 470 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
470, '2021-03-30', 'AB+', 8071
);

/* INSERT QUERY NO: 471 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
471, '2021-05-19', 'AB+', 8071
);

/* INSERT QUERY NO: 472 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
472, '2021-06-14', 'AB+', 8071
);

/* INSERT QUERY NO: 473 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
473, '2021-11-27', 'AB+', 8071
);

/* INSERT QUERY NO: 474 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
474, '2022-02-22', 'AB+', 8071
);

/* INSERT QUERY NO: 475 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
475, '2021-09-29', 'AB+', 8071
);

/* INSERT QUERY NO: 476 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
476, '2021-10-07', 'AB+', 8071
);

/* INSERT QUERY NO: 477 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
477, '2022-03-20', 'AB+', 8071
);

/* INSERT QUERY NO: 478 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
478, '2021-11-11', 'AB+', 8071
);

/* INSERT QUERY NO: 479 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
479, '2022-01-27', 'AB+', 8071
);

/* INSERT QUERY NO: 480 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
480, '2022-04-13', 'AB+', 8071
);

/* INSERT QUERY NO: 481 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
481, '2021-04-01', 'AB+', 8071
);

/* INSERT QUERY NO: 482 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
482, '2021-12-23', 'AB+', 8071
);

/* INSERT QUERY NO: 483 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
483, '2022-03-04', 'AB+', 8071
);

/* INSERT QUERY NO: 484 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
484, '2022-03-15', 'AB+', 8071
);

/* INSERT QUERY NO: 485 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
485, '2021-06-09', 'AB+', 8071
);

/* INSERT QUERY NO: 486 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
486, '2021-12-17', 'AB+', 8071
);

/* INSERT QUERY NO: 487 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
487, '2022-01-25', 'AB+', 8071
);

/* INSERT QUERY NO: 488 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
488, '2021-04-26', 'AB+', 8071
);

/* INSERT QUERY NO: 489 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
489, '2022-02-27', 'AB+', 8071
);

/* INSERT QUERY NO: 490 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
490, '2022-02-13', 'AB+', 8071
);

/* INSERT QUERY NO: 491 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
491, '2022-03-07', 'AB+', 8071
);

/* INSERT QUERY NO: 492 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
492, '2021-06-17', 'AB+', 8071
);

/* INSERT QUERY NO: 493 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
493, '2021-11-11', 'AB+', 8071
);

/* INSERT QUERY NO: 494 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
494, '2021-08-15', 'AB+', 8071
);

/* INSERT QUERY NO: 495 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
495, '2021-12-05', 'AB+', 8071
);

/* INSERT QUERY NO: 496 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
496, '2021-06-17', 'AB+', 8071
);

/* INSERT QUERY NO: 497 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
497, '2021-03-18', 'AB+', 8071
);

/* INSERT QUERY NO: 498 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
498, '2022-04-09', 'AB+', 8071
);

/* INSERT QUERY NO: 499 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
499, '2021-03-20', 'AB+', 8071
);

/* INSERT QUERY NO: 500 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
500, '2021-08-03', 'AB+', 8071
);

/* INSERT QUERY NO: 501 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
501, '2021-04-07', 'AB+', 8071
);

/* INSERT QUERY NO: 502 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
502, '2021-11-12', 'AB+', 8071
);

/* INSERT QUERY NO: 503 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
503, '2021-09-10', 'AB+', 8071
);

/* INSERT QUERY NO: 504 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
504, '2021-11-10', 'AB+', 8071
);

/* INSERT QUERY NO: 505 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
505, '2021-03-11', 'AB+', 8071
);

/* INSERT QUERY NO: 506 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
506, '2021-09-21', 'AB+', 8071
);

/* INSERT QUERY NO: 507 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
507, '2022-03-29', 'AB+', 8071
);

/* INSERT QUERY NO: 508 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
508, '2021-08-08', 'AB+', 8071
);

/* INSERT QUERY NO: 509 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
509, '2021-12-22', 'AB+', 8071
);

/* INSERT QUERY NO: 510 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
510, '2021-12-02', 'AB+', 8071
);

/* INSERT QUERY NO: 511 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
511, '2022-02-04', 'AB+', 8071
);

/* INSERT QUERY NO: 512 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
512, '2022-03-31', 'AB+', 8071
);

/* INSERT QUERY NO: 513 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
513, '2021-03-01', 'AB+', 8071
);

/* INSERT QUERY NO: 514 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
514, '2021-08-31', 'AB+', 8071
);

/* INSERT QUERY NO: 515 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
515, '2021-04-28', 'AB+', 8071
);

/* INSERT QUERY NO: 516 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
516, '2021-05-15', 'AB+', 8071
);

/* INSERT QUERY NO: 517 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
517, '2022-02-14', 'AB+', 8071
);

/* INSERT QUERY NO: 518 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
518, '2021-03-15', 'AB+', 8071
);

/* INSERT QUERY NO: 519 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
519, '2021-06-19', 'AB+', 8071
);

/* INSERT QUERY NO: 520 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
520, '2021-07-03', 'AB+', 8071
);

/* INSERT QUERY NO: 521 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
521, '2021-04-08', 'AB+', 8071
);

/* INSERT QUERY NO: 522 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
522, '2021-11-14', 'AB+', 8071
);

/* INSERT QUERY NO: 523 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
523, '2021-06-24', 'AB+', 8071
);

/* INSERT QUERY NO: 524 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
524, '2022-04-01', 'AB+', 8071
);

/* INSERT QUERY NO: 525 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
525, '2021-08-06', 'AB+', 8071
);

/* INSERT QUERY NO: 526 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
526, '2021-03-03', 'AB+', 8071
);

/* INSERT QUERY NO: 527 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
527, '2022-03-14', 'AB+', 8071
);

/* INSERT QUERY NO: 528 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
528, '2022-04-01', 'AB+', 8071
);

/* INSERT QUERY NO: 529 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
529, '2021-05-11', 'AB+', 8071
);

/* INSERT QUERY NO: 530 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
530, '2021-05-16', 'AB+', 8071
);

/* INSERT QUERY NO: 531 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
531, '2021-06-14', 'AB+', 8071
);

/* INSERT QUERY NO: 532 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
532, '2022-04-23', 'AB+', 8071
);

/* INSERT QUERY NO: 533 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
533, '2021-05-13', 'AB+', 8071
);

/* INSERT QUERY NO: 534 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
534, '2022-02-11', 'AB+', 8071
);

/* INSERT QUERY NO: 535 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
535, '2022-02-20', 'AB+', 8071
);

/* INSERT QUERY NO: 536 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
536, '2022-04-25', 'AB+', 8071
);

/* INSERT QUERY NO: 537 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
537, '2021-05-15', 'AB+', 8071
);

/* INSERT QUERY NO: 538 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
538, '2021-07-30', 'AB+', 8071
);

/* INSERT QUERY NO: 539 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
539, '2022-01-27', 'AB+', 8071
);

/* INSERT QUERY NO: 540 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
540, '2021-09-12', 'AB+', 8071
);

/* INSERT QUERY NO: 541 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
541, '2022-03-17', 'AB+', 8071
);

/* INSERT QUERY NO: 542 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
542, '2021-05-16', 'AB+', 8071
);

/* INSERT QUERY NO: 543 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
543, '2021-07-22', 'AB+', 8071
);

/* INSERT QUERY NO: 544 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
544, '2022-01-01', 'AB+', 8071
);

/* INSERT QUERY NO: 545 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
545, '2021-11-20', 'AB+', 8071
);

/* INSERT QUERY NO: 546 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
546, '2021-03-06', 'AB+', 8071
);

/* INSERT QUERY NO: 547 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
547, '2021-06-11', 'AB+', 8071
);

/* INSERT QUERY NO: 548 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
548, '2022-03-30', 'AB+', 8071
);

/* INSERT QUERY NO: 549 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
549, '2021-05-04', 'AB+', 8071
);

/* INSERT QUERY NO: 550 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
550, '2021-07-03', 'AB+', 8071
);

/* INSERT QUERY NO: 551 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
551, '2021-03-03', 'AB+', 8071
);

/* INSERT QUERY NO: 552 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
552, '2021-11-02', 'AB+', 8071
);

/* INSERT QUERY NO: 553 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
553, '2021-03-07', 'AB+', 8071
);

/* INSERT QUERY NO: 554 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
554, '2021-07-21', 'AB+', 8071
);

/* INSERT QUERY NO: 555 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
555, '2021-11-21', 'AB+', 8071
);

/* INSERT QUERY NO: 556 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
556, '2021-07-10', 'AB+', 8071
);

/* INSERT QUERY NO: 557 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
557, '2021-08-02', 'AB+', 8071
);

/* INSERT QUERY NO: 558 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
558, '2022-02-21', 'AB+', 8071
);

/* INSERT QUERY NO: 559 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
559, '2021-08-27', 'AB+', 8071
);

/* INSERT QUERY NO: 560 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
560, '2021-05-23', 'AB+', 8071
);

/* INSERT QUERY NO: 561 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
561, '2022-02-09', 'AB+', 8071
);

/* INSERT QUERY NO: 562 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
562, '2021-04-20', 'AB+', 8071
);

/* INSERT QUERY NO: 563 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
563, '2022-02-01', 'AB+', 8071
);

/* INSERT QUERY NO: 564 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
564, '2022-02-14', 'AB+', 8071
);

/* INSERT QUERY NO: 565 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
565, '2022-02-19', 'AB+', 8071
);

/* INSERT QUERY NO: 566 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
566, '2021-08-05', 'AB+', 8071
);

/* INSERT QUERY NO: 567 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
567, '2021-09-05', 'AB+', 8071
);

/* INSERT QUERY NO: 568 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
568, '2022-02-03', 'AB+', 8071
);

/* INSERT QUERY NO: 569 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
569, '2021-12-26', 'AB+', 8071
);

/* INSERT QUERY NO: 570 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
570, '2022-02-11', 'AB+', 8071
);

/* INSERT QUERY NO: 571 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
571, '2021-05-25', 'AB+', 8071
);

/* INSERT QUERY NO: 572 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
572, '2021-07-13', 'AB+', 8071
);

/* INSERT QUERY NO: 573 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
573, '2022-04-19', 'AB+', 8071
);

/* INSERT QUERY NO: 574 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
574, '2021-12-07', 'AB+', 8071
);

/* INSERT QUERY NO: 575 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
575, '2021-04-04', 'AB+', 8071
);

/* INSERT QUERY NO: 576 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
576, '2022-04-14', 'AB+', 8071
);

/* INSERT QUERY NO: 577 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
577, '2021-04-07', 'AB+', 8071
);

/* INSERT QUERY NO: 578 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
578, '2021-10-03', 'AB+', 8071
);

/* INSERT QUERY NO: 579 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
579, '2021-03-31', 'AB+', 8071
);

/* INSERT QUERY NO: 580 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
580, '2021-11-20', 'AB+', 8071
);

/* INSERT QUERY NO: 581 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
581, '2022-04-20', 'AB+', 8071
);

/* INSERT QUERY NO: 582 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
582, '2021-12-24', 'AB+', 8071
);

/* INSERT QUERY NO: 583 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
583, '2021-04-30', 'AB+', 8071
);

/* INSERT QUERY NO: 584 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
584, '2022-02-24', 'AB+', 8071
);

/* INSERT QUERY NO: 585 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
585, '2021-11-05', 'AB+', 8071
);

/* INSERT QUERY NO: 586 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
586, '2022-02-07', 'AB+', 8071
);

/* INSERT QUERY NO: 587 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
587, '2021-08-18', 'AB+', 8071
);

/* INSERT QUERY NO: 588 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
588, '2022-03-19', 'AB+', 8071
);

/* INSERT QUERY NO: 589 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
589, '2021-05-20', 'AB+', 8071
);

/* INSERT QUERY NO: 590 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
590, '2021-10-03', 'AB+', 8071
);

/* INSERT QUERY NO: 591 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
591, '2021-12-04', 'AB+', 8071
);

/* INSERT QUERY NO: 592 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
592, '2021-12-16', 'AB+', 8071
);

/* INSERT QUERY NO: 593 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
593, '2021-08-02', 'AB+', 8071
);

/* INSERT QUERY NO: 594 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
594, '2021-12-16', 'AB+', 8071
);

/* INSERT QUERY NO: 595 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
595, '2021-03-19', 'AB+', 8071
);

/* INSERT QUERY NO: 596 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
596, '2021-06-13', 'AB+', 8071
);

/* INSERT QUERY NO: 597 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
597, '2022-04-08', 'AB+', 8071
);

/* INSERT QUERY NO: 598 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
598, '2021-10-02', 'AB+', 8071
);

/* INSERT QUERY NO: 599 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
599, '2021-05-23', 'AB+', 8071
);

/* INSERT QUERY NO: 600 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
600, '2021-05-20', 'AB+', 8071
);

/* INSERT QUERY NO: 601 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
601, '2021-12-16', 'AB+', 8071
);

/* INSERT QUERY NO: 602 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
602, '2022-02-19', 'AB+', 8071
);

/* INSERT QUERY NO: 603 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
603, '2021-11-30', 'AB+', 8071
);

/* INSERT QUERY NO: 604 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
604, '2021-08-04', 'AB+', 8071
);

/* INSERT QUERY NO: 605 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
605, '2021-03-22', 'AB+', 8071
);

/* INSERT QUERY NO: 606 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
606, '2022-01-21', 'AB+', 8071
);

/* INSERT QUERY NO: 607 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
607, '2021-10-31', 'AB+', 8071
);

/* INSERT QUERY NO: 608 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
608, '2021-03-08', 'AB+', 8071
);

/* INSERT QUERY NO: 609 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
609, '2022-02-11', 'AB+', 8071
);

/* INSERT QUERY NO: 610 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
610, '2021-07-10', 'AB+', 8071
);

/* INSERT QUERY NO: 611 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
611, '2021-10-25', 'AB+', 8071
);

/* INSERT QUERY NO: 612 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
612, '2021-05-29', 'AB+', 8071
);

/* INSERT QUERY NO: 613 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
613, '2022-02-18', 'AB+', 8071
);

/* INSERT QUERY NO: 614 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
614, '2021-04-24', 'AB+', 8071
);

/* INSERT QUERY NO: 615 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
615, '2021-03-24', 'AB+', 8071
);

/* INSERT QUERY NO: 616 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
616, '2021-10-24', 'AB+', 8071
);

/* INSERT QUERY NO: 617 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
617, '2022-02-25', 'AB+', 8071
);

/* INSERT QUERY NO: 618 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
618, '2021-07-01', 'AB+', 8071
);

/* INSERT QUERY NO: 619 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
619, '2021-11-30', 'AB+', 8071
);

/* INSERT QUERY NO: 620 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
620, '2022-01-13', 'AB+', 8071
);

/* INSERT QUERY NO: 621 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
621, '2021-04-21', 'AB+', 8071
);

/* INSERT QUERY NO: 622 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
622, '2021-03-08', 'AB+', 8071
);

/* INSERT QUERY NO: 623 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
623, '2022-02-05', 'AB+', 8071
);

/* INSERT QUERY NO: 624 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
624, '2022-04-18', 'AB+', 8071
);

/* INSERT QUERY NO: 625 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
625, '2022-02-24', 'AB+', 8071
);

/* INSERT QUERY NO: 626 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
626, '2021-11-14', 'AB+', 8071
);

/* INSERT QUERY NO: 627 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
627, '2021-09-02', 'AB+', 8071
);

/* INSERT QUERY NO: 628 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
628, '2021-08-03', 'AB+', 8071
);

/* INSERT QUERY NO: 629 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
629, '2022-04-09', 'AB+', 8071
);

/* INSERT QUERY NO: 630 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
630, '2021-07-02', 'AB+', 8071
);

/* INSERT QUERY NO: 631 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
631, '2022-01-26', 'AB+', 8071
);

/* INSERT QUERY NO: 632 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
632, '2021-07-21', 'AB+', 8071
);

/* INSERT QUERY NO: 633 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
633, '2021-04-24', 'AB+', 8071
);

/* INSERT QUERY NO: 634 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
634, '2021-08-28', 'AB+', 8071
);

/* INSERT QUERY NO: 635 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
635, '2021-06-17', 'AB+', 8071
);

/* INSERT QUERY NO: 636 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
636, '2021-04-27', 'AB+', 8071
);

/* INSERT QUERY NO: 637 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
637, '2021-09-09', 'AB+', 8071
);

/* INSERT QUERY NO: 638 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
638, '2021-08-17', 'AB+', 8071
);

/* INSERT QUERY NO: 639 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
639, '2021-03-17', 'AB+', 8071
);

/* INSERT QUERY NO: 640 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
640, '2021-12-16', 'AB+', 8071
);

/* INSERT QUERY NO: 641 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
641, '2021-12-02', 'AB+', 8071
);

/* INSERT QUERY NO: 642 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
642, '2021-04-15', 'AB+', 8071
);

/* INSERT QUERY NO: 643 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
643, '2021-09-26', 'AB+', 8071
);

/* INSERT QUERY NO: 644 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
644, '2021-12-23', 'AB+', 8071
);

/* INSERT QUERY NO: 645 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
645, '2021-03-09', 'AB+', 8071
);

/* INSERT QUERY NO: 646 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
646, '2022-01-03', 'AB+', 8071
);

/* INSERT QUERY NO: 647 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
647, '2021-05-25', 'AB-', 8071
);

/* INSERT QUERY NO: 648 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
648, '2022-03-27', 'AB-', 8071
);

/* INSERT QUERY NO: 649 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
649, '2021-08-12', 'AB-', 8071
);

/* INSERT QUERY NO: 650 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
650, '2021-09-22', 'AB-', 8071
);

/* INSERT QUERY NO: 651 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
651, '2021-07-09', 'AB-', 8071
);

/* INSERT QUERY NO: 652 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
652, '2021-03-12', 'AB-', 8071
);

/* INSERT QUERY NO: 653 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
653, '2022-02-07', 'AB-', 8071
);

/* INSERT QUERY NO: 654 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
654, '2022-01-21', 'AB-', 8071
);

/* INSERT QUERY NO: 655 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
655, '2021-09-12', 'AB-', 8071
);

/* INSERT QUERY NO: 656 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
656, '2021-06-30', 'AB-', 8071
);

/* INSERT QUERY NO: 657 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
657, '2021-03-10', 'AB-', 8071
);

/* INSERT QUERY NO: 658 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
658, '2021-05-10', 'AB-', 8071
);

/* INSERT QUERY NO: 659 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
659, '2021-06-25', 'AB-', 8071
);

/* INSERT QUERY NO: 660 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
660, '2022-02-03', 'AB-', 8071
);

/* INSERT QUERY NO: 661 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
661, '2022-04-02', 'AB-', 8071
);

/* INSERT QUERY NO: 662 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
662, '2021-09-13', 'AB-', 8071
);

/* INSERT QUERY NO: 663 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
663, '2021-12-23', 'AB-', 8071
);

/* INSERT QUERY NO: 664 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
664, '2022-01-13', 'O+', 8071
);

/* INSERT QUERY NO: 665 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
665, '2021-04-16', 'O+', 8071
);

/* INSERT QUERY NO: 666 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
666, '2021-06-26', 'O+', 8071
);

/* INSERT QUERY NO: 667 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
667, '2021-10-26', 'O+', 8071
);

/* INSERT QUERY NO: 668 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
668, '2021-09-29', 'O+', 8071
);

/* INSERT QUERY NO: 669 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
669, '2021-11-13', 'O+', 8071
);

/* INSERT QUERY NO: 670 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
670, '2021-09-09', 'O+', 8071
);

/* INSERT QUERY NO: 671 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
671, '2021-07-29', 'O+', 978
);

/* INSERT QUERY NO: 672 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
672, '2021-09-18', 'O+', 978
);

/* INSERT QUERY NO: 673 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
673, '2022-04-02', 'O+', 978
);

/* INSERT QUERY NO: 674 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
674, '2021-07-23', 'O+', 978
);

/* INSERT QUERY NO: 675 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
675, '2022-04-16', 'O+', 978
);

/* INSERT QUERY NO: 676 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
676, '2021-11-18', 'O+', 978
);

/* INSERT QUERY NO: 677 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
677, '2021-12-14', 'O+', 978
);

/* INSERT QUERY NO: 678 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
678, '2021-06-04', 'O+', 978
);

/* INSERT QUERY NO: 679 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
679, '2021-10-02', 'O+', 978
);

/* INSERT QUERY NO: 680 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
680, '2021-03-15', 'O+', 978
);

/* INSERT QUERY NO: 681 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
681, '2022-04-11', 'O+', 978
);

/* INSERT QUERY NO: 682 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
682, '2021-12-01', 'O+', 978
);

/* INSERT QUERY NO: 683 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
683, '2021-11-11', 'O+', 978
);

/* INSERT QUERY NO: 684 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
684, '2021-06-18', 'O+', 978
);

/* INSERT QUERY NO: 685 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
685, '2021-05-31', 'O+', 978
);

/* INSERT QUERY NO: 686 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
686, '2022-01-02', 'O+', 978
);

/* INSERT QUERY NO: 687 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
687, '2021-11-29', 'O+', 978
);

/* INSERT QUERY NO: 688 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
688, '2022-02-28', 'O+', 978
);

/* INSERT QUERY NO: 689 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
689, '2021-06-10', 'O+', 978
);

/* INSERT QUERY NO: 690 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
690, '2021-07-02', 'O+', 978
);

/* INSERT QUERY NO: 691 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
691, '2021-05-28', 'O+', 978
);

/* INSERT QUERY NO: 692 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
692, '2022-01-03', 'O+', 978
);

/* INSERT QUERY NO: 693 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
693, '2021-08-24', 'O+', 978
);

/* INSERT QUERY NO: 694 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
694, '2021-09-16', 'O+', 978
);

/* INSERT QUERY NO: 695 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
695, '2021-06-28', 'O+', 978
);

/* INSERT QUERY NO: 696 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
696, '2021-04-14', 'O+', 978
);

/* INSERT QUERY NO: 697 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
697, '2022-02-13', 'O+', 978
);

/* INSERT QUERY NO: 698 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
698, '2021-04-11', 'O+', 978
);

/* INSERT QUERY NO: 699 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
699, '2021-08-07', 'O+', 978
);

/* INSERT QUERY NO: 700 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
700, '2021-09-14', 'O+', 978
);

/* INSERT QUERY NO: 701 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
701, '2022-04-07', 'O+', 978
);

/* INSERT QUERY NO: 702 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
702, '2021-12-12', 'O+', 978
);

/* INSERT QUERY NO: 703 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
703, '2021-07-21', 'O+', 978
);

/* INSERT QUERY NO: 704 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
704, '2022-03-03', 'O+', 978
);

/* INSERT QUERY NO: 705 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
705, '2021-03-06', 'O+', 978
);

/* INSERT QUERY NO: 706 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
706, '2021-03-28', 'O+', 978
);

/* INSERT QUERY NO: 707 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
707, '2021-12-06', 'O+', 978
);

/* INSERT QUERY NO: 708 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
708, '2021-04-06', 'O+', 978
);

/* INSERT QUERY NO: 709 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
709, '2021-11-29', 'O+', 978
);

/* INSERT QUERY NO: 710 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
710, '2022-03-05', 'O+', 978
);

/* INSERT QUERY NO: 711 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
711, '2021-10-20', 'O+', 978
);

/* INSERT QUERY NO: 712 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
712, '2021-10-18', 'O+', 978
);

/* INSERT QUERY NO: 713 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
713, '2021-10-26', 'O+', 978
);

/* INSERT QUERY NO: 714 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
714, '2022-04-13', 'O+', 978
);

/* INSERT QUERY NO: 715 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
715, '2021-04-08', 'O+', 978
);

/* INSERT QUERY NO: 716 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
716, '2022-03-11', 'O+', 978
);

/* INSERT QUERY NO: 717 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
717, '2021-11-17', 'O+', 978
);

/* INSERT QUERY NO: 718 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
718, '2022-04-19', 'O+', 978
);

/* INSERT QUERY NO: 719 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
719, '2021-06-28', 'O+', 978
);

/* INSERT QUERY NO: 720 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
720, '2021-05-13', 'O+', 978
);

/* INSERT QUERY NO: 721 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
721, '2021-03-06', 'O+', 978
);

/* INSERT QUERY NO: 722 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
722, '2021-12-11', 'O+', 978
);

/* INSERT QUERY NO: 723 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
723, '2021-09-02', 'O+', 978
);

/* INSERT QUERY NO: 724 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
724, '2021-07-24', 'O+', 978
);

/* INSERT QUERY NO: 725 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
725, '2021-06-17', 'O+', 978
);

/* INSERT QUERY NO: 726 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
726, '2021-06-03', 'O+', 978
);

/* INSERT QUERY NO: 727 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
727, '2021-10-12', 'O+', 978
);

/* INSERT QUERY NO: 728 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
728, '2022-02-10', 'O+', 978
);

/* INSERT QUERY NO: 729 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
729, '2021-12-31', 'O+', 978
);

/* INSERT QUERY NO: 730 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
730, '2021-08-05', 'O+', 978
);

/* INSERT QUERY NO: 731 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
731, '2021-08-23', 'O+', 978
);

/* INSERT QUERY NO: 732 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
732, '2022-01-10', 'O+', 978
);

/* INSERT QUERY NO: 733 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
733, '2022-01-25', 'O+', 978
);

/* INSERT QUERY NO: 734 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
734, '2022-03-09', 'O+', 978
);

/* INSERT QUERY NO: 735 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
735, '2021-12-17', 'O+', 978
);

/* INSERT QUERY NO: 736 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
736, '2021-04-07', 'O+', 978
);

/* INSERT QUERY NO: 737 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
737, '2021-06-06', 'O+', 978
);

/* INSERT QUERY NO: 738 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
738, '2021-07-10', 'O+', 978
);

/* INSERT QUERY NO: 739 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
739, '2021-09-27', 'O+', 978
);

/* INSERT QUERY NO: 740 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
740, '2021-07-30', 'O+', 978
);

/* INSERT QUERY NO: 741 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
741, '2021-06-20', 'O+', 978
);

/* INSERT QUERY NO: 742 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
742, '2021-10-10', 'O+', 978
);

/* INSERT QUERY NO: 743 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
743, '2021-09-21', 'O+', 978
);

/* INSERT QUERY NO: 744 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
744, '2021-06-27', 'O+', 978
);

/* INSERT QUERY NO: 745 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
745, '2021-05-18', 'O+', 978
);

/* INSERT QUERY NO: 746 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
746, '2021-03-03', 'O+', 978
);

/* INSERT QUERY NO: 747 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
747, '2021-12-10', 'O+', 978
);

/* INSERT QUERY NO: 748 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
748, '2021-11-12', 'O+', 978
);

/* INSERT QUERY NO: 749 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
749, '2021-06-20', 'O+', 978
);

/* INSERT QUERY NO: 750 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
750, '2022-03-01', 'O+', 978
);

/* INSERT QUERY NO: 751 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
751, '2022-03-01', 'O+', 978
);

/* INSERT QUERY NO: 752 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
752, '2021-04-30', 'O+', 978
);

/* INSERT QUERY NO: 753 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
753, '2021-03-08', 'O+', 978
);

/* INSERT QUERY NO: 754 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
754, '2022-02-27', 'O+', 978
);

/* INSERT QUERY NO: 755 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
755, '2021-06-06', 'O+', 978
);

/* INSERT QUERY NO: 756 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
756, '2021-04-10', 'O+', 978
);

/* INSERT QUERY NO: 757 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
757, '2021-09-22', 'O+', 978
);

/* INSERT QUERY NO: 758 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
758, '2021-06-29', 'O+', 978
);

/* INSERT QUERY NO: 759 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
759, '2021-06-27', 'O+', 978
);

/* INSERT QUERY NO: 760 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
760, '2021-08-25', 'O+', 978
);

/* INSERT QUERY NO: 761 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
761, '2022-04-25', 'O+', 978
);

/* INSERT QUERY NO: 762 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
762, '2021-09-24', 'O+', 978
);

/* INSERT QUERY NO: 763 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
763, '2021-12-25', 'O+', 978
);

/* INSERT QUERY NO: 764 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
764, '2022-01-23', 'O+', 978
);

/* INSERT QUERY NO: 765 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
765, '2021-07-29', 'O+', 978
);

/* INSERT QUERY NO: 766 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
766, '2022-03-06', 'O+', 978
);

/* INSERT QUERY NO: 767 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
767, '2021-04-16', 'O+', 978
);

/* INSERT QUERY NO: 768 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
768, '2021-03-25', 'O+', 978
);

/* INSERT QUERY NO: 769 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
769, '2021-11-17', 'O+', 978
);

/* INSERT QUERY NO: 770 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
770, '2021-07-02', 'O+', 978
);

/* INSERT QUERY NO: 771 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
771, '2022-03-27', 'O+', 978
);

/* INSERT QUERY NO: 772 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
772, '2021-03-02', 'O+', 978
);

/* INSERT QUERY NO: 773 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
773, '2022-04-24', 'O+', 978
);

/* INSERT QUERY NO: 774 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
774, '2022-02-14', 'O+', 978
);

/* INSERT QUERY NO: 775 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
775, '2021-03-11', 'O+', 978
);

/* INSERT QUERY NO: 776 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
776, '2021-09-11', 'O+', 978
);

/* INSERT QUERY NO: 777 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
777, '2021-10-16', 'O+', 978
);

/* INSERT QUERY NO: 778 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
778, '2022-03-16', 'O+', 978
);

/* INSERT QUERY NO: 779 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
779, '2021-03-31', 'O+', 978
);

/* INSERT QUERY NO: 780 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
780, '2021-07-13', 'O+', 978
);

/* INSERT QUERY NO: 781 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
781, '2021-04-08', 'O+', 978
);

/* INSERT QUERY NO: 782 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
782, '2021-07-12', 'O+', 978
);

/* INSERT QUERY NO: 783 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
783, '2021-06-27', 'O+', 978
);

/* INSERT QUERY NO: 784 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
784, '2022-03-24', 'O+', 978
);

/* INSERT QUERY NO: 785 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
785, '2021-11-02', 'O+', 978
);

/* INSERT QUERY NO: 786 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
786, '2021-11-18', 'O+', 978
);

/* INSERT QUERY NO: 787 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
787, '2021-12-07', 'O+', 978
);

/* INSERT QUERY NO: 788 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
788, '2022-01-12', 'O+', 978
);

/* INSERT QUERY NO: 789 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
789, '2021-03-22', 'O+', 978
);

/* INSERT QUERY NO: 790 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
790, '2022-01-11', 'O+', 978
);

/* INSERT QUERY NO: 791 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
791, '2021-05-09', 'O+', 978
);

/* INSERT QUERY NO: 792 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
792, '2021-04-25', 'O+', 978
);

/* INSERT QUERY NO: 793 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
793, '2021-10-30', 'O+', 978
);

/* INSERT QUERY NO: 794 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
794, '2021-07-29', 'O+', 978
);

/* INSERT QUERY NO: 795 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
795, '2021-03-10', 'O+', 978
);

/* INSERT QUERY NO: 796 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
796, '2021-09-27', 'O+', 978
);

/* INSERT QUERY NO: 797 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
797, '2021-03-17', 'O+', 978
);

/* INSERT QUERY NO: 798 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
798, '2021-07-28', 'O+', 978
);

/* INSERT QUERY NO: 799 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
799, '2021-04-27', 'O+', 978
);

/* INSERT QUERY NO: 800 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
800, '2021-09-19', 'O+', 978
);

/* INSERT QUERY NO: 801 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
801, '2021-03-22', 'O+', 978
);

/* INSERT QUERY NO: 802 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
802, '2021-12-13', 'O+', 978
);

/* INSERT QUERY NO: 803 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
803, '2021-05-27', 'O+', 978
);

/* INSERT QUERY NO: 804 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
804, '2021-06-03', 'O+', 978
);

/* INSERT QUERY NO: 805 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
805, '2021-11-14', 'O+', 978
);

/* INSERT QUERY NO: 806 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
806, '2022-01-18', 'O+', 978
);

/* INSERT QUERY NO: 807 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
807, '2021-10-21', 'O+', 978
);

/* INSERT QUERY NO: 808 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
808, '2022-02-14', 'O+', 978
);

/* INSERT QUERY NO: 809 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
809, '2021-06-27', 'O+', 978
);

/* INSERT QUERY NO: 810 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
810, '2021-08-05', 'O+', 978
);

/* INSERT QUERY NO: 811 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
811, '2021-06-06', 'O+', 978
);

/* INSERT QUERY NO: 812 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
812, '2021-12-18', 'O+', 978
);

/* INSERT QUERY NO: 813 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
813, '2021-11-25', 'O+', 978
);

/* INSERT QUERY NO: 814 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
814, '2021-09-02', 'O+', 978
);

/* INSERT QUERY NO: 815 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
815, '2022-04-22', 'O+', 978
);

/* INSERT QUERY NO: 816 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
816, '2021-11-05', 'O+', 978
);

/* INSERT QUERY NO: 817 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
817, '2021-11-20', 'O+', 978
);

/* INSERT QUERY NO: 818 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
818, '2021-11-30', 'O-', 978
);

/* INSERT QUERY NO: 819 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
819, '2022-02-24', 'O-', 978
);

/* INSERT QUERY NO: 820 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
820, '2022-03-05', 'O-', 978
);

/* INSERT QUERY NO: 821 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
821, '2022-03-05', 'O-', 978
);

/* INSERT QUERY NO: 822 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
822, '2021-10-23', 'O-', 978
);

/* INSERT QUERY NO: 823 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
823, '2022-01-20', 'O-', 978
);

/* INSERT QUERY NO: 824 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
824, '2021-03-07', 'O-', 978
);

/* INSERT QUERY NO: 825 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
825, '2021-05-14', 'O-', 978
);

/* INSERT QUERY NO: 826 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
826, '2022-04-17', 'O-', 978
);

/* INSERT QUERY NO: 827 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
827, '2022-03-03', 'O-', 978
);

/* INSERT QUERY NO: 828 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
828, '2021-09-18', 'O-', 978
);

/* INSERT QUERY NO: 829 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
829, '2021-10-18', 'O-', 978
);

/* INSERT QUERY NO: 830 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
830, '2022-02-16', 'O-', 978
);

/* INSERT QUERY NO: 831 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
831, '2021-12-20', 'O-', 978
);

/* INSERT QUERY NO: 832 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
832, '2021-10-31', 'O-', 978
);

/* INSERT QUERY NO: 833 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
833, '2021-11-11', 'O-', 978
);

/* INSERT QUERY NO: 834 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
834, '2021-10-12', 'O-', 978
);

/* INSERT QUERY NO: 835 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
835, '2022-01-23', 'O-', 978
);

/* INSERT QUERY NO: 836 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
836, '2022-01-19', 'O-', 978
);

/* INSERT QUERY NO: 837 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
837, '2022-03-04', 'O-', 978
);

/* INSERT QUERY NO: 838 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
838, '2022-01-06', 'O-', 978
);

/* INSERT QUERY NO: 839 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
839, '2021-10-07', 'O-', 978
);

/* INSERT QUERY NO: 840 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
840, '2021-03-24', 'O-', 978
);

/* INSERT QUERY NO: 841 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
841, '2021-05-22', 'O-', 7899
);

/* INSERT QUERY NO: 842 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
842, '2021-03-12', 'O-', 7899
);

/* INSERT QUERY NO: 843 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
843, '2021-07-01', 'O-', 7899
);

/* INSERT QUERY NO: 844 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
844, '2022-01-29', 'O-', 7899
);

/* INSERT QUERY NO: 845 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
845, '2021-09-28', 'O-', 7899
);

/* INSERT QUERY NO: 846 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
846, '2021-03-22', 'O-', 7899
);

/* INSERT QUERY NO: 847 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
847, '2021-03-28', 'O-', 7899
);

/* INSERT QUERY NO: 848 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
848, '2021-09-18', 'O-', 7899
);

/* INSERT QUERY NO: 849 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
849, '2021-11-29', 'O-', 7899
);

/* INSERT QUERY NO: 850 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
850, '2021-12-24', 'O-', 7899
);

/* INSERT QUERY NO: 851 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
851, '2021-03-06', 'O-', 7899
);

/* INSERT QUERY NO: 852 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
852, '2022-03-22', 'O-', 7899
);

/* INSERT QUERY NO: 853 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
853, '2021-10-01', 'O-', 7899
);

/* INSERT QUERY NO: 854 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
854, '2022-04-11', 'O-', 7899
);

/* INSERT QUERY NO: 855 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
855, '2021-12-02', 'O-', 7899
);

/* INSERT QUERY NO: 856 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
856, '2022-04-03', 'O-', 7899
);

/* INSERT QUERY NO: 857 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
857, '2021-09-15', 'O-', 7899
);

/* INSERT QUERY NO: 858 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
858, '2022-02-11', 'O-', 7899
);

/* INSERT QUERY NO: 859 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
859, '2021-05-15', 'O-', 7899
);

/* INSERT QUERY NO: 860 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
860, '2021-04-25', 'O-', 7899
);

/* INSERT QUERY NO: 861 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
861, '2022-03-24', 'O-', 7899
);

/* INSERT QUERY NO: 862 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
862, '2021-06-14', 'O-', 7899
);

/* INSERT QUERY NO: 863 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
863, '2022-01-27', 'O-', 7899
);

/* INSERT QUERY NO: 864 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
864, '2021-09-09', 'O-', 7899
);

/* INSERT QUERY NO: 865 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
865, '2022-03-11', 'O-', 7899
);

/* INSERT QUERY NO: 866 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
866, '2022-04-20', 'O-', 7899
);

/* INSERT QUERY NO: 867 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
867, '2021-09-01', 'O-', 7899
);

/* INSERT QUERY NO: 868 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
868, '2021-06-27', 'O-', 7899
);

/* INSERT QUERY NO: 869 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
869, '2021-11-12', 'O-', 7899
);

/* INSERT QUERY NO: 870 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
870, '2022-03-31', 'O-', 7899
);

/* INSERT QUERY NO: 871 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
871, '2022-02-12', 'O-', 7899
);

/* INSERT QUERY NO: 872 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
872, '2021-11-14', 'O-', 7899
);

/* INSERT QUERY NO: 873 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
873, '2021-05-05', 'O-', 7899
);

/* INSERT QUERY NO: 874 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
874, '2022-03-19', 'O-', 7899
);

/* INSERT QUERY NO: 875 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
875, '2021-03-07', 'O-', 7899
);

/* INSERT QUERY NO: 876 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
876, '2021-08-11', 'O-', 7899
);

/* INSERT QUERY NO: 877 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
877, '2021-03-26', 'O-', 7899
);

/* INSERT QUERY NO: 878 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
878, '2022-04-18', 'O-', 7899
);

/* INSERT QUERY NO: 879 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
879, '2021-07-13', 'O-', 7899
);

/* INSERT QUERY NO: 880 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
880, '2022-04-04', 'O-', 7899
);

/* INSERT QUERY NO: 881 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
881, '2021-10-15', 'O-', 7899
);

/* INSERT QUERY NO: 882 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
882, '2021-03-31', 'O-', 7899
);

/* INSERT QUERY NO: 883 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
883, '2021-09-06', 'O-', 7899
);

/* INSERT QUERY NO: 884 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
884, '2021-06-30', 'O-', 7899
);

/* INSERT QUERY NO: 885 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
885, '2021-04-10', 'O-', 7899
);

/* INSERT QUERY NO: 886 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
886, '2021-03-02', 'O-', 7899
);

/* INSERT QUERY NO: 887 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
887, '2021-08-17', 'O-', 7899
);

/* INSERT QUERY NO: 888 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
888, '2022-03-17', 'O-', 7899
);

/* INSERT QUERY NO: 889 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
889, '2021-04-05', 'O-', 7899
);

/* INSERT QUERY NO: 890 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
890, '2022-04-12', 'O-', 7899
);

/* INSERT QUERY NO: 891 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
891, '2021-03-11', 'O-', 7899
);

/* INSERT QUERY NO: 892 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
892, '2021-07-11', 'O-', 7899
);

/* INSERT QUERY NO: 893 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
893, '2022-04-11', 'O-', 7899
);

/* INSERT QUERY NO: 894 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
894, '2021-09-08', 'O-', 7899
);

/* INSERT QUERY NO: 895 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
895, '2022-03-30', 'O-', 7899
);

/* INSERT QUERY NO: 896 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
896, '2021-12-03', 'O-', 7899
);

/* INSERT QUERY NO: 897 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
897, '2021-03-17', 'O-', 7899
);

/* INSERT QUERY NO: 898 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
898, '2022-04-08', 'O-', 7899
);

/* INSERT QUERY NO: 899 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
899, '2021-10-03', 'O-', 7899
);

/* INSERT QUERY NO: 900 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
900, '2021-05-03', 'O-', 7899
);

/* INSERT QUERY NO: 901 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
901, '2022-03-12', 'B+', 7899
);

/* INSERT QUERY NO: 902 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
902, '2021-03-12', 'B+', 7899
);

/* INSERT QUERY NO: 903 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
903, '2021-04-03', 'B+', 7899
);

/* INSERT QUERY NO: 904 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
904, '2021-03-07', 'B+', 7899
);

/* INSERT QUERY NO: 905 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
905, '2021-08-07', 'B+', 7899
);

/* INSERT QUERY NO: 906 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
906, '2021-09-09', 'B+', 7899
);

/* INSERT QUERY NO: 907 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
907, '2022-02-11', 'B+', 7899
);

/* INSERT QUERY NO: 908 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
908, '2021-12-18', 'B+', 7899
);

/* INSERT QUERY NO: 909 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
909, '2021-09-23', 'B+', 7899
);

/* INSERT QUERY NO: 910 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
910, '2022-04-17', 'B+', 7899
);

/* INSERT QUERY NO: 911 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
911, '2021-06-18', 'B+', 7899
);

/* INSERT QUERY NO: 912 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
912, '2021-05-27', 'B+', 7899
);

/* INSERT QUERY NO: 913 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
913, '2021-09-21', 'B+', 7899
);

/* INSERT QUERY NO: 914 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
914, '2022-03-13', 'B+', 7899
);

/* INSERT QUERY NO: 915 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
915, '2022-04-20', 'B+', 7899
);

/* INSERT QUERY NO: 916 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
916, '2022-02-09', 'B+', 7899
);

/* INSERT QUERY NO: 917 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
917, '2022-02-16', 'B+', 7899
);

/* INSERT QUERY NO: 918 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
918, '2022-02-09', 'B+', 7899
);

/* INSERT QUERY NO: 919 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
919, '2021-09-10', 'B+', 7899
);

/* INSERT QUERY NO: 920 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
920, '2021-11-13', 'B+', 7899
);

/* INSERT QUERY NO: 921 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
921, '2021-09-02', 'B+', 6609
);

/* INSERT QUERY NO: 922 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
922, '2021-04-20', 'B+', 6609
);

/* INSERT QUERY NO: 923 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
923, '2021-12-21', 'B+', 6609
);

/* INSERT QUERY NO: 924 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
924, '2021-08-30', 'B+', 6609
);

/* INSERT QUERY NO: 925 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
925, '2021-11-16', 'B+', 6609
);

/* INSERT QUERY NO: 926 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
926, '2021-09-07', 'B+', 6609
);

/* INSERT QUERY NO: 927 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
927, '2022-01-16', 'B+', 6609
);

/* INSERT QUERY NO: 928 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
928, '2022-03-17', 'B+', 6609
);

/* INSERT QUERY NO: 929 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
929, '2021-03-06', 'B+', 6609
);

/* INSERT QUERY NO: 930 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
930, '2021-08-02', 'B+', 6609
);

/* INSERT QUERY NO: 931 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
931, '2022-03-14', 'B+', 6609
);

/* INSERT QUERY NO: 932 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
932, '2021-04-24', 'B+', 6609
);

/* INSERT QUERY NO: 933 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
933, '2022-03-20', 'B+', 6609
);

/* INSERT QUERY NO: 934 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
934, '2021-11-09', 'B+', 6609
);

/* INSERT QUERY NO: 935 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
935, '2021-12-24', 'B+', 6609
);

/* INSERT QUERY NO: 936 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
936, '2022-03-17', 'B+', 6609
);

/* INSERT QUERY NO: 937 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
937, '2021-08-11', 'B+', 6609
);

/* INSERT QUERY NO: 938 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
938, '2021-07-22', 'B+', 6609
);

/* INSERT QUERY NO: 939 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
939, '2022-01-28', 'B+', 6609
);

/* INSERT QUERY NO: 940 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
940, '2021-03-22', 'B+', 6609
);

/* INSERT QUERY NO: 941 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
941, '2021-09-19', 'B+', 6609
);

/* INSERT QUERY NO: 942 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
942, '2021-04-10', 'B+', 6609
);

/* INSERT QUERY NO: 943 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
943, '2022-01-22', 'B+', 6609
);

/* INSERT QUERY NO: 944 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
944, '2022-03-14', 'B-', 6609
);

/* INSERT QUERY NO: 945 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
945, '2021-06-12', 'B-', 6609
);

/* INSERT QUERY NO: 946 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
946, '2021-04-26', 'B-', 6609
);

/* INSERT QUERY NO: 947 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
947, '2021-09-14', 'B-', 6609
);

/* INSERT QUERY NO: 948 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
948, '2021-07-26', 'B-', 6609
);

/* INSERT QUERY NO: 949 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
949, '2021-04-21', 'B-', 6609
);

/* INSERT QUERY NO: 950 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
950, '2022-03-25', 'B-', 6609
);

/* INSERT QUERY NO: 951 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
951, '2021-10-07', 'B-', 6609
);

/* INSERT QUERY NO: 952 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
952, '2022-03-12', 'B-', 6609
);

/* INSERT QUERY NO: 953 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
953, '2021-06-24', 'B-', 6609
);

/* INSERT QUERY NO: 954 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
954, '2021-08-05', 'B-', 6609
);

/* INSERT QUERY NO: 955 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
955, '2021-10-10', 'B-', 6609
);

/* INSERT QUERY NO: 956 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
956, '2021-03-18', 'B-', 6609
);

/* INSERT QUERY NO: 957 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
957, '2022-01-30', 'B-', 6609
);

/* INSERT QUERY NO: 958 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
958, '2021-03-18', 'B-', 6609
);

/* INSERT QUERY NO: 959 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
959, '2021-11-08', 'B-', 6609
);

/* INSERT QUERY NO: 960 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
960, '2021-04-08', 'B-', 6609
);

/* INSERT QUERY NO: 961 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
961, '2021-07-29', 'B-', 6609
);

/* INSERT QUERY NO: 962 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
962, '2021-08-07', 'B-', 6609
);

/* INSERT QUERY NO: 963 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
963, '2021-05-03', 'B-', 6609
);

/* INSERT QUERY NO: 964 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
964, '2021-11-27', 'B-', 6609
);

/* INSERT QUERY NO: 965 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
965, '2022-01-18', 'B-', 6609
);

/* INSERT QUERY NO: 966 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
966, '2021-05-18', 'B-', 6609
);

/* INSERT QUERY NO: 967 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
967, '2021-06-10', 'B-', 6609
);

/* INSERT QUERY NO: 968 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
968, '2022-01-11', 'B-', 6609
);

/* INSERT QUERY NO: 969 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
969, '2022-01-15', 'B-', 6609
);

/* INSERT QUERY NO: 970 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
970, '2021-08-23', 'B-', 6609
);

/* INSERT QUERY NO: 971 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
971, '2021-05-27', 'B-', 6609
);

/* INSERT QUERY NO: 972 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
972, '2021-07-27', 'B-', 6609
);

/* INSERT QUERY NO: 973 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
973, '2021-10-10', 'B-', 6609
);

/* INSERT QUERY NO: 974 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
974, '2021-07-23', 'B-', 6609
);

/* INSERT QUERY NO: 975 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
975, '2021-12-14', 'B-', 6609
);

/* INSERT QUERY NO: 976 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
976, '2021-04-28', 'B-', 6609
);

/* INSERT QUERY NO: 977 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
977, '2021-03-26', 'B-', 6609
);

/* INSERT QUERY NO: 978 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
978, '2021-10-31', 'B-', 6609
);

/* INSERT QUERY NO: 979 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
979, '2021-10-30', 'B-', 6609
);

/* INSERT QUERY NO: 980 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
980, '2021-03-19', 'B-', 6609
);

/* INSERT QUERY NO: 981 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
981, '2021-06-22', 'B-', 6609
);

/* INSERT QUERY NO: 982 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
982, '2022-04-27', 'B-', 6609
);

/* INSERT QUERY NO: 983 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
983, '2022-04-17', 'B-', 6609
);

/* INSERT QUERY NO: 984 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
984, '2021-06-01', 'B-', 6609
);

/* INSERT QUERY NO: 985 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
985, '2021-03-16', 'B-', 6609
);

/* INSERT QUERY NO: 986 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
986, '2021-07-27', 'B-', 6609
);

/* INSERT QUERY NO: 987 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
987, '2021-05-31', 'B-', 6609
);

/* INSERT QUERY NO: 988 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
988, '2021-06-27', 'B-', 6609
);

/* INSERT QUERY NO: 989 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
989, '2022-02-14', 'B-', 6609
);

/* INSERT QUERY NO: 990 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
990, '2021-03-16', 'B-', 6609
);

/* INSERT QUERY NO: 991 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
991, '2022-03-22', 'B-', 6609
);

/* INSERT QUERY NO: 992 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
992, '2021-08-03', 'B-', 6609
);

/* INSERT QUERY NO: 993 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
993, '2022-01-31', 'B-', 6609
);

/* INSERT QUERY NO: 994 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
994, '2021-06-28', 'B-', 6609
);

/* INSERT QUERY NO: 995 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
995, '2021-06-12', 'B-', 6609
);

/* INSERT QUERY NO: 996 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
996, '2021-04-18', 'B-', 6609
);

/* INSERT QUERY NO: 997 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
997, '2021-04-03', 'B-', 6609
);

/* INSERT QUERY NO: 998 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
998, '2021-06-21', 'B-', 6609
);

/* INSERT QUERY NO: 999 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
999, '2022-02-01', 'B-', 6609
);

/* INSERT QUERY NO: 1000 */
INSERT INTO BLOOD_UNIT(uCode, putInDate, type, sCode)
VALUES
(
1000, '2022-01-29', 'B-', 6609
);



/* INSERT QUERY NO: 1 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1594, 6857
);

/* INSERT QUERY NO: 2 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7192, 8700
);

/* INSERT QUERY NO: 3 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8071, 2883
);

/* INSERT QUERY NO: 4 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
978, 6589
);

/* INSERT QUERY NO: 5 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7899, 6685
);

/* INSERT QUERY NO: 6 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6609, 12
);

/* INSERT QUERY NO: 7 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1553, 7641
);

/* INSERT QUERY NO: 8 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2316, 1218
);

/* INSERT QUERY NO: 9 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7029, 7250
);

/* INSERT QUERY NO: 10 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6838, 8621
);

/* INSERT QUERY NO: 11 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5137, 2588
);

/* INSERT QUERY NO: 12 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1250, 4931
);

/* INSERT QUERY NO: 13 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3680, 5104
);

/* INSERT QUERY NO: 14 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2048, 2709
);

/* INSERT QUERY NO: 15 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5195, 6898
);

/* INSERT QUERY NO: 16 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4408, 6982
);

/* INSERT QUERY NO: 17 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8608, 7281
);

/* INSERT QUERY NO: 18 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8993, 6599
);

/* INSERT QUERY NO: 19 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4064, 2469
);

/* INSERT QUERY NO: 20 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6616, 5413
);

/* INSERT QUERY NO: 21 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8783, 5706
);

/* INSERT QUERY NO: 22 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4070, 5969
);

/* INSERT QUERY NO: 23 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8638, 5704
);

/* INSERT QUERY NO: 24 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3872, 1860
);

/* INSERT QUERY NO: 25 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7694, 7929
);

/* INSERT QUERY NO: 26 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3466, 7102
);

/* INSERT QUERY NO: 27 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
386, 4025
);

/* INSERT QUERY NO: 28 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4244, 848
);

/* INSERT QUERY NO: 29 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2516, 7775
);

/* INSERT QUERY NO: 30 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7810, 8967
);

/* INSERT QUERY NO: 31 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6669, 466
);

/* INSERT QUERY NO: 32 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6797, 4342
);

/* INSERT QUERY NO: 33 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6457, 643
);

/* INSERT QUERY NO: 34 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3213, 2354
);

/* INSERT QUERY NO: 35 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6316, 6759
);

/* INSERT QUERY NO: 36 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4262, 779
);

/* INSERT QUERY NO: 37 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8100, 5935
);

/* INSERT QUERY NO: 38 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2696, 5180
);

/* INSERT QUERY NO: 39 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8132, 8571
);

/* INSERT QUERY NO: 40 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3140, 1192
);

/* INSERT QUERY NO: 41 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1409, 4673
);

/* INSERT QUERY NO: 42 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4410, 6115
);

/* INSERT QUERY NO: 43 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6905, 4325
);

/* INSERT QUERY NO: 44 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
363, 4662
);

/* INSERT QUERY NO: 45 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3363, 5093
);

/* INSERT QUERY NO: 46 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5039, 1097
);

/* INSERT QUERY NO: 47 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7407, 5655
);

/* INSERT QUERY NO: 48 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6775, 1189
);

/* INSERT QUERY NO: 49 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2457, 5252
);

/* INSERT QUERY NO: 50 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7742, 5841
);

/* INSERT QUERY NO: 51 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
450, 6607
);

/* INSERT QUERY NO: 52 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7744, 879
);

/* INSERT QUERY NO: 53 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7570, 8878
);

/* INSERT QUERY NO: 54 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3084, 4534
);

/* INSERT QUERY NO: 55 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1296, 2907
);

/* INSERT QUERY NO: 56 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3877, 6179
);

/* INSERT QUERY NO: 57 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
526, 6881
);

/* INSERT QUERY NO: 58 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4870, 2903
);

/* INSERT QUERY NO: 59 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7343, 4570
);

/* INSERT QUERY NO: 60 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1304, 3735
);

/* INSERT QUERY NO: 61 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4251, 1962
);

/* INSERT QUERY NO: 62 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2295, 5043
);

/* INSERT QUERY NO: 63 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2740, 6669
);

/* INSERT QUERY NO: 64 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6892, 5671
);

/* INSERT QUERY NO: 65 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5318, 8035
);

/* INSERT QUERY NO: 66 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6160, 8315
);

/* INSERT QUERY NO: 67 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2263, 5833
);

/* INSERT QUERY NO: 68 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5562, 7516
);

/* INSERT QUERY NO: 69 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
192, 5492
);

/* INSERT QUERY NO: 70 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8012, 8971
);

/* INSERT QUERY NO: 71 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2218, 694
);

/* INSERT QUERY NO: 72 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6064, 1854
);

/* INSERT QUERY NO: 73 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1779, 3459
);

/* INSERT QUERY NO: 74 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3763, 6302
);

/* INSERT QUERY NO: 75 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6708, 7175
);

/* INSERT QUERY NO: 76 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
435, 4491
);

/* INSERT QUERY NO: 77 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5844, 2899
);

/* INSERT QUERY NO: 78 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5355, 4609
);

/* INSERT QUERY NO: 79 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8572, 4849
);

/* INSERT QUERY NO: 80 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6891, 6700
);

/* INSERT QUERY NO: 81 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5384, 2981
);

/* INSERT QUERY NO: 82 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3000, 8963
);

/* INSERT QUERY NO: 83 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2133, 3573
);

/* INSERT QUERY NO: 84 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3352, 6665
);

/* INSERT QUERY NO: 85 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7974, 8705
);

/* INSERT QUERY NO: 86 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8997, 4387
);

/* INSERT QUERY NO: 87 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8804, 5521
);

/* INSERT QUERY NO: 88 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8892, 475
);

/* INSERT QUERY NO: 89 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3887, 1705
);

/* INSERT QUERY NO: 90 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7563, 3707
);

/* INSERT QUERY NO: 91 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5866, 5259
);

/* INSERT QUERY NO: 92 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7468, 3985
);

/* INSERT QUERY NO: 93 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6710, 2350
);

/* INSERT QUERY NO: 94 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2513, 7691
);

/* INSERT QUERY NO: 95 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1130, 4853
);

/* INSERT QUERY NO: 96 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7765, 7169
);

/* INSERT QUERY NO: 97 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1966, 6842
);

/* INSERT QUERY NO: 98 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8833, 6289
);

/* INSERT QUERY NO: 99 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3144, 7412
);

/* INSERT QUERY NO: 100 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7890, 3676
);

/* INSERT QUERY NO: 101 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5313, 5232
);

/* INSERT QUERY NO: 102 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5994, 8140
);

/* INSERT QUERY NO: 103 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
32, 2750
);

/* INSERT QUERY NO: 104 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
691, 6138
);

/* INSERT QUERY NO: 105 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7127, 2177
);

/* INSERT QUERY NO: 106 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3103, 367
);

/* INSERT QUERY NO: 107 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
241, 2656
);

/* INSERT QUERY NO: 108 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2902, 849
);

/* INSERT QUERY NO: 109 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4881, 151
);

/* INSERT QUERY NO: 110 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
883, 3378
);

/* INSERT QUERY NO: 111 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7702, 6500
);

/* INSERT QUERY NO: 112 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4627, 2475
);

/* INSERT QUERY NO: 113 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
110, 3190
);

/* INSERT QUERY NO: 114 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6292, 4789
);

/* INSERT QUERY NO: 115 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5438, 3373
);

/* INSERT QUERY NO: 116 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3620, 6531
);

/* INSERT QUERY NO: 117 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5485, 5673
);

/* INSERT QUERY NO: 118 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8373, 6752
);

/* INSERT QUERY NO: 119 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
762, 1598
);

/* INSERT QUERY NO: 120 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7795, 4421
);

/* INSERT QUERY NO: 121 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5408, 6309
);

/* INSERT QUERY NO: 122 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5720, 3563
);

/* INSERT QUERY NO: 123 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1542, 1612
);

/* INSERT QUERY NO: 124 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2370, 76
);

/* INSERT QUERY NO: 125 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6245, 5624
);

/* INSERT QUERY NO: 126 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1896, 7423
);

/* INSERT QUERY NO: 127 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2950, 24
);

/* INSERT QUERY NO: 128 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4365, 837
);

/* INSERT QUERY NO: 129 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8861, 1302
);

/* INSERT QUERY NO: 130 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6073, 3639
);

/* INSERT QUERY NO: 131 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4261, 5159
);

/* INSERT QUERY NO: 132 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3182, 4203
);

/* INSERT QUERY NO: 133 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
641, 6606
);

/* INSERT QUERY NO: 134 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8401, 3212
);

/* INSERT QUERY NO: 135 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3132, 785
);

/* INSERT QUERY NO: 136 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7964, 174
);

/* INSERT QUERY NO: 137 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4618, 4683
);

/* INSERT QUERY NO: 138 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1943, 3329
);

/* INSERT QUERY NO: 139 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5065, 7448
);

/* INSERT QUERY NO: 140 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2735, 1296
);

/* INSERT QUERY NO: 141 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5584, 738
);

/* INSERT QUERY NO: 142 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7880, 5777
);

/* INSERT QUERY NO: 143 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7027, 3238
);

/* INSERT QUERY NO: 144 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2383, 6486
);

/* INSERT QUERY NO: 145 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1552, 1596
);

/* INSERT QUERY NO: 146 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1142, 1048
);

/* INSERT QUERY NO: 147 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5877, 4146
);

/* INSERT QUERY NO: 148 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5188, 5324
);

/* INSERT QUERY NO: 149 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3322, 7567
);

/* INSERT QUERY NO: 150 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4142, 554
);

/* INSERT QUERY NO: 151 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6299, 7291
);

/* INSERT QUERY NO: 152 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7654, 8726
);

/* INSERT QUERY NO: 153 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7803, 2096
);

/* INSERT QUERY NO: 154 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7152, 1521
);

/* INSERT QUERY NO: 155 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5389, 7056
);

/* INSERT QUERY NO: 156 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
134, 4856
);

/* INSERT QUERY NO: 157 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3318, 2584
);

/* INSERT QUERY NO: 158 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4992, 1373
);

/* INSERT QUERY NO: 159 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7774, 4650
);

/* INSERT QUERY NO: 160 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6296, 6472
);

/* INSERT QUERY NO: 161 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6168, 3548
);

/* INSERT QUERY NO: 162 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8138, 2262
);

/* INSERT QUERY NO: 163 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1460, 8178
);

/* INSERT QUERY NO: 164 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8101, 297
);

/* INSERT QUERY NO: 165 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4701, 3482
);

/* INSERT QUERY NO: 166 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4447, 5500
);

/* INSERT QUERY NO: 167 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5668, 8079
);

/* INSERT QUERY NO: 168 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6802, 8617
);

/* INSERT QUERY NO: 169 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2228, 7535
);

/* INSERT QUERY NO: 170 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2439, 1434
);

/* INSERT QUERY NO: 171 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1777, 8360
);

/* INSERT QUERY NO: 172 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6420, 1087
);

/* INSERT QUERY NO: 173 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5422, 128
);

/* INSERT QUERY NO: 174 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6987, 7125
);

/* INSERT QUERY NO: 175 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8063, 4266
);

/* INSERT QUERY NO: 176 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
370, 3394
);

/* INSERT QUERY NO: 177 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4147, 6755
);

/* INSERT QUERY NO: 178 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3309, 6621
);

/* INSERT QUERY NO: 179 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8191, 3138
);

/* INSERT QUERY NO: 180 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8359, 5937
);

/* INSERT QUERY NO: 181 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3350, 8166
);

/* INSERT QUERY NO: 182 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4516, 5429
);

/* INSERT QUERY NO: 183 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2866, 8470
);

/* INSERT QUERY NO: 184 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2090, 597
);

/* INSERT QUERY NO: 185 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4631, 984
);

/* INSERT QUERY NO: 186 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3882, 2501
);

/* INSERT QUERY NO: 187 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1101, 6297
);

/* INSERT QUERY NO: 188 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
853, 1140
);

/* INSERT QUERY NO: 189 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7379, 3331
);

/* INSERT QUERY NO: 190 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5698, 768
);

/* INSERT QUERY NO: 191 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7868, 1581
);

/* INSERT QUERY NO: 192 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6204, 7975
);

/* INSERT QUERY NO: 193 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8984, 3801
);

/* INSERT QUERY NO: 194 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
796, 7387
);

/* INSERT QUERY NO: 195 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8454, 8706
);

/* INSERT QUERY NO: 196 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3441, 2812
);

/* INSERT QUERY NO: 197 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4377, 7619
);

/* INSERT QUERY NO: 198 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1117, 8220
);

/* INSERT QUERY NO: 199 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6238, 5111
);

/* INSERT QUERY NO: 200 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6274, 2466
);

/* INSERT QUERY NO: 201 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5406, 1518
);

/* INSERT QUERY NO: 202 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3329, 1984
);

/* INSERT QUERY NO: 203 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6259, 5652
);

/* INSERT QUERY NO: 204 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5953, 1424
);

/* INSERT QUERY NO: 205 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3405, 6350
);

/* INSERT QUERY NO: 206 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8528, 857
);

/* INSERT QUERY NO: 207 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8136, 3146
);

/* INSERT QUERY NO: 208 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8051, 6384
);

/* INSERT QUERY NO: 209 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6260, 7492
);

/* INSERT QUERY NO: 210 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7872, 3863
);

/* INSERT QUERY NO: 211 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4817, 4506
);

/* INSERT QUERY NO: 212 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6745, 8672
);

/* INSERT QUERY NO: 213 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6376, 7476
);

/* INSERT QUERY NO: 214 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1331, 7626
);

/* INSERT QUERY NO: 215 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4711, 7473
);

/* INSERT QUERY NO: 216 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
432, 224
);

/* INSERT QUERY NO: 217 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4328, 3737
);

/* INSERT QUERY NO: 218 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
531, 6883
);

/* INSERT QUERY NO: 219 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8778, 878
);

/* INSERT QUERY NO: 220 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
819, 1810
);

/* INSERT QUERY NO: 221 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8750, 701
);

/* INSERT QUERY NO: 222 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4715, 5194
);

/* INSERT QUERY NO: 223 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2289, 4109
);

/* INSERT QUERY NO: 224 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
119, 2329
);

/* INSERT QUERY NO: 225 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1499, 2102
);

/* INSERT QUERY NO: 226 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3570, 2584
);

/* INSERT QUERY NO: 227 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8729, 1373
);

/* INSERT QUERY NO: 228 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1590, 4650
);

/* INSERT QUERY NO: 229 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2898, 6472
);

/* INSERT QUERY NO: 230 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
84, 3548
);

/* INSERT QUERY NO: 231 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1373, 2262
);

/* INSERT QUERY NO: 232 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5879, 8178
);

/* INSERT QUERY NO: 233 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3537, 297
);

/* INSERT QUERY NO: 234 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2231, 3482
);

/* INSERT QUERY NO: 235 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1570, 5500
);

/* INSERT QUERY NO: 236 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3254, 8079
);

/* INSERT QUERY NO: 237 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5655, 8617
);

/* INSERT QUERY NO: 238 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1289, 7535
);

/* INSERT QUERY NO: 239 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8852, 1434
);

/* INSERT QUERY NO: 240 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5936, 8360
);

/* INSERT QUERY NO: 241 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1653, 1087
);

/* INSERT QUERY NO: 242 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5849, 128
);

/* INSERT QUERY NO: 243 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
760, 7125
);

/* INSERT QUERY NO: 244 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
599, 4266
);

/* INSERT QUERY NO: 245 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7605, 3394
);

/* INSERT QUERY NO: 246 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4739, 6755
);

/* INSERT QUERY NO: 247 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8589, 6621
);

/* INSERT QUERY NO: 248 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3613, 3138
);

/* INSERT QUERY NO: 249 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5546, 5937
);

/* INSERT QUERY NO: 250 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4106, 8166
);

/* INSERT QUERY NO: 251 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
261, 5429
);

/* INSERT QUERY NO: 252 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
508, 8470
);

/* INSERT QUERY NO: 253 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3295, 597
);

/* INSERT QUERY NO: 254 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7634, 984
);

/* INSERT QUERY NO: 255 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1466, 2501
);

/* INSERT QUERY NO: 256 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2034, 6297
);

/* INSERT QUERY NO: 257 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3659, 1140
);

/* INSERT QUERY NO: 258 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
322, 3331
);

/* INSERT QUERY NO: 259 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4727, 768
);

/* INSERT QUERY NO: 260 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5530, 1581
);

/* INSERT QUERY NO: 261 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5549, 7975
);

/* INSERT QUERY NO: 262 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
696, 3801
);

/* INSERT QUERY NO: 263 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7577, 7387
);

/* INSERT QUERY NO: 264 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5558, 8706
);

/* INSERT QUERY NO: 265 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3576, 2812
);

/* INSERT QUERY NO: 266 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1389, 7619
);

/* INSERT QUERY NO: 267 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2984, 8220
);

/* INSERT QUERY NO: 268 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6620, 5111
);

/* INSERT QUERY NO: 269 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2392, 2466
);

/* INSERT QUERY NO: 270 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2017, 1518
);

/* INSERT QUERY NO: 271 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4932, 1984
);

/* INSERT QUERY NO: 272 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4991, 5652
);

/* INSERT QUERY NO: 273 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4486, 1424
);

/* INSERT QUERY NO: 274 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4156, 6350
);

/* INSERT QUERY NO: 275 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
936, 857
);

/* INSERT QUERY NO: 276 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5888, 3146
);

/* INSERT QUERY NO: 277 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3015, 6384
);

/* INSERT QUERY NO: 278 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
499, 7492
);

/* INSERT QUERY NO: 279 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5708, 3863
);

/* INSERT QUERY NO: 280 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5472, 4506
);

/* INSERT QUERY NO: 281 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2308, 8672
);

/* INSERT QUERY NO: 282 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5405, 7476
);

/* INSERT QUERY NO: 283 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7088, 7626
);

/* INSERT QUERY NO: 284 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3238, 7473
);

/* INSERT QUERY NO: 285 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5700, 224
);

/* INSERT QUERY NO: 286 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2430, 3737
);

/* INSERT QUERY NO: 287 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1102, 6883
);

/* INSERT QUERY NO: 288 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8135, 878
);

/* INSERT QUERY NO: 289 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7965, 1810
);

/* INSERT QUERY NO: 290 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2617, 701
);

/* INSERT QUERY NO: 291 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5324, 5194
);

/* INSERT QUERY NO: 292 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4576, 4109
);

/* INSERT QUERY NO: 293 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8125, 2329
);

/* INSERT QUERY NO: 294 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1372, 2102
);

/* INSERT QUERY NO: 295 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5968, 2584
);

/* INSERT QUERY NO: 296 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3538, 1373
);

/* INSERT QUERY NO: 297 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
596, 4650
);

/* INSERT QUERY NO: 298 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2466, 6472
);

/* INSERT QUERY NO: 299 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3220, 3548
);

/* INSERT QUERY NO: 300 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2360, 2262
);

/* INSERT QUERY NO: 301 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2890, 8178
);

/* INSERT QUERY NO: 302 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
954, 297
);

/* INSERT QUERY NO: 303 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6041, 3482
);

/* INSERT QUERY NO: 304 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6645, 5500
);

/* INSERT QUERY NO: 305 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7521, 8079
);

/* INSERT QUERY NO: 306 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6349, 8617
);

/* INSERT QUERY NO: 307 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1325, 7535
);

/* INSERT QUERY NO: 308 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1062, 1434
);

/* INSERT QUERY NO: 309 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1610, 8360
);

/* INSERT QUERY NO: 310 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3970, 1087
);

/* INSERT QUERY NO: 311 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6115, 128
);

/* INSERT QUERY NO: 312 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1167, 7125
);

/* INSERT QUERY NO: 313 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1437, 4266
);

/* INSERT QUERY NO: 314 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1593, 3394
);

/* INSERT QUERY NO: 315 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1012, 6755
);

/* INSERT QUERY NO: 316 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2385, 6621
);

/* INSERT QUERY NO: 317 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6598, 3138
);

/* INSERT QUERY NO: 318 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7928, 5937
);

/* INSERT QUERY NO: 319 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2384, 8166
);

/* INSERT QUERY NO: 320 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5748, 5429
);

/* INSERT QUERY NO: 321 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8431, 8470
);

/* INSERT QUERY NO: 322 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2389, 597
);

/* INSERT QUERY NO: 323 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6155, 984
);

/* INSERT QUERY NO: 324 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6832, 2501
);

/* INSERT QUERY NO: 325 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8047, 6297
);

/* INSERT QUERY NO: 326 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1572, 1140
);

/* INSERT QUERY NO: 327 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3900, 3331
);

/* INSERT QUERY NO: 328 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4592, 768
);

/* INSERT QUERY NO: 329 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3111, 1581
);

/* INSERT QUERY NO: 330 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8952, 7975
);

/* INSERT QUERY NO: 331 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5524, 3801
);

/* INSERT QUERY NO: 332 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1061, 7387
);

/* INSERT QUERY NO: 333 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7056, 8706
);

/* INSERT QUERY NO: 334 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1940, 2812
);

/* INSERT QUERY NO: 335 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6850, 7619
);

/* INSERT QUERY NO: 336 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5451, 8220
);

/* INSERT QUERY NO: 337 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2304, 5111
);

/* INSERT QUERY NO: 338 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2419, 2466
);

/* INSERT QUERY NO: 339 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5171, 1518
);

/* INSERT QUERY NO: 340 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7794, 1984
);

/* INSERT QUERY NO: 341 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6122, 5652
);

/* INSERT QUERY NO: 342 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8490, 1424
);

/* INSERT QUERY NO: 343 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1971, 6350
);

/* INSERT QUERY NO: 344 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6297, 857
);

/* INSERT QUERY NO: 345 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4249, 3146
);

/* INSERT QUERY NO: 346 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4556, 6384
);

/* INSERT QUERY NO: 347 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4906, 7492
);

/* INSERT QUERY NO: 348 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2016, 3863
);

/* INSERT QUERY NO: 349 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3632, 4506
);

/* INSERT QUERY NO: 350 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2964, 8672
);

/* INSERT QUERY NO: 351 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6037, 7476
);

/* INSERT QUERY NO: 352 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6152, 7626
);

/* INSERT QUERY NO: 353 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3379, 7473
);

/* INSERT QUERY NO: 354 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3521, 224
);

/* INSERT QUERY NO: 355 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4187, 3737
);

/* INSERT QUERY NO: 356 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6380, 6883
);

/* INSERT QUERY NO: 357 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1153, 878
);

/* INSERT QUERY NO: 358 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8940, 1810
);

/* INSERT QUERY NO: 359 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
809, 701
);

/* INSERT QUERY NO: 360 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6486, 5194
);

/* INSERT QUERY NO: 361 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8918, 4109
);

/* INSERT QUERY NO: 362 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1516, 2329
);

/* INSERT QUERY NO: 363 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6733, 2102
);

/* INSERT QUERY NO: 364 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2159, 2584
);

/* INSERT QUERY NO: 365 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2684, 1373
);

/* INSERT QUERY NO: 366 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3287, 4650
);

/* INSERT QUERY NO: 367 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7341, 6472
);

/* INSERT QUERY NO: 368 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3964, 3548
);

/* INSERT QUERY NO: 369 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2915, 2262
);

/* INSERT QUERY NO: 370 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
803, 8178
);

/* INSERT QUERY NO: 371 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
670, 297
);

/* INSERT QUERY NO: 372 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5514, 3482
);

/* INSERT QUERY NO: 373 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8304, 5500
);

/* INSERT QUERY NO: 374 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2862, 8079
);

/* INSERT QUERY NO: 375 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8777, 8617
);

/* INSERT QUERY NO: 376 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5694, 7535
);

/* INSERT QUERY NO: 377 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1306, 1434
);

/* INSERT QUERY NO: 378 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6887, 8360
);

/* INSERT QUERY NO: 379 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1768, 1087
);

/* INSERT QUERY NO: 380 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1084, 128
);

/* INSERT QUERY NO: 381 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4890, 7125
);

/* INSERT QUERY NO: 382 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4102, 4266
);

/* INSERT QUERY NO: 383 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3858, 3394
);

/* INSERT QUERY NO: 384 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3187, 6755
);

/* INSERT QUERY NO: 385 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7378, 6621
);

/* INSERT QUERY NO: 386 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7858, 3138
);

/* INSERT QUERY NO: 387 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2342, 5937
);

/* INSERT QUERY NO: 388 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8755, 8166
);

/* INSERT QUERY NO: 389 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3289, 5429
);

/* INSERT QUERY NO: 390 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1680, 8470
);

/* INSERT QUERY NO: 391 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
4021, 597
);

/* INSERT QUERY NO: 392 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
3686, 984
);

/* INSERT QUERY NO: 393 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
662, 2501
);

/* INSERT QUERY NO: 394 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8904, 6297
);

/* INSERT QUERY NO: 395 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
6261, 1140
);

/* INSERT QUERY NO: 396 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
7457, 3331
);

/* INSERT QUERY NO: 397 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
8328, 768
);

/* INSERT QUERY NO: 398 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
1974, 1581
);

/* INSERT QUERY NO: 399 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
2285, 7975
);

/* INSERT QUERY NO: 400 */
INSERT INTO CONTAINS(sCode, bCode)
VALUES
(
5653, 3801
);



/* INSERT QUERY NO: 1 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
842514480, 1, 842514480
);

/* INSERT QUERY NO: 2 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
924243034, 2, 924243034
);

/* INSERT QUERY NO: 3 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
608211556, 3, 608211556
);

/* INSERT QUERY NO: 4 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
363393841, 4, 363393841
);

/* INSERT QUERY NO: 5 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
357219331, 5, 357219331
);

/* INSERT QUERY NO: 6 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
238061000, 6, 238061000
);

/* INSERT QUERY NO: 7 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
372173938, 7, 372173938
);

/* INSERT QUERY NO: 8 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
975519907, 8, 975519907
);

/* INSERT QUERY NO: 9 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
289033441, 9, 289033441
);

/* INSERT QUERY NO: 10 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
853816541, 10, 853816541
);

/* INSERT QUERY NO: 11 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
177737126, 11, 177737126
);

/* INSERT QUERY NO: 12 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
512772195, 12, 512772195
);

/* INSERT QUERY NO: 13 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
354586041, 13, 354586041
);

/* INSERT QUERY NO: 14 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
738970208, 14, 738970208
);

/* INSERT QUERY NO: 15 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
442809446, 15, 442809446
);

/* INSERT QUERY NO: 16 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
284054928, 16, 284054928
);

/* INSERT QUERY NO: 17 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
663473126, 17, 663473126
);

/* INSERT QUERY NO: 18 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
299227756, 18, 299227756
);

/* INSERT QUERY NO: 19 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
403627618, 19, 403627618
);

/* INSERT QUERY NO: 20 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
219307670, 20, 219307670
);

/* INSERT QUERY NO: 21 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
174089937, 21, 174089937
);

/* INSERT QUERY NO: 22 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
608259484, 22, 608259484
);

/* INSERT QUERY NO: 23 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
503490986, 23, 503490986
);

/* INSERT QUERY NO: 24 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
421517837, 24, 421517837
);

/* INSERT QUERY NO: 25 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
430537269, 25, 430537269
);

/* INSERT QUERY NO: 26 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
526554970, 26, 526554970
);

/* INSERT QUERY NO: 27 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
176627306, 27, 176627306
);

/* INSERT QUERY NO: 28 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
737254942, 28, 737254942
);

/* INSERT QUERY NO: 29 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
885429897, 29, 885429897
);

/* INSERT QUERY NO: 30 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
874756460, 30, 874756460
);

/* INSERT QUERY NO: 31 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
275768613, 31, 275768613
);

/* INSERT QUERY NO: 32 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
601070880, 32, 601070880
);

/* INSERT QUERY NO: 33 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
386159372, 33, 386159372
);

/* INSERT QUERY NO: 34 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
672975622, 34, 672975622
);

/* INSERT QUERY NO: 35 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
789041587, 35, 789041587
);

/* INSERT QUERY NO: 36 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
650987994, 36, 650987994
);

/* INSERT QUERY NO: 37 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
868763962, 37, 868763962
);

/* INSERT QUERY NO: 38 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
563423940, 38, 563423940
);

/* INSERT QUERY NO: 39 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
286479654, 39, 286479654
);

/* INSERT QUERY NO: 40 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
564333576, 40, 564333576
);

/* INSERT QUERY NO: 41 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
360131111, 41, 360131111
);

/* INSERT QUERY NO: 42 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
206266771, 42, 206266771
);

/* INSERT QUERY NO: 43 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
609250260, 43, 609250260
);

/* INSERT QUERY NO: 44 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
643262759, 44, 643262759
);

/* INSERT QUERY NO: 45 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
216072634, 45, 216072634
);

/* INSERT QUERY NO: 46 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
768586270, 46, 768586270
);

/* INSERT QUERY NO: 47 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
998092386, 47, 998092386
);

/* INSERT QUERY NO: 48 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
495063022, 48, 495063022
);

/* INSERT QUERY NO: 49 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
876209214, 49, 876209214
);

/* INSERT QUERY NO: 50 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
863055717, 50, 863055717
);

/* INSERT QUERY NO: 51 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
165894936, 51, 165894936
);

/* INSERT QUERY NO: 52 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
668247279, 52, 668247279
);

/* INSERT QUERY NO: 53 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
225326382, 53, 225326382
);

/* INSERT QUERY NO: 54 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
319006878, 54, 319006878
);

/* INSERT QUERY NO: 55 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
115726411, 55, 115726411
);

/* INSERT QUERY NO: 56 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
346867691, 56, 346867691
);

/* INSERT QUERY NO: 57 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
910023133, 57, 910023133
);

/* INSERT QUERY NO: 58 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
780697425, 58, 780697425
);

/* INSERT QUERY NO: 59 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
169744728, 59, 169744728
);

/* INSERT QUERY NO: 60 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
432669332, 60, 432669332
);

/* INSERT QUERY NO: 61 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
958213532, 61, 958213532
);

/* INSERT QUERY NO: 62 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
198714826, 62, 198714826
);

/* INSERT QUERY NO: 63 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
941229357, 63, 941229357
);

/* INSERT QUERY NO: 64 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
684241404, 64, 684241404
);

/* INSERT QUERY NO: 65 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
514826814, 65, 514826814
);

/* INSERT QUERY NO: 66 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
394080381, 66, 394080381
);

/* INSERT QUERY NO: 67 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
776622516, 67, 776622516
);

/* INSERT QUERY NO: 68 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
586232427, 68, 586232427
);

/* INSERT QUERY NO: 69 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
342554405, 69, 342554405
);

/* INSERT QUERY NO: 70 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
995541939, 70, 995541939
);

/* INSERT QUERY NO: 71 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
610144170, 71, 610144170
);

/* INSERT QUERY NO: 72 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
248413591, 72, 248413591
);

/* INSERT QUERY NO: 73 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
848414798, 73, 848414798
);

/* INSERT QUERY NO: 74 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
570914688, 74, 570914688
);

/* INSERT QUERY NO: 75 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
166260903, 75, 166260903
);

/* INSERT QUERY NO: 76 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
806781132, 76, 806781132
);

/* INSERT QUERY NO: 77 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
453378632, 77, 453378632
);

/* INSERT QUERY NO: 78 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
156503032, 78, 156503032
);

/* INSERT QUERY NO: 79 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
166992864, 79, 166992864
);

/* INSERT QUERY NO: 80 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
409046850, 80, 409046850
);

/* INSERT QUERY NO: 81 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
136163741, 81, 136163741
);

/* INSERT QUERY NO: 82 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
726124427, 82, 726124427
);

/* INSERT QUERY NO: 83 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
243467809, 83, 243467809
);

/* INSERT QUERY NO: 84 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
318642942, 84, 318642942
);

/* INSERT QUERY NO: 85 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
264161742, 85, 264161742
);

/* INSERT QUERY NO: 86 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
236775411, 86, 236775411
);

/* INSERT QUERY NO: 87 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
542958839, 87, 542958839
);

/* INSERT QUERY NO: 88 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
583589231, 88, 583589231
);

/* INSERT QUERY NO: 89 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
253284965, 89, 253284965
);

/* INSERT QUERY NO: 90 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
709110900, 90, 709110900
);

/* INSERT QUERY NO: 91 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
391479893, 91, 391479893
);

/* INSERT QUERY NO: 92 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
487328284, 92, 487328284
);

/* INSERT QUERY NO: 93 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
116762461, 93, 116762461
);

/* INSERT QUERY NO: 94 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
374785307, 94, 374785307
);

/* INSERT QUERY NO: 95 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
374327147, 95, 374327147
);

/* INSERT QUERY NO: 96 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
158966862, 96, 158966862
);

/* INSERT QUERY NO: 97 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
947037384, 97, 947037384
);

/* INSERT QUERY NO: 98 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
140166931, 98, 140166931
);

/* INSERT QUERY NO: 99 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
346964536, 99, 346964536
);

/* INSERT QUERY NO: 100 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
736180442, 100, 736180442
);

/* INSERT QUERY NO: 101 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
644934596, 101, 644934596
);

/* INSERT QUERY NO: 102 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
653044424, 102, 653044424
);

/* INSERT QUERY NO: 103 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
518155053, 103, 518155053
);

/* INSERT QUERY NO: 104 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
444192710, 104, 444192710
);

/* INSERT QUERY NO: 105 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
750064469, 105, 750064469
);

/* INSERT QUERY NO: 106 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
585974426, 106, 585974426
);

/* INSERT QUERY NO: 107 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
133761058, 107, 133761058
);

/* INSERT QUERY NO: 108 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
179151510, 108, 179151510
);

/* INSERT QUERY NO: 109 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
447320870, 109, 447320870
);

/* INSERT QUERY NO: 110 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
467841716, 110, 467841716
);

/* INSERT QUERY NO: 111 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
599231477, 111, 599231477
);

/* INSERT QUERY NO: 112 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
684124083, 112, 684124083
);

/* INSERT QUERY NO: 113 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
208740987, 113, 208740987
);

/* INSERT QUERY NO: 114 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
833451511, 114, 833451511
);

/* INSERT QUERY NO: 115 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
558402134, 115, 558402134
);

/* INSERT QUERY NO: 116 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
509277186, 116, 509277186
);

/* INSERT QUERY NO: 117 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
948241072, 117, 948241072
);

/* INSERT QUERY NO: 118 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
697145938, 118, 697145938
);

/* INSERT QUERY NO: 119 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
497497776, 119, 497497776
);

/* INSERT QUERY NO: 120 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
978348890, 120, 978348890
);

/* INSERT QUERY NO: 121 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
350510277, 121, 350510277
);

/* INSERT QUERY NO: 122 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
387365678, 122, 387365678
);

/* INSERT QUERY NO: 123 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
971940922, 123, 971940922
);

/* INSERT QUERY NO: 124 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
887717038, 124, 887717038
);

/* INSERT QUERY NO: 125 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
742541081, 125, 742541081
);

/* INSERT QUERY NO: 126 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
798047128, 126, 798047128
);

/* INSERT QUERY NO: 127 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
208440070, 127, 208440070
);

/* INSERT QUERY NO: 128 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
867886330, 128, 867886330
);

/* INSERT QUERY NO: 129 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
831234620, 129, 831234620
);

/* INSERT QUERY NO: 130 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
424870917, 130, 424870917
);

/* INSERT QUERY NO: 131 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
977599626, 131, 977599626
);

/* INSERT QUERY NO: 132 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
282690944, 132, 282690944
);

/* INSERT QUERY NO: 133 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
162697762, 133, 162697762
);

/* INSERT QUERY NO: 134 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
335045909, 134, 335045909
);

/* INSERT QUERY NO: 135 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
557446669, 135, 557446669
);

/* INSERT QUERY NO: 136 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
496018551, 136, 496018551
);

/* INSERT QUERY NO: 137 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
670832662, 137, 670832662
);

/* INSERT QUERY NO: 138 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
614160425, 138, 614160425
);

/* INSERT QUERY NO: 139 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
695611377, 139, 695611377
);

/* INSERT QUERY NO: 140 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
606918197, 140, 606918197
);

/* INSERT QUERY NO: 141 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
245799434, 141, 245799434
);

/* INSERT QUERY NO: 142 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
399620305, 142, 399620305
);

/* INSERT QUERY NO: 143 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
774868393, 143, 774868393
);

/* INSERT QUERY NO: 144 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
455799376, 144, 455799376
);

/* INSERT QUERY NO: 145 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
226260525, 145, 226260525
);

/* INSERT QUERY NO: 146 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
638713388, 146, 638713388
);

/* INSERT QUERY NO: 147 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
564483683, 147, 564483683
);

/* INSERT QUERY NO: 148 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
223256573, 148, 223256573
);

/* INSERT QUERY NO: 149 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
637640979, 149, 637640979
);

/* INSERT QUERY NO: 150 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
834955090, 150, 834955090
);

/* INSERT QUERY NO: 151 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
209672087, 151, 209672087
);

/* INSERT QUERY NO: 152 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
175297093, 152, 175297093
);

/* INSERT QUERY NO: 153 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
100839729, 153, 100839729
);

/* INSERT QUERY NO: 154 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
710628570, 154, 710628570
);

/* INSERT QUERY NO: 155 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
929670489, 155, 929670489
);

/* INSERT QUERY NO: 156 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
793339948, 156, 793339948
);

/* INSERT QUERY NO: 157 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
604632535, 157, 604632535
);

/* INSERT QUERY NO: 158 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
868969030, 158, 868969030
);

/* INSERT QUERY NO: 159 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
448849743, 159, 448849743
);

/* INSERT QUERY NO: 160 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
141248540, 160, 141248540
);

/* INSERT QUERY NO: 161 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
425524557, 161, 425524557
);

/* INSERT QUERY NO: 162 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
192414954, 162, 192414954
);

/* INSERT QUERY NO: 163 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
318592001, 163, 318592001
);

/* INSERT QUERY NO: 164 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
326497537, 164, 326497537
);

/* INSERT QUERY NO: 165 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
985244799, 165, 985244799
);

/* INSERT QUERY NO: 166 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
507577837, 166, 507577837
);

/* INSERT QUERY NO: 167 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
391486089, 167, 391486089
);

/* INSERT QUERY NO: 168 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
223143904, 168, 223143904
);

/* INSERT QUERY NO: 169 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
757973574, 169, 757973574
);

/* INSERT QUERY NO: 170 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
756757055, 170, 756757055
);

/* INSERT QUERY NO: 171 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
541420933, 171, 541420933
);

/* INSERT QUERY NO: 172 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
214002988, 172, 214002988
);

/* INSERT QUERY NO: 173 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
274892255, 173, 274892255
);

/* INSERT QUERY NO: 174 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
894345162, 174, 894345162
);

/* INSERT QUERY NO: 175 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
359966153, 175, 359966153
);

/* INSERT QUERY NO: 176 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
184444979, 176, 184444979
);

/* INSERT QUERY NO: 177 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
979777334, 177, 979777334
);

/* INSERT QUERY NO: 178 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
732885712, 178, 732885712
);

/* INSERT QUERY NO: 179 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
521165267, 179, 521165267
);

/* INSERT QUERY NO: 180 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
454055361, 180, 454055361
);

/* INSERT QUERY NO: 181 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
122976530, 181, 122976530
);

/* INSERT QUERY NO: 182 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
758793891, 182, 758793891
);

/* INSERT QUERY NO: 183 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
944752490, 183, 944752490
);

/* INSERT QUERY NO: 184 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
125074868, 184, 125074868
);

/* INSERT QUERY NO: 185 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
918225994, 185, 918225994
);

/* INSERT QUERY NO: 186 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
551097402, 186, 551097402
);

/* INSERT QUERY NO: 187 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
477739872, 187, 477739872
);

/* INSERT QUERY NO: 188 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
964674679, 188, 964674679
);

/* INSERT QUERY NO: 189 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
700943594, 189, 700943594
);

/* INSERT QUERY NO: 190 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
915365165, 190, 915365165
);

/* INSERT QUERY NO: 191 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
937083736, 191, 937083736
);

/* INSERT QUERY NO: 192 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
109030302, 192, 109030302
);

/* INSERT QUERY NO: 193 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
628747693, 193, 628747693
);

/* INSERT QUERY NO: 194 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
555442249, 194, 555442249
);

/* INSERT QUERY NO: 195 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
200160739, 195, 200160739
);

/* INSERT QUERY NO: 196 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
738218900, 196, 738218900
);

/* INSERT QUERY NO: 197 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
989452807, 197, 989452807
);

/* INSERT QUERY NO: 198 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
737864976, 198, 737864976
);

/* INSERT QUERY NO: 199 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
635925148, 199, 635925148
);

/* INSERT QUERY NO: 200 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
826770121, 200, 826770121
);

/* INSERT QUERY NO: 201 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
866297088, 201, 866297088
);

/* INSERT QUERY NO: 202 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
230582041, 202, 842514480
);

/* INSERT QUERY NO: 203 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
858999210, 203, 924243034
);

/* INSERT QUERY NO: 204 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
531412674, 204, 608211556
);

/* INSERT QUERY NO: 205 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
760297746, 205, 363393841
);

/* INSERT QUERY NO: 206 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
999728144, 206, 357219331
);

/* INSERT QUERY NO: 207 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
639225399, 207, 238061000
);

/* INSERT QUERY NO: 208 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
694973500, 208, 372173938
);

/* INSERT QUERY NO: 209 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
797519473, 209, 975519907
);

/* INSERT QUERY NO: 210 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
772002908, 210, 289033441
);

/* INSERT QUERY NO: 211 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
772377059, 211, 853816541
);

/* INSERT QUERY NO: 212 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
230240109, 212, 177737126
);

/* INSERT QUERY NO: 213 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
583686373, 213, 512772195
);

/* INSERT QUERY NO: 214 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
319608343, 214, 354586041
);

/* INSERT QUERY NO: 215 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
717324029, 215, 738970208
);

/* INSERT QUERY NO: 216 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
826605308, 216, 442809446
);

/* INSERT QUERY NO: 217 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
105945142, 217, 284054928
);

/* INSERT QUERY NO: 218 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
203195214, 218, 663473126
);

/* INSERT QUERY NO: 219 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
705542442, 219, 299227756
);

/* INSERT QUERY NO: 220 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
849560875, 220, 403627618
);

/* INSERT QUERY NO: 221 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
660006187, 221, 219307670
);

/* INSERT QUERY NO: 222 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
209227516, 222, 174089937
);

/* INSERT QUERY NO: 223 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
609423978, 223, 608259484
);

/* INSERT QUERY NO: 224 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
737255073, 224, 503490986
);

/* INSERT QUERY NO: 225 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
667767027, 225, 421517837
);

/* INSERT QUERY NO: 226 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
200769246, 226, 430537269
);

/* INSERT QUERY NO: 227 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
479032816, 227, 526554970
);

/* INSERT QUERY NO: 228 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
706253956, 228, 176627306
);

/* INSERT QUERY NO: 229 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
633931892, 229, 737254942
);

/* INSERT QUERY NO: 230 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
856598387, 230, 885429897
);

/* INSERT QUERY NO: 231 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
505255227, 231, 874756460
);

/* INSERT QUERY NO: 232 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
480408472, 232, 275768613
);

/* INSERT QUERY NO: 233 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
902868693, 233, 601070880
);

/* INSERT QUERY NO: 234 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
371538020, 234, 386159372
);

/* INSERT QUERY NO: 235 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
752803629, 235, 672975622
);

/* INSERT QUERY NO: 236 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
532293158, 236, 789041587
);

/* INSERT QUERY NO: 237 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
669289445, 237, 650987994
);

/* INSERT QUERY NO: 238 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
301883189, 238, 868763962
);

/* INSERT QUERY NO: 239 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
605615251, 239, 563423940
);

/* INSERT QUERY NO: 240 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
112833444, 240, 286479654
);

/* INSERT QUERY NO: 241 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
531101070, 241, 564333576
);

/* INSERT QUERY NO: 242 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
617352061, 242, 360131111
);

/* INSERT QUERY NO: 243 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
910459906, 243, 206266771
);

/* INSERT QUERY NO: 244 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
645437169, 244, 609250260
);

/* INSERT QUERY NO: 245 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
397342369, 245, 643262759
);

/* INSERT QUERY NO: 246 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
155957181, 246, 216072634
);

/* INSERT QUERY NO: 247 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
945708648, 247, 768586270
);

/* INSERT QUERY NO: 248 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
437041011, 248, 998092386
);

/* INSERT QUERY NO: 249 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
959885997, 249, 495063022
);

/* INSERT QUERY NO: 250 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
584243656, 250, 876209214
);

/* INSERT QUERY NO: 251 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
228786585, 251, 863055717
);

/* INSERT QUERY NO: 252 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
479915457, 252, 165894936
);

/* INSERT QUERY NO: 253 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
848387409, 253, 668247279
);

/* INSERT QUERY NO: 254 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
618549340, 254, 225326382
);

/* INSERT QUERY NO: 255 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
347489825, 255, 319006878
);

/* INSERT QUERY NO: 256 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
364838805, 256, 115726411
);

/* INSERT QUERY NO: 257 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
531166168, 257, 346867691
);

/* INSERT QUERY NO: 258 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
161057816, 258, 910023133
);

/* INSERT QUERY NO: 259 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
451098434, 259, 780697425
);

/* INSERT QUERY NO: 260 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
910679345, 260, 169744728
);

/* INSERT QUERY NO: 261 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
608810289, 261, 432669332
);

/* INSERT QUERY NO: 262 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
833993913, 262, 958213532
);

/* INSERT QUERY NO: 263 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
787823343, 263, 198714826
);

/* INSERT QUERY NO: 264 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
842788938, 264, 941229357
);

/* INSERT QUERY NO: 265 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
864731304, 265, 684241404
);

/* INSERT QUERY NO: 266 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
642355338, 266, 514826814
);

/* INSERT QUERY NO: 267 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
941382856, 267, 394080381
);

/* INSERT QUERY NO: 268 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
291931264, 268, 776622516
);

/* INSERT QUERY NO: 269 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
887271033, 269, 586232427
);

/* INSERT QUERY NO: 270 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
367603314, 270, 342554405
);

/* INSERT QUERY NO: 271 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
893376738, 271, 995541939
);

/* INSERT QUERY NO: 272 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
276327373, 272, 610144170
);

/* INSERT QUERY NO: 273 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
976754460, 273, 248413591
);

/* INSERT QUERY NO: 274 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
503653250, 274, 848414798
);

/* INSERT QUERY NO: 275 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
362966420, 275, 570914688
);

/* INSERT QUERY NO: 276 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
249984185, 276, 166260903
);

/* INSERT QUERY NO: 277 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
430204203, 277, 806781132
);

/* INSERT QUERY NO: 278 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
888881451, 278, 453378632
);

/* INSERT QUERY NO: 279 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
571366130, 279, 156503032
);

/* INSERT QUERY NO: 280 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
381355987, 280, 166992864
);

/* INSERT QUERY NO: 281 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
584971967, 281, 409046850
);

/* INSERT QUERY NO: 282 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
744440698, 282, 136163741
);

/* INSERT QUERY NO: 283 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
732046185, 283, 726124427
);

/* INSERT QUERY NO: 284 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
818099951, 284, 243467809
);

/* INSERT QUERY NO: 285 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
445603120, 285, 318642942
);

/* INSERT QUERY NO: 286 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
937855031, 286, 264161742
);

/* INSERT QUERY NO: 287 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
166772539, 287, 236775411
);

/* INSERT QUERY NO: 288 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
871157515, 288, 542958839
);

/* INSERT QUERY NO: 289 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
848634634, 289, 583589231
);

/* INSERT QUERY NO: 290 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
118683246, 290, 253284965
);

/* INSERT QUERY NO: 291 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
274655611, 291, 709110900
);

/* INSERT QUERY NO: 292 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
756713353, 292, 391479893
);

/* INSERT QUERY NO: 293 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
672144451, 293, 487328284
);

/* INSERT QUERY NO: 294 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
666402681, 294, 116762461
);

/* INSERT QUERY NO: 295 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
477096328, 295, 374785307
);

/* INSERT QUERY NO: 296 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
968142666, 296, 374327147
);

/* INSERT QUERY NO: 297 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
468932857, 297, 158966862
);

/* INSERT QUERY NO: 298 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
766567728, 298, 947037384
);

/* INSERT QUERY NO: 299 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
605260672, 299, 140166931
);

/* INSERT QUERY NO: 300 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
351753147, 300, 346964536
);

/* INSERT QUERY NO: 301 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
702206978, 301, 736180442
);

/* INSERT QUERY NO: 302 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
522039936, 302, 644934596
);

/* INSERT QUERY NO: 303 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
565562793, 303, 653044424
);

/* INSERT QUERY NO: 304 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
355251710, 304, 518155053
);

/* INSERT QUERY NO: 305 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
312780854, 305, 444192710
);

/* INSERT QUERY NO: 306 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
790045257, 306, 750064469
);

/* INSERT QUERY NO: 307 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
254713094, 307, 585974426
);

/* INSERT QUERY NO: 308 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
837435914, 308, 133761058
);

/* INSERT QUERY NO: 309 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
503077610, 309, 179151510
);

/* INSERT QUERY NO: 310 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
397235716, 310, 447320870
);

/* INSERT QUERY NO: 311 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
375468349, 311, 467841716
);

/* INSERT QUERY NO: 312 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
124105184, 312, 599231477
);

/* INSERT QUERY NO: 313 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
411555979, 313, 684124083
);

/* INSERT QUERY NO: 314 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
118876074, 314, 208740987
);

/* INSERT QUERY NO: 315 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
405135876, 315, 833451511
);

/* INSERT QUERY NO: 316 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
559833245, 316, 558402134
);

/* INSERT QUERY NO: 317 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
387276100, 317, 509277186
);

/* INSERT QUERY NO: 318 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
739637733, 318, 948241072
);

/* INSERT QUERY NO: 319 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
857239485, 319, 697145938
);

/* INSERT QUERY NO: 320 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
703110918, 320, 497497776
);

/* INSERT QUERY NO: 321 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
512636137, 321, 978348890
);

/* INSERT QUERY NO: 322 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
183336824, 322, 350510277
);

/* INSERT QUERY NO: 323 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
971196431, 323, 387365678
);

/* INSERT QUERY NO: 324 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
109832447, 324, 971940922
);

/* INSERT QUERY NO: 325 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
794662123, 325, 887717038
);

/* INSERT QUERY NO: 326 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
576713506, 326, 742541081
);

/* INSERT QUERY NO: 327 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
483844418, 327, 798047128
);

/* INSERT QUERY NO: 328 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
257599953, 328, 208440070
);

/* INSERT QUERY NO: 329 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
125968577, 329, 867886330
);

/* INSERT QUERY NO: 330 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
485522290, 330, 831234620
);

/* INSERT QUERY NO: 331 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
501792888, 331, 424870917
);

/* INSERT QUERY NO: 332 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
960489992, 332, 977599626
);

/* INSERT QUERY NO: 333 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
290703975, 333, 282690944
);

/* INSERT QUERY NO: 334 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
649704634, 334, 162697762
);

/* INSERT QUERY NO: 335 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
492469129, 335, 335045909
);

/* INSERT QUERY NO: 336 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
624071848, 336, 557446669
);

/* INSERT QUERY NO: 337 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
552704258, 337, 496018551
);

/* INSERT QUERY NO: 338 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
978666553, 338, 670832662
);

/* INSERT QUERY NO: 339 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
736189340, 339, 614160425
);

/* INSERT QUERY NO: 340 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
334130301, 340, 695611377
);

/* INSERT QUERY NO: 341 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
235387340, 341, 606918197
);

/* INSERT QUERY NO: 342 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
965152081, 342, 245799434
);

/* INSERT QUERY NO: 343 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
164169898, 343, 399620305
);

/* INSERT QUERY NO: 344 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
570746314, 344, 774868393
);

/* INSERT QUERY NO: 345 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
232533839, 345, 455799376
);

/* INSERT QUERY NO: 346 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
849397491, 346, 226260525
);

/* INSERT QUERY NO: 347 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
598164720, 347, 638713388
);

/* INSERT QUERY NO: 348 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
379317242, 348, 564483683
);

/* INSERT QUERY NO: 349 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
715122698, 349, 223256573
);

/* INSERT QUERY NO: 350 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
996498717, 350, 637640979
);

/* INSERT QUERY NO: 351 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
163821900, 351, 834955090
);

/* INSERT QUERY NO: 352 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
923079128, 352, 209672087
);

/* INSERT QUERY NO: 353 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
674091156, 353, 175297093
);

/* INSERT QUERY NO: 354 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
595193007, 354, 100839729
);

/* INSERT QUERY NO: 355 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
144051288, 355, 710628570
);

/* INSERT QUERY NO: 356 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
819324436, 356, 929670489
);

/* INSERT QUERY NO: 357 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
747049709, 357, 793339948
);

/* INSERT QUERY NO: 358 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
779493990, 358, 604632535
);

/* INSERT QUERY NO: 359 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
980554750, 359, 868969030
);

/* INSERT QUERY NO: 360 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
232152541, 360, 448849743
);

/* INSERT QUERY NO: 361 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
263321982, 361, 141248540
);

/* INSERT QUERY NO: 362 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
952988041, 362, 425524557
);

/* INSERT QUERY NO: 363 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
896401366, 363, 192414954
);

/* INSERT QUERY NO: 364 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
596288959, 364, 318592001
);

/* INSERT QUERY NO: 365 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
674051585, 365, 326497537
);

/* INSERT QUERY NO: 366 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
282520753, 366, 985244799
);

/* INSERT QUERY NO: 367 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
946536394, 367, 507577837
);

/* INSERT QUERY NO: 368 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
796995920, 368, 391486089
);

/* INSERT QUERY NO: 369 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
609417233, 369, 223143904
);

/* INSERT QUERY NO: 370 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
408875198, 370, 757973574
);

/* INSERT QUERY NO: 371 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
488849587, 371, 756757055
);

/* INSERT QUERY NO: 372 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
651156782, 372, 541420933
);

/* INSERT QUERY NO: 373 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
486711559, 373, 214002988
);

/* INSERT QUERY NO: 374 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
508220584, 374, 274892255
);

/* INSERT QUERY NO: 375 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
984732360, 375, 894345162
);

/* INSERT QUERY NO: 376 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
613321870, 376, 359966153
);

/* INSERT QUERY NO: 377 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
485195007, 377, 184444979
);

/* INSERT QUERY NO: 378 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
618908148, 378, 979777334
);

/* INSERT QUERY NO: 379 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
678602842, 379, 732885712
);

/* INSERT QUERY NO: 380 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
777188163, 380, 521165267
);

/* INSERT QUERY NO: 381 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
756898581, 381, 454055361
);

/* INSERT QUERY NO: 382 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
902517008, 382, 122976530
);

/* INSERT QUERY NO: 383 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
848171369, 383, 758793891
);

/* INSERT QUERY NO: 384 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
656189519, 384, 944752490
);

/* INSERT QUERY NO: 385 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
870381081, 385, 125074868
);

/* INSERT QUERY NO: 386 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
564675910, 386, 918225994
);

/* INSERT QUERY NO: 387 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
712056845, 387, 551097402
);

/* INSERT QUERY NO: 388 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
900957531, 388, 477739872
);

/* INSERT QUERY NO: 389 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
139306775, 389, 964674679
);

/* INSERT QUERY NO: 390 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
262372916, 390, 700943594
);

/* INSERT QUERY NO: 391 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
746933721, 391, 915365165
);

/* INSERT QUERY NO: 392 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
780411567, 392, 937083736
);

/* INSERT QUERY NO: 393 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
391166576, 393, 109030302
);

/* INSERT QUERY NO: 394 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
416127127, 394, 628747693
);

/* INSERT QUERY NO: 395 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
185820417, 395, 555442249
);

/* INSERT QUERY NO: 396 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
550938786, 396, 200160739
);

/* INSERT QUERY NO: 397 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
272364173, 397, 738218900
);

/* INSERT QUERY NO: 398 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
163918649, 398, 989452807
);

/* INSERT QUERY NO: 399 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
680208566, 399, 737864976
);

/* INSERT QUERY NO: 400 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
660350458, 400, 635925148
);

/* INSERT QUERY NO: 401 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
483186847, 401, 826770121
);

/* INSERT QUERY NO: 402 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
763298348, 402, 866297088
);

/* INSERT QUERY NO: 403 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
265080970, 403, 842514480
);

/* INSERT QUERY NO: 404 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
484084938, 404, 924243034
);

/* INSERT QUERY NO: 405 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
524232738, 405, 608211556
);

/* INSERT QUERY NO: 406 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
941384165, 406, 363393841
);

/* INSERT QUERY NO: 407 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
484650877, 407, 357219331
);

/* INSERT QUERY NO: 408 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
236356449, 408, 238061000
);

/* INSERT QUERY NO: 409 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
830094186, 409, 372173938
);

/* INSERT QUERY NO: 410 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
909549037, 410, 975519907
);

/* INSERT QUERY NO: 411 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
994041747, 411, 289033441
);

/* INSERT QUERY NO: 412 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
532751690, 412, 853816541
);

/* INSERT QUERY NO: 413 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
568133062, 413, 177737126
);

/* INSERT QUERY NO: 414 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
286362018, 414, 512772195
);

/* INSERT QUERY NO: 415 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
468088987, 415, 354586041
);

/* INSERT QUERY NO: 416 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
235242762, 416, 738970208
);

/* INSERT QUERY NO: 417 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
374552537, 417, 442809446
);

/* INSERT QUERY NO: 418 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
895424208, 418, 284054928
);

/* INSERT QUERY NO: 419 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
989014392, 419, 663473126
);

/* INSERT QUERY NO: 420 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
321039134, 420, 299227756
);

/* INSERT QUERY NO: 421 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
945986179, 421, 403627618
);

/* INSERT QUERY NO: 422 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
439815268, 422, 219307670
);

/* INSERT QUERY NO: 423 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
828324712, 423, 174089937
);

/* INSERT QUERY NO: 424 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
886258950, 424, 608259484
);

/* INSERT QUERY NO: 425 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
943498615, 425, 503490986
);

/* INSERT QUERY NO: 426 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
575095226, 426, 421517837
);

/* INSERT QUERY NO: 427 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
921771154, 427, 430537269
);

/* INSERT QUERY NO: 428 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
838201554, 428, 526554970
);

/* INSERT QUERY NO: 429 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
399158227, 429, 176627306
);

/* INSERT QUERY NO: 430 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
401198543, 430, 737254942
);

/* INSERT QUERY NO: 431 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
595987814, 431, 885429897
);

/* INSERT QUERY NO: 432 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
430392554, 432, 874756460
);

/* INSERT QUERY NO: 433 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
485102908, 433, 275768613
);

/* INSERT QUERY NO: 434 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
496763307, 434, 601070880
);

/* INSERT QUERY NO: 435 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
362474028, 435, 386159372
);

/* INSERT QUERY NO: 436 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
615060630, 436, 672975622
);

/* INSERT QUERY NO: 437 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
243953169, 437, 789041587
);

/* INSERT QUERY NO: 438 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
732235258, 438, 650987994
);

/* INSERT QUERY NO: 439 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
589994403, 439, 868763962
);

/* INSERT QUERY NO: 440 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
526465030, 440, 563423940
);

/* INSERT QUERY NO: 441 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
331778094, 441, 286479654
);

/* INSERT QUERY NO: 442 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
249483234, 442, 564333576
);

/* INSERT QUERY NO: 443 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
565623531, 443, 360131111
);

/* INSERT QUERY NO: 444 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
883447715, 444, 206266771
);

/* INSERT QUERY NO: 445 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
115672448, 445, 609250260
);

/* INSERT QUERY NO: 446 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
101317344, 446, 643262759
);

/* INSERT QUERY NO: 447 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
196506776, 447, 216072634
);

/* INSERT QUERY NO: 448 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
554936075, 448, 768586270
);

/* INSERT QUERY NO: 449 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
798679302, 449, 998092386
);

/* INSERT QUERY NO: 450 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
282923331, 450, 495063022
);

/* INSERT QUERY NO: 451 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
484689668, 451, 876209214
);

/* INSERT QUERY NO: 452 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
396624336, 452, 863055717
);

/* INSERT QUERY NO: 453 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
977057416, 453, 165894936
);

/* INSERT QUERY NO: 454 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
332569556, 454, 668247279
);

/* INSERT QUERY NO: 455 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
674546377, 455, 225326382
);

/* INSERT QUERY NO: 456 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
827691764, 456, 319006878
);

/* INSERT QUERY NO: 457 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
586016284, 457, 115726411
);

/* INSERT QUERY NO: 458 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
425010942, 458, 346867691
);

/* INSERT QUERY NO: 459 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
355504577, 459, 910023133
);

/* INSERT QUERY NO: 460 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
776724456, 460, 780697425
);

/* INSERT QUERY NO: 461 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
939285731, 461, 169744728
);

/* INSERT QUERY NO: 462 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
729995172, 462, 432669332
);

/* INSERT QUERY NO: 463 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
776987871, 463, 958213532
);

/* INSERT QUERY NO: 464 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
915378851, 464, 198714826
);

/* INSERT QUERY NO: 465 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
868866129, 465, 941229357
);

/* INSERT QUERY NO: 466 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
167283912, 466, 684241404
);

/* INSERT QUERY NO: 467 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
279411561, 467, 514826814
);

/* INSERT QUERY NO: 468 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
614227664, 468, 394080381
);

/* INSERT QUERY NO: 469 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
636494214, 469, 776622516
);

/* INSERT QUERY NO: 470 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
507324739, 470, 586232427
);

/* INSERT QUERY NO: 471 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
504450325, 471, 342554405
);

/* INSERT QUERY NO: 472 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
482159272, 472, 995541939
);

/* INSERT QUERY NO: 473 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
408119220, 473, 610144170
);

/* INSERT QUERY NO: 474 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
806124594, 474, 248413591
);

/* INSERT QUERY NO: 475 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
696199847, 475, 848414798
);

/* INSERT QUERY NO: 476 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
520952753, 476, 570914688
);

/* INSERT QUERY NO: 477 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
121713742, 477, 166260903
);

/* INSERT QUERY NO: 478 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
578263986, 478, 806781132
);

/* INSERT QUERY NO: 479 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
524482517, 479, 453378632
);

/* INSERT QUERY NO: 480 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
588311329, 480, 156503032
);

/* INSERT QUERY NO: 481 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
582766994, 481, 166992864
);

/* INSERT QUERY NO: 482 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
188887427, 482, 409046850
);

/* INSERT QUERY NO: 483 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
520702851, 483, 136163741
);

/* INSERT QUERY NO: 484 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
881140170, 484, 726124427
);

/* INSERT QUERY NO: 485 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
779291315, 485, 243467809
);

/* INSERT QUERY NO: 486 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
492615424, 486, 318642942
);

/* INSERT QUERY NO: 487 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
163785674, 487, 264161742
);

/* INSERT QUERY NO: 488 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
286793870, 488, 236775411
);

/* INSERT QUERY NO: 489 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
403133696, 489, 542958839
);

/* INSERT QUERY NO: 490 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
373922789, 490, 583589231
);

/* INSERT QUERY NO: 491 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
145846102, 491, 253284965
);

/* INSERT QUERY NO: 492 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
327409705, 492, 709110900
);

/* INSERT QUERY NO: 493 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
805258941, 493, 391479893
);

/* INSERT QUERY NO: 494 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
450008275, 494, 487328284
);

/* INSERT QUERY NO: 495 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
364723963, 495, 116762461
);

/* INSERT QUERY NO: 496 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
613714227, 496, 374785307
);

/* INSERT QUERY NO: 497 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
597329935, 497, 374327147
);

/* INSERT QUERY NO: 498 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
811893888, 498, 158966862
);

/* INSERT QUERY NO: 499 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
682887924, 499, 947037384
);

/* INSERT QUERY NO: 500 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
545552363, 500, 140166931
);

/* INSERT QUERY NO: 501 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
880781172, 501, 346964536
);

/* INSERT QUERY NO: 502 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
632905530, 502, 736180442
);

/* INSERT QUERY NO: 503 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
581086488, 503, 644934596
);

/* INSERT QUERY NO: 504 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
371956335, 504, 653044424
);

/* INSERT QUERY NO: 505 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
212424176, 505, 518155053
);

/* INSERT QUERY NO: 506 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
865580326, 506, 444192710
);

/* INSERT QUERY NO: 507 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
701148643, 507, 750064469
);

/* INSERT QUERY NO: 508 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
359532751, 508, 585974426
);

/* INSERT QUERY NO: 509 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
110959113, 509, 133761058
);

/* INSERT QUERY NO: 510 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
277110877, 510, 179151510
);

/* INSERT QUERY NO: 511 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
632829023, 511, 447320870
);

/* INSERT QUERY NO: 512 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
933442764, 512, 467841716
);

/* INSERT QUERY NO: 513 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
181116192, 513, 599231477
);

/* INSERT QUERY NO: 514 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
702281617, 514, 684124083
);

/* INSERT QUERY NO: 515 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
156661151, 515, 208740987
);

/* INSERT QUERY NO: 516 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
900070748, 516, 833451511
);

/* INSERT QUERY NO: 517 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
688888955, 517, 558402134
);

/* INSERT QUERY NO: 518 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
949288569, 518, 509277186
);

/* INSERT QUERY NO: 519 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
421456857, 519, 948241072
);

/* INSERT QUERY NO: 520 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
478452980, 520, 697145938
);

/* INSERT QUERY NO: 521 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
511696682, 521, 497497776
);

/* INSERT QUERY NO: 522 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
214835113, 522, 978348890
);

/* INSERT QUERY NO: 523 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
175953721, 523, 350510277
);

/* INSERT QUERY NO: 524 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
890680731, 524, 387365678
);

/* INSERT QUERY NO: 525 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
728410265, 525, 971940922
);

/* INSERT QUERY NO: 526 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
552396992, 526, 887717038
);

/* INSERT QUERY NO: 527 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
868392240, 527, 742541081
);

/* INSERT QUERY NO: 528 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
784742545, 528, 798047128
);

/* INSERT QUERY NO: 529 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
666732621, 529, 208440070
);

/* INSERT QUERY NO: 530 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
612284740, 530, 867886330
);

/* INSERT QUERY NO: 531 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
942890884, 531, 831234620
);

/* INSERT QUERY NO: 532 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
846678765, 532, 424870917
);

/* INSERT QUERY NO: 533 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
905180813, 533, 977599626
);

/* INSERT QUERY NO: 534 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
402370841, 534, 282690944
);

/* INSERT QUERY NO: 535 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
368598590, 535, 162697762
);

/* INSERT QUERY NO: 536 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
443076047, 536, 335045909
);

/* INSERT QUERY NO: 537 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
848496450, 537, 557446669
);

/* INSERT QUERY NO: 538 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
274209072, 538, 496018551
);

/* INSERT QUERY NO: 539 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
250277843, 539, 670832662
);

/* INSERT QUERY NO: 540 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
618324054, 540, 614160425
);

/* INSERT QUERY NO: 541 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
360842153, 541, 695611377
);

/* INSERT QUERY NO: 542 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
690591989, 542, 606918197
);

/* INSERT QUERY NO: 543 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
694244572, 543, 245799434
);

/* INSERT QUERY NO: 544 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
477744017, 544, 399620305
);

/* INSERT QUERY NO: 545 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
721496727, 545, 774868393
);

/* INSERT QUERY NO: 546 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
665858415, 546, 455799376
);

/* INSERT QUERY NO: 547 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
954268369, 547, 226260525
);

/* INSERT QUERY NO: 548 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
805431362, 548, 638713388
);

/* INSERT QUERY NO: 549 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
300894071, 549, 564483683
);

/* INSERT QUERY NO: 550 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
587560489, 550, 223256573
);

/* INSERT QUERY NO: 551 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
693944141, 551, 637640979
);

/* INSERT QUERY NO: 552 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
977165189, 552, 834955090
);

/* INSERT QUERY NO: 553 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
965047526, 553, 209672087
);

/* INSERT QUERY NO: 554 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
999518066, 554, 175297093
);

/* INSERT QUERY NO: 555 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
604506329, 555, 100839729
);

/* INSERT QUERY NO: 556 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
932702402, 556, 710628570
);

/* INSERT QUERY NO: 557 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
114876856, 557, 929670489
);

/* INSERT QUERY NO: 558 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
961128658, 558, 793339948
);

/* INSERT QUERY NO: 559 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
507816732, 559, 604632535
);

/* INSERT QUERY NO: 560 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
398354746, 560, 868969030
);

/* INSERT QUERY NO: 561 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
990468294, 561, 448849743
);

/* INSERT QUERY NO: 562 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
377723851, 562, 141248540
);

/* INSERT QUERY NO: 563 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
538773317, 563, 425524557
);

/* INSERT QUERY NO: 564 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
508746713, 564, 192414954
);

/* INSERT QUERY NO: 565 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
482890206, 565, 318592001
);

/* INSERT QUERY NO: 566 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
725287100, 566, 326497537
);

/* INSERT QUERY NO: 567 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
308968102, 567, 985244799
);

/* INSERT QUERY NO: 568 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
505505530, 568, 507577837
);

/* INSERT QUERY NO: 569 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
287432315, 569, 391486089
);

/* INSERT QUERY NO: 570 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
320284569, 570, 223143904
);

/* INSERT QUERY NO: 571 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
763610755, 571, 757973574
);

/* INSERT QUERY NO: 572 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
431581524, 572, 756757055
);

/* INSERT QUERY NO: 573 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
279822436, 573, 541420933
);

/* INSERT QUERY NO: 574 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
393694568, 574, 214002988
);

/* INSERT QUERY NO: 575 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
484228143, 575, 274892255
);

/* INSERT QUERY NO: 576 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
677925964, 576, 894345162
);

/* INSERT QUERY NO: 577 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
416187741, 577, 359966153
);

/* INSERT QUERY NO: 578 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
783583289, 578, 184444979
);

/* INSERT QUERY NO: 579 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
198075532, 579, 979777334
);

/* INSERT QUERY NO: 580 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
901676984, 580, 732885712
);

/* INSERT QUERY NO: 581 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
224008229, 581, 521165267
);

/* INSERT QUERY NO: 582 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
321411820, 582, 454055361
);

/* INSERT QUERY NO: 583 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
607207526, 583, 122976530
);

/* INSERT QUERY NO: 584 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
673121425, 584, 758793891
);

/* INSERT QUERY NO: 585 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
473276574, 585, 944752490
);

/* INSERT QUERY NO: 586 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
767178200, 586, 125074868
);

/* INSERT QUERY NO: 587 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
361841583, 587, 918225994
);

/* INSERT QUERY NO: 588 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
299414042, 588, 551097402
);

/* INSERT QUERY NO: 589 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
947338722, 589, 477739872
);

/* INSERT QUERY NO: 590 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
753724518, 590, 964674679
);

/* INSERT QUERY NO: 591 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
370844923, 591, 700943594
);

/* INSERT QUERY NO: 592 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
503736654, 592, 915365165
);

/* INSERT QUERY NO: 593 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
859641363, 593, 937083736
);

/* INSERT QUERY NO: 594 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
630843902, 594, 109030302
);

/* INSERT QUERY NO: 595 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
428141006, 595, 628747693
);

/* INSERT QUERY NO: 596 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
169201244, 596, 555442249
);

/* INSERT QUERY NO: 597 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
939340972, 597, 200160739
);

/* INSERT QUERY NO: 598 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
944589198, 598, 738218900
);

/* INSERT QUERY NO: 599 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
456657859, 599, 989452807
);

/* INSERT QUERY NO: 600 */
INSERT INTO TAKES(dSSN, uCode, eSSN)
VALUES
(
197855406, 600, 737864976
);



/* INSERT QUERY NO: 1 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
719864564, 6857
);

/* INSERT QUERY NO: 2 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
289931136, 8700
);

/* INSERT QUERY NO: 3 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
612392381, 2883
);

/* INSERT QUERY NO: 4 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
930735058, 6589
);

/* INSERT QUERY NO: 5 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
715244303, 6685
);

/* INSERT QUERY NO: 6 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
512102233, 12
);

/* INSERT QUERY NO: 7 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
457614703, 7641
);

/* INSERT QUERY NO: 8 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
310672150, 1218
);

/* INSERT QUERY NO: 9 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
873888404, 7250
);

/* INSERT QUERY NO: 10 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
660354682, 8621
);

/* INSERT QUERY NO: 11 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
492172191, 2588
);

/* INSERT QUERY NO: 12 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
983465195, 4931
);

/* INSERT QUERY NO: 13 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
914493402, 5104
);

/* INSERT QUERY NO: 14 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
984208013, 2709
);

/* INSERT QUERY NO: 15 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
388287820, 6898
);

/* INSERT QUERY NO: 16 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
825172416, 6982
);

/* INSERT QUERY NO: 17 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
647800044, 7281
);

/* INSERT QUERY NO: 18 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
631260728, 6599
);

/* INSERT QUERY NO: 19 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
119826631, 2469
);

/* INSERT QUERY NO: 20 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
808550212, 5413
);

/* INSERT QUERY NO: 21 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
475261394, 5706
);

/* INSERT QUERY NO: 22 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
359329466, 5969
);

/* INSERT QUERY NO: 23 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
445728692, 5704
);

/* INSERT QUERY NO: 24 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
714781229, 1860
);

/* INSERT QUERY NO: 25 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
279291110, 7929
);

/* INSERT QUERY NO: 26 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
957895538, 7102
);

/* INSERT QUERY NO: 27 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
551382777, 4025
);

/* INSERT QUERY NO: 28 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
103872682, 848
);

/* INSERT QUERY NO: 29 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
177315911, 7775
);

/* INSERT QUERY NO: 30 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
191218411, 8967
);

/* INSERT QUERY NO: 31 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
866970274, 466
);

/* INSERT QUERY NO: 32 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
573640603, 4342
);

/* INSERT QUERY NO: 33 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
777774691, 643
);

/* INSERT QUERY NO: 34 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
884664527, 2354
);

/* INSERT QUERY NO: 35 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
691122502, 6759
);

/* INSERT QUERY NO: 36 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
425002608, 779
);

/* INSERT QUERY NO: 37 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
186782291, 5935
);

/* INSERT QUERY NO: 38 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
124135489, 5180
);

/* INSERT QUERY NO: 39 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
487134501, 8571
);

/* INSERT QUERY NO: 40 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
473906866, 1192
);

/* INSERT QUERY NO: 41 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
360224711, 4673
);

/* INSERT QUERY NO: 42 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
994606592, 6115
);

/* INSERT QUERY NO: 43 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
770910840, 4325
);

/* INSERT QUERY NO: 44 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
335456678, 4662
);

/* INSERT QUERY NO: 45 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
793952572, 5093
);

/* INSERT QUERY NO: 46 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
489363943, 1097
);

/* INSERT QUERY NO: 47 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
121696724, 5655
);

/* INSERT QUERY NO: 48 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
154886895, 1189
);

/* INSERT QUERY NO: 49 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
938104487, 5252
);

/* INSERT QUERY NO: 50 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
535157826, 5841
);

/* INSERT QUERY NO: 51 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
415461433, 6607
);

/* INSERT QUERY NO: 52 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
464544418, 879
);

/* INSERT QUERY NO: 53 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
672033550, 8878
);

/* INSERT QUERY NO: 54 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
429725355, 4534
);

/* INSERT QUERY NO: 55 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
705858701, 2907
);

/* INSERT QUERY NO: 56 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
621335778, 6179
);

/* INSERT QUERY NO: 57 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
575164400, 6881
);

/* INSERT QUERY NO: 58 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
940795975, 2903
);

/* INSERT QUERY NO: 59 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
601013900, 4570
);

/* INSERT QUERY NO: 60 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
730109764, 3735
);

/* INSERT QUERY NO: 61 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
371393640, 1962
);

/* INSERT QUERY NO: 62 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
140874616, 5043
);

/* INSERT QUERY NO: 63 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
459184233, 6669
);

/* INSERT QUERY NO: 64 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
866113252, 5671
);

/* INSERT QUERY NO: 65 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
126972984, 8035
);

/* INSERT QUERY NO: 66 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
993412112, 8315
);

/* INSERT QUERY NO: 67 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
925745525, 5833
);

/* INSERT QUERY NO: 68 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
182081400, 7516
);

/* INSERT QUERY NO: 69 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
117394836, 5492
);

/* INSERT QUERY NO: 70 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
501394739, 8971
);

/* INSERT QUERY NO: 71 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
340408620, 694
);

/* INSERT QUERY NO: 72 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
430780731, 1854
);

/* INSERT QUERY NO: 73 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
623872532, 3459
);

/* INSERT QUERY NO: 74 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
185038326, 6302
);

/* INSERT QUERY NO: 75 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
491831873, 7175
);

/* INSERT QUERY NO: 76 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
698293213, 4491
);

/* INSERT QUERY NO: 77 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
375143626, 2899
);

/* INSERT QUERY NO: 78 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
638836364, 4609
);

/* INSERT QUERY NO: 79 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
918337884, 4849
);

/* INSERT QUERY NO: 80 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
842471721, 6700
);

/* INSERT QUERY NO: 81 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
356738982, 2981
);

/* INSERT QUERY NO: 82 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
194742711, 8963
);

/* INSERT QUERY NO: 83 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
211364019, 3573
);

/* INSERT QUERY NO: 84 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
963810136, 6665
);

/* INSERT QUERY NO: 85 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
919309389, 8705
);

/* INSERT QUERY NO: 86 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
669865712, 4387
);

/* INSERT QUERY NO: 87 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
922900770, 5521
);

/* INSERT QUERY NO: 88 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
287723150, 475
);

/* INSERT QUERY NO: 89 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
723280917, 1705
);

/* INSERT QUERY NO: 90 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
470919590, 3707
);

/* INSERT QUERY NO: 91 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
928205785, 5259
);

/* INSERT QUERY NO: 92 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
653392014, 3985
);

/* INSERT QUERY NO: 93 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
951629806, 2350
);

/* INSERT QUERY NO: 94 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
918710235, 7691
);

/* INSERT QUERY NO: 95 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
990766229, 4853
);

/* INSERT QUERY NO: 96 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
230214203, 7169
);

/* INSERT QUERY NO: 97 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
530814872, 6842
);

/* INSERT QUERY NO: 98 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
899871823, 6289
);

/* INSERT QUERY NO: 99 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
946973645, 7412
);

/* INSERT QUERY NO: 100 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
903691734, 3676
);

/* INSERT QUERY NO: 101 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
766416145, 5232
);

/* INSERT QUERY NO: 102 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
804528239, 8140
);

/* INSERT QUERY NO: 103 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
512843118, 2750
);

/* INSERT QUERY NO: 104 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
774957501, 6138
);

/* INSERT QUERY NO: 105 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
495694915, 2177
);

/* INSERT QUERY NO: 106 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
171593598, 367
);

/* INSERT QUERY NO: 107 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
122326525, 2656
);

/* INSERT QUERY NO: 108 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
832951625, 849
);

/* INSERT QUERY NO: 109 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
322799860, 151
);

/* INSERT QUERY NO: 110 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
266856407, 3378
);

/* INSERT QUERY NO: 111 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
312948516, 6500
);

/* INSERT QUERY NO: 112 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
308823827, 2475
);

/* INSERT QUERY NO: 113 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
743888109, 3190
);

/* INSERT QUERY NO: 114 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
817143562, 4789
);

/* INSERT QUERY NO: 115 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
629790842, 3373
);

/* INSERT QUERY NO: 116 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
693228371, 6531
);

/* INSERT QUERY NO: 117 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
616144403, 5673
);

/* INSERT QUERY NO: 118 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
126761321, 6752
);

/* INSERT QUERY NO: 119 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
397684749, 1598
);

/* INSERT QUERY NO: 120 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
484825287, 4421
);

/* INSERT QUERY NO: 121 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
523757677, 6309
);

/* INSERT QUERY NO: 122 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
237429652, 3563
);

/* INSERT QUERY NO: 123 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
390610069, 1612
);

/* INSERT QUERY NO: 124 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
715909011, 76
);

/* INSERT QUERY NO: 125 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
607629134, 5624
);

/* INSERT QUERY NO: 126 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
741538843, 7423
);

/* INSERT QUERY NO: 127 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
509613980, 24
);

/* INSERT QUERY NO: 128 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
153036692, 837
);

/* INSERT QUERY NO: 129 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
701361481, 1302
);

/* INSERT QUERY NO: 130 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
433897691, 3639
);

/* INSERT QUERY NO: 131 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
998186931, 5159
);

/* INSERT QUERY NO: 132 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
175231134, 4203
);

/* INSERT QUERY NO: 133 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
509134177, 6606
);

/* INSERT QUERY NO: 134 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
282228258, 3212
);

/* INSERT QUERY NO: 135 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
461086395, 785
);

/* INSERT QUERY NO: 136 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
415547870, 174
);

/* INSERT QUERY NO: 137 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
546991060, 4683
);

/* INSERT QUERY NO: 138 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
189407024, 3329
);

/* INSERT QUERY NO: 139 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
684791763, 7448
);

/* INSERT QUERY NO: 140 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
646633407, 1296
);

/* INSERT QUERY NO: 141 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
150056392, 738
);

/* INSERT QUERY NO: 142 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
344378609, 5777
);

/* INSERT QUERY NO: 143 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
944336070, 3238
);

/* INSERT QUERY NO: 144 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
460441481, 6486
);

/* INSERT QUERY NO: 145 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
292741371, 1596
);

/* INSERT QUERY NO: 146 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
521126071, 1048
);

/* INSERT QUERY NO: 147 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
826274730, 4146
);

/* INSERT QUERY NO: 148 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
830940458, 5324
);

/* INSERT QUERY NO: 149 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
369207259, 7567
);

/* INSERT QUERY NO: 150 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
873307640, 554
);

/* INSERT QUERY NO: 151 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
805051951, 7291
);

/* INSERT QUERY NO: 152 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
152226271, 8726
);

/* INSERT QUERY NO: 153 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
192691572, 2096
);

/* INSERT QUERY NO: 154 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
381926819, 1521
);

/* INSERT QUERY NO: 155 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
701913313, 7056
);

/* INSERT QUERY NO: 156 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
849409096, 4856
);

/* INSERT QUERY NO: 157 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
172081420, 2584
);

/* INSERT QUERY NO: 158 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
173833685, 1373
);

/* INSERT QUERY NO: 159 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
399553911, 4650
);

/* INSERT QUERY NO: 160 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
700890939, 6472
);

/* INSERT QUERY NO: 161 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
891122253, 3548
);

/* INSERT QUERY NO: 162 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
468153715, 2262
);

/* INSERT QUERY NO: 163 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
795637090, 8178
);

/* INSERT QUERY NO: 164 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
162989426, 297
);

/* INSERT QUERY NO: 165 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
806368153, 3482
);

/* INSERT QUERY NO: 166 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
873253901, 5500
);

/* INSERT QUERY NO: 167 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
512706648, 8079
);

/* INSERT QUERY NO: 168 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
208979838, 8617
);

/* INSERT QUERY NO: 169 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
476660373, 7535
);

/* INSERT QUERY NO: 170 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
509908909, 1434
);

/* INSERT QUERY NO: 171 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
903222492, 8360
);

/* INSERT QUERY NO: 172 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
997054860, 1087
);

/* INSERT QUERY NO: 173 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
193893976, 128
);

/* INSERT QUERY NO: 174 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
439160786, 7125
);

/* INSERT QUERY NO: 175 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
304441921, 4266
);

/* INSERT QUERY NO: 176 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
165314581, 3394
);

/* INSERT QUERY NO: 177 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
201937784, 6755
);

/* INSERT QUERY NO: 178 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
524493474, 6621
);

/* INSERT QUERY NO: 179 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
807290486, 3138
);

/* INSERT QUERY NO: 180 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
267987096, 5937
);

/* INSERT QUERY NO: 181 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
534891938, 8166
);

/* INSERT QUERY NO: 182 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
690320218, 5429
);

/* INSERT QUERY NO: 183 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
566967269, 8470
);

/* INSERT QUERY NO: 184 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
489436862, 597
);

/* INSERT QUERY NO: 185 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
764789959, 984
);

/* INSERT QUERY NO: 186 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
193023786, 2501
);

/* INSERT QUERY NO: 187 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
217030855, 6297
);

/* INSERT QUERY NO: 188 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
627557892, 1140
);

/* INSERT QUERY NO: 189 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
393341976, 3331
);

/* INSERT QUERY NO: 190 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
536730685, 768
);

/* INSERT QUERY NO: 191 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
298610512, 1581
);

/* INSERT QUERY NO: 192 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
345063732, 7975
);

/* INSERT QUERY NO: 193 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
853446046, 3801
);

/* INSERT QUERY NO: 194 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
788126890, 7387
);

/* INSERT QUERY NO: 195 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
356411576, 8706
);

/* INSERT QUERY NO: 196 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
974599335, 2812
);

/* INSERT QUERY NO: 197 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
544885031, 7619
);

/* INSERT QUERY NO: 198 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
853375353, 8220
);

/* INSERT QUERY NO: 199 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
151246203, 5111
);

/* INSERT QUERY NO: 200 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
793974852, 2466
);

/* INSERT QUERY NO: 201 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
555912165, 1518
);

/* INSERT QUERY NO: 202 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
287814528, 1984
);

/* INSERT QUERY NO: 203 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
238829850, 5652
);

/* INSERT QUERY NO: 204 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
952202682, 1424
);

/* INSERT QUERY NO: 205 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
198956260, 6350
);

/* INSERT QUERY NO: 206 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
118486919, 857
);

/* INSERT QUERY NO: 207 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
404411873, 3146
);

/* INSERT QUERY NO: 208 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
368570275, 6384
);

/* INSERT QUERY NO: 209 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
300578452, 7492
);

/* INSERT QUERY NO: 210 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
123377591, 3863
);

/* INSERT QUERY NO: 211 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
709290657, 4506
);

/* INSERT QUERY NO: 212 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
800926768, 8672
);

/* INSERT QUERY NO: 213 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
313981003, 7476
);

/* INSERT QUERY NO: 214 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
364238656, 7626
);

/* INSERT QUERY NO: 215 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
319051307, 7473
);

/* INSERT QUERY NO: 216 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
670716622, 224
);

/* INSERT QUERY NO: 217 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
763711964, 3737
);

/* INSERT QUERY NO: 218 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
614835560, 6883
);

/* INSERT QUERY NO: 219 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
830985128, 878
);

/* INSERT QUERY NO: 220 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
788443614, 1810
);

/* INSERT QUERY NO: 221 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
309402065, 701
);

/* INSERT QUERY NO: 222 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
226355255, 5194
);

/* INSERT QUERY NO: 223 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
211439534, 4109
);

/* INSERT QUERY NO: 224 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
215815075, 2329
);

/* INSERT QUERY NO: 225 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
984257874, 2102
);

/* INSERT QUERY NO: 226 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
135006949, 2102
);

/* INSERT QUERY NO: 227 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
321816742, 6857
);

/* INSERT QUERY NO: 228 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
366000161, 8700
);

/* INSERT QUERY NO: 229 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
297672267, 2883
);

/* INSERT QUERY NO: 230 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
867662841, 6589
);

/* INSERT QUERY NO: 231 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
213526644, 6685
);

/* INSERT QUERY NO: 232 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
404455602, 12
);

/* INSERT QUERY NO: 233 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
538397237, 7641
);

/* INSERT QUERY NO: 234 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
933912911, 1218
);

/* INSERT QUERY NO: 235 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
714689951, 7250
);

/* INSERT QUERY NO: 236 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
279896072, 8621
);

/* INSERT QUERY NO: 237 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
436213770, 2588
);

/* INSERT QUERY NO: 238 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
296763625, 4931
);

/* INSERT QUERY NO: 239 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
276131342, 5104
);

/* INSERT QUERY NO: 240 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
988362047, 2709
);

/* INSERT QUERY NO: 241 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
985948733, 6898
);

/* INSERT QUERY NO: 242 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
502758935, 6982
);

/* INSERT QUERY NO: 243 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
711675860, 7281
);

/* INSERT QUERY NO: 244 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
127138773, 6599
);

/* INSERT QUERY NO: 245 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
594016924, 2469
);

/* INSERT QUERY NO: 246 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
732062425, 5413
);

/* INSERT QUERY NO: 247 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
920794449, 5706
);

/* INSERT QUERY NO: 248 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
760009545, 5969
);

/* INSERT QUERY NO: 249 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
299232473, 5704
);

/* INSERT QUERY NO: 250 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
765758519, 1860
);

/* INSERT QUERY NO: 251 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
435117599, 7929
);

/* INSERT QUERY NO: 252 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
592336730, 7102
);

/* INSERT QUERY NO: 253 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
285281032, 4025
);

/* INSERT QUERY NO: 254 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
645639451, 848
);

/* INSERT QUERY NO: 255 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
486268126, 7775
);

/* INSERT QUERY NO: 256 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
386368152, 8967
);

/* INSERT QUERY NO: 257 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
715821256, 466
);

/* INSERT QUERY NO: 258 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
719566446, 4342
);

/* INSERT QUERY NO: 259 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
243764793, 643
);

/* INSERT QUERY NO: 260 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
523266961, 2354
);

/* INSERT QUERY NO: 261 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
901462702, 6759
);

/* INSERT QUERY NO: 262 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
696032705, 779
);

/* INSERT QUERY NO: 263 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
434408554, 5935
);

/* INSERT QUERY NO: 264 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
247539709, 5180
);

/* INSERT QUERY NO: 265 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
133727354, 8571
);

/* INSERT QUERY NO: 266 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
956250588, 1192
);

/* INSERT QUERY NO: 267 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
972943007, 4673
);

/* INSERT QUERY NO: 268 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
183281957, 6115
);

/* INSERT QUERY NO: 269 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
997109381, 4325
);

/* INSERT QUERY NO: 270 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
389569695, 4662
);

/* INSERT QUERY NO: 271 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
638149534, 5093
);

/* INSERT QUERY NO: 272 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
424409717, 1097
);

/* INSERT QUERY NO: 273 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
756917697, 5655
);

/* INSERT QUERY NO: 274 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
800007290, 1189
);

/* INSERT QUERY NO: 275 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
286533098, 5252
);

/* INSERT QUERY NO: 276 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
997154011, 5841
);

/* INSERT QUERY NO: 277 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
938536757, 6607
);

/* INSERT QUERY NO: 278 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
595866004, 879
);

/* INSERT QUERY NO: 279 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
556703117, 8878
);

/* INSERT QUERY NO: 280 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
634709776, 4534
);

/* INSERT QUERY NO: 281 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
701580588, 2907
);

/* INSERT QUERY NO: 282 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
256568833, 6179
);

/* INSERT QUERY NO: 283 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
896255500, 6881
);

/* INSERT QUERY NO: 284 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
968666024, 2903
);

/* INSERT QUERY NO: 285 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
876801036, 4570
);

/* INSERT QUERY NO: 286 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
315173157, 3735
);

/* INSERT QUERY NO: 287 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
825690718, 1962
);

/* INSERT QUERY NO: 288 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
461748297, 5043
);

/* INSERT QUERY NO: 289 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
876613887, 6669
);

/* INSERT QUERY NO: 290 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
405786471, 5671
);

/* INSERT QUERY NO: 291 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
641982747, 8035
);

/* INSERT QUERY NO: 292 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
660476746, 8315
);

/* INSERT QUERY NO: 293 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
721141100, 5833
);

/* INSERT QUERY NO: 294 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
836857419, 7516
);

/* INSERT QUERY NO: 295 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
739216977, 5492
);

/* INSERT QUERY NO: 296 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
168791341, 8971
);

/* INSERT QUERY NO: 297 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
656763069, 694
);

/* INSERT QUERY NO: 298 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
346529486, 1854
);

/* INSERT QUERY NO: 299 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
842514480, 3459
);

/* INSERT QUERY NO: 300 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
924243034, 6302
);

/* INSERT QUERY NO: 301 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
608211556, 7175
);

/* INSERT QUERY NO: 302 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
363393841, 4491
);

/* INSERT QUERY NO: 303 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
357219331, 2899
);

/* INSERT QUERY NO: 304 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
238061000, 4609
);

/* INSERT QUERY NO: 305 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
372173938, 4849
);

/* INSERT QUERY NO: 306 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
975519907, 6700
);

/* INSERT QUERY NO: 307 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
289033441, 2981
);

/* INSERT QUERY NO: 308 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
853816541, 8963
);

/* INSERT QUERY NO: 309 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
177737126, 3573
);

/* INSERT QUERY NO: 310 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
512772195, 6665
);

/* INSERT QUERY NO: 311 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
354586041, 8705
);

/* INSERT QUERY NO: 312 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
738970208, 4387
);

/* INSERT QUERY NO: 313 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
442809446, 5521
);

/* INSERT QUERY NO: 314 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
284054928, 475
);

/* INSERT QUERY NO: 315 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
663473126, 1705
);

/* INSERT QUERY NO: 316 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
299227756, 3707
);

/* INSERT QUERY NO: 317 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
403627618, 5259
);

/* INSERT QUERY NO: 318 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
219307670, 3985
);

/* INSERT QUERY NO: 319 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
174089937, 2350
);

/* INSERT QUERY NO: 320 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
608259484, 7691
);

/* INSERT QUERY NO: 321 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
503490986, 4853
);

/* INSERT QUERY NO: 322 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
421517837, 7169
);

/* INSERT QUERY NO: 323 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
430537269, 6842
);

/* INSERT QUERY NO: 324 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
526554970, 6289
);

/* INSERT QUERY NO: 325 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
176627306, 7412
);

/* INSERT QUERY NO: 326 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
737254942, 3676
);

/* INSERT QUERY NO: 327 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
885429897, 5232
);

/* INSERT QUERY NO: 328 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
874756460, 8140
);

/* INSERT QUERY NO: 329 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
275768613, 2750
);

/* INSERT QUERY NO: 330 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
601070880, 6138
);

/* INSERT QUERY NO: 331 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
386159372, 2177
);

/* INSERT QUERY NO: 332 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
672975622, 367
);

/* INSERT QUERY NO: 333 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
789041587, 2656
);

/* INSERT QUERY NO: 334 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
650987994, 849
);

/* INSERT QUERY NO: 335 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
868763962, 151
);

/* INSERT QUERY NO: 336 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
563423940, 3378
);

/* INSERT QUERY NO: 337 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
286479654, 6500
);

/* INSERT QUERY NO: 338 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
564333576, 2475
);

/* INSERT QUERY NO: 339 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
360131111, 3190
);

/* INSERT QUERY NO: 340 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
206266771, 4789
);

/* INSERT QUERY NO: 341 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
609250260, 3373
);

/* INSERT QUERY NO: 342 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
643262759, 6531
);

/* INSERT QUERY NO: 343 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
216072634, 5673
);

/* INSERT QUERY NO: 344 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
768586270, 6752
);

/* INSERT QUERY NO: 345 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
998092386, 1598
);

/* INSERT QUERY NO: 346 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
495063022, 4421
);

/* INSERT QUERY NO: 347 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
876209214, 6309
);

/* INSERT QUERY NO: 348 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
863055717, 3563
);

/* INSERT QUERY NO: 349 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
165894936, 1612
);

/* INSERT QUERY NO: 350 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
668247279, 76
);

/* INSERT QUERY NO: 351 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
225326382, 5624
);

/* INSERT QUERY NO: 352 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
319006878, 7423
);

/* INSERT QUERY NO: 353 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
115726411, 24
);

/* INSERT QUERY NO: 354 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
346867691, 837
);

/* INSERT QUERY NO: 355 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
910023133, 1302
);

/* INSERT QUERY NO: 356 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
780697425, 3639
);

/* INSERT QUERY NO: 357 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
169744728, 5159
);

/* INSERT QUERY NO: 358 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
432669332, 4203
);

/* INSERT QUERY NO: 359 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
958213532, 6606
);

/* INSERT QUERY NO: 360 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
198714826, 3212
);

/* INSERT QUERY NO: 361 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
941229357, 785
);

/* INSERT QUERY NO: 362 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
684241404, 174
);

/* INSERT QUERY NO: 363 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
514826814, 4683
);

/* INSERT QUERY NO: 364 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
394080381, 3329
);

/* INSERT QUERY NO: 365 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
776622516, 7448
);

/* INSERT QUERY NO: 366 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
586232427, 1296
);

/* INSERT QUERY NO: 367 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
342554405, 738
);

/* INSERT QUERY NO: 368 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
995541939, 5777
);

/* INSERT QUERY NO: 369 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
610144170, 3238
);

/* INSERT QUERY NO: 370 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
248413591, 6486
);

/* INSERT QUERY NO: 371 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
848414798, 1596
);

/* INSERT QUERY NO: 372 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
570914688, 1048
);

/* INSERT QUERY NO: 373 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
166260903, 4146
);

/* INSERT QUERY NO: 374 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
806781132, 5324
);

/* INSERT QUERY NO: 375 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
453378632, 7567
);

/* INSERT QUERY NO: 376 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
156503032, 554
);

/* INSERT QUERY NO: 377 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
166992864, 7291
);

/* INSERT QUERY NO: 378 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
409046850, 8726
);

/* INSERT QUERY NO: 379 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
136163741, 2096
);

/* INSERT QUERY NO: 380 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
726124427, 1521
);

/* INSERT QUERY NO: 381 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
243467809, 7056
);

/* INSERT QUERY NO: 382 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
318642942, 4856
);

/* INSERT QUERY NO: 383 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
264161742, 2584
);

/* INSERT QUERY NO: 384 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
236775411, 1373
);

/* INSERT QUERY NO: 385 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
542958839, 4650
);

/* INSERT QUERY NO: 386 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
583589231, 6472
);

/* INSERT QUERY NO: 387 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
253284965, 3548
);

/* INSERT QUERY NO: 388 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
709110900, 2262
);

/* INSERT QUERY NO: 389 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
391479893, 8178
);

/* INSERT QUERY NO: 390 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
487328284, 297
);

/* INSERT QUERY NO: 391 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
116762461, 3482
);

/* INSERT QUERY NO: 392 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
374785307, 5500
);

/* INSERT QUERY NO: 393 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
374327147, 8079
);

/* INSERT QUERY NO: 394 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
158966862, 8617
);

/* INSERT QUERY NO: 395 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
947037384, 7535
);

/* INSERT QUERY NO: 396 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
140166931, 1434
);

/* INSERT QUERY NO: 397 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
346964536, 8360
);

/* INSERT QUERY NO: 398 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
736180442, 1087
);

/* INSERT QUERY NO: 399 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
644934596, 128
);

/* INSERT QUERY NO: 400 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
653044424, 7125
);

/* INSERT QUERY NO: 401 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
518155053, 4266
);

/* INSERT QUERY NO: 402 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
444192710, 3394
);

/* INSERT QUERY NO: 403 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
750064469, 6755
);

/* INSERT QUERY NO: 404 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
585974426, 6621
);

/* INSERT QUERY NO: 405 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
133761058, 3138
);

/* INSERT QUERY NO: 406 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
179151510, 5937
);

/* INSERT QUERY NO: 407 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
447320870, 8166
);

/* INSERT QUERY NO: 408 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
467841716, 5429
);

/* INSERT QUERY NO: 409 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
599231477, 8470
);

/* INSERT QUERY NO: 410 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
684124083, 597
);

/* INSERT QUERY NO: 411 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
208740987, 984
);

/* INSERT QUERY NO: 412 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
833451511, 2501
);

/* INSERT QUERY NO: 413 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
558402134, 6297
);

/* INSERT QUERY NO: 414 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
509277186, 1140
);

/* INSERT QUERY NO: 415 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
948241072, 3331
);

/* INSERT QUERY NO: 416 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
697145938, 768
);

/* INSERT QUERY NO: 417 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
497497776, 1581
);

/* INSERT QUERY NO: 418 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
978348890, 7975
);

/* INSERT QUERY NO: 419 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
350510277, 3801
);

/* INSERT QUERY NO: 420 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
387365678, 7387
);

/* INSERT QUERY NO: 421 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
971940922, 8706
);

/* INSERT QUERY NO: 422 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
887717038, 2812
);

/* INSERT QUERY NO: 423 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
742541081, 7619
);

/* INSERT QUERY NO: 424 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
798047128, 8220
);

/* INSERT QUERY NO: 425 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
208440070, 5111
);

/* INSERT QUERY NO: 426 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
867886330, 2466
);

/* INSERT QUERY NO: 427 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
831234620, 1518
);

/* INSERT QUERY NO: 428 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
424870917, 1984
);

/* INSERT QUERY NO: 429 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
977599626, 5652
);

/* INSERT QUERY NO: 430 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
282690944, 1424
);

/* INSERT QUERY NO: 431 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
162697762, 6350
);

/* INSERT QUERY NO: 432 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
335045909, 857
);

/* INSERT QUERY NO: 433 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
557446669, 3146
);

/* INSERT QUERY NO: 434 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
496018551, 6384
);

/* INSERT QUERY NO: 435 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
670832662, 7492
);

/* INSERT QUERY NO: 436 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
614160425, 3863
);

/* INSERT QUERY NO: 437 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
695611377, 4506
);

/* INSERT QUERY NO: 438 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
606918197, 8672
);

/* INSERT QUERY NO: 439 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
245799434, 7476
);

/* INSERT QUERY NO: 440 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
399620305, 7626
);

/* INSERT QUERY NO: 441 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
774868393, 7473
);

/* INSERT QUERY NO: 442 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
455799376, 224
);

/* INSERT QUERY NO: 443 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
226260525, 3737
);

/* INSERT QUERY NO: 444 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
638713388, 6883
);

/* INSERT QUERY NO: 445 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
564483683, 878
);

/* INSERT QUERY NO: 446 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
223256573, 1810
);

/* INSERT QUERY NO: 447 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
637640979, 701
);

/* INSERT QUERY NO: 448 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
834955090, 5194
);

/* INSERT QUERY NO: 449 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
209672087, 4109
);

/* INSERT QUERY NO: 450 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
175297093, 2329
);

/* INSERT QUERY NO: 451 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
100839729, 2102
);

/* INSERT QUERY NO: 452 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
710628570, 6621
);

/* INSERT QUERY NO: 453 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
929670489, 3138
);

/* INSERT QUERY NO: 454 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
793339948, 5937
);

/* INSERT QUERY NO: 455 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
604632535, 8166
);

/* INSERT QUERY NO: 456 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
868969030, 5429
);

/* INSERT QUERY NO: 457 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
448849743, 8470
);

/* INSERT QUERY NO: 458 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
141248540, 597
);

/* INSERT QUERY NO: 459 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
425524557, 984
);

/* INSERT QUERY NO: 460 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
192414954, 2501
);

/* INSERT QUERY NO: 461 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
318592001, 6297
);

/* INSERT QUERY NO: 462 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
326497537, 1140
);

/* INSERT QUERY NO: 463 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
985244799, 3331
);

/* INSERT QUERY NO: 464 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
507577837, 768
);

/* INSERT QUERY NO: 465 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
391486089, 1581
);

/* INSERT QUERY NO: 466 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
223143904, 7975
);

/* INSERT QUERY NO: 467 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
757973574, 3801
);

/* INSERT QUERY NO: 468 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
756757055, 7387
);

/* INSERT QUERY NO: 469 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
541420933, 8706
);

/* INSERT QUERY NO: 470 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
214002988, 2812
);

/* INSERT QUERY NO: 471 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
274892255, 7619
);

/* INSERT QUERY NO: 472 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
894345162, 8220
);

/* INSERT QUERY NO: 473 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
359966153, 5111
);

/* INSERT QUERY NO: 474 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
184444979, 2466
);

/* INSERT QUERY NO: 475 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
979777334, 1518
);

/* INSERT QUERY NO: 476 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
732885712, 1984
);

/* INSERT QUERY NO: 477 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
521165267, 5652
);

/* INSERT QUERY NO: 478 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
454055361, 1424
);

/* INSERT QUERY NO: 479 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
122976530, 6350
);

/* INSERT QUERY NO: 480 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
758793891, 857
);

/* INSERT QUERY NO: 481 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
944752490, 3146
);

/* INSERT QUERY NO: 482 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
125074868, 6384
);

/* INSERT QUERY NO: 483 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
918225994, 7492
);

/* INSERT QUERY NO: 484 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
551097402, 3863
);

/* INSERT QUERY NO: 485 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
477739872, 4506
);

/* INSERT QUERY NO: 486 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
964674679, 8672
);

/* INSERT QUERY NO: 487 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
700943594, 7476
);

/* INSERT QUERY NO: 488 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
915365165, 7626
);

/* INSERT QUERY NO: 489 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
937083736, 7473
);

/* INSERT QUERY NO: 490 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
109030302, 224
);

/* INSERT QUERY NO: 491 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
628747693, 3737
);

/* INSERT QUERY NO: 492 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
555442249, 6883
);

/* INSERT QUERY NO: 493 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
200160739, 878
);

/* INSERT QUERY NO: 494 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
738218900, 1810
);

/* INSERT QUERY NO: 495 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
989452807, 701
);

/* INSERT QUERY NO: 496 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
737864976, 5194
);

/* INSERT QUERY NO: 497 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
635925148, 4109
);

/* INSERT QUERY NO: 498 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
826770121, 2329
);

/* INSERT QUERY NO: 499 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
866297088, 2102
);

/* INSERT QUERY NO: 500 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
230582041, 6621
);

/* INSERT QUERY NO: 501 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
858999210, 3138
);

/* INSERT QUERY NO: 502 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
531412674, 5937
);

/* INSERT QUERY NO: 503 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
760297746, 8166
);

/* INSERT QUERY NO: 504 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
999728144, 5429
);

/* INSERT QUERY NO: 505 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
639225399, 8470
);

/* INSERT QUERY NO: 506 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
694973500, 597
);

/* INSERT QUERY NO: 507 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
797519473, 984
);

/* INSERT QUERY NO: 508 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
772002908, 2501
);

/* INSERT QUERY NO: 509 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
772377059, 6297
);

/* INSERT QUERY NO: 510 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
230240109, 1140
);

/* INSERT QUERY NO: 511 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
583686373, 3331
);

/* INSERT QUERY NO: 512 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
319608343, 768
);

/* INSERT QUERY NO: 513 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
717324029, 1581
);

/* INSERT QUERY NO: 514 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
826605308, 7975
);

/* INSERT QUERY NO: 515 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
105945142, 3801
);

/* INSERT QUERY NO: 516 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
203195214, 7387
);

/* INSERT QUERY NO: 517 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
705542442, 8706
);

/* INSERT QUERY NO: 518 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
849560875, 2812
);

/* INSERT QUERY NO: 519 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
660006187, 7619
);

/* INSERT QUERY NO: 520 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
209227516, 8220
);

/* INSERT QUERY NO: 521 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
609423978, 5111
);

/* INSERT QUERY NO: 522 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
737255073, 2466
);

/* INSERT QUERY NO: 523 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
667767027, 1518
);

/* INSERT QUERY NO: 524 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
200769246, 1984
);

/* INSERT QUERY NO: 525 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
479032816, 5652
);

/* INSERT QUERY NO: 526 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
706253956, 1424
);

/* INSERT QUERY NO: 527 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
633931892, 6350
);

/* INSERT QUERY NO: 528 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
856598387, 857
);

/* INSERT QUERY NO: 529 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
505255227, 3146
);

/* INSERT QUERY NO: 530 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
480408472, 6384
);

/* INSERT QUERY NO: 531 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
902868693, 7492
);

/* INSERT QUERY NO: 532 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
371538020, 3863
);

/* INSERT QUERY NO: 533 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
752803629, 4506
);

/* INSERT QUERY NO: 534 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
532293158, 8672
);

/* INSERT QUERY NO: 535 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
669289445, 7476
);

/* INSERT QUERY NO: 536 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
301883189, 7626
);

/* INSERT QUERY NO: 537 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
605615251, 7473
);

/* INSERT QUERY NO: 538 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
112833444, 224
);

/* INSERT QUERY NO: 539 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
531101070, 3737
);

/* INSERT QUERY NO: 540 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
617352061, 6883
);

/* INSERT QUERY NO: 541 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
910459906, 878
);

/* INSERT QUERY NO: 542 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
645437169, 1810
);

/* INSERT QUERY NO: 543 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
397342369, 701
);

/* INSERT QUERY NO: 544 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
155957181, 5194
);

/* INSERT QUERY NO: 545 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
945708648, 4109
);

/* INSERT QUERY NO: 546 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
437041011, 2329
);

/* INSERT QUERY NO: 547 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
959885997, 2102
);

/* INSERT QUERY NO: 548 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
584243656, 2102
);

/* INSERT QUERY NO: 549 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
228786585, 2102
);

/* INSERT QUERY NO: 550 */
INSERT INTO WORKS(eSSN, bCode)
VALUES
(
479915457, 2102
);



CREATE VIEW AVAILABLE_TYPES AS SELECT type, COUNT(type) FROM BLOOD_UNIT GROUP BY type;
SELECT * FROM AVAILABLE_TYPES;

CREATE PROCEDURE QUANTITY_OF (bloodType varchar(3)) 
(SELECT count(type) AS quantity FROM BLOOD_UNIT WHERE type = bloodType);
CALL QUANTITY_OF('B+');

CREATE VIEW NameWithLevel AS SELECT name, emergencyLvl from PERSON, PATIENT WHERE PERSON.SSN = PATIENT.pSSN ORDER BY emergencyLvl desc;
SELECT * FROM NameWithLevel;

CREATE PROCEDURE AT_WORK(t time) (SELECT name,shiftBegins,shiftEnds from PERSON P, EMPLOYEE E where P.SSN = E.eSSN and t >= E.shiftBegins and t <= E.shiftEnds);
CALL AT_WORK('12:30:00');

CREATE PROCEDURE ROLE(name varchar(50)) (SELECT name,role from PERSON P, ROLE r where r.eSSN = P.SSN and P.name = name);
CALL ROLE('Joudy Al Ashkar');

CREATE PROCEDURE eInfo_Patient (SSN int) (SELECT p1.name AS employee FROM PERSON p1,  EMPLOYEE e, GIVES pt WHERE p1.SSN = e.eSSN and pt.pSSN = SSN and pt.eSSN = e.eSSN);
CALL eInfo_Patient(202107920);

CREATE PROCEDURE eInfo_Donor (SSN int) (SELECT p1.name AS employee,p2.name AS supervisor FROM PERSON p1, PERSON p2, EMPLOYEE e, TAKES d WHERE p1.SSN = e.eSSN and p2.SSN = e.superSSN and d.dSSN = SSN and d.eSSN = e.eSSN);
CALL eInfo_Donor(202101282);

CREATE PROCEDURE LOCATIONS (bloodType varchar(3)) (SELECT BB.bName as center, BB.bLocation AS location FROM BLOOD_BANK BB, BLOOD_UNIT BU, CONTAINS C WHERE BU.type = bloodType and BU.sCode = C.sCode and BB.bCode = C.bCode);
CALL LOCATIONS ('B+');

CREATE PROCEDURE incSalary (hrs time, percentage float) 
UPDATE EMPLOYEE SET salary = salary + ((salary*percentage)/100) WHERE subtime(shiftEnds, shiftBegins) >= hrs or subtime(shiftBegins, shiftEnds) >= hrs;
CALL incSalary('05:30:00', 10.0);

CREATE VIEW Employees AS SELECT * FROM EMPLOYEE;
select * from employees;

CREATE VIEW patients AS SELECT * FROM PATIENT;
select * from patients;

CREATE VIEW donors AS SELECT * FROM DONOR;
select * from donors;

CREATE VIEW bloodBanks AS SELECT * FROM Blood_bank;
select * from bloodBanks;

CREATE VIEW bloodStocks AS SELECT * FROM Blood_stock;
select * from bloodStocks;

CREATE VIEW ContainsRlts AS SELECT * FROM contains;
select * from ContainsRlts;

CREATE VIEW roleRlts AS SELECT * FROM role;
select * from roleRlts;

CREATE VIEW givesRlts AS SELECT * FROM gives;
select * from givesRlts;

CREATE VIEW takesRlts AS SELECT * FROM takes;
select * from takesRlts;

CREATE VIEW bloodUnits AS SELECT * FROM blood_unit;
select * from bloodUnits;

CREATE VIEW worksRlts AS SELECT * FROM works;
select * from worksRlts;

CREATE VIEW people AS SELECT * FROM person;
select * from people;

CREATE PROCEDURE UPDATE_BU ()
DELETE FROM BLOOD_UNIT WHERE DATEDIFF(curdate(), putInDate)>=45;
CALL UPDATE_BU();

