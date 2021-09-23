SHOW DATABASES;

DROP DATABASE billing_simple;

CREATE DATABASE billing_simple;

USE billing_simple;


CREATE TABLE IF NOT EXISTS `billing_simple`.`billing` (
  `payer_email` VARCHAR(255) NULL,
  `recipient_email` VARCHAR(255) NULL,
  `sum` DECIMAL(18,2) NULL,
  `currency` VARCHAR(3) NULL,
  `billing_date` DATE NULL,
  `comment` TEXT NULL)
ENGINE = InnoDB;


START TRANSACTION;
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'petya@mail.com', 910.00, 'INR', '2015-01-23', 'I haven\'t seen any statuses about Ninjas lately....well played Ninjas.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'ivan@mail.com', 233.00, 'MYR', '2015-09-29', 'I do 5 sit-ups every morning. May not sound like much, but there is only so many times you can hit the snooze button...\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'bobby@mail.com', 492.00, 'AUD', '2015-11-10', 'On a scale of Voldemort to Pinocchio, how Nosy are you?');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'lenny@mail.com', 553.00, 'CAD', '2015-05-22', 'I love how, in horror movies, the person yells out,Hello? As if the bad is going to yell back, Yeah, I\'m in the kitchen! Do you want a sandwich? Or,Hey, yeah I\'m back here with a chainsaw. Come on down.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'alex@mail.com', 132.00, 'AUD', '2015-07-21', 'No I didn\'t trip, the floor looked like it needed a hug.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'john@mail.com', 668.00, 'EUR', '2015-01-13', 'I love how, in horror movies, the person yells out,Hello? As if the bad is going to yell back, Yeah, I\'m in the kitchen! Do you want a sandwich? Or,Hey, yeah I\'m back here with a chainsaw. Come on down.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'leo@mail.com', 183.00, 'INR', '2015-11-13', 'Grammar is somewhat important. Commas do save lives for instance: \'Let\'s eat grandpa.\' \'Lets eat, grandpa.\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'enzo@mail.com', 942.00, 'USD', '2015-09-02', 'On a scale of Voldemort to Pinocchio, how Nosy are you?');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('enzo@mail.com', 'franz@mail.com', 299.00, 'JPY', '2015-09-08', 'I dream of a better tomorrow, where chickens can cross the road and not be questioned about their motives.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', 'vasya@mail.com', 197.00, 'SGD', '2015-12-24', 'I wonder if tap dancers walk into a room, look at the floor and think,\'I\'d so tap that.\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'ivan@mail.com', 179.00, 'MYR', '2015-05-29', 'Light travels faster then sound. This is why some people appear bright ,until you hear them talk.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'bobby@mail.com', 354.00, 'MYR', '2015-09-01', 'I wish real life was like cartoons. I could wear the same outfit and nobody would care.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'lenny@mail.com', 266.00, 'USD', '2015-04-15', 'I was complimented on my driving. Someone left a note on my windshield that said, \'Parking Fine.\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'alex@mail.com', 873.00, 'SGD', '2015-01-08', 'Why do banks lock their pens to the desk? If I\'m trusting you with my money, don\'t you think you can trust me with a pen?');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'john@mail.com', 885.00, 'USD', '2015-07-26', 'I haven\'t seen any statuses about Ninjas lately....well played Ninjas.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'leo@mail.com', 904.00, 'INR', '2015-10-14', 'On a scale of Voldemort to Pinocchio, how Nosy are you?');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'enzo@mail.com', 455.00, 'JPY', '2015-10-29', 'On a scale of Voldemort to Pinocchio, how Nosy are you?');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'franz@mail.com', 798.00, 'JPY', '2015-08-11', 'I wish real life was like cartoons. I could wear the same outfit and nobody would care.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('enzo@mail.com', 'vasya@mail.com', 687.00, 'CAD', '2015-12-12', 'I speak my mind. I never mind what I speak.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', 'petya@mail.com', 609.00, 'EUR', '2015-08-15', 'Anytime a bird poops on one of my windows, I eat a whole plate of scrambled egg on my patio. Just to show them what I\'m capable of. Take that birds');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'bobby@mail.com', 610.00, 'GBP', '2015-02-27', 'I speak my mind. I never mind what I speak.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'lenny@mail.com', 736.00, 'INR', '2015-06-06', 'I haven\'t seen any statuses about Ninjas lately....well played Ninjas.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'alex@mail.com', 352.00, 'USD', '2015-12-01', 'I do 5 sit-ups every morning. May not sound like much, but there is only so many times you can hit the snooze button...\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'john@mail.com', 636.00, 'AUD', '2015-12-24', 'I was planning to do something today, but I haven\'t finished doing nothing from yesterday.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'leo@mail.com', 134.00, 'CAD', '2015-11-12', 'On a scale of Voldemort to Pinocchio, how Nosy are you?');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'enzo@mail.com', 519.00, 'CHF', '2015-08-17', 'I haven\'t seen any statuses about Ninjas lately....well played Ninjas.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'franz@mail.com', 892.00, 'GBP', '2015-10-10', 'I just dropped my laptop off the boat.....It\'s a Dell, rolling in the deep.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'vasya@mail.com', 251.00, 'GBP', '2015-05-16', 'I haven\'t seen any statuses about Ninjas lately....well played Ninjas.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('enzo@mail.com', 'petya@mail.com', 134.00, 'JPY', '2015-08-23', 'I feel like getting something done today, so I\'m just going to sit here until the feeling passes.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', 'ivan@mail.com', 660.00, 'SGD', '2015-04-13', 'Grammar is somewhat important. Commas do save lives for instance: \'Let\'s eat grandpa.\' \'Lets eat, grandpa.\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'lenny@mail.com', 249.00, 'CAD', '2015-07-21', 'I do 5 sit-ups every morning. May not sound like much, but there is only so many times you can hit the snooze button...\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'alex@mail.com', 745.00, 'SGD', '2015-09-10', 'I speak my mind. I never mind what I speak.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'john@mail.com', 774.00, 'GBP', '2015-04-26', 'On a scale of Voldemort to Pinocchio, how Nosy are you?');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'leo@mail.com', 344.00, 'AUD', '2015-10-08', 'Better late then never, but never late is better.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'enzo@mail.com', 410.00, 'CAD', '2015-08-01', 'I just dropped my laptop off the boat.....It\'s a Dell, rolling in the deep.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'franz@mail.com', 616.00, 'CHF', '2015-11-26', 'I do 5 sit-ups every morning. May not sound like much, but there is only so many times you can hit the snooze button...\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'vasya@mail.com', 575.00, 'INR', '2015-05-05', 'I haven\'t seen any statuses about Ninjas lately....well played Ninjas.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'petya@mail.com', 794.00, 'SGD', '2015-12-04', 'I really like ceilings......I guess you could call me a ceiling fan.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('enzo@mail.com', 'ivan@mail.com', 951.00, 'INR', '2015-11-28', 'I just dropped my laptop off the boat.....It\'s a Dell, rolling in the deep.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', 'bobby@mail.com', 715.00, 'GBP', '2015-04-06', 'Light travels faster then sound. This is why some people appear bright ,until you hear them talk.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'alex@mail.com', 676.00, 'AUD', '2015-08-08', 'I was planning to do something today, but I haven\'t finished doing nothing from yesterday.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'john@mail.com', 764.00, 'CAD', '2015-12-29', 'Grammar is somewhat important. Commas do save lives for instance: \'Let\'s eat grandpa.\' \'Lets eat, grandpa.\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'leo@mail.com', 463.00, 'CHF', '2015-03-10', 'The dictionary is the only place where success comes before work.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'enzo@mail.com', 121.00, 'INR', '2015-11-10', 'Why do banks lock their pens to the desk? If I\'m trusting you with my money, don\'t you think you can trust me with a pen?');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'franz@mail.com', 909.00, 'INR', '2015-06-22', 'Anytime a bird poops on one of my windows, I eat a whole plate of scrambled egg on my patio. Just to show them what I\'m capable of. Take that birds');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'vasya@mail.com', 912.00, 'USD', '2015-01-13', 'I wish real life was like cartoons. I could wear the same outfit and nobody would care.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'petya@mail.com', 406.00, 'MYR', '2015-01-31', 'I changed all my passwords to \'incorrect\'. So my computer just tells me when I forgot.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'ivan@mail.com', 198.00, 'SGD', '2015-06-08', 'I wish real life was like cartoons. I could wear the same outfit and nobody would care.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('enzo@mail.com', 'bobby@mail.com', 971.00, 'GBP', '2015-11-10', 'I love how, in horror movies, the person yells out,Hello? As if the bad is going to yell back, Yeah, I\'m in the kitchen! Do you want a sandwich? Or,Hey, yeah I\'m back here with a chainsaw. Come on down.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', 'lenny@mail.com', 667.00, 'GBP', '2015-02-08', 'I dream of a better tomorrow, where chickens can cross the road and not be questioned about their motives.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'john@mail.com', 909.00, 'EUR', '2015-02-21', 'No I didn\'t trip, the floor looked like it needed a hug.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'leo@mail.com', 603.00, 'INR', '2015-08-07', 'I changed all my passwords to \'incorrect\'. So my computer just tells me when I forgot.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'enzo@mail.com', 705.00, 'SGD', '2015-09-22', 'Whatever you do in life give 100%.....unless you\'re giving blood.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'franz@mail.com', 394.00, 'JPY', '2015-01-29', 'Light travels faster then sound. This is why some people appear bright ,until you hear them talk.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'vasya@mail.com', 168.00, 'MYR', '2015-09-04', 'I changed all my passwords to \'incorrect\'. So my computer just tells me when I forgot.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'petya@mail.com', 868.00, 'JPY', '2015-08-19', 'Anytime a bird poops on one of my windows, I eat a whole plate of scrambled egg on my patio. Just to show them what I\'m capable of. Take that birds');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'ivan@mail.com', 979.00, 'EUR', '2015-03-16', 'I just dropped my laptop off the boat.....It\'s a Dell, rolling in the deep.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'bobby@mail.com', 772.00, 'CAD', '2015-07-22', 'Procrastinator? No, I just wait until the last second to do my work because I will be older, therefore wiser.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('enzo@mail.com', 'lenny@mail.com', 831.00, 'GBP', '2015-10-17', 'I do 5 sit-ups every morning. May not sound like much, but there is only so many times you can hit the snooze button...\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', 'alex@mail.com', 584.00, 'AUD', '2015-09-15', 'I was complimented on my driving. Someone left a note on my windshield that said, \'Parking Fine.\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'leo@mail.com', 696.00, 'CAD', '2015-05-10', 'I love how, in horror movies, the person yells out,Hello? As if the bad is going to yell back, Yeah, I\'m in the kitchen! Do you want a sandwich? Or,Hey, yeah I\'m back here with a chainsaw. Come on down.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'enzo@mail.com', 148.00, 'INR', '2015-10-05', 'I haven\'t seen any statuses about Ninjas lately....well played Ninjas.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'franz@mail.com', 646.00, 'USD', '2015-07-21', 'I changed all my passwords to \'incorrect\'. So my computer just tells me when I forgot.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'vasya@mail.com', 621.00, 'EUR', '2015-09-28', 'I do 5 sit-ups every morning. May not sound like much, but there is only so many times you can hit the snooze button...\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'petya@mail.com', 905.00, 'GBP', '2015-10-26', 'One time at the beach this guy was swimming in the ocean yelling Help! Shark! Help!. I just laughed, I knew that shark wasn\'t going to help them.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'ivan@mail.com', 417.00, 'USD', '2015-03-26', 'One time at the beach this guy was swimming in the ocean yelling Help! Shark! Help!. I just laughed, I knew that shark wasn\'t going to help them.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'bobby@mail.com', 431.00, 'CHF', '2015-11-14', 'I dream of a better tomorrow, where chickens can cross the road and not be questioned about their motives.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'lenny@mail.com', 546.00, 'MYR', '2015-10-11', 'You remind me of my Chinese friend...Ug Lee.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('enzo@mail.com', 'alex@mail.com', 150.00, 'INR', '2015-05-20', 'I do 5 sit-ups every morning. May not sound like much, but there is only so many times you can hit the snooze button...\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', 'john@mail.com', 612.00, 'CAD', '2015-12-25', 'The dictionary is the only place where success comes before work.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'enzo@mail.com', 996.00, 'GBP', '2015-08-27', 'I changed all my passwords to \'incorrect\'. So my computer just tells me when I forgot.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'franz@mail.com', 484.00, 'GBP', '2015-07-16', 'Whatever you do in life give 100%.....unless you\'re giving blood.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'vasya@mail.com', 782.00, 'SGD', '2015-03-22', 'Better late then never, but never late is better.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'petya@mail.com', 142.00, 'INR', '2015-01-01', 'One time at the beach this guy was swimming in the ocean yelling Help! Shark! Help!. I just laughed, I knew that shark wasn\'t going to help them.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'ivan@mail.com', 349.00, 'AUD', '2015-10-06', 'I changed all my passwords to \'incorrect\'. So my computer just tells me when I forgot.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'bobby@mail.com', 859.00, 'USD', '2015-11-03', 'You remind me of my Chinese friend...Ug Lee.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'lenny@mail.com', 300.00, 'USD', '2015-06-23', 'Procrastinator? No, I just wait until the last second to do my work because I will be older, therefore wiser.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'alex@mail.com', 956.00, 'INR', '2015-02-23', 'I speak my mind. I never mind what I speak.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('enzo@mail.com', 'john@mail.com', 748.00, 'USD', '2015-09-25', 'I changed all my passwords to \'incorrect\'. So my computer just tells me when I forgot.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', 'leo@mail.com', 377.00, 'INR', '2015-12-04', 'On a scale of Voldemort to Pinocchio, how Nosy are you?');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'franz@mail.com', 525.00, 'JPY', '2015-03-14', 'Procrastinator? No, I just wait until the last second to do my work because I will be older, therefore wiser.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'vasya@mail.com', 185.00, 'GBP', '2015-08-13', 'I dream of a better tomorrow, where chickens can cross the road and not be questioned about their motives.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'petya@mail.com', 426.00, 'SGD', '2015-12-08', 'I really like ceilings......I guess you could call me a ceiling fan.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'ivan@mail.com', 921.00, 'AUD', '2015-02-06', 'The dictionary is the only place where success comes before work.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'bobby@mail.com', 546.00, 'INR', '2015-04-23', 'I speak my mind. I never mind what I speak.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'lenny@mail.com', 630.00, 'EUR', '2015-02-02', 'One time at the beach this guy was swimming in the ocean yelling Help! Shark! Help!. I just laughed, I knew that shark wasn\'t going to help them.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'alex@mail.com', 151.00, 'JPY', '2015-08-19', 'Grammar is somewhat important. Commas do save lives for instance: \'Let\'s eat grandpa.\' \'Lets eat, grandpa.\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'john@mail.com', 243.00, 'SGD', '2015-12-20', 'I really like ceilings......I guess you could call me a ceiling fan.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('enzo@mail.com', 'leo@mail.com', 348.00, 'CAD', '2015-09-13', 'Better late then never, but never late is better.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', 'enzo@mail.com', 915.00, 'CAD', '2015-11-13', 'I wonder if tap dancers walk into a room, look at the floor and think,\'I\'d so tap that.\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('vasya@mail.com', 'petya@mail.com', 212.00, 'CAD', '2015-07-10', 'I speak my mind. I never mind what I speak.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('petya@mail.com', 'ivan@mail.com', 485.00, 'EUR', '2015-11-24', 'The dictionary is the only place where success comes before work.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('ivan@mail.com', 'bobby@mail.com', 273.00, 'EUR', '2015-07-19', 'I haven\'t seen any statuses about Ninjas lately....well played Ninjas.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('bobby@mail.com', 'lenny@mail.com', 952.00, 'CHF', '2015-08-21', 'I just dropped my laptop off the boat.....It\'s a Dell, rolling in the deep.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('lenny@mail.com', 'alex@mail.com', 216.00, 'AUD', '2015-09-18', 'I speak my mind. I never mind what I speak.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('alex@mail.com', 'john@mail.com', 206.00, 'CAD', '2015-06-01', 'Anytime a bird poops on one of my windows, I eat a whole plate of scrambled egg on my patio. Just to show them what I\'m capable of. Take that birds');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('john@mail.com', 'leo@mail.com', 996.00, 'JPY', '2015-11-02', 'I do 5 sit-ups every morning. May not sound like much, but there is only so many times you can hit the snooze button...\'');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('leo@mail.com', 'enzo@mail.com', 558.00, 'CAD', '2015-08-18', 'Whatever you do in life give 100%.....unless you\'re giving blood.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES (NULL, 'franz@mail.com', 599.00, 'CAD', '2015-04-19', 'You remind me of my Chinese friend...Ug Lee.');
INSERT INTO `billing` (`payer_email`, `recipient_email`, `sum`, `currency`, `billing_date`, `comment`) VALUES ('franz@mail.com', '', 243.00, 'AUD', '2015-12-27', 'You remind me of my Chinese friend...Ug Lee.');

COMMIT;
