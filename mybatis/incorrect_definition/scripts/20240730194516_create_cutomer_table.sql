-- // create cutomer table
-- Migration SQL that makes the change goes here.
create table CUSTOMER (
    ID int not null,
    NAME varchar(1000) not null
)


-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE CUSTOMER;
