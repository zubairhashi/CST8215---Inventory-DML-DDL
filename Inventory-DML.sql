-- Filename: Inventory-DML.sql
-- Description: script to populate Inventory Database
-- CST 8215


-- add at least 6 customers, 
-- use atleast 3 different cities

DELETE FROM Invoice_Line_T;
DELETE FROM Product_T;
DELETE FROM Invoice_T;
DELETE FROM Customer_T;

-- Add Customer data
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
  VALUES( 'C001', 'Your first name', 'Your Last Name', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa', 'ON', 'K2G1V8', 0 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
  VALUES( 'C002', 'Your First Name', 'Your Last Name', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa', 'ON', 'K2G1V8', 0 );

UPDATE Customer_T 
set Cust_Fname = 'Zubair',Cust_Lname = 'Hashi'
WHERE Cust_ID = 'C002';

  
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
  VALUES( 'C003', 'Your First Name', 'Your Last Name', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa', 'ON', 'K2G1V8', 0 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
  VALUES( 'C004', 'Your First Name', 'Your Last Name', '613-727-4723', '854 Younge Street' , 'Toronto','ON', 'K2G1V8', 0 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
  VALUES( 'C005', 'Your First Name', 'Your Last Name', '613-727-4723', '264 Main Street'   , 'Kitchener', 'ON', 'K2G1V8', 0 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance ) 
  VALUES( 'C006', 'Your First Name', 'Your Last Name', '613-727-4723', '357 Rue Catherine' , 'Montreal', 'ON', 'K2G1V8', 0 );




-- Add Invocie data
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23001', 'C001', '2011-02-15' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23002', 'C001', '2011-04-25' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23003', 'C004', '2011-06-12' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23004', 'C002', '2011-07-08' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23005', 'C005', '2011-08-24' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23006', 'C006', '2011-09-07' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23007', 'C006', '2010-12-28' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23008', 'C006', '2011-12-15' );


-- Add Product data
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount )
  VALUES( 'P2011', 'Compac Presario', '2011-02-14', 20, 5, 499.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2012', 'HP laptop', '2010-09-25', 40, 5, 529.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2013', 'Samsung LCD', '2010-02-15', 22, 8, 329.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2014', 'Brother Network All-In-One Laser Printer', '2010-10-10', 50, 10, 159.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2015', 'Western Digital External Hard drive', '2010-04-08', 30, 10, 149.99, NULL );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2016', 'Apple iPad 2 with Wi-Fi + 3G', '2011-02-23', 90, 200, 849.00, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2017', 'iPAD 2 Smart Cover', '2011-02-14', 70, 10, 45.00, 10 );


-- Add Invoice Line Data
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
 VALUES( 'I23001', 1, 'P2011', 1, 650.75 ); 
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23001', 2, 'P2014', 3, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23002', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23003', 1, 'P2015', 3, 140.75 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23004', 1, 'P2014', 1, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23005', 1, 'P2016', 1, 798.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23006', 1, 'P2011', 1, 499.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23007', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23008', 1, 'P2016', 3, 689.00 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23008', 2, 'P2017', 3, 35.99 );

-- eof: Inventory-DML.sql'



