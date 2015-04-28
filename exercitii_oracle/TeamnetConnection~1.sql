create table TAB1_tema (
TAB1_ID number primary key,
nume varchar(20) not null,
prioritate number );

create table TAB2_tema1 (
TAB2_ID number primary key ,
nume_detaliu varchar(20) not null ) ;

alter TAB2_tema1 (
add TAB1_ID numeric ,
