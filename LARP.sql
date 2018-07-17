DROP TABLE SCENARIO_DETAILS;
DROP TABLE ARCHTYPES;
DROP TABLE CREATURE;
DROP TABLE SCENARIO;

CREATE TABLE SCENARIO(
SCENARIO_ID				VARCHAR(5)		PRIMARY KEY,
SCENARIO_NOTES			VARCHAR(300)			,
SCENARIO_CREATED		VARCHAR(300)	NOT NULL,
SCENARIO_CREATED_BY		VARCHAR(25)		NOT NULL
);


CREATE TABLE CREATURE(
CREATURE_ID					VARCHAR(5)		PRIMARY KEY,
CREATURE_NAME				VARCHAR(25) 	NOT NULL,
CREATURE_TYPE 				VARCHAR(25) 	NOT NULL,
CREATURE_MONSTER_BOOK		VARCHAR(10)				,
CREATURE_FREQUENCY			VARCHAR(10)				,
CREATURE_RANDOM_MONSTER 	VARCHAR(15)				,
CREATURE_TERRAIN 			VARCHAR(25)				,
CREATURE_DESCRIPTION 		VARCHAR(300)			,
CREATURE_BACKGROUND 		VARCHAR(300)			,
CREATURE_SPECIAL_ATTACKS 	VARCHAR(300)			,
CREATURE_SPECIAL_DEFENSES 	VARCHAR(300)			
);

CREATE TABLE ARCHTYPES(
ARCHYTYPE_ID 					VARCHAR(5) 		PRIMARY KEY,
CREATURE_ID 					VARCHAR(5) 		NOT NULL,
ARCHYTYE_CLASS 					VARCHAR(25) 	NOT NULL,
ARCHYTYPE_HIT_POINTS 			VARCHAR(25) 			,
ARCHYTYPE_HT_P 					INTEGER 		DEFAULT 0,
ARCHYTYPE_ARMOR_TYPE 			VARCHAR(25)				,
ARCHYTYPE_ARMOR_WORN 			VARCHAR(25)				,
ARCHYTYPE_WEAPON_TYPE 			VARCHAR(25)				,
ARCHYTYPE_DAMAGE 				VARCHAR(25)				,
ARCHYTYPE_DESCRIPTION			VARCHAR(300)			,
ARCHYTYPE_BACKGROUND 			VARCHAR(300)			,
ARCHYTYPE_ROLEPLAY				VARCHAR(300)			,
FOREIGN KEY (CREATURE_ID) REFERENCES CREATURE(CREATURE_ID)
);

CREATE TABLE SCENARIO_DETAILS(
SCENARIO_DETAILS						VARCHAR(5)		PRIMARY KEY,
CREATURE_ID								VARCHAR(5)		NOT NULL,
ARCHYTYPE_ID 							VARCHAR(5) 		NOT NULL,
SCENARIO_ID								VARCHAR(5)		NOT NULL,
SCENARIO_DETAILS_GM_NOTES				VARCHAR(300)			,
SCENARIO_DETAILS_LEVEL					INTEGER					,
SCENARIO_DETAILS_ROLEPLAY				VARCHAR(300)			,
FOREIGN KEY (CREATURE_ID) REFERENCES CREATURE(CREATURE_ID),
FOREIGN KEY (ARCHYTYPE_ID) REFERENCES ARCHTYPES(ARCHYTYPE_ID),
FOREIGN KEY (SCENARIO_ID) REFERENCES SCENARIO(SCENARIO_ID)		
);
