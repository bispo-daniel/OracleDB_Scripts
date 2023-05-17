-- a view is a "virtual table"
-- created from row and columns from "real" tables
-- The database engine recreates the view, every time a user queries it.

-- The following view only contains persons from India
CREATE VIEW "[Persons from India]" AS
SELECT id, name, country
FROM myTable
WHERE country = 'India';

-- Select all from the view
SQL> SELECT * FROM "[Persons from India]";

--         ID NAME                      COUNTRY
-- ---------- ------------------------- -------------------------
--         15 Barclay William           India
--         27 Calista Watts             India
--         48 Hayley Bond               India
--         75 Honorato Wiggins          India
--        115 Kerry Guerra              India
--        148 Hilary Nelson             India
--        195 Hashim Nash               India
--        220 Isabella Page             India
--        221 Malcolm Perry             India
--        249 Alfreda Justice           India
--        300 Fatima Rice               India
--        492 Basia Nash                India
--        624 Shafira Byrd              India
--        660 Thane Mejia               India
--        667 Christine Shannon         India
--        723 Jameson Nieves            India
--        731 Odysseus Grant            India
--        779 Quynn Hart                India
--        836 Diana Prince              India
--        847 Xenos Lee                 India
--        848 Whilemina Durham          India
--        862 David Sears               India
--        882 David Wolfe               India
--        925 Addison King              India
--        931 Odysseus Hubbard          India
--       1017 Melyssa Holman            India
--       1021 Abigail Stanley           India
--       1040 Pamela Black              India
--       1055 Plato Reynolds            India
--       1099 Jonah Maxwell             India
--       1101 Chandler Carson           India
--       1137 Hector Donaldson          India
--       1175 Althea Dalton             India
--       1182 Hyatt West                India
--       1183 Magee Douglas             India
--       1229 Zeph Luna                 India
--       1233 Vivien Delacruz           India
--       1277 Yeo Hancock               India
--       1283 Irene Holloway            India
--       1302 Martena Hawkins           India
--       1342 Kelsey Riddle             India
--       1402 Shannon Davenport         India
--       1412 Serena Aguilar            India
--       1443 Baxter Best               India
--       1467 Brody Peterson            India
--       1471 Hakeem Kent               India
--       1505 Hammett Nelson            India
--       1517 Maya Walton               India
--       1567 Cassandra Gutierrez       India
--       1588 Cameron Richard           India
--       1631 Christine Moon            India
--       1668 Graiden ONeill            India
--       1681 Philip Bruce              India
--       1835 Rina Avery                India
--       1842 Glenna Medina             India
--       1851 Charde Lee                India
--       1891 Quyn Tyson                India
--       1937 Kirk Sims                 India
--       1956 Lewis York                India
--       1959 Orli Waters               India
--       2049 Kane Gillespie            India
--       2093 Keiko Adams               India
--       2108 Vivien Santiago           India
--       2114 Jeremy Larson             India
--       2120 Cameron Bennett           India
--       2170 Curran Barlow             India
--       2236 Wade Wilson               India
--       2322 Zelenia Moore             India
--       2336 Madeson Molina            India
--       2364 Martin Fox                India
--       2404 Chloe Carter              India
--       2410 Colette Albert            India
--       2489 Abraham Rose              India
--       2499 Remedios Giles            India
--       2573 Martina Huff              India
--       2592 Noble Rhodes              India
--       2606 Hammett Dalton            India
--       2608 Matthew Mccullough        India
--       2618 Yuri Harding              India
--       2639 Gavin Casey               India
--       2641 Zelda Rowland             India
--       2653 Josephine Booker          India
--       2666 Jason Guerra              India
--       2682 Clark Gentry              India
--       2724 Cherokee Sweet            India
--       2736 Aurora Watts              India
--       2766 Tate Mcneil               India
--       2786 Carson Pearson            India
--       2801 Hedy Kane                 India
--       2840 Ocean Ball                India
--       2850 Branden Watson            India
--       2959 Brian Kaufman             India
--       2967 Ocean Silva               India
--       2971 Chloe Haley               India
--       2989 Violet Holt               India
--       2997 Amal Reeves               India
--       3042 Macy Solis                India
--       3048 Xander Koch               India
--       3069 George Holmes             India
--       3080 Hayden Roy                India
--       3103 Madeson Reeves            India
--       3147 Jermaine Richmond         India
--       3233 Tamekah Wise              India
--       3277 Naida Barrera             India
--       3338 Kaseem Hester             India
--       3393 Xander Odom               India
--       3429 Slade Santos              India
--       3443 Haviva Aguilar            India
--       3470 Kaseem Montoya            India
--       3500 Dante Knox                India
--       3514 Channing Petty            India
--       3545 Maisie Workman            India
--       3573 Hadley Burt               India
--       3575 Sylvia Ortiz              India
--       3617 Palmer Becker             India
--       3624 Lee Mayo                  India
--       3649 Zelenia Hensley           India
--       3659 Palmer Browning           India
--       3689 Brynne Dodson             India
--       3720 Willow George             India
--       3772 Chancellor Goff           India
--       3790 Athena Mathews            India
--       3833 Murphy Rocha              India
--       3855 Darius Monroe             India
--       3926 Victoria Durham           India
--       3944 Xavier Battle             India
--       3975 Shad Murphy               India
--       4010 Hillary Barber            India
--       4016 Thane Prince              India
--       4053 Charlotte Perkins         India
--       4068 Wyoming Griffin           India
--       4115 Joelle Cantu              India
--       4123 Unity Frederick           India
--       4140 Brenda Arnold             India
--       4147 Evan Elliott              India
--       4172 Akeem Ferguson            India
--       4179 Merritt Barry             India
--       4234 Marny Lara                India
--       4254 Tasha Cox                 India
--       4408 Libby Riddle              India
--       4412 Cadman Kramer             India
--       4436 Minerva Rojas             India
--       4528 Sade Chang                India
--       4546 Abra Wolf                 India
--       4585 Calvin Reese              India
--       4628 Byron Sykes               India
--       4633 Blaze Buckley             India
--       4637 Sylvester Blair           India
--       4673 Brynne Mcfarland          India
--       4674 Keegan Thompson           India
--       4744 Emery Whitaker            India
--       4768 Kerry Valdez              India
--       4773 Teegan Duran              India
--       4785 Micah Mendoza             India
--       4798 Ginger Cruz               India
--       4802 Macaulay Sharpe           India
--       4810 Lucius Green              India
--       4837 Beau Mckinney             India
--       4860 Kiayada Rivers            India
--       4865 Leroy May                 India
--       4897 Mufutau Valentine         India
--       4978 Berk Mclaughlin           India

-- 162 rows returned.

SQL> SELECT count(id) FROM "[Persons from India]";

--  COUNT(ID)
-- ----------
--        162

-- What if I insert a few more Indians in "myTable"?
INSERT INTO myTable (name, phone, email, address, postalZip, region, country) VALUES
('Muhammad','(250) 504-1502','mail.mad@Muhammadmail.com','451-3134 Bibendum Av.','6312','Maharashtra','India');
INSERT INTO myTable (name, phone, email, address, postalZip, region, country) VALUES
('Muhammad','(250) 504-1502','mail.mad@Muhammadmail.com','451-3134 Bibendum Av.','6312','Maharashtra','India');
INSERT INTO myTable (name, phone, email, address, postalZip, region, country) VALUES
('Muhammad','(250) 504-1502','mail.mad@Muhammadmail.com','451-3134 Bibendum Av.','6312','Maharashtra','India');
INSERT INTO myTable (name, phone, email, address, postalZip, region, country) VALUES
('Muhammad','(250) 504-1502','mail.mad@Muhammadmail.com','451-3134 Bibendum Av.','6312','Maharashtra','India');
INSERT INTO myTable (name, phone, email, address, postalZip, region, country) VALUES
('Muhammad','(250) 504-1502','mail.mad@Muhammadmail.com','451-3134 Bibendum Av.','6312','Maharashtra','India');

-- Does the view update?
SQL> SELECT count(id) FROM "[Persons from India]";

--  COUNT(ID)
-- ----------
--        167

-- YES!

-- Dropping the view
SQL> DROP VIEW "[Persons from India]";

-- View deleted.