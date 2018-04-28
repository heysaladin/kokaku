-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;

DROP TABLE `Contact`;


DROP TABLE `Category`;



-- ************************************** `Category`

CREATE TABLE `Category`
(
 `CategoryID`     INT NOT NULL ,
 `CategoryParent` INT NOT NULL ,
 `CategoryName`   VARCHAR(255) NOT NULL ,

PRIMARY KEY (`CategoryID`)
);





-- ************************************** `Contact`

CREATE TABLE `Contact`
(
 `ContactID`    INT NOT NULL ,
 `Name`         VARCHAR(255) NOT NULL ,
 `Email`        VARCHAR(100) NOT NULL ,
 `Address`      TEXT NOT NULL ,
 `Coordinate`   VARCHAR(45) NOT NULL ,
 `Phone`        INT NOT NULL ,
 `MobileNumber` INT NOT NULL ,
 `Photo`        VARCHAR(255) NOT NULL ,
 `CategoryID`   INT NOT NULL ,

PRIMARY KEY (`ContactID`),
KEY `fkIdx_20` (`CategoryID`),
CONSTRAINT `FK_20` FOREIGN KEY `fkIdx_20` (`CategoryID`) REFERENCES `Category` (`CategoryID`)
);




