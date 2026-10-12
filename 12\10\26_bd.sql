create table client (
    id int primary key,
    fullname varchar(50) not null,
    number_ varchar(10) not null,
    email  varchar(50)
);

create table bronya (
    id int primary key,
    room_id references rooms(id),
    client_id references client(id),
    data_VbEZDA data not null,
    data_VbIEZDA data not null
);

create table rooms (
    id int primary key,
    number_room int not null,
    type_ varchar(10) not null,
    stoimost float not null,
    mest int not null
);

create table oplata (
    id int primary key,
    bronya_id references bronya(id),
    data_oplati date not null,
    sposob varchar(30) not null,
    skoka float not null
);

create table sotrudniki (
    id int primary key,
    fullname varchar(30) not null,
    phone varchar(10),
    doljnost varchar(20)

);
