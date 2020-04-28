/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  28/04/2020 22:17:28                      */
/*==============================================================*/


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

