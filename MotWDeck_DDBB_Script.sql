#drop database MOTWDECK;
CREATE DATABASE IF NOT EXISTS MOTWDECK CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE MOTWDECK;

CREATE TABLE PLAYBOOKS(
	ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    TITLE VARCHAR(25),
    LEGEND TEXT
);
INSERT INTO PLABOOKS VALUES
("The Chosen", "Your birth was propheseid. You are the Chosen One, and with your abilities you can save the world. If you fail, all will be destroyed. It all rests on yoy. Only you."),
("The Crooked", "Yeah, I´ve been around the block. A bit of this, a bit of that. When I came across the secret underworld of monsters and magic... well... it wasn´t so different from  the underworld I already knew. It was easy to find and angle, just like before."),
("The Divine", "I am the Light, the Sword. I am sent to defend the meek from Darkness. All Evil fears me, for I am its end."),
("The Expert", "I have dedicated my life to the study of the supernatural. I know their habits, their weaknesses. I may not be youngest or strongest, but my knowledge makes me the biggest threat."),
("The Flake", "Everythinng´s connected. But not everyone can see the patterns, and most people don´t even look that hard. But me, I can never stop looking deper. I can never stop seeing the truth. I spot the patterns. That´s how I found the monsters, and that´s how I help kill them."),
("The Initiate", "Since the dawn of history, we have been the bulwark against Darkness. We know the Evils of the world, and we stand against them so that the mass of humanity need not fear. We are the Flame that cleanses the Shadows."),
("The Monstruous", "I feel the hunger, the lust of destroy. But I fight it: I never give in. I´m not human any more, not really, but I have to protect those who still are. That way I can tell myself I´m different to the other monsters. Sometimes I can even believe it."),
("The Mundane", "You heard about how monsters only pick on people with crazy powers who can fight back on even terms? Yeah, me neither. But, hell, i ended up in this monster-hunting team so I gotta do what I can, right?"),
("The Professional", "It´s kind of strange when your regular 9-to-5 job is to hunt down monsters. Still, that´s the job I took on when I joined this outfit. It pays well, and the benefits are good. Like they say 'You don´t have to be crazy to work here, but it sure helps!'"),
("The Spell-Slinger", "Fight fire with fire magic."),
("The Spooky", "I can do things, things thet normal people can´t. But there´s a price--I haven´t paid it full, yet, but the bill´s gonna come due soon. It´s best I don´t tell you any more. You get too close, you´ll get hurt."),
("The Wronged", "They took my loved ones. Back then I wasn´t strong enought to fight, but I studied, trained, and now I´m ready to cleanse the world of their taint. I´ll kill them all, That´s all i have left.");
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
    GEAR_NAME VARCHAR(30),
    TAGS TEXT
);
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
