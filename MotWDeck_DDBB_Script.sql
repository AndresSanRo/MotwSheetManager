DROP DATABASE IF EXISTS MOTWDECK;
CREATE DATABASE IF NOT EXISTS MOTWDECK CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE MOTWDECK;

CREATE TABLE PLAYBOOKS(
	ID INTEGER PRIMARY KEY,
    TITLE VARCHAR(25),
    LEGEND TEXT
);
INSERT INTO PLAYBOOKS VALUES
(1, "The Chosen", "Your birth was propheseid. You are the Chosen One, and with your abilities you can save the world. If you fail, all will be destroyed. It all rests on yoy. Only you."),
(2, "The Crooked", "Yeah, I´ve been around the block. A bit of this, a bit of that. When I came across the secret underworld of monsters and magic... well... it wasn´t so different from  the underworld I already knew. It was easy to find and angle, just like before."),
(3, "The Divine", "I am the Light, the Sword. I am sent to defend the meek from Darkness. All Evil fears me, for I am its end."),
(4, "The Expert", "I have dedicated my life to the study of the supernatural. I know their habits, their weaknesses. I may not be youngest or strongest, but my knowledge makes me the biggest threat."),
(5, "The Flake", "Everythinng´s connected. But not everyone can see the patterns, and most people don´t even look that hard. But me, I can never stop looking deper. I can never stop seeing the truth. I spot the patterns. That´s how I found the monsters, and that´s how I help kill them."),
(6, "The Initiate", "Since the dawn of history, we have been the bulwark against Darkness. We know the Evils of the world, and we stand against them so that the mass of humanity need not fear. We are the Flame that cleanses the Shadows."),
(7, "The Monstruous", "I feel the hunger, the lust of destroy. But I fight it: I never give in. I´m not human any more, not really, but I have to protect those who still are. That way I can tell myself I´m different to the other monsters. Sometimes I can even believe it."),
(8, "The Mundane", "You heard about how monsters only pick on people with crazy powers who can fight back on even terms? Yeah, me neither. But, hell, i ended up in this monster-hunting team so I gotta do what I can, right?"),
(9, "The Professional", "It´s kind of strange when your regular 9-to-5 job is to hunt down monsters. Still, that´s the job I took on when I joined this outfit. It pays well, and the benefits are good. Like they say \"You don´t have to be crazy to work here, but it sure helps!\""),
(10, "The Spell-Slinger", "Fight fire with fire magic."),
(11, "The Spooky", "I can do things, things thet normal people can´t. But there´s a price--I haven´t paid it full, yet, but the bill´s gonna come due soon. It´s best I don´t tell you any more. You get too close, you´ll get hurt."),
(12, "The Wronged", "They took my loved ones. Back then I wasn´t strong enought to fight, but I studied, trained, and now I´m ready to cleanse the world of their taint. I´ll kill them all, That´s all i have left.");
CREATE TABLE PLAYER(
	ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    EMAIL VARCHAR(80) UNIQUE,
    NICK VARCHAR(30),
    PASSWORDHASH VARCHAR(255)
);
/*
	INSERTS
*/
CREATE TABLE MOVES(
	ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    PLB_ID INTEGER,
    MOVE_TYPE VARCHAR(15),
    MOVE_NAME VARCHAR(25),
    MOVE_DESCRIPTION TEXT,
    CONSTRAINT FK_MO_PLB FOREIGN KEY (PLB_ID) REFERENCES PLAYBOOKS (ID)
		ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE GEAR(
	ID INTEGER PRIMARY KEY,
    GEAR_NAME VARCHAR(150),
    TAGS TEXT
);
INSERT INTO GEAR VALUES
#Chosen
(1, "Staff", "1-harm;hand/close"),
(2, "Haft", "2-harm;hand;heavy"),
(3, "Handle", "1-harm;hand;balanced"),
(4, "Chain", "1-harm;hand;area"),
(5, "Artifact", "magic"),
(6, "Spikes", "+1 harm;messy"),
(7, "Blade", "+1 harm"),
(8, "Heavy", "+1 harm"),
(9, "Long", "Close"),
(10, "Throwable", "Close"),
(11, "Chain", "area"),
#Crooked
(12, ".22 revolver", "1-harm;close;reload;small"),
(13, ".38 revolver", "2-harm;close;reload;loud"),
(14, "9mm", "2-harm;close;loud"),
(15, "Shotgun", "3-harm;close;messy"),
(16, "Hunting rifle", "2-harm;far;loud"),
(17, "Big Knife", "1-harm;hand"),
(18, "Baseball bat", "1-harm;hand"),
(19, "Submachinegun", "2-harm;close;reload;auto"),
(20, "Assault rifle", "3-harm;close/far;auto"),
#Divine
(21, "Flamming sword", "3-harm;hand;fire;holy"),
(22, "Thunder hammer", "3-harm;hand;stun;holy"),
(23, "Razor whip", "3-harm;area;messy;holy"),
(24, "Five demon bag", "3-harm;close;magic;holy"),
(25, "Silver trident", "3-harm;hand;silver;holy"),
#Expert
(26, "Mallet & wooden stakes", "3-harm;intimate;slow;wooden"),
(27, "Silver sword", "2-harm;hand;messy;silver"),
(28, "Cold iron sword", "2-harm;hand;messy;iron"),
(29, "Blessed knife", "2-harm;hand;holy"),
(30, "Magical dagger", "2-harm;hand;magic"),
(31, "Juju bag", "1-harm;far;magic"),
(32, "Flamethrower", "3-harm;close;reload;heavy;volatile"),
(33, "Magnum", "3-harm;close;reload;loud"),
(34, "Shotgun", "3-harm;close;messy;loud"),
#Flake
(35, "Throwing knifes", "1-harm;close;many"),
(36, "Holdout pistol", "2-harm;close;loud;reload"),
(37, "Garrote", "3-harm;intimate"),
(38, "Watchman´s flashlight", "1-harm;hand"),
(39, "Weighted gloves/brassknuckles", "1-harm;hand"),
(40, "Butterfly knife/folding knife", "1´harm;hand"),
#Initiate
(41, "Sword", "2-harm;hand;messy"),
(42, "Axe", "2-harm;hand;messy"),
(43, "Big sword", "3-harm;hand;messy;heavy"),
(44, "Big axe", "3-harm;hand;messy;slow;heavy"),
(45, "Silver knife", "1-harm;hand;silver"),
(46, "Fighting sticks", "1-harm;hand;quick"),
(47, "Spear", "2-harm;hand/close"),
(48, "Mace", "2-harm;hand;messy"),
(49, "Crossbow", "2-harm;close;slow"),
(50, "Sniper rifle", "3-harm;far"),
#Monstruous
(51, "Brass knuckles", "1-harm;hand;quiet;small"),
(52, "Huge sword", "3-harm;hand;heavy"),
#Mundane
(53, "Golf club, baseball bat, cricket bat or Hockey stick", "2-harm;hand;innocuous;messy"),
(54, "Pocket knife or multitool", "1-harm;hand;usefull;small"),
(55, "Small handgun", "2-harm;close;loud;reload"),
(56, "Hunting rifle", "3-harm;far;loud;reload"),
(57, "Sledge-hammer or fire axe", "3-harm;hand;messy"),
(58, "Nunchucks", "2-harm;hand;area"),
(59, "Skateboard", null),
(60, "Bicycle", null),
(61, "Fairly new car in decent conditions", null),
(62, "Classic car in terrible conditions", null),
(63, "Motorcycle", null),
(64, "Van", null),
#Professional
(65, "Assault rifle", "3-harm;far;area;loud;reload"),
(66, "Grenade launcher", "4-harm;far;area;messy;loud;reload"),
(67, "Sniper rifle", "4-harm;far"),
(68, "Grenades", "4-harm;close;area;messy;loud"),
(69, "Submachine gun", "3-harm;close;area;loud;reload"),
#Spell-Slinger
(70, "Old revolver", "2-harm;close;reload;loud"),
(71, "Ritual knife", "1-harm;hand"),
(72, "Heirloom sword", "2-harm;hand;messy"),
#Spooky
/*
Same as crooked
*/
#Wronged
(73, "Sawn-off shotgun", "3-harm;close;loud"),
(74, "Hand cannon", "3-harm;close;loud"),
(75, "Fighting knife", "2-harm;hand;quiet"),
(76, "Huge sword or huge axe", "3-harm;hand;messy;heavy"),
(77, "Specialist weapons for destroying your foes", "4-harm"),
(78, "Enchanted dagger", "2-harm;hand;magic"),
(79, "Chainsaw", "3-harm;hand;messy;unreliable;loud;heavy"),
(80, "Brass knuckles", "1-harm;hand,stealthy"),
(81, "Assault rifle", "3-harm;close;area;loud;reload");
CREATE TABLE GEAR_PLAYBOOKS(
	PLB_ID INTEGER,
    GR_ID INTEGER,    
    PRIMARY KEY (PLB_ID, GR_ID),
    CONSTRAINT FK_GP_PLB FOREIGN KEY (PLB_ID) REFERENCES PLAYBOOKS (ID),
    CONSTRAINT FK_GP_GR FOREIGN KEY (GR_ID) REFERENCES GEAR (ID)
);
INSERT INTO GEAR_PLAYBOOKS VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(5, 13),
(5, 14),
(5, 16),
(5, 33),
(5, 34),
(5, 17),
(5, 35),
(5, 36),
(5, 37),
(5, 38),
(5, 39),
(5, 40),
(6, 41),
(6, 42),
(6, 43),
(6, 44),
(6, 45),
(6, 46),
(6, 47),
(6, 48),
(6, 49),
(6, 13),
(6, 14),
(6, 50),
(6, 33),
(6, 15),
(7, 13),
(7, 14),
(7, 33),
(7, 15),
(7, 17),
(7, 51),
(7, 41),
(7, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(8, 57),
(8, 58),
(8, 59),
(8, 60),
(8, 61),
(8, 62),
(8, 63),
(8, 64),
(9, 65),
(9, 66),
(9, 67),
(9, 68),
(9, 69),
(9, 13),
(9, 14),
(9, 16),
(9, 34),
(9, 17),
(10, 70),
(10, 71),
(10, 72),
(11, 13),
(11, 14),
(11, 16),
(11, 15),
(11, 17),
(12, 73),
(12, 74),
(12, 75),
(12, 76),
(12, 77),
(12, 78),
(12, 79),
(12, 13),
(12, 14),
(12, 16),
(12, 34),
(12, 17),
(12, 80),
(12, 81);
CREATE VIEW GEAR_PLAYBOOKS_FULLINFO_VIEW
AS
select PLB.ID AS 'PLAYBOOK_ID', 
		PLB.TITLE AS 'PLAYBOOK_TITLE',
        GR.ID  AS 'GEAR_ID',
        GR.GEAR_NAME AS 'GEAR_NAME', 
        GR.TAGS AS  'GEAR_TAGS'
from
PLAYBOOKS PLB inner join gear_playbooks GP
	ON PLB.ID = GP.plb_id
inner join GEAR GR
	ON GP.gr_id = GR.id;
CREATE TABLE IMPROVEMENTS(
	ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    IMP_NAME VARCHAR(25),
    ADVANCED BOOLEAN
);
CREATE TABLE BACKGROUND(
	ID INTEGER PRIMARY KEY,
    BACK_DESCRIPTION TEXT,
    PLB_ID INTEGER,
    CONSTRAINT FK_BCK_PLB FOREIGN KEY (PLB_ID) REFERENCES PLAYBOOKS (ID)
		ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE HUNTER(
	ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    FULLNAME VARCHAR(50),
    PLB_ID INTEGER,
    PLY_ID INTEGER,
    LOOK TEXT,
    CHARM INTEGER,
    COOL INTEGER,
    TOUGHT INTEGER,
    WEIRD INTEGER,
    LUCK INTEGER,
    HARM INTEGER,
    EXP INTEGER,
    LORE TEXT,
    CONSTRAINT FK_HU_PLB  FOREIGN KEY (PLB_ID) REFERENCES PLAYBOOKS (ID)
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_HU_PLY  FOREIGN KEY (PLY_ID) REFERENCES PLAYER (ID)
		ON DELETE CASCADE ON UPDATE CASCADE
); 
