
CREATE DATABASE store_simple;

USE store_simple;

CREATE TABLE IF NOT EXISTS `store` (
  `product_name` VARCHAR(255) NULL,
  `category` VARCHAR(255) NULL,
  `price` DECIMAL(18,2) NULL,
  `sold_num` INT NULL)
ENGINE = InnoDB;


START TRANSACTION;
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Trust-Dax', 'Snacks', 252.00, 20);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Statcom', 'Air Fresheners', 917.00, 8);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Konksing', 'Snacks', 348.00, 13);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Sancof', 'Snacks', 120.00, 13);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Geo-Ity', 'Cakes', 341.00, 14);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Tempphase', 'Juices', 91.00, 9);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Faxtom', 'Cakes', 844.00, 0);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('K-ing', 'Cakes', 103.00, 20);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Re Hattip', 'Tea & Coffee', 941.00, 13);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Transtraxing', 'Tea & Coffee', 386.00, 7);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Sailjob', 'Air Fresheners', 825.00, 2);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Hot Ex', 'Tea & Coffee', 350.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Volt Fan', 'Cakes', 514.00, 2);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zaam Warm', 'Health & Medicine', 442.00, 16);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Saoplus', 'Bath Products', 517.00, 7);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Bio Hotin', 'Tea & Coffee', 172.00, 19);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('S--Tip', 'Juices', 523.00, 7);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Saltsoft', 'Tea & Coffee', 746.00, 12);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Rankeco', 'Health & Medicine', 140.00, 16);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zenron', 'Tea & Coffee', 311.00, 2);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Pluswarm', 'Air Fresheners', 1000.00, 9);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Lam Zumtrax', 'Water', 584.00, 17);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Bigwarm', 'Water', 901.00, 16);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Homelex', 'Health & Medicine', 249.00, 4);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Fresh Strong', 'Air Fresheners', 77.00, 7);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Flexkix', 'Health & Medicine', 742.00, 6);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Lightin', 'Air Fresheners', 398.00, 8);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Biostrong', 'Snacks', 260.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Kin Sillux', 'Cakes', 125.00, 0);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Groovejob', 'Tea & Coffee', 27.00, 8);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Vaiaing', 'Air Fresheners', 684.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Apcantech', 'Air Fresheners', 538.00, 7);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Tough Statla', 'Water', 831.00, 12);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Ranex', 'Bath Products', 383.00, 7);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Keydandom', 'Air Fresheners', 375.00, 16);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Tamp-Tex', 'Cakes', 323.00, 14);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zoombam', 'Air Fresheners', 207.00, 6);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Spanplus', 'Tea & Coffee', 509.00, 15);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Jay Keydex', 'Tea & Coffee', 827.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Jobcof', 'Health & Medicine', 697.00, 20);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Grooveity', 'Tea & Coffee', 41.00, 6);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Techeco', 'Snacks', 415.00, 10);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zerdex', 'Tea & Coffee', 971.00, 2);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Overlight', 'Dental Care', 295.00, 12);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Geolax', 'Water', 678.00, 6);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Fase Jaylux', 'Tea & Coffee', 229.00, 16);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Alphagohold', 'Dental Care', 496.00, 2);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Canlatplus', 'Tea & Coffee', 881.00, 4);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Strongfind', 'Snacks', 533.00, 15);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Hattip', 'Cakes', 704.00, 12);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Opestring', 'Air Fresheners', 508.00, 8);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Nimdom', 'Snacks', 639.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Singtough', 'Air Fresheners', 472.00, 17);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Kan String', 'Air Fresheners', 852.00, 5);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zerwarm', 'Cakes', 869.00, 19);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Danity', 'Juices', 334.00, 7);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Bam-Sing', 'Air Fresheners', 721.00, 2);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Unisantech', 'Snacks', 941.00, 20);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Ontofind', 'Candy', 436.00, 3);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Refan', 'Tea & Coffee', 850.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Intip', 'Water', 230.00, 10);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Eco Nimtouch', 'Cakes', 354.00, 17);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Alphaflex', 'Candy', 54.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Funtoit', 'Candy', 496.00, 20);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Stim Tone', 'Water', 230.00, 10);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Key Solostock', 'Water', 992.00, 3);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Singlezumjob', 'Juices', 59.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Nimtone', 'Health & Medicine', 79.00, 3);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Xxx-tam', 'Health & Medicine', 101.00, 10);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Trippleovetough', 'Air Fresheners', 831.00, 7);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Sandax', 'Air Fresheners', 377.00, 13);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Strongis', 'Health & Medicine', 463.00, 5);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Stockdom', 'Bath Products', 143.00, 16);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Salt Sanity', 'Air Fresheners', 226.00, 12);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zathzimis', 'Water', 353.00, 6);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Light-Dax', 'Snacks', 299.00, 8);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('New Dom', 'Candy', 746.00, 5);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Tempphase', 'Snacks', 191.00, 5);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Flexstock', 'Health & Medicine', 525.00, 6);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Freshnix', 'Cakes', 563.00, 7);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zencom', 'Health & Medicine', 209.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('K--Fax', 'Juices', 455.00, 3);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Tipstring', 'Snacks', 84.00, 4);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Sumzap', 'Water', 334.00, 13);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Strongflex', 'Candy', 348.00, 13);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zotex', 'Tea & Coffee', 243.00, 0);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Roundit', 'Candy', 130.00, 2);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Namnix', 'Dental Care', 351.00, 1);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zon Kayfresh', 'Water', 90.00, 16);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Strong Ozejob', 'Health & Medicine', 188.00, 11);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Jaykix', 'Water', 745.00, 0);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Ranknix', 'Cakes', 828.00, 3);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Superhome', 'Cakes', 731.00, 6);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Geo Plus', 'Bath Products', 645.00, 12);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Treeit', 'Tea & Coffee', 449.00, 13);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zam-La', 'Candy', 298.00, 14);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Quad Finkix', 'Snacks', 195.00, 13);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Zaam Runnix', 'Juices', 994.00, 18);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Dantax', 'Snacks', 719.00, 15);
INSERT INTO `store` (`product_name`, `category`, `price`, `sold_num`) VALUES ('Voldox', 'Air Fresheners', 639.00, 5);

COMMIT;