
-- One to Many

insert into `user` (`firstname`,`lastname`,`created_at`,`updated_at`) VALUES ('Jeff','Cox','2014-01-10 22:17:13','2014-01-10 22:17:13');
insert into `user` (`firstname`,`lastname`,`created_at`,`updated_at`) VALUES ('Ann','Hart','2014-01-15 14:57:00','2014-01-15 14:57:00');
insert into `user` (`firstname`,`lastname`,`created_at`,`updated_at`) VALUES ('Jack','Dean','2014-01-20 01:12:33','2014-01-20 01:12:33');

insert into `category` (`name`) VALUES ('TV plasmas');
insert into `category` (`name`) VALUES ('TV Smath');
insert into `category` (`name`) VALUES ('TV Android');

insert into `item` (`name`,`price`,`category_id`,`code`,`image`) VALUES ('BRAVIA TV'   ,'1000',1,'asd213','https://www.sony-africa.com/image/ccbe548efa94995a9c034d96a4a6acbb?fmt=pjpeg&bgcolor=FFFFFF&bgc=FFFFFF&wid=2515&hei=1320');
insert into `item` (`name`,`price`,`category_id`,`code`,`image`) VALUES ('4K OLED TV'      ,'1300',1,'123asd213','https://cdn.thewirecutter.com/wp-content/media/2023/09/lcdledtv-2048px-tclQM8-2109-2x1-1.jpg?auto=webp&quality=75&crop=2:1&width=980&dpr=1.5');
insert into `item` (`name`,`price`,`category_id`,`code`,`image`) VALUES ('Roku TV'   ,'1020',2,'aadsd213','https://image.roku.com/bWFya2V0aW5n/What-is-Roku-player-UI-MX-690x400.png');
insert into `item` (`name`,`price`,`category_id`,`code`,`image`) VALUES ('Samsung TV Plus' ,'1300',2,'as553d213','https://pisces.bbystatic.com/image2/BestBuy_US/dam/pol-mmt682193-crystal-uhd_DER-8995f0eb-45f9-4ea8-a8e3-f958284ffcf7.jpg;maxHeight=350;maxWidth=1000');
insert into `item` (`name`,`price`,`category_id`,`code`,`image`) VALUES ('Tv AIWA 43','4000',3,'a1232sd213','https://venelectronics.com/cdn/shop/products/AW43B4SFG-600x600_600x600.jpg?v=1663342486');

insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (1,3,17.5,'2012-01-01');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (2,1,37.5,'2012-01-12');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (1,2,66.0,'2012-01-15');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`,`deleted`,`deleted_at`) VALUES (4,3,15.0,'2012-01-27',1,'2012-03-01 1:15');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (1,2,18.9,'2012-02-07');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (2,1,100,'2012-02-19');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (4,3,20.0,'2012-02-20');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (2,3,50.0,'2012-03-08');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (3,1,18.0,'2012-03-16');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (5,2,9.00,'2012-03-18');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (2,3,3.50,'2012-03-29');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (5,1,19.0,'2012-04-09');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (4,2,22.7,'2012-04-13');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (3,3,44.5,'2012-04-21');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`,`deleted`,`deleted_at`) VALUES (1,2,12.6,'2012-04-26',1,'2012-04-28 14:57');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (2,2,16.0,'2012-04-26');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (2,1,40.0,'2012-05-06');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (3,2,16.8,'2012-05-15');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (4,3,9.0,'2012-05-22');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (2,1,40.0,'2012-06-06');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (3,2,16.0,'2012-06-15');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (5,3,19.0,'2012-06-22');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`,`deleted`,`deleted_at`) VALUES (3,3,40.0,'2012-06-24',1,'2012-06-27 7:49');
insert into `purchase` (`item_id`,`user_id`,`cache`,`date`) VALUES (1,3,70.0,'2012-06-27');


-- Many to Many

insert into `recipe_type` (`title`) VALUES ('type1');
insert into `recipe_type` (`title`) VALUES ('type2');
insert into `recipe_type` (`title`) VALUES ('type3');
insert into `recipe_type` (`title`) VALUES ('type4');
insert into `recipe_type` (`title`) VALUES ('type5');

insert into `recipe_method` (`title`) VALUES ('method1');
insert into `recipe_method` (`title`) VALUES ('method2');
insert into `recipe_method` (`title`) VALUES ('method3');
insert into `recipe_method` (`title`) VALUES ('method4');
insert into `recipe_method` (`title`) VALUES ('method5');

insert into `recipe` (`name`) VALUES ('recipe 1');

insert into `recipe_has_recipe_types` (`recipe_id`,`recipe_type_id`) VALUES (1,2);
insert into `recipe_has_recipe_types` (`recipe_id`,`recipe_type_id`) VALUES (1,4);
insert into `recipe_has_recipe_types` (`recipe_id`,`recipe_type_id`) VALUES (1,5);

insert into `recipe_has_recipe_methods` (`recipe_id`,`recipe_method_id`) VALUES (1,2);
insert into `recipe_has_recipe_methods` (`recipe_id`,`recipe_method_id`) VALUES (1,4);


-- One to One

insert into `address` (`user_id`,`street`) VALUES (1,'South Lake');

insert into `phone` (`user_id`,`mobile`) VALUES (2,'123-555-5555');

-- Many to One

insert into `car` (`model`) VALUES ('Lamborghini Diablo');
insert into `car` (`model`) VALUES ('Subaru Impreza');
insert into `car` (`model`) VALUES ('Trabant');

insert into `repair` (`car_id`,`date`) VALUES (1,'2013-01-13');
insert into `repair` (`car_id`,`date`) VALUES (1,'2013-04-07');
insert into `repair` (`car_id`,`date`) VALUES (2,'2013-02-15');
insert into `repair` (`car_id`,`date`) VALUES (2,'2013-05-18');
insert into `repair` (`car_id`,`date`) VALUES (3,'2013-03-12');
insert into `repair` (`car_id`,`date`) VALUES (3,'2013-01-02');

insert into `driver` (`car_id`,`name`) VALUES (1,'John');
insert into `driver` (`car_id`,`name`) VALUES (1,'Ross');
insert into `driver` (`car_id`,`name`) VALUES (2,'Ann');
insert into `driver` (`car_id`,`name`) VALUES (2,'Patrick');
insert into `driver` (`car_id`,`name`) VALUES (3,'David');
insert into `driver` (`car_id`,`name`) VALUES (3,'Rossie');


-- Controls

-- otm
insert into `controls_otm_single` (`name`) values ('one');
insert into `controls_otm_single` (`name`) values ('two');
insert into `controls_otm_single` (`name`) values ('three');

insert into `controls_otm_multiple` (`first`,`last`) values ('one','two');
insert into `controls_otm_multiple` (`first`) values ('three');
insert into `controls_otm_multiple` (`first`,`last`) values ('four','five');

insert into `controls_inline_otm_single` (`name`) values ('one');
insert into `controls_inline_otm_single` (`name`) values ('two');
insert into `controls_inline_otm_single` (`name`) values ('three');

insert into `controls_inline_otm_multiple` (`first`,`last`) values ('one','two');
insert into `controls_inline_otm_multiple` (`first`) values ('three');
insert into `controls_inline_otm_multiple` (`first`,`last`) values ('four','five');
-- mtm
insert into `controls_mtm_single` (`name`) values ('one');
insert into `controls_mtm_single` (`name`) values ('two');
insert into `controls_mtm_single` (`name`) values ('three');

insert into `controls_mtm_multiple` (`first`,`last`) values ('one','two');
insert into `controls_mtm_multiple` (`first`) values ('three');
insert into `controls_mtm_multiple` (`first`,`last`) values ('four','five');

insert into `controls_inline_mtm_single` (`name`) values ('one');
insert into `controls_inline_mtm_single` (`name`) values ('two');
insert into `controls_inline_mtm_single` (`name`) values ('three');

insert into `controls_inline_mtm_multiple` (`first`,`last`) values ('one','two');
insert into `controls_inline_mtm_multiple` (`first`) values ('three');
insert into `controls_inline_mtm_multiple` (`first`,`last`) values ('four','five');
-- controls
insert into `controls`
	(`controls_otm_single_id`,`controls_otm_multiple_id`,`static`,`text`,`boolean`,`bigint`,`double`,`upload`,`binary`,`date`,`time`,`datetime`,`textarea`)
	values (1,1,'two','text','1',150000,14.87,'file','','2013-12-10','20:36','2014-12-10 7:50','text');
insert into `controls`
	(`text`)
	values ('all other empty');
-- controls inline
insert into `controls_inline`
	(`controls_id`,`controls_inline_otm_single_id`,`controls_inline_otm_multiple_id`,`static`,`text`,`boolean`,`bigint`,`double`,`upload`,`binary`,`date`,`time`,`datetime`,`year`,`textarea`)
	values (1,2,2,'three','text','1',1000000,15.50,'file','','2013-12-10','20:36','2014-12-10 7:50','2014','text');
insert into `controls_inline`
	(`controls_id`,`controls_inline_otm_single_id`,`controls_inline_otm_multiple_id`,`static`,`text`,`boolean`,`bigint`,`double`,`upload`,`binary`,`date`,`time`,`datetime`,`year`,`textarea`)
	values (2,3,3,'one','text','0',900,16.67,'file','','2013-12-10','20:36','2014-12-10 7:50','2014','text');
-- link
insert into `controls_has_controls_mtm_single` (`controls_id`,`controls_mtm_single_id`) values (1,1);
insert into `controls_has_controls_mtm_multiple` (`controls_id`,`controls_mtm_multiple_id`) values (1,1);
insert into `controls_has_controls_mtm_multiple` (`controls_id`,`controls_mtm_multiple_id`) values (1,2);
insert into `controls_has_controls_mtm_multiple` (`controls_id`,`controls_mtm_multiple_id`) values (1,3);
insert into `controls_has_controls_mtm_single` (`controls_id`,`controls_mtm_single_id`) values (2,1);
insert into `controls_has_controls_mtm_multiple` (`controls_id`,`controls_mtm_multiple_id`) values (2,1);
insert into `controls_has_controls_mtm_multiple` (`controls_id`,`controls_mtm_multiple_id`) values (2,2);
insert into `controls_has_controls_mtm_multiple` (`controls_id`,`controls_mtm_multiple_id`) values (2,3);
-- link inline
insert into `controls_inline_has_controls_inline_mtm_single` (`controls_inline_id`,`controls_inline_mtm_single_id`) values (1,1);
insert into `controls_inline_has_controls_inline_mtm_multiple` (`controls_inline_id`,`controls_inline_mtm_multiple_id`) values (1,1);
insert into `controls_inline_has_controls_inline_mtm_multiple` (`controls_inline_id`,`controls_inline_mtm_multiple_id`) values (1,2);
insert into `controls_inline_has_controls_inline_mtm_multiple` (`controls_inline_id`,`controls_inline_mtm_multiple_id`) values (1,3);
insert into `controls_inline_has_controls_inline_mtm_single` (`controls_inline_id`,`controls_inline_mtm_single_id`) values (2,1);
insert into `controls_inline_has_controls_inline_mtm_multiple` (`controls_inline_id`,`controls_inline_mtm_multiple_id`) values (2,1);
insert into `controls_inline_has_controls_inline_mtm_multiple` (`controls_inline_id`,`controls_inline_mtm_multiple_id`) values (2,2);
insert into `controls_inline_has_controls_inline_mtm_multiple` (`controls_inline_id`,`controls_inline_mtm_multiple_id`) values (2,3);
-- END Controls
