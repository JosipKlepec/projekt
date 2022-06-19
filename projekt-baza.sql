CREATE DATABASE /*!32312 IF NOT EXISTS*/`projekt` ;

USE `projekt`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(255) ,
  `prezime` varchar(255) ,
  `username` varchar(255),
  `password` varchar(255) ,
  `razina` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
)  ;

/*Data for the table `users` */
insert  into `users`(`id`,`ime`,`prezime`,`username`,`password`,`razina`) values 
(10,'admin','admin','admin','$2y$10$BIkCdlrQlnUhwZQHUCBrVetDq0yt4udTyr22frn3.g2it8QogpbH2',1);


/*Table structure for table `vijesti` */
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `datum` date NOT NULL,
  `naslov` varchar(255) ,
  `sazetak` text,
  `tekst` text ,
  `slika` varchar(64) ,
  `kategorija` varchar(64) ,
  `arhiva` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 ;

insert  into `article`(`id`,`datum`,`naslov`,`sazetak`,`tekst`,`slika`,`kategorija`,`arhiva`) values 
(28,'2020-06-11','Croatia has the opportunity to become a real energy hub for Central Europe','Croatia will most likely decide to
 expand the existing floating LNG terminal on 
Krk Island and an investment decision is very close, Prime Minister Andrej Plenković said in Brussels on Monday....\r\n','Various options exist
 and the best and most effective one is an investment in the existing terminal to increase its capacity," Plenković said ahead of an EU summit
 where the main topic will be Ukraine and the consequences of the Russian aggression, which is why the EU is endeavouring to reduce its
 dependence on Russian energy and diversify its supply routes as soon as possible.\r\n\r\nIn the current circumstances, despite it being a
 surprise to many, Croatia has the 
 opportunity to become a real energy hub for Central Europe," Plenković underscored.\r\n\r\nHe added that an investment decision is very close
 regarding the expansion of the existing terminal so that it can be used by many countries in the neighbourhood, Slovenia, Hungary, Bosnia and
 Herzegovina and others.
 ','plenki.jpg','politika',0),
 
 (29,'2020-06-11','BAYERN MÜNCHEN - BORUSSIA DORTMUND','ÜBERTRAGUNG FC BAYERN MÜNCHEN - BORUSSIA DORTMUND JETZT LIVE IM TV,
 STREAM & TICKER: TOPSPIEL DER BUNDESLIGA\r\n','FC Bayern München - Borussia Dortmund live im TV, Stream und Ticker: Heute 
 steht das Bundesliga-Topspiel zwischen dem FC Bayern und dem BVB auf dem Programm. Anstoß ist am Samstag, 23. April,
 um 18:30 Uhr. Das Team von Julian Nagelsmann kann sich endgültig die 
 Meisterschaft sichern. Eurosport.de bietet euch alle Informationen zum Klassiker zwischen dem FC Bayern und Borussia Dortmund.
 ','bayern.jpg','sport',0),
 
 (30,'2020-06-11','Premier League fixtures: Man City away to West Ham, Liverpool at Fulham, Forest at Newcastle','Champions Manchester
 City face West Ham away on the opening weekend 
 of a 2022-23 Premier League campaign that will include a mid-season break for the World Cup in Qatar.\r\n','There will be no top-flight games
 after the weekend of 12-13 November until 26 December because of the World Cup. The first fixture takes place on Friday, 5 August when Crystal Palace host Arsenal. Liverpool play at promoted Fulham, with Nottingham Forest at Newcastle. Forest are back in the Premier League for the first
 time since 1998-99. The World Cup, which will feature both England and Wales, starts on 21 November. The final is on 18 December, eight days before 
 the Premier League season resumes. There are no meetings between the Premier League s so-called big six on weekend of 12-13 November
 - the one before the World Cup - following a request by the Football Association.
 ','premier.jpg','sport',0);

