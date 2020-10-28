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

#UC6
select firstName,lastName from AddressBook 
	where city = 'Tokyo' or state = 'kanto';
    
#UC7
select city,count(*) from AddressBook group by city;
select state,count(*) from AddressBook group by state;

#UC8
select * from AddressBook 
where city = 'Tokyo' 
order by firstName DESC, lastName ASC;

#UC9
alter table AddressBook
    add addressBookName varchar(255),
    add addressBookType varchar(255);
    
#UC10
truncate AddressBook;
insert into AddressBook values('Preetam','Mukhopadhyay','India','Bhagalpur','Bihar','813214','123456','a@b.com','add1','family');
insert into AddressBook values('Priyam','Mukhopadhyay','India','Bhagalpur','Bihar','813214','123456','a@b.com','add1','family');
insert into AddressBook values('Goku','Kakarot','Japan','Tokyo','Kanto','123454','123456','a@b.com','add2','friends');
insert into AddressBook values('Vegeta','Saiyan','Japan','Tokyo','Kanto','123454','123456','a@b.com','add2','friends');
insert into AddressBook values('Picolo','Namek','Japan','Tokyo','Kanto','123454','123456','a@b.com','add2','friends');
insert into AddressBook values('Lionel','Messi','Argentina','Rosario','Punjab','34577','123456','a@b.com','add3','profession');
insert into AddressBook values('Cristiano','Ronaldo','Portugal','Madeira','West Bengal','711103','123456','a@b.com','add3','profession');
insert into AddressBook values('Neymar','Junior','Brazil','Brasilia','Kerela','457754','789065','a@b.com','add3','profession');
insert into AddressBook values('Luis','Suarez','Uruguay','Montevideo','Hyderabad','546657','87978','a@b.com','add3','profession');

select addressBookType,count(*) 
from AddressBook 
group by addressBookType;

#UC11
insert into AddressBook values('Preetam','Mukhopadhyay','India','Bhagalpur','Bihar','813214','123456','a@b.com','add2','friend');


#UC12
create table contacts(
	id varchar(255) primary key,
	firstName varchar(255),  
	lastName varchar(255),
	address varchar(255),
	city varchar(255),
	state varchar(255),
	zip varchar(255),
	phoneNumber varchar(255),     
	email varchar(255)
    );
    
insert into contacts values('001','Preetam','Mukhopadhyay','India','Bhagalpur','Bihar','813214','123456','a@b.com');
insert into contacts values('002','Priyam','Mukhopadhyay','India','Bhagalpur','Bihar','813214','123456','a@b.com');
insert into contacts values('003','Goku','Kakarot','Japan','Tokyo','Kanto','123454','123456','a@b.com');
insert into contacts values('004','Vegeta','Saiyan','Japan','Tokyo','Kanto','123454','123456','a@b.com');
insert into contacts values('005','Picolo','Namek','Japan','Tokyo','Kanto','123454','123456','a@b.com');
insert into contacts values('006','Lionel','Messi','Argentina','Rosario','Punjab','34577','123456','a@b.com');
insert into contacts values('007','Cristiano','Ronaldo','Portugal','Madeira','West Bengal','711103','123456','a@b.com');
insert into contacts values('008','Neymar','Junior','Brazil','Brasilia','Kerela','457754','789065','a@b.com');
insert into contacts values('009','Luis','Suarez','Uruguay','Montevideo','Hyderabad','546657','87978','a@b.com');


 create table addressBookName(
	id varchar(255),
    addressBookName varchar(255),
	primary key(id)
    );
    
insert into addressBookName values('101','addressBook1');
insert into addressBookName values('102','addressBook2');
insert into addressBookName values('103','addressBook3');

create table contactAddressBookMap(
	contactId varchar(255),
    addressBookId varchar(255),
	primary key(contactId,addressBookId),
    foreign key (contactId)
		references contacts(id),
	foreign key (addressBookId)
		references addressBookName(id)
	);
    
insert into contactAddressBookMap values('001','101');
insert into contactAddressBookMap values('002','101');
insert into contactAddressBookMap values('003','102');
insert into contactAddressBookMap values('004','102');
insert into contactAddressBookMap values('005','102');
insert into contactAddressBookMap values('006','103');
insert into contactAddressBookMap values('007','103');
insert into contactAddressBookMap values('008','103');
insert into contactAddressBookMap values('009','103');

create table addressBookType(
	addressBookId varchar(255),
    addressBookType varchar(255),
    primary key (addressBookId),
    foreign key (addressBookId)
		references addressBookName(id)
);

insert into AddressBookType values('101','family');
insert into AddressBookType values('102','friend');
insert into AddressBookType values('103','profession');
