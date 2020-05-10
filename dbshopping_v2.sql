/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  26/04/2020 13:13:24                      */
/*==============================================================*/

create database dbshopping;
use dbshopping;


/*création des tables de la base de données*/

drop table if exists Admin;

drop table if exists Customer;

drop table if exists Ordere;

drop table if exists Order_Details;

drop table if exists Shipping_Info;

drop table if exists Shopping_cart;

drop table if exists webUser;

/*==============================================================*/
/* Table : Admin                                                */
/*==============================================================*/
create table Admin
(
   loginId               varchar(254) not null,
   adminName            varchar(254),
   email                varchar(254),
   primary key (loginId)
);

/*==============================================================*/
/* Table : Customer                                             */
/*==============================================================*/
create table Customer
(
   customerName         varchar(254) not null,
       Id               varchar(254),
   address              varchar(254),
   email                varchar(254),
   creditCardinfo       varchar(254),
   accountBalance       float,
   primary key (customerName)
);

/*==============================================================*/
/* Table : "Order"                                              */
/*==============================================================*/
create table Ordere
(
   orderId              int not null,
   dateCreated          varchar(254),
   dateShipped          varchar(254),
   customerName         varchar(254),
   Shi_shippingId       int,
   customerId           varchar(254),
   status               varchar(254),
   shippingId           varchar(254),
   primary key (orderId)
);

/*==============================================================*/
/* Table : Order_Details                                        */
/*==============================================================*/
create table Order_Details
(
   orderId              int not null,
   productId            int,
   productName          varchar(254),
   quantity             float,
   uniCost              float,
   primary key (orderId)
);

/*==============================================================*/
/* Table : Shipping_Info                                        */
/*==============================================================*/
create table Shipping_Info
(
   shippingId           int not null,
   shippingcost         int,
   shippingRegionId     int,
   primary key (shippingId)
);

/*==============================================================*/
/* Table : Shopping_cart                                        */
/*==============================================================*/
create table Shopping_cart
(
   customerName         varchar(254) not null,
   cardId               int,
   productId            int,
   quantity             int,
   dateAdded            int,
   primary key (customerName)
);

/*==============================================================*/
/* Table : User                                                 */
/*==============================================================*/
create table webUser
(
   loginId               varchar(254) not null,
   password             varchar(254),
   loginStatus          varchar(254),
   registerDate         datetime,
   primary key (loginId)
);

sss


/*=========================================================================================*/
/* Création d'un utilisateur avec un accès d’ajouter de nouvelles entrées dans les tableaux*/
/*=========================================================================================*/

create user 'fati'@'localhost' IDENTIFIED BY 'azerty' ;

grant insert on dbshopping.* to 'fati'@'localhost';




/*==============================================================*/
/* Insertion                                                    */
/*==============================================================*/
insert into Customer values('omar fadili', '15 rue el irfan, temara', 'omar@gmail.com','GH23322JK','20022');
insert into Customer values('khalil ziani', '20 rue massira, rabat', 'malili@gmail.com','HOOL499384','1000');
select * from Customer;

/*******/

insert into admin  values( 'fati','admin','admin@gmail.com');
insert into admin values( 'arian','imad','admin@gmail.com');
select * from admin;


/*==============================================================*/
/* Suppression                                                  */
/*==============================================================*/

delete from Customer where email='omar@gmail.com';
delete from Administartor where adminName='imad';

/*==============================================================*/
/* Modification                                                 */
/*==============================================================*/

update Customer set customerName='khalil zianis' where email='omar@gmail.com';

select * from Customer;


