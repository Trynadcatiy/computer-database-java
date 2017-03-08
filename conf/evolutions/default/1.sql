# --- First database schema

# --- !Ups

create table restaurant (
  id                        bigint auto_increment not null,
  name                      varchar(255) not null,
  legal_name                varchar(255) not null,
  inn                       varchar(255) not null,
  adress                    varchar(255),
  constraint pk_reastaurant primary key (id))
;

create table guest (
  id                        bigint auto_increment not null,
  name                      varchar(255) not null,
  surname                   varchar(255) not null,
  email                     varchar(255) not null,
  telephone                 varchar(255) not null,
  restaurant_id             bigint,
  constraint pk_guest primary key (id))
;

create sequence restaurant_seq start with 1000;

create sequence guest_seq start with 1000;

alter table computer add constraint fk_guest_restaurant_1 foreign key (restaurant_id) references restaurant (id) on delete restrict on update restrict;
create index ix_guest_restaurant_1 on guest (restaurant_id);




SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists restaurant;

drop table if exists guest;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists restaurant_seq;

drop sequence if exists guest_seq;

