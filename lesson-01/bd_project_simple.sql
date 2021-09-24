CREATE DATABASE project_simple;

USE project_simple;

CREATE TABLE IF NOT EXISTS `project` (
  `project_name` VARCHAR(255) NULL,
  `client_name` VARCHAR(255) NULL,
  `project_start` DATE NULL,
  `project_finish` DATE NULL,
  `budget` DECIMAL(18,2) NULL)
ENGINE = InnoDB;


START TRANSACTION;
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Accidentally Railroad', 'Poppy Whitney', '2015-05-20', '2015-08-15', 384105.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Oyster Stormy', 'Edmund Nottley', '2015-03-01', '2015-12-14', 288882.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Subtle Poseidon', 'Catalina Barlow', '2015-05-29', '2015-11-22', 284655.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Accidentally Skilled Pottery', 'Casey Copeland', '2015-04-10', '2015-10-04', 164953.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Liquid Panther', 'Elmore Shelly', '2015-05-21', '2015-09-29', 318695.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Rapid Monkey', 'Blade Padley', '2015-03-21', '2015-11-26', 856281.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Insane Bulldozer', 'Edmund Nottley', '2015-04-30', '2015-10-11', 84986.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Rapid Limousine', 'Bradly Noonan', '2015-01-28', '2015-10-06', 980443.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Confidential Metaphor', 'Catalina Barlow', '2015-01-26', '2015-08-04', 967659.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Hollow Eternal Nitrogen', 'Krista Stamper', '2015-05-17', '2015-09-18', 896043.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Essential Peasant', 'Krista Stamper', '2015-02-03', '2015-07-24', 47443.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Restless Monkey', 'Merry Ramsay', '2015-03-22', '2015-12-16', 351538.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Aberrant Insane Eagle', 'Iris Allerton', '2015-06-10', '2015-10-11', 394038.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Hot Pure Mountain', 'Mckenna Appleton', '2015-05-19', '2015-07-24', 397957.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Sleepy Uranium', 'Merry Ramsay', '2015-01-21', '2015-11-10', 344673.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Dreaded Steady Weather', 'Casey Copeland', '2015-04-27', '2015-11-14', 896103.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Helpless Shower', 'Bradly Noonan', '2015-06-20', '2015-12-26', 41312.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Stormy Flannel', 'Lina Southey', '2015-06-17', '2015-10-06', 203864.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Dead Sapphire', 'Elmore Shelly', '2015-03-14', '2015-07-31', 957734.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Appropriate Swallow', 'Iris Allerton', '2015-02-08', '2015-09-18', 919039.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Omega Accidentally', 'Xavier Abram', '2015-06-23', '2015-08-03', 922807.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Green Storm', 'Krista Stamper', '2015-06-29', '2015-11-29', 304806.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Rare Emerald', 'Merry Ramsay', '2015-04-23', '2015-08-29', 189931.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Maroon Snake', 'Tavia Chatham', '2015-03-20', '2015-10-28', 555043.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Grim Sledgehammer', 'Ballard Ridley', '2015-03-10', '2015-12-17', 129843.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Heavy Cobra', 'Catalina Barlow', '2015-01-03', '2015-08-03', 635485.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Silver Rhinestone', 'Sandon Alden', '2015-02-19', '2015-10-02', 468579.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Cheerful Barbershop', 'Edmund Nottley', '2015-02-09', '2015-09-25', 470313.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Rare Jazz', 'Blade Padley', '2015-01-28', '2015-08-10', 647811.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Dangerous Longitude', 'Iris Allerton', '2015-04-26', '2015-10-26', 832510.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Forgotten Planet', 'Liliana Payton', '2015-05-05', '2015-08-15', 169376.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Grim Butter', 'Fearn Hayden', '2015-05-31', '2015-12-14', 733239.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Husky Global Peasant', 'Casey Copeland', '2015-05-27', '2015-07-15', 58124.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Long Crayon', 'Merry Ramsay', '2015-05-14', '2015-08-24', 55697.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Lonesome Metaphor', 'Krista Stamper', '2015-02-20', '2015-08-12', 218314.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Microphone Scarlet', 'Sandon Alden', '2015-01-29', '2015-10-07', 62180.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Abandoned Puppet', 'Mckenna Appleton', '2015-06-24', '2015-12-15', 295660.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Dusty Star', 'Catalina Barlow', '2015-03-14', '2015-11-07', 313629.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Dreadful Mars', 'Mckenna Appleton', '2015-02-13', '2015-10-28', 612470.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Winter Severe', 'Pell Dudley', '2015-04-30', '2015-07-14', 255526.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Big Serpent', 'Catalina Barlow', '2015-04-23', '2015-11-21', 105686.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Accidentally Eagle', 'Elmore Shelly', '2015-03-31', '2015-08-28', 220559.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Persistent Scissors', 'Krista Stamper', '2015-04-02', '2015-09-22', 824644.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Forsaken Knife', 'Blade Padley', '2015-04-24', '2015-10-12', 828217.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Mysterious Gamma', 'Poppy Whitney', '2015-05-03', '2015-08-10', 954455.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Sad Alarm', 'Ballard Ridley', '2015-03-21', '2015-12-02', 747432.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Eastern Avenue', 'Krista Stamper', '2015-05-11', '2015-07-06', 836898.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Gruesome Longitude', 'Sandon Alden', '2015-03-12', '2015-11-19', 986654.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Meaningful Full Iron', 'Elmore Shelly', '2015-01-30', '2015-07-14', 468212.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Hot Toupee', 'Blade Padley', '2015-06-02', '2015-08-13', 299877.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Tainted Viper', 'Ballard Ridley', '2015-04-05', '2015-08-31', 257593.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Rainbow Crossbow', 'Edmund Nottley', '2015-02-14', '2015-10-02', 883438.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Rusty Moon', 'Elmore Shelly', '2015-05-22', '2015-09-24', 975856.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Tasty Appropriate Beta', 'Fearn Hayden', '2015-04-07', '2015-10-22', 798043.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Next Elastic Crossbow', 'Krista Stamper', '2015-06-23', '2015-12-30', 314917.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Liquid Tasty Trombone', 'Sandon Alden', '2015-06-28', '2015-09-24', 292341.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Frozen Strong Tungsten', 'Sandon Alden', '2015-01-23', '2015-10-20', 478416.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Barbaric Cosmic', 'Mckenna Appleton', '2015-06-10', '2015-12-16', 961656.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Temple Tainted', 'Copper Smith', '2015-05-20', '2015-10-27', 897568.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Barbaric Puppet', 'Ballard Ridley', '2015-02-05', '2015-09-08', 702268.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Autopsy Brown', 'Copper Smith', '2015-05-30', '2015-09-30', 7514.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Strong Crayon', 'Copper Smith', '2015-03-07', '2015-10-29', 599624.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Worthy Monkey', 'Edmund Nottley', '2015-06-27', '2015-10-22', 139971.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Risky Galaxy', 'Liliana Payton', '2015-03-11', '2015-10-16', 36132.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Gutsy Lama', 'Bradly Noonan', '2015-04-02', '2015-12-23', 64371.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Supersonic Haystack', 'Copper Smith', '2015-02-22', '2015-09-29', 150812.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Autopsy Eastern', 'Elmore Shelly', '2015-01-31', '2015-07-12', 412457.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Tiger Orange', 'Poppy Whitney', '2015-02-11', '2015-11-04', 279051.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Rocky Burst', 'Sandon Alden', '2015-01-03', '2015-08-27', 876793.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Ninth Breeze', 'Casey Copeland', '2015-04-02', '2015-09-14', 180731.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Rare Tuba', 'Krista Stamper', '2015-06-29', '2015-07-12', 764128.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Freaky Gamma', 'Mckenna Appleton', '2015-04-30', '2015-11-05', 733103.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Husky Crossbow', 'Fearn Hayden', '2015-03-30', '2015-11-10', 768053.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Angry Summer', 'Edmund Nottley', '2015-01-03', '2015-12-26', 752750.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Quality Yard', 'Merry Ramsay', '2015-01-26', '2015-10-07', 304984.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Permanent Mercury', 'Catalina Barlow', '2015-06-24', '2015-10-05', 184118.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Brown Jazz', 'Pell Dudley', '2015-06-22', '2015-11-08', 755680.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Surreal Storm', 'Casey Copeland', '2015-03-22', '2015-10-02', 591126.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Vital Limousine', 'Merry Ramsay', '2015-04-29', '2015-07-17', 168823.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Sliding Proton', 'Pell Dudley', '2015-04-25', '2015-11-23', 427241.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Strawberry Helium', 'Copper Smith', '2015-06-10', '2015-11-06', 999453.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Helpless Helium', 'Liliana Payton', '2015-01-09', '2015-07-02', 788763.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Rapid Doorstop', 'Lina Southey', '2015-04-05', '2015-08-12', 181082.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Dirty Longitude', 'Catalina Barlow', '2015-03-30', '2015-07-07', 670634.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Skilled Tire', 'Liliana Payton', '2015-06-18', '2015-09-25', 802527.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Stony Knife', 'Pell Dudley', '2015-03-09', '2015-08-15', 748232.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Doorstop Risky', 'Sandon Alden', '2015-05-29', '2015-10-23', 293419.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Aggressive Fist', 'Blade Padley', '2015-06-13', '2015-11-23', 616171.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Empty Reborn Cloud', 'Liliana Payton', '2015-06-03', '2015-11-23', 521478.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Lucky Sunshine', 'Elmore Shelly', '2015-05-01', '2015-12-19', 434011.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Solid Waffle', 'Iris Allerton', '2015-03-10', '2015-09-08', 894213.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Lucky Trendy', 'Blade Padley', '2015-05-23', '2015-08-12', 259585.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Red Scarecrow', 'Liliana Payton', '2015-06-06', '2015-09-08', 396673.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Frostbite Black', 'Tavia Chatham', '2015-05-21', '2015-08-18', 731063.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Lucky Puppet', 'Bradly Noonan', '2015-04-20', '2015-08-02', 456184.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Supersonic Oyster', 'Copper Smith', '2015-05-26', '2015-12-14', 938694.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Toupee Liquid', 'Poppy Whitney', '2015-05-24', '2015-07-21', 585664.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Tainted Tasty Tea', 'Blade Padley', '2015-05-03', '2015-09-21', 283244.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Eastern Galaxy', 'Sandon Alden', '2015-05-19', '2015-12-21', 420166.00);
INSERT INTO `project` (`project_name`, `client_name`, `project_start`, `project_finish`, `budget`) VALUES ('Outstanding Viper', 'Merry Ramsay', '2015-05-18', '2015-12-05', 981057.00);

COMMIT;