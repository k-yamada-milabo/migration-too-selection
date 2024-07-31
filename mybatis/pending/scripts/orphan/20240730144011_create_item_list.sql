-- // First migration.
-- Migration SQL that makes the change goes here.
create table ITEM_LIST (
    ID int not null,
    CUSTOMER_ID int not null,
    SELLER_ID int not null,
    TOTAL_PRICE int not null,
    TIMESTAMP timestamp not null
)


-- //@UNDO
-- SQL to undo the change goes here.

