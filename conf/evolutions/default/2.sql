# --- Sample dataset

# --- !Ups

insert into restaurant (id,name,legal_name,inn,adress) values (1,'Свое место','ООО "Первый','7008002001','Ул. Туполева 3/1');
insert into restaurant (id,name,legal_name,inn,adress) values (2,'Юность','ООО "Второй"','7008002002','Ул. Туполева 3/2');
insert into restaurant (id,name,legal_name,inn,adress) values (3,'NZ','ООО "Третий"','7008002003','Ул. Туполева 3/3');
insert into restaurant (id,name,legal_name,inn,adress) values (4,'Ты знаешь','ООО "Четвертый"','7008002004','Ул. Туполева 3/4');
insert into restaurant (id,name,legal_name,inn,adress) values (5,'Пятница','ООО "Пятый"','7008002005','Ул. Туполева 3/5');


insert into guest (id,name,surname,email,telephone,restaurant_id) values (  1,'Павел','Воронин','1@temp.com','89003002001',1);
insert into guest (id,name,surname,email,telephone,restaurant_id) values (  1,'Арлтан','Наранов','6@temp.com','89003002002',1);
insert into guest (id,name,surname,email,telephone,restaurant_id) values (  1,'Родион','Кротов','5@temp.com','89003002003',1);
insert into guest (id,name,surname,email,telephone,restaurant_id) values (  1,'Ксения','Корниенко','4@temp.com','89003002004',1);


# --- !Downs

delete from restaurant;
delete from restaurant;
