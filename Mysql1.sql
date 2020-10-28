#UC1
create database AddressBook;
#UC2
create table AddressBook(
     firstName varchar(255),
     lastName varchar(255),
     address varchar(255),
     city varchar(255),
     state varchar(255),
     zip varchar(255),
     phoneNumber varchar(255),
     email varchar(255)
     );
     
#UC3
insert into AddressBook values('Preetam','Mukhopadhyay','India','Bhagalpur','Bihar','813214','123456','a@b.com');
insert into AddressBook values('Priyam','Mukhopadhyay','India','Bhagalpur','Bihar','813214','123456','a@b.com');
insert into AddressBook values('Goku','Kakarot','Japan','Tokyo','Kanto','123454','123456','a@b.com');
insert into AddressBook values('Vegeta','Saiyan','Japan','Tokyo','Kanto','123454','123456','a@b.com');
insert into AddressBook values('Picolo','Namek','Japan','Tokyo','Kanto','123454','123456','a@b.com');
insert into AddressBook values('Lionel','Messi','Argentina','Rosario','Punjab','34577','123456','a@b.com');
insert into AddressBook values('Cristiano','Ronaldo','Portugal','Madeira','West Bengal','711103','123456','a@b.com');
insert into AddressBook values('Neymar','Junior','Brazil','Brasilia','Kerela','457754','789065','a@b.com');
insert into AddressBook values('Luis','Suarez','Uruguay','Montevideo','Hyderabad','546657','87978','a@b.com');

#UC4
update AddressBook set city = 'BangaLore' 
	where firstName = 'Preetam' and lastName = 'Mukhopadhyay';
    
#UC5
delete from AddressBook
	where firstName = 'Priyam' and lastName = 'Mukhopadhyay';