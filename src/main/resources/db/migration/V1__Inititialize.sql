CREATE TABLE `shirt` (
  `shirtId` int NOT NULL AUTO_INCREMENT,
  `shirtName` varchar(50) NOT NULL,
  `shirtType` varchar(50) NOT NULL,
  `shirtCost` varchar(50) NOT NULL,
  `shirtDesc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`shirtId`)
) ENGINE=InnoDB ;

CREATE TABLE `shirt_size` (
  `sizeId` int NOT NULL AUTO_INCREMENT,
  `size` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sizeId`)
) ENGINE=InnoDB ;

CREATE TABLE `shirt_quantity` (
  `shirtId` int NOT NULL,
  `sizeId` int NOT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`shirtId`,`sizeId`),
  KEY `sizeId` (`sizeId`),
  FOREIGN KEY (`shirtId`) REFERENCES `shirt` (`shirtId`),
  FOREIGN KEY (`sizeId`) REFERENCES `shirt_size` (`sizeId`)
) ENGINE=InnoDB ;
