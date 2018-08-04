BEGIN TRANSACTION;
DROP TABLE IF EXISTS `Artists`;
CREATE TABLE IF NOT EXISTS `Artists` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Name`	TEXT,
	`PhotoUrl`	TEXT,
	`ContactName`	TEXT,
	`ContactPhone`	TEXT,
	`ContactEmail`	TEXT,
	`OnRoad`	INTEGER NOT NULL DEFAULT 0,
	`OnStage`	INTEGER NOT NULL DEFAULT 0
);
INSERT INTO `Artists` VALUES (1,'Lord Esperanza','https://risibank.fr/cache/stickers/d594/59429-full.png','John Doe','0600000000','lord@esperanza.com',5,2);
INSERT INTO `Artists` VALUES (2,'Biffty & DJ Weedim','http://www.printemps-bourges.com/wmedias/original/pdb18/programme/artistes/biffty__weedim/pdb18_site_artistes_BifftyDjWeedim-_1280x660.jpg','John Doe','0600000000','contact@gmail.com',5,2);
INSERT INTO `Artists` VALUES (3,'Ho99o9','http://78.media.tumblr.com/a5f929b5aed31a5f96b2caa24bad2e44/tumblr_inline_p625krVD5G1sitizh_540.png','John Doe','0600000000','contact@gmail.com',5,2);
INSERT INTO `Artists` VALUES (4,'Gangue','http://mixmag.fr/assets/uploads/images/_fullX2/GANGUE-Antoine-Ott-3.jpg','John Doe','0600000000','contact@gmail.com',5,2);
INSERT INTO `Artists` VALUES (5,'Myth Syzer','https://images.sneakersaddict.com/images//myth-syzer-2018-1000x562.png','John Doe','0600000000','contact@gmail.com',5,2);
INSERT INTO `Artists` VALUES (6,'Wilko & Ndy','https://www.trends.fr/wp-content/uploads/2018/04/wilkoetndy-trends.png','John Doe','0600000000','contact@gmail.com',5,2);
INSERT INTO `Artists` VALUES (7,'J.I.D & Earthgang','https://ssli.ulximg.com/image/740x493/gallery/1519150337_9d28fc91cc76555d0251102949635e2e.jpg/d5a000319604ec8f0d99e265a49832d6/1519150337_4402141141fce6142025f02d7c739c7e.jpg','John Doe','0600000000','contact@gmail.com',5,3);
INSERT INTO `Artists` VALUES (8,'Moha La Squale','http://www.sinoxdvd.com/wp-content/uploads/2018/06/sans-titre-1-114.jpg','John Doe','0600000000','contact@gmail.com',10,4);
INSERT INTO `Artists` VALUES (9,'Ross From Friends','https://bandcampblog.files.wordpress.com/2016/08/ross_from_friends-600-1.jpg?w=800','John Doe','0600000000','contact@gmail.com',3,3);
INSERT INTO `Artists` VALUES (10,'Bicep','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR3HetpmCWNynqhjeMfooLvzFfF4kY8FvbSSPHT1MGCB0ti-X1','John Doe','0600000000','contact@gmail.com',5,2);
INSERT INTO `Artists` VALUES (11,'Ben Ufo','https://www.marsatac.com/wp-content/uploads/2018/02/Ben_Ufo_by_Will_Bankhead-web-580x380.jpg','John Doe','0600000000','contact@gmail.com',1,1);
INSERT INTO `Artists` VALUES (12,'Chloé','https://www.marsatac.com/wp-content/uploads/2018/02/chloe-web-580x380.jpg','John Doe','0600000000','contact@gmail.com',2,1);
INSERT INTO `Artists` VALUES (13,'Amélie Lens','https://www.marsatac.com/wp-content/uploads/2018/02/Amelie_Lens_by_Eva_Vlonk-web-580x380.jpg','John Doe','0600000000','contact@gmail.com',2,1);
INSERT INTO `Artists` VALUES (14,'Sam Paganini','https://www.ravejungle.com/wp-content/uploads/2017/08/Sam-Paganini-ravejungle.jpg','John Doe','0600000000','contact@gmail.com',3,1);
INSERT INTO `Artists` VALUES (15,'Boris Brejcha','https://static1.squarespace.com/static/52a9de2de4b0d1de7d8cf377/t/5a00da8c4192027137d0ccef/1510005412946/KIDKUTSMEDIA-6548.jpg','John Doe','0600000000','contact@gmail.com',3,1);
INSERT INTO `Artists` VALUES (16,'Kokoko!','http://pan-african-music.com/wp-content/uploads/2018/06/Kokoko.jpg','John Doe','0600000000','contact@gmail.com',6,5);
INSERT INTO `Artists` VALUES (17,'Nasser','http://www.kosmic-webzine.com/wp-content/uploads/2018/04/Nasser-1.jpg','John Doe','0600000000','contact@gmail.com',4,2);
INSERT INTO `Artists` VALUES (18,'Hungry 5','http://www.solidays.org/wp-content/uploads/2018/03/hungy5%C2%A9-florian-gallene-1140x570.jpg','John Doe','0600000000','contact@gmail.com',5,4);
INSERT INTO `Artists` VALUES (19,'Blawan','https://www.residentadvisor.net/images/news/2017/blawan-remixing-lucy-on-zehnin-october-2017.jpg','John Doe','0600000000','contact@gmail.com',6,3);
INSERT INTO `Artists` VALUES (20,'Nina Kraviz','https://www.elnacional.cat/uploads/s1/18/69/31/8/spi3747_6980_ninakraviz_credit_paola_kudacki_3_1_630x630.png','John Doe','0600000000','contact@gmail.com',2,1);
INSERT INTO `Artists` VALUES (21,'Lomepal & Roméo Elvis','https://moustique.cdnartwhere.eu/sites/default/files/styles/large/public/field/image/illu_romeo.jpg?itok=JK7MPPyD','John Doe','0600000000','contact@gmail.com',6,3);
INSERT INTO `Artists` VALUES (22,'IAM','https://i.scdn.co/image/ce03b673d12a1b23eecc4c3f790e36ea6005aa42','John Doe','0600000000','contact@gmail.com',11,6);
INSERT INTO `Artists` VALUES (23,'Petit Biscuit','http://mtv.mtvnimages.com/uri/mgid:file:gsp:scenic:/international/mtvema/2017/images/nominees/PETIT_BISCUIT_1940x720.jpg?quality=0.85&width=1024&height=450&crop=true','John Doe','0600000000','contact@gmail.com',2,1);
INSERT INTO `Artists` VALUES (24,'Aloha Orchestra','http://www.greenroom.fr/wp-content/uploads/2015/07/alohaok.jpg','John Doe','0600000000','contact@gmail.com',6,4);
INSERT INTO `Artists` VALUES (25,'Rejjie Snow','https://www.billboard.com/files/styles/article_main_image/public/media/rejjie-snow-2018-cr-Alexandra-Gavillet-billboard-1548.jpg','John Doe','0600000000','contact@gmail.com',3,2);
INSERT INTO `Artists` VALUES (26,'Nekfeu','https://mk0bookingagent97efu.kinstacdn.com/wp-content/uploads/2017/08/Nekfeu-Contact-Information.jpg','John Doe','0600000000','contact@gmail.com',5,3);
INSERT INTO `Artists` VALUES (27,'Paul Kalkbrenner','https://mixmag.net/assets/uploads/images/_columns2/PaulKAlbum-Artwork.jpg','John Doe','0600000000','contact@gmail.com',3,1);
COMMIT;
