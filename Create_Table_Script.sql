CREATE TABLE sales (
  ORDERNUMBER int DEFAULT NULL,
  QUANTITYORDERED int DEFAULT NULL,
  PRICEEACH float DEFAULT NULL,
  ORDERLINENUMBER int DEFAULT NULL,
  ORDERDATE date DEFAULT NULL,
  STATUS varchar(100) DEFAULT NULL,
  QTR_ID int DEFAULT NULL,
  PRODUCTLINE text,
  MSRP int DEFAULT NULL,
  PRODUCTCODE varchar(100) DEFAULT NULL,
  CUSTOMERNAME varchar(100) DEFAULT NULL,
  CITY varchar(100) DEFAULT NULL,
  STATE varchar(100) DEFAULT NULL,
  COUNTRY varchar(100) DEFAULT NULL,
  TERRITORY varchar(100) DEFAULT NULL,
  CONTACTLASTNAME varchar(100) DEFAULT NULL,
  CONTACTFIRSTNAME varchar(100) DEFAULT NULL,
  DEALSIZE varchar(100) DEFAULT NULL
);