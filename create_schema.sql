-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE public."DimDate"
(
    dateid integer NOT NULL,
    date date NOT NULL,
    year integer NOT NULL,
    quarter integer NOT NULL,
    quartername character varying NOT NULL,
    month integer NOT NULL,
    monthname character varying NOT NULL,
    day integer NOT NULL,
    weekday integer NOT NULL,
    weekdayname character varying NOT NULL,
    PRIMARY KEY (dateid)
);

CREATE TABLE public."FactTables"
(
    orderid integer NOT NULL,
    dateid integer NOT NULL,
    countryid integer NOT NULL,
    categoryid integer NOT NULL,
    amount double precision NOT NULL,
    itemid integer NOT NULL,
    PRIMARY KEY (orderid)
);

CREATE TABLE public."Category"
(
    categoryid integer NOT NULL,
    category character varying NOT NULL,
    PRIMARY KEY (categoryid)
);

CREATE TABLE public."Country"
(
    countryid integer NOT NULL,
    country character varying NOT NULL,
    PRIMARY KEY (countryid)
);

CREATE TABLE public."Item"
(
    itemid integer NOT NULL,
    item character varying NOT NULL,
    PRIMARY KEY (itemid)
);

ALTER TABLE public."FactTables"
    ADD FOREIGN KEY (dateid)
    REFERENCES public."DimDate" (dateid)
    NOT VALID;


ALTER TABLE public."FactTables"
    ADD FOREIGN KEY (countryid)
    REFERENCES public."Country" (countryid)
    NOT VALID;


ALTER TABLE public."FactTables"
    ADD FOREIGN KEY (countryid)
    REFERENCES public."Country" (countryid)
    NOT VALID;


ALTER TABLE public."FactTables"
    ADD FOREIGN KEY (categoryid)
    REFERENCES public."Category" (categoryid)
    NOT VALID;


ALTER TABLE public."FactTables"
    ADD FOREIGN KEY (itemid)
    REFERENCES public."Item" (itemid)
    NOT VALID;

END;