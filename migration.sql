USE adlister_db;

DROP TABLE  IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS `users` (
  `id`       mediumint(8) unsigned NOT NULL auto_increment,
  `username` varchar(255)                   default NULL,
  `email`    varchar(255)                   default NULL,
  `password` varchar(255),
  PRIMARY KEY (`id`)
)
  AUTO_INCREMENT = 1;

INSERT INTO `users` (`id`, `username`, `email`, `password`)
VALUES (127, "Plato", "sagittis@sem.com", "RTK98KFM3MP"),
  (132, "Paloma", "elit.pede.malesuada@Etiamimperdietdictum.edu", "IHY38AZI2LA"),
  (137, "Coby", "magna.Suspendisse.tristique@etrisusQuisque.net", "OVP57KGC2ZE"),
  (142, "Duncan", "Pellentesque.tincidunt.tempus@Pellentesquehabitantmorbi.edu",
   "EAC35OKJ2IN"), (147, "Harlan", "velit@maurisut.ca", "FSI13OTX4YC"),
  (152, "Nathaniel", "in.hendrerit@ullamcorpermagna.net", "WNR70DLP0ZB"),
  (157, "Julie", "elit@ultricies.co.uk", "CCR38DNY5FM"),
  (162, "Leroy", "Proin.sed@rhoncus.ca", "QPT52IZN1HS"),
  (167, "Madonna", "amet.consectetuer.adipiscing@facilisis.org", "CUC87QEE8UJ"),
  (172, "Alan", "et@euismodurna.org", "MHB01CKD0WN");
INSERT INTO `users` (`id`, `username`, `email`, `password`)
VALUES (177, "Molly", "vel.quam@liberoduinec.net", "GNX86PSB5HL"),
  (182, "Suki", "parturient.montes@ridiculusmus.net", "BOH37CMS1SM"),
  (187, "Colette", "Cras@aptenttaciti.ca", "NPL09JLO2SI"),
  (192, "Irma", "sollicitudin.adipiscing.ligula@orciluctus.edu", "JCY11GUK1BT"),
  (197, "Walter", "libero.dui@variusNamporttitor.edu", "CKJ95EVT6GB"),
  (202, "Wade", "penatibus@Mauriseu.com", "YVP89AOQ1AC"),
  (207, "Cleo", "nunc.sit@non.co.uk", "JLQ10OFR4UY"),
  (212, "Venus", "massa.non.ante@laciniamattisInteger.co.uk", "AKX17VNF6LW"),
  (217, "Alexa", "et@malesuada.com", "AYW76OWU3UR"),
  (222, "Shay", "penatibus.et@urnaetarcu.com", "EDR25OLE3HT");
INSERT INTO `users` (`id`, `username`, `email`, `password`)
VALUES (227, "Driscoll", "et.rutrum.non@nisiCumsociis.co.uk", "MIT59EXK8NI"),
  (232, "McKenzie", "neque.venenatis@porttitorerosnec.org", "JAF48LXS4WN"),
  (237, "Zeus", "nulla@euismodenimEtiam.co.uk", "LOT78GTN1QN"),
  (242, "Yoshi", "justo.faucibus.lectus@elementum.com", "ROD90JMN9HT"),
  (247, "Vladimir", "Duis.ac.arcu@cursusNunc.ca", "UHW46HVL7UO"),
  (252, "Tucker", "ante.blandit.viverra@habitantmorbitristique.org", "RUY15GLU6HK"),
  (257, "Baxter", "erat.neque.non@nec.ca", "RZE14YTN9FQ"),
  (262, "Rafael", "sapien@utsemNulla.ca", "MYB08TLO6GO"),
  (267, "Fritz", "augue.malesuada@vel.org", "BAM16KTO3RW"),
  (272, "Dora", "quis@aliquamenimnec.edu", "YET34WOK8AN");
INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
  (277, "Lars", "torquent.per.conubia@felisadipiscingfringilla.co.uk", "XRL33RED3JI"),
  (282, "Laith", "molestie@magnisdisparturient.ca", "MGZ02FOM9AX"),
  (287, "Rebecca", "vel.vulputate.eu@odiotristique.ca", "DOB19DHR8DU"),
  (292, "Hoyt", "penatibus@etnetus.edu", "YUF86XSN6TX"),
  (297, "Ali", "sem@scelerisqueloremipsum.edu", "OCO96QAH6WB"),
  (302, "Veronica", "ornare.egestas.ligula@ametnulla.com", "ZGB52TOZ1AK"),
  (307, "Avram", "egestas.Duis.ac@nuncsitamet.ca", "KIR82UJN5EA"),
  (312, "Nasim", "a.sollicitudin@luctus.co.uk", "NDC76JUH3RY"),
  (317, "Gay", "purus@scelerisquesedsapien.co.uk", "KID39DLK7AA"),
  (322, "Rowan", "ac.orci@porta.ca", "UNQ92TRR9TS");
INSERT INTO `users` (`id`, `username`, `email`, `password`)
VALUES (327, "Melissa", "sem.consequat.nec@scelerisquesed.edu", "QDG45JEQ8EQ"),
  (332, "Cooper", "et@mollisnec.edu", "RTV30DKE9AQ"),
  (337, "Alika", "et@commodo.com", "GXE04RYJ9ZY"),
  (342, "Brooke", "iaculis@Donecluctus.com", "KME14NGK6CQ"),
  (347, "Knox", "eget.massa@diamvel.org", "PHJ14BRP4LJ"),
  (352, "Plato", "et.netus@posuere.co.uk", "RSC06SKP9HG"),
  (357, "Emery", "non.vestibulum@dictum.net", "JRL50IDX1RC"),
  (362, "Quyn", "non.cursus.non@velmaurisInteger.com", "KDN37LHW2JK"),
  (367, "Teagan", "hendrerit@auguescelerisque.ca", "FUI50DFQ3TD"),
  (372, "Christen", "vehicula.Pellentesque.tincidunt@malesuada.com", "AIN00JQZ5UL");
INSERT INTO `users` (`id`, `username`, `email`, `password`)
VALUES (377, "Aidan", "eleifend.vitae@posuere.ca", "SCQ77UNA0CJ"),
  (382, "Chase", "id@atpretiumaliquet.com", "WPU80ZAN3PC"),
  (387, "Tucker", "amet@molestietellusAenean.co.uk", "LLD67ROP7HI"),
  (392, "Tad", "rhoncus@nec.org", "YAE58HZL7OH"),
  (397, "Ginger", "tincidunt.neque@ut.co.uk", "EIT16CVA2PZ"),
  (402, "Tatum", "tortor@dolorquamelementum.edu", "NLQ80QJI3XQ"),
  (407, "Brielle", "turpis@eu.ca", "VEA59EPZ1GB"),
  (412, "Benedict", "vel.nisl@nislsemconsequat.co.uk", "OJF18KGS8WX"),
  (417, "Cadman", "dolor@antelectusconvallis.com", "SRQ36IZW2YF"),
  (422, "Sonya", "fermentum.metus@nonlaciniaat.co.uk", "DPY85ISQ0OP");
INSERT INTO `users` (`id`, `username`, `email`, `password`)
VALUES (427, "Jared", "Nulla.tincidunt.neque@Suspendisseac.edu", "BVC31ROM7CW"),
  (432, "Andrew", "enim@id.com", "LXC91FPM1OZ"),
  (437, "Portia", "faucibus.lectus.a@cursusluctus.net", "YHQ24YFY8SD"),
  (442, "Mia", "ligula.Donec@etrutrum.org", "YGV11KMR7JK"),
  (447, "Vera", "non@eulacus.ca", "GDO71BKI9DF"),
  (452, "Tarik", "at.nisi.Cum@nisidictumaugue.net", "UKA37IBK2WH"),
  (457, "Lael", "tempus@Suspendissecommodo.net", "IEO59FBR2YW"),
  (462, "Nolan", "leo.Cras.vehicula@tellusimperdiet.net", "KAV65IMP1PR"),
  (467, "Bertha", "sed@ipsumnonarcu.net", "KJJ15GKZ6ZD"),
  (472, "Lionel", "a@eteuismod.net", "FUV77ZQX3IK");
INSERT INTO `users` (`id`, `username`, `email`, `password`)
VALUES (477, "Marny", "mi@laoreet.org", "URJ99JUT9XA"),
  (482, "Declan", "ipsum.dolor.sit@bibendumfermentummetus.co.uk", "GTD48OME7RK"),
  (487, "Tanya", "placerat@Pellentesqueultricies.ca", "ARJ06MZJ3YZ"),
  (492, "Avye", "dui.lectus@acnulla.com", "RLO84JIO3EN"),
  (497, "Shaeleigh", "pede.et@auguescelerisquemollis.ca", "LFA71KOB0OG"),
  (502, "Uriel", "non.bibendum.sed@egetlacus.com", "USN68JWS4IJ"),
  (507, "Cynthia", "lorem.tristique@turpis.co.uk", "ROF68QVN4LJ"),
  (512, "Slade", "mi.Aliquam@accumsansedfacilisis.ca", "BVJ30ZQT6XL"),
  (517, "Maris", "luctus.lobortis@Sedetlibero.ca", "BWR12TMR4JN"),
  (522, "Petra", "vestibulum.lorem@ametconsectetuer.co.uk", "DBU03BBJ7VQ");
INSERT INTO `users` (`id`, `username`, `email`, `password`)
VALUES (527, "Camille", "dolor@ametrisusDonec.co.uk", "VQS99BFX6AH"),
  (532, "Porter", "euismod.enim.Etiam@malesuada.co.uk", "WCT36QNU2HI"),
  (537, "Kennan", "eleifend.nunc@duinec.co.uk", "FGW20KUT4UB"),
  (542, "Deirdre", "aliquet.sem.ut@luctus.co.uk", "LDK46VRP7WK"),
  (547, "Talon", "luctus@bibendum.net", "VEX76THI0XB"),
  (552, "Demetria", "egestas.lacinia.Sed@diamProin.co.uk", "PSX15ZOR8UK"),
  (557, "Odysseus", "accumsan.sed.facilisis@VivamusrhoncusDonec.com", "HCH01RVJ5IQ"),
  (562, "Chantale", "Aliquam@metus.edu", "DDV33KGN4MD"),
  (567, "Jason", "in.faucibus@Donec.org", "QPR54THZ6UZ"),
  (572, "Lev", "Ut.tincidunt@nec.ca", "HYA40EKS1QK");
INSERT INTO `users` (`id`, `username`, `email`, `password`)
VALUES (577, "Allegra", "orci@Nulla.ca", "WQJ50LYU4KK"),
  (582, "Renee", "pede.ac@vehiculaetrutrum.net", "OLJ55JEP4BN"),
  (587, "Elizabeth", "diam@leoelementumsem.org", "GAH07LNZ8DS"),
  (592, "Eric", "Curabitur.dictum@velmaurisInteger.co.uk", "LZE77LRZ0BC"),
  (597, "Madaline", "enim.nisl@vitaepurus.com", "SFN35JGB8MK"),
  (602, "Leo", "Nullam.vitae@nullaInteger.ca", "QDM72WMH6LX"),
  (607, "Oprah", "tellus@quama.edu", "OMZ12XOI9JN"),
  (612, "Blaine", "dui@dictumaugue.org", "NJH10WHL7LX"),
  (617, "Igor", "enim.mi.tempor@malesuadafamesac.com", "QHS27WRR8NJ"),
  (622, "Julian", "risus@sollicitudin.co.uk", "UGV21RUL9TE");

