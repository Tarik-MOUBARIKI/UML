/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  28/04/2020 22:17:28                      */
/*==============================================================*/
CREATE DATABASE newtm;
USE newtm;


drop table if exists Client;

drop table if exists Reservation;

drop table if exists Voiture;

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client
(
   idClient             int not null,
   nom                  varchar(254),
   email                varchar(254),
   password             varchar(254),
   primary key (idClient)
);

/*==============================================================*/
/* Table : Reservation                                          */
/*==============================================================*/
create table Reservation
(
   idClient             int,
   idVoiture            int,
   dateDebut            datetime,
   dateRetour           datetime
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

alter table Reservation add constraint FK_association2 foreign key (idVoiture)
      references Voiture (idVoiture) on delete restrict on update restrict;

alter table Reservation add constraint FK_association3 foreign key (idClient)
      references Client (idClient) on delete restrict on update restrict;


/*==============================================================*/
/* Inset data in Voiture Table                                           */
/*==============================================================*/
insert into Voiture
values (1,"img1","BMW");
insert into Voiture
values (2,"img2","DACIA");
/*==============================================================*/
/* Inset data in Reservation Table                                           */
/*==============================================================*/
insert into Reservation
values (1,1,'2020-04-30','2020-04-26');
insert into Reservation
values (2,2,'2020-05-12','2020-08-26');

/*==============================================================*/
/* Inset data in Client Table                                           */
/*==============================================================*/
INSERT INTO Client
VALUES (1, 'fna', 'fna@hotmail', 'azerty');
INSERT INTO Client
VALUES (2, 'ycd', 'ycd@hotmail', 'hjhjgjg');

/*==============================================================*/
/* Update in Voiture Table                                           */
/*==============================================================*/
update Voiture
set marque = 'polo'
where id = 2;

/*==============================================================*/
/* Delate in voiture Table                                           */
/*==============================================================*/
delete from Voiture where id = 2;

-- show table
 select * from Voiture;

/*==============================================================*/
/* Update in Reservation Table                                           */
/*==============================================================*/
update Reservation
set dateRetour = '2020-04-17'
where id = 2;

/*==============================================================*/
/* Delate inReservation Table                                           */
/*==============================================================*/
delete from Reservation where id = 2;

-- show table
 select * from Reservation;
/*==============================================================*/
/* Update Client Table                                           */
/*==============================================================*/
UPDATE client
SET email='Juan@hotmail'
WHERE idClient =2;

/*==============================================================*/
/* Delete in Client Table                                           */
/*==============================================================*/
DELETE FROM Client WHERE idClient='1';
select * from newtm.client;


