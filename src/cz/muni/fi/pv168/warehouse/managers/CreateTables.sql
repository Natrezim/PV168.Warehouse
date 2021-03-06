CREATE TABLE ADMIN."SHELF"
(
  "ID" INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  "COL" INT NOT NULL,
  "ROW" INT NOT NULL,
  "MAXWEIGHT" DOUBLE NOT NULL,
  "CAPACITY" INT NOT NULL,
  "SECURE" BOOLEAN NOT NULL
);

CREATE TABLE ADMIN."ITEM"
(
  "ID" INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  "SHELFID" INTEGER REFERENCES ADMIN.SHELF (ID),
  "WEIGHT" DOUBLE NOT NULL,
  "INSERTIONDATE" DATE DEFAULT CURRENT DATE,
  "STOREDAYS" INT NOT NULL,
  "DANGEROUS" BOOLEAN NOT NULL
);