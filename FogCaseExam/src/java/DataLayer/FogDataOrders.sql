#CREATE  DATABASE Fogdatabase;

#USE Fogdatabase;

#DROP TABLE IF EXISTS 'orderlist';
#CREATE TABLE 'orderlist' (
#'orderlistID' int(11) NOT NULL AUTO_INCREMENT,
#'UserID' int (11) NOT NULL,
#REFERENCES
#)

##DROP TABLE IF EXISTS 'order';

DROP TABLE IF EXISTS roofmaterial;
CREATE TABLE roofmaterial(
roofmaterialID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
roofmaterialname varchar(90) NOT NULL,
roofmaterialprice int(11) NOT NULL
);

DROP TABLE IF EXISTS area;
CREATE TABLE area(
areaID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
width int(11),
length int(11),
heigth int(11),
degree int(11)
);

DROP TABLE IF EXISTS materials;
CREATE TABLE materials(
materialID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
materialPrice int(11) NOT NULL,
materialName varchar(90)
);

DROP TABLE IF EXISTS carport;
CREATE TABLE carport (
carportID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
width int(11) NOT NULL,
length int(11) NOT NULL,
heigth int(11) NOT NULL,
materialFK int(11),
FOREIGN KEY (materialFK) REFERENCES materials(materialID)
);

DROP TABLE IF EXISTS shed;
CREATE TABLE shed(
shedID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
width int(11) NOT NULL,
length int(11) NOT NULL,
heigth int(11) NOT NULL,
materialFK int(11),
FOREIGN KEY (materialFK) REFERENCES materials(materialID)
);

DROP TABLE IF EXISTS roof;
CREATE TABLE roof(
roofID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
roofmaterialFK int(11),
areaFK int(11),

FOREIGN KEY (roofmaterialFK) REFERENCES roofmaterial(roofmaterialid),
FOREIGN KEY (areaFK) REFERENCES area(areaID)
);


CREATE TABLE IF NOT EXISTS orders (
orderID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
carportFK int(11) NOT NULL,
shedFK int(11) NOT NULL,
roofFK int(11) NOT NULL,
FOREIGN KEY (carportFK) REFERENCES carport(carportID),
FOREIGN KEY (shedFK) REFERENCES shed (shedID),
FOREIGN KEY (roofFK) REFERENCES roof (roofID)
);









