/*
-- Query: SELECT * FROM healthyfoodapi_database.category
LIMIT 0, 1000

-- Date: 2022-05-21 14:47
*/
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (1,'cereal',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (2,'breakfast',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (3,'lunch',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (4,'dinner',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (5,'gluten',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (6,'lactose',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (7,'hallal',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (9,'fruit',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (10,'starch',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (11,'dairy',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (12,'protein',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (13,'fat',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (14,'vegetable',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (15,'poultry',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (16,'eggs',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (17,'grain',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (18,'nuts',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (19,'legunes',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (20,'fish',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (21,'beverage',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (22,'oil',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO category (`id`,`name`,`exclude`,`startdate`,`enddate`,`starttime`,`endtime`,`locale`) VALUES (23,'fat',NULL,NULL,NULL,NULL,NULL,NULL);

/*
-- Query: SELECT id, name, CONVERT(exclude USING utf8) exclude, photo FROM healthyfoodapi_database.diet
LIMIT 0, 1000

-- Date: 2022-05-21 14:53
*/
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (1,'Lacto-Vegetarian',NULL,NULL);
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (2,'Vegan',NULL,NULL);
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (3,'Vegetarian',NULL,NULL);
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (4,'Ketogenic',NULL,NULL);
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (5,'Ovo-Vegetarian',NULL,NULL);
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (6,'Pescetarian',NULL,NULL);
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (7,'Paleo',NULL,NULL);
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (8,'Primal',NULL,NULL);
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (9,'Whole30',NULL,NULL);
INSERT INTO diet (`id`,`name`,`exclude`,`photo`) VALUES (10,'Lactose-free','10',NULL);

/*
-- Query: SELECT * FROM healthyfoodapi_database.ingredient
LIMIT 0, 1000

-- Date: 2022-05-21 14:55
*/
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (1,'orecchiette',0,0,0,0,0,NULL,1,0,NULL,NULL,5);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (2,'cherry tomatoes',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (3,'sun-dried tomatoes',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (4,'olive oil',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (5,'garlic powder',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (6,'chilli flakes',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (7,'oregano',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (8,'basil',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (9,'salt',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (10,'milk',0,0,0,0,0,NULL,1,0,NULL,NULL,6);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (11,'pasta',0,0,0,0,0,NULL,1,0,NULL,NULL,5);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (12,'butter',0,0,0,0,0,NULL,1,0,NULL,NULL,6);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (13,'cheddar cheese',0,0,0,0,0,NULL,1,0,NULL,NULL,6);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (14,'black pepper',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (15,'nutmeg',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (16,'breadcrumbs',0,0,0,0,0,NULL,1,0,NULL,NULL,5);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (17,'mango',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (18,'red onion',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (19,'bell pepper',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (20,'lime juice',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (21,'sugar',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (22,'curry powder',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (23,'bread',0,0,0,0,0,NULL,1,0,NULL,NULL,5);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (24,'mustard',0,0,0,0,0,NULL,1,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (25,'cheese',0,0,0,0,0,NULL,1,0,NULL,NULL,6);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (26,'beef',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (27,'lamb',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (28,'pork',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (29,'veal',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (30,'horse',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (31,'organ',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (32,'meat',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (33,'wild meat',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (34,'chicken',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (35,'turkey',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (36,'goose',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (37,'duck',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (38,'quail',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (39,'fish',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (40,'anchovies',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (41,'shrimp',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (42,'squid',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (43,'calamari',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (44,'mussels',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (45,'crab',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (46,'lobster',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (47,'fish sauce',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (49,'yogurt',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (51,'cream',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (52,'honey',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (53,'bee pollen',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (54,'royal jelly',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (55,'soda',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (56,'fruit juice',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (57,'table sugar',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (58,'candy',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (59,'pastries',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (60,'cake',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (61,'cookies',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (62,'milk chocolate',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (63,'ice cream',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (64,'whole grains',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (65,'refined grains',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (67,'spelt',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (68,'rye',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (69,'barley',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (71,'muffins',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (72,'pancake',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (73,'cereal',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (74,'soybean oil',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (75,'canola oil',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (76,'safflower oil',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (77,'grapeseed oil',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (78,'margarine',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (79,'shortening',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (80,'chips',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (81,'pretzels',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (82,'crackers',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (83,'convenience meals',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (84,'frozen dinners',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (85,'fast food',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (86,'granola bars',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (87,'aspartame',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (88,'cyclamates',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (89,'sucralose',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (90,'acesulfame potassium',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (91,'saccharin',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (92,'grains',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (93,'legumes',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (94,'beans',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (95,'lentils',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (97,'dairy',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (99,'artificial sweetners',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (100,'alcohol',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (102,'carrageenan',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (103,'msg',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (104,'sulfites',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (105,'seed',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (106,'vegetable oil',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (182,'pecans',691,14,72,9,10,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (183,'walnuts',654,14,65,15,7,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (184,'hazelnuts',628,17,61,15,10,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (185,'sunflower seeds',584,20,51,21,9,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (186,'almonds',575,22,49,21,12,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (187,'sesame seeds',573,23,50,18,12,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (188,'pumpkin seeds',541,18,46,25,4,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (189,'soybeans',446,30,20,36,9,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (190,'quinoa',368,64,6,14,7,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (191,'pinto beans',347,63,1,21,15,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (192,'black beans',341,62,1,22,15,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (193,'kidney beans',337,61,1,23,15,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (194,'navy beans',337,61,1,22,24,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (195,'cranberry beans',335,60,1,23,25,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (196,'shiitake mushrooms',296,75,1,10,11,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (197,'avacado',160,9,15,2,7,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (198,'garlic',149,33,0,6,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (199,'yams',118,28,0,2,4,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (200,'bananas',89,23,0,1,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (201,'sweet potato',86,20,0,2,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (202,'corn',86,19,1,3,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (203,'pomegranates',83,19,1,2,4,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (204,'peas',81,14,0,5,5,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (205,'russet potatoes',79,18,0,2,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (206,'parsnips',75,18,0,1,5,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (207,'figs',74,19,0,1,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (208,'shallots',72,17,0,3,0,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (209,'kumquats',71,16,1,2,6,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (210,'red potatoes',70,16,0,2,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (211,'guava',68,14,1,3,5,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (212,'grapes',67,17,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (213,'cherries',63,16,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (214,'leeks',61,14,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (215,'pears',58,15,0,0,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (216,'blueberries',57,14,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (217,'tangerines',53,13,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (218,'apples',52,14,0,0,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (219,'raspberries',52,12,1,1,6,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (220,'pineapple',50,13,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (221,'kale',50,10,1,3,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (222,'apricots',48,11,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (223,'oranges',47,12,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (224,'artichokes',47,11,0,3,5,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (225,'cranberries',46,12,0,0,5,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (226,'beets',43,10,0,2,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (227,'blackberries',43,10,0,1,5,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (228,'grapefruit',42,11,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (229,'celeriac',42,9,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (230,'sugar snap peas',42,8,0,3,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (231,'carrots',41,10,0,1,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (232,'acorn squash',40,10,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (233,'onion',40,9,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (234,'papaya',39,10,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (235,'peaches',39,10,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (236,'maitake mushrooms',37,7,0,2,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (237,'honeydew',36,9,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (238,'rutabagas',36,8,0,1,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (239,'cantaloupe',34,9,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (240,'broccoli',34,7,0,3,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (241,'serrano pepper',32,8,0,2,4,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (242,'strawberries',32,8,0,0,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (243,'green beans',31,7,0,2,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (244,'okra',31,7,0,2,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (245,'spaghetti squash',31,7,1,1,0,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (246,'sweet red peppers',31,6,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (247,'limes',30,11,0,1,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (248,'watermelon',30,8,0,1,0,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (249,'collards',30,6,0,2,4,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (250,'lemons',29,9,0,1,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (251,'turnips',28,6,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (252,'sweet yellow peppers',27,6,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (253,'banana peppers',27,5,0,2,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (254,'mustard greens',26,5,0,3,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (255,'cabbage',25,6,0,1,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (256,'cauliflower',25,5,0,2,3,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (257,'eggplant',24,6,0,0,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (258,'spinach',23,4,0,3,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (259,'rhubarb',21,5,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (260,'sweet green pepper',20,5,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (261,'asparagus',20,4,0,2,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (262,'swiss chard',19,4,0,2,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (263,'tomatoes',18,4,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (264,'celery',16,3,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (265,'radish',16,3,0,1,2,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (266,'summer squash',16,3,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (267,'cucumbers',15,4,0,1,0,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (268,'lettuce',15,3,0,1,1,NULL,0,100,'g',NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (269,'evaporated milk',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (270,'crustaceans',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (271,'lupin',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (272,'molluscs',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (273,'peanut',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (274,'sesame seed',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (275,'sulphur dioxide',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (276,'soya',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (277,'gluten',0,0,0,0,0,NULL,0,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (279,'tree nuts',0,0,0,0,0,NULL,1,0,NULL,NULL,-1);
INSERT INTO ingredient (`id`,`name`,`calories`,`carbohydrates`,`fat`,`protein`,`fibre`,`photo`,`allergen`,`amount`,`measure`,`category`,`catid`) VALUES (280,'sesame',0,0,0,0,0,NULL,1,0,NULL,NULL,-1);


/*
-- Query: SELECT `id`,
    `name`,
    `shortdesc`,
    `longdesc`,
    `category`,
    `preptime`,
    `servings`,
    `calories`,
    CONVERT(ingredient USING utf8) ingredient,
    CONVERT(diet USING utf8) diet,
    CONVERT(photo USING utf8) photo,
    CONVERT(url USING utf8) url,
    `dateadded`,
    `start`,
    `end` FROM healthyfoodapi_database.meal
LIMIT 0, 1000

-- Date: 2022-05-21 15:09
*/

INSERT INTO meal (`id`,`name`,`shortdesc`,`longdesc`,`category`,`preptime`,`servings`,`calories`,`ingredient`,`diet`,`photo`,`url`,`dateadded`,`start`,`end`) VALUES (1,'Orecchiette','',NULL,NULL,45,2,500,'1,2,3,4,5,6,7,8','2,3,10','https://spoonacular.com/recipeImages/654009-556x370.jpg','https://spoonacular.com/orecchiette-with-sun-dried-and-fresh-cherry-tomatoes-654009','2022-05-17 14:56:56',NULL,NULL);
INSERT INTO meal (`id`,`name`,`shortdesc`,`longdesc`,`category`,`preptime`,`servings`,`calories`,`ingredient`,`diet`,`photo`,`url`,`dateadded`,`start`,`end`) VALUES (2,'Macaroni and Cheese','',NULL,NULL,50,4,1000,'17,18,19,20,21,9,14,12,22',NULL,'https://spoonacular.com/recipeImages/246078-556x370.jpg','https://www.simplyrecipes.com/recipes/civil_war_macaroni_and_cheese/','2022-05-17 15:08:53',NULL,NULL);
INSERT INTO meal (`id`,`name`,`shortdesc`,`longdesc`,`category`,`preptime`,`servings`,`calories`,`ingredient`,`diet`,`photo`,`url`,`dateadded`,`start`,`end`) VALUES (3,'Caribbean Grill','',NULL,NULL,33,4,2000,NULL,'1,2','https://spoonacular.com/recipeImages/294475-556x370.jpeg','http://www.foodnetwork.com/recipes/caribbean-grill-recipe.html','2022-05-17 15:08:53',NULL,NULL);
INSERT INTO meal (`id`,`name`,`shortdesc`,`longdesc`,`category`,`preptime`,`servings`,`calories`,`ingredient`,`diet`,`photo`,`url`,`dateadded`,`start`,`end`) VALUES (4,'Taco Pibil','',NULL,NULL,30,4,1500,NULL,'1,2','https://webknox.com/recipeImages/662744-556x370.jpg','https://foodnetwork.co.uk/recipes/all-american-beef-taco/','2022-05-17 15:08:53',NULL,NULL);

/*
-- Query: SELECT id,email,firstname,lastname, CONVERT(dietid USING utf8) dietid, CONVERT(exclude USING utf8) exclude, dateadded FROM healthyfoodapi_database.user
LIMIT 0, 1000

-- Date: 2022-05-21 15:13
*/
INSERT INTO user (`id`,`email`,`firstname`,`lastname`,`dietid`,`exclude`,`dateadded`) VALUES (1,'test@mail.com','firstname','lastname','1','1','2022-05-17 16:55:43');


INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (1,1,100);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (1,2,5);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (1,3,4);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (2,4,150);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (2,5,100);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (2,6,100);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (3,1,200);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (3,7,50);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (3,8,100);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (4,8,200);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (4,9,50);
INSERT INTO meal_ingredient(`meal_id`, `ingredient_id`, `quantity`) VALUES (4,13,100);


INSERT INTO meal_diet(`meal_id`, `diet_id`) VALUES (1,1);
INSERT INTO meal_diet(`meal_id`, `diet_id`) VALUES (1,2);
INSERT INTO meal_diet(`meal_id`, `diet_id`) VALUES (1,3);
INSERT INTO meal_diet(`meal_id`, `diet_id`) VALUES (2,8);
INSERT INTO meal_diet(`meal_id`, `diet_id`) VALUES (2,9);
INSERT INTO meal_diet(`meal_id`, `diet_id`) VALUES (3,2);
INSERT INTO meal_diet(`meal_id`, `diet_id`) VALUES (3,10);
INSERT INTO meal_diet(`meal_id`, `diet_id`) VALUES (4,9);
INSERT INTO meal_diet(`meal_id`, `diet_id`) VALUES (4,10);


INSERT INTO meal_category(`meal_id`, `category_id`) VALUES (1,1);
INSERT INTO meal_category(`meal_id`, `category_id`) VALUES (1,2);
INSERT INTO meal_category(`meal_id`, `category_id`) VALUES (2,3);
INSERT INTO meal_category(`meal_id`, `category_id`) VALUES (2,5);
INSERT INTO meal_category(`meal_id`, `category_id`) VALUES (3,5);
INSERT INTO meal_category(`meal_id`, `category_id`) VALUES (3,12);
INSERT INTO meal_category(`meal_id`, `category_id`) VALUES (4,3);
INSERT INTO meal_category(`meal_id`, `category_id`) VALUES (4,12);
INSERT INTO meal_category(`meal_id`, `category_id`) VALUES (4,23);
