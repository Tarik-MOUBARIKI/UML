CREATE database youcode;
USE youcode;


/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client
(
   idClient             int not null,
   nom                  varchar(254),
   email               varchar(254),
   password             varchar(254),
   primary key (idClient)
);

/*==============================================================*/
/* Table : Reservation                                          */
/*==============================================================*/
create table Reservation (
   idClient  int,
   idVoiteur int, 
   dateDebut            datetime             null,
   dateRetour           datetime             null,
   PRIMARY KEY (idClient)

);

/*==============================================================*/
/* Table : Voiture                                              */
/*==============================================================*/
create table Voiture
(
   idVoiture            int not null,
   image                varchar(254),
   marque               varchar(254),
   primary key (idVoiture)
);

select * from Client;
select * from  Reservation;
select * from Voiture;

INSERT INTO Client values (1,"tarek","tarek@youcode.com","azerty");
INSERT INTO Client values (2,"abdo","abdo@youcode.com","qwerty");

INSERT INTO Voiture values (1,"BMW.PNG","BMW");
INSERT INTO Voiture values (2,"DACIA.PNG","DACIA");

INSERT INTO Reservation values (1,1,"20_05_15","20_05_18");
INSERT INTO Reservation values (2,2,"20_05_17","20_05_19");

UPDATE Client SET password="qsdfgh" where idClient=1;
UPDATE Reservation SET dateRetour="12_05_20" where idClient=1;
UPDATE Voiture SET image="BMNOUVEAU" where idVoiture=1;

DELETE FROM Client WHERE idClient='2';


CREATE USER 'tarek'@'localhost' IDENTIFIED BY 'azerty';
grant insert on youcode.* to 'tarek'@'localhost';

