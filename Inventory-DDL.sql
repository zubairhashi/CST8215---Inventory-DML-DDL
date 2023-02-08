


DROP VIEW IF EXISTS code;
DROP MATERIALIZED VIEW IF EXISTS ID;


DROP TABLE IF EXISTS Invoice_Line_T;
DROP TABLE IF EXISTS Product_T;
DROP TABLE IF EXISTS Invoice_T;
DROP TABLE IF EXISTS Customer_T;
DROP TABLE IF EXISTS city_t;
DROP TABLE IF EXISTS COUNTRY_T;



CREATE TABLE COUNTRY_T (

 Cntry_Code char (3),
 Cntry_Name varchar(30) NOT NULL, 
 Cntry_Population bigint DEFAULT NULL,
    
 CONSTRAINT Cntry_Code_PK PRIMARY KEY (Cntry_Code)
);



CREATE TABLE city_t (
 Cntry_Code char (3),
 City_ID char (4),
 City_Name varchar(30) NOT NULL,
 City_Code char (3), 
 City_Population   bigint DEFAULT NULL,
 CONSTRAINT City_ID_PK PRIMARY KEY (City_ID),
 CONSTRAINT Cntry_Code_FK FOREIGN KEY( Cntry_Code ) REFERENCES COUNTRY_T( Cntry_Code)
);



CREATE TABLE Customer_T (

  Cust_Id         CHAR( 4 ),
  Cust_Fname      VARCHAR( 30 ) NULL,
  Cust_Lname      VARCHAR( 30 ) NOT NULL,
  Cust_Phone      VARCHAR( 15 ) NOT NULL,
  Cust_Address    VARCHAR( 20 ) NOT NULL,
  Cust_City       VARCHAR( 15 ) NOT NULL,
  Cust_Prov       CHAR( 2 ) NULL,
  Cust_PostCode   CHAR( 6 ) NOT NULL,
  Cust_Balance    DECIMAL( 9, 2 ),
  Cust_Country    VARCHAR(30), 
  CONSTRAINT Customer_PK PRIMARY KEY( Cust_Id ),
  CONSTRAINT Cust_Country_FK FOREIGN KEY( Cust_Country ) REFERENCES COUNTRY_T( Cntry_Code)

);

CREATE TABLE Invoice_T (

  Invoice_Number     CHAR( 6 ),
  Cust_Id            CHAR( 4 ) NOT NULL,
  Invoice_Date       DATE DEFAULT NOW(),
  CONSTRAINT Invoice_PK PRIMARY KEY( Invoice_Number ),
  CONSTRAINT Cust_ID_FK FOREIGN KEY( Cust_Id ) REFERENCES Customer_T( Cust_ID )
);


CREATE TABLE Product_T (
  Cntry_Code       CHAR(3),
  Prod_Code        CHAR( 5 ),
  Prod_Description VARCHAR( 60 ) NOT NULL,
  Prod_Indate      DATE NOT NULL DEFAULT NOW(),
  Prod_QOH         INTEGER NOT NULL,
  Prod_Min         INTEGER,
  Prod_Price       DECIMAL( 5, 2 ) NOT NULL,
  Prod_Discount    INTEGER,
  Cntry_Origin     VARCHAR(30),
  CONSTRAINT Product_PK PRIMARY KEY( Prod_Code ),
  CONSTRAINT Cntry_Origin_FK FOREIGN KEY( Cntry_Origin) REFERENCES COUNTRY_T( Cntry_Code)

);

CREATE TABLE Invoice_Line_T (

  Invoice_Number       CHAR( 6 ),
  Invoice_Line         INTEGER,
  Prod_Code            CHAR( 5 ) NOT NULL,
  Line_Unit            INTEGER NOT NULL,
  Line_Price           DECIMAL( 9, 2 ) NOT NULL,
  CONSTRAINT Invoice_Line_PK  PRIMARY KEY( Invoice_Number, Invoice_Line ),
  CONSTRAINT Invoice_Line_FK1 FOREIGN KEY( Invoice_Number ) REFERENCES Invoice_T( Invoice_Number ),
  CONSTRAINT Invoice_Line_FK2 FOREIGN KEY( Prod_Code ) REFERENCES Product_T( Prod_Code )
);




