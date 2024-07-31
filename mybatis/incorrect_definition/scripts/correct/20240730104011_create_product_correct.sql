-- // First migration.
-- Migration SQL that makes the change goes here.
create table PRODUCT (
    ID int not null,
    NAME varchar(1000) not null,
    CURRENT_PRICE int not null
)


-- //@UNDO
-- SQL to undo the change goes here.
drop table PRODUCT;