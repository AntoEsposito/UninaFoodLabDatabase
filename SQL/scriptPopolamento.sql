-- Popolamento tabella chef (5 chef)
INSERT INTO chef (id_chef, nome, cognome, username, password) VALUES
(1, 'Antonino', 'Cannavacciuolo', 'chefCannavacciuolo', 'chefpasscannavacciuolo'),
(2, 'Carlo', 'Cracco', 'chefCracco', 'chefpasscracco'),
(3, 'Gennaro', 'Esposito', 'chefEsposito', 'chefpassesposito'),
(4, 'Bruno', 'Barbieri', 'chefBarbieri', 'chefpassbarbieri'),
(5, 'Joe', 'Bastianich', 'chefBastianich', 'chefpassbastianich');

-- Popolamento tabella utente (10 utenti) 
INSERT INTO utente (id_utente, nome, cognome, username, password) VALUES
(1, 'Antonio', 'Esposito', 'antonio_e', 'userpassesposito'),
(2, 'Antonio', 'Pedata', 'antonio_p', 'userpasspedata'),
(3, 'Pietro', 'Farina', 'pietro_f', 'userpassfarina'),
(4, 'Raffaele', 'Fortini', 'raffaele_f', 'userpassfortini'),
(5, 'Claudia', 'Sodorino', 'claudia_s', 'userpasssodorino'),
(6, 'Miryam', 'Schetter', 'miryam_s', 'userpassschetter'),
(7, 'Raffaella', 'Merenda', 'raffaella_m', 'userpassmerenda'),
(8, 'Nunzia', 'Agrillo', 'nunzia_a', 'userpassagrillo'),
(9, 'Andrea', 'Urciuoli', 'andrea_u', 'userpassurciuoli'),
(10, 'Emanuele', 'De Rosa', 'emanuele_d', 'userpassderosa');

-- Popolamento tabella categoria
INSERT INTO categoria (id_categoria, descrizione) VALUES
(1, 'Cucina Italiana'),
(2, 'Pasticceria'),
(3, 'Cucina Asiatica'),
(4, 'Panificazione'),
(5, 'Cucina Vegetariana'),
(6, 'Cucina Mediterranea');

-- Popolamento tabella frequenza_sessioni
INSERT INTO frequenza_sessioni (id_frequenza, descrizione) VALUES
(1, 'Settimanale'),
(2, 'Ogni 2 settimane'),
(3, 'Mensile'),
(4, 'Ogni due giorni'),
(5, 'Giornaliero');

-- Popolamento tabella corso
INSERT INTO corso (id_corso, data_inizio, numero_sessioni, id_frequenza, id_categoria, id_chef) VALUES
(1, '2025-09-01', 8, 1, 1, 1),  -- Corso di Cucina Italiana, settimanale, 8 sessioni
(2, '2025-09-03', 6, 2, 2, 2),  -- Corso di Pasticceria, ogni 2 settimane, 6 sessioni
(3, '2025-09-05', 10, 4, 3, 3), -- Corso di Cucina Asiatica, ogni due giorni, 10 sessioni
(4, '2025-09-10', 4, 3, 4, 4),  -- Corso di Panificazione, mensile, 4 sessioni
(5, '2025-09-15', 12, 1, 5, 5), -- Corso di Cucina Vegetariana, settimanale, 12 sessioni
(6, '2025-09-20', 6, 2, 6, 1),  -- Corso di Cucina Mediterranea, ogni 2 settimane, 6 sessioni
(7, '2025-10-01', 8, 1, 2, 3),  -- Corso di Pasticceria, settimanale, 8 sessioni
(8, '2025-10-05', 5, 4, 4, 2);  -- Corso di Panificazione, ogni due giorni, 5 sessioni

-- Popolamento tabella sessione
-- Corso 1: Cucina Italiana (settimanale - 8 sessioni)
INSERT INTO sessione (id_sessione, in_presenza, data, numero_sessione, url_meeting, id_corso) VALUES
(1, false, '2025-09-01', 1, 'https://meeting.example.com/corso1-sessione1', 1),
(2, true, '2025-09-08', 2, NULL, 1),
(3, false, '2025-09-15', 3, 'https://meeting.example.com/corso1-sessione3', 1),
(4, true, '2025-09-22', 4, NULL, 1),
(5, false, '2025-09-29', 5, 'https://meeting.example.com/corso1-sessione5', 1),
(6, true, '2025-10-06', 6, NULL, 1),
(7, false, '2025-10-13', 7, 'https://meeting.example.com/corso1-sessione7', 1),
(8, true, '2025-10-20', 8, NULL, 1);

-- Corso 2: Pasticceria (ogni 2 settimane - 6 sessioni)
INSERT INTO sessione (id_sessione, in_presenza, data, numero_sessione, url_meeting, id_corso) VALUES
(9, false, '2025-09-03', 1, 'https://meeting.example.com/corso2-sessione1', 2),
(10, true, '2025-09-17', 2, NULL, 2),
(11, false, '2025-10-01', 3, 'https://meeting.example.com/corso2-sessione3', 2),
(12, true, '2025-10-15', 4, NULL, 2),
(13, false, '2025-10-29', 5, 'https://meeting.example.com/corso2-sessione5', 2),
(14, true, '2025-11-12', 6, NULL, 2);

-- Corso 3: Cucina Asiatica (ogni due giorni - 10 sessioni)
INSERT INTO sessione (id_sessione, in_presenza, data, numero_sessione, url_meeting, id_corso) VALUES
(15, false, '2025-09-05', 1, 'https://meeting.example.com/corso3-sessione1', 3),
(16, true, '2025-09-07', 2, NULL, 3),
(17, false, '2025-09-09', 3, 'https://meeting.example.com/corso3-sessione3', 3),
(18, true, '2025-09-11', 4, NULL, 3),
(19, false, '2025-09-13', 5, 'https://meeting.example.com/corso3-sessione5', 3),
(20, true, '2025-09-15', 6, NULL, 3),
(21, false, '2025-09-17', 7, 'https://meeting.example.com/corso3-sessione7', 3),
(22, true, '2025-09-19', 8, NULL, 3),
(23, false, '2025-09-21', 9, 'https://meeting.example.com/corso3-sessione9', 3),
(24, true, '2025-09-23', 10, NULL, 3);

-- Corso 4: Panificazione (mensile - 4 sessioni)
INSERT INTO sessione (id_sessione, in_presenza, data, numero_sessione, url_meeting, id_corso) VALUES
(25, false, '2025-09-10', 1, 'https://meeting.example.com/corso4-sessione1', 4),
(26, true, '2025-10-10', 2, NULL, 4),
(27, false, '2025-11-10', 3, 'https://meeting.example.com/corso4-sessione3', 4),
(28, true, '2025-12-10', 4, NULL, 4);

-- Corso 5: Cucina Vegetariana (settimanale - 12 sessioni)
INSERT INTO sessione (id_sessione, in_presenza, data, numero_sessione, url_meeting, id_corso) VALUES
(29, false, '2025-09-15', 1, 'https://meeting.example.com/corso5-sessione1', 5),
(30, true, '2025-09-22', 2, NULL, 5),
(31, false, '2025-09-29', 3, 'https://meeting.example.com/corso5-sessione3', 5),
(32, true, '2025-10-06', 4, NULL, 5),
(33, false, '2025-10-13', 5, 'https://meeting.example.com/corso5-sessione5', 5),
(34, true, '2025-10-20', 6, NULL, 5),
(35, false, '2025-10-27', 7, 'https://meeting.example.com/corso5-sessione7', 5),
(36, true, '2025-11-03', 8, NULL, 5),
(37, false, '2025-11-10', 9, 'https://meeting.example.com/corso5-sessione9', 5),
(38, true, '2025-11-17', 10, NULL, 5),
(39, false, '2025-11-24', 11, 'https://meeting.example.com/corso5-sessione11', 5),
(40, true, '2025-12-01', 12, NULL, 5);

-- Corso 6: Cucina Mediterranea (ogni 2 settimane - 6 sessioni)
INSERT INTO sessione (id_sessione, in_presenza, data, numero_sessione, url_meeting, id_corso) VALUES
(41, false, '2025-09-20', 1, 'https://meeting.example.com/corso6-sessione1', 6),
(42, true, '2025-10-04', 2, NULL, 6),
(43, false, '2025-10-18', 3, 'https://meeting.example.com/corso6-sessione3', 6),
(44, true, '2025-11-01', 4, NULL, 6),
(45, false, '2025-11-15', 5, 'https://meeting.example.com/corso6-sessione5', 6),
(46, true, '2025-11-29', 6, NULL, 6);

-- Corso 7: Pasticceria (settimanale - 8 sessioni)
INSERT INTO sessione (id_sessione, in_presenza, data, numero_sessione, url_meeting, id_corso) VALUES
(47, false, '2025-10-01', 1, 'https://meeting.example.com/corso7-sessione1', 7),
(48, true, '2025-10-08', 2, NULL, 7),
(49, false, '2025-10-15', 3, 'https://meeting.example.com/corso7-sessione3', 7),
(50, true, '2025-10-22', 4, NULL, 7),
(51, false, '2025-10-29', 5, 'https://meeting.example.com/corso7-sessione5', 7),
(52, true, '2025-11-05', 6, NULL, 7),
(53, false, '2025-11-12', 7, 'https://meeting.example.com/corso7-sessione7', 7),
(54, true, '2025-11-19', 8, NULL, 7);

-- Corso 8: Panificazione (ogni due giorni - 5 sessioni)
INSERT INTO sessione (id_sessione, in_presenza, data, numero_sessione, url_meeting, id_corso) VALUES
(55, false, '2025-10-05', 1, 'https://meeting.example.com/corso8-sessione1', 8),
(56, true, '2025-10-07', 2, NULL, 8),
(57, false, '2025-10-09', 3, 'https://meeting.example.com/corso8-sessione3', 8),
(58, true, '2025-10-11', 4, NULL, 8),
(59, false, '2025-10-13', 5, 'https://meeting.example.com/corso8-sessione5', 8);

-- Popolamento tabella iscrizione
INSERT INTO iscrizione (id_corso, id_utente) VALUES
-- Corso 1: Cucina Italiana (7 utenti)
(1, 1), (1, 3), (1, 4), (1, 5), (1, 6), (1, 8), (1, 10),

-- Corso 2: Pasticceria (4 utenti)
(2, 2), (2, 4), (2, 7), (2, 9),

-- Corso 3: Cucina Asiatica (6 utenti)
(3, 1), (3, 2), (3, 3), (3, 6), (3, 7), (3, 10),

-- Corso 4: Panificazione (5 utenti)
(4, 2), (4, 4), (4, 6), (4, 8), (4, 10),

-- Corso 5: Cucina Vegetariana (8 utenti)
(5, 1), (5, 2), (5, 3), (5, 5), (5, 6), (5, 7), (5, 8), (5, 9),

-- Corso 6: Cucina Mediterranea (3 utenti)
(6, 3), (6, 5), (6, 10),

-- Corso 7: Pasticceria (6 utenti)
(7, 1), (7, 2), (7, 4), (7, 5), (7, 7), (7, 9),

-- Corso 8: Panificazione (4 utenti)
(8, 2), (8, 3), (8, 6), (8, 8);

-- Popolamento tabella partecipazione (solo per sessioni in presenza)
INSERT INTO partecipazione (data_partecipazione, id_utente, id_sessione) VALUES
-- Partecipazioni alla sessione 2 (Corso 1, sessione 2)
('2025-09-08', 1, 2),
('2025-09-08', 3, 2),
('2025-09-08', 5, 2),
('2025-09-08', 6, 2),
('2025-09-08', 10, 2),

-- Partecipazioni alla sessione 4 (Corso 1, sessione 4)
('2025-09-22', 1, 4),
('2025-09-22', 3, 4),
('2025-09-22', 4, 4),
('2025-09-22', 8, 4),

-- Partecipazioni alla sessione 6 (Corso 1, sessione 6)
('2025-10-06', 1, 6),
('2025-10-06', 4, 6),
('2025-10-06', 5, 6),
('2025-10-06', 8, 6),
('2025-10-06', 10, 6),

-- Partecipazioni alla sessione 8 (Corso 1, sessione 8)
('2025-10-20', 3, 8),
('2025-10-20', 6, 8),
('2025-10-20', 8, 8),

-- Partecipazioni alla sessione 10 (Corso 2, sessione 2)
('2025-09-17', 2, 10),
('2025-09-17', 4, 10),
('2025-09-17', 9, 10),

-- Partecipazioni alla sessione 12 (Corso 2, sessione 4)
('2025-10-15', 4, 12),
('2025-10-15', 7, 12),

-- Partecipazioni alla sessione 14 (Corso 2, sessione 6)
('2025-11-12', 2, 14),
('2025-11-12', 4, 14),
('2025-11-12', 9, 14),

-- Partecipazioni alla sessione 16 (Corso 3, sessione 2)
('2025-09-07', 2, 16),
('2025-09-07', 3, 16),
('2025-09-07', 7, 16),
('2025-09-07', 10, 16),

-- Partecipazioni alla sessione 18 (Corso 3, sessione 4)
('2025-09-11', 1, 18),
('2025-09-11', 6, 18),
('2025-09-11', 10, 18),

-- Partecipazioni alla sessione 20 (Corso 3, sessione 6)
('2025-09-15', 1, 20),
('2025-09-15', 2, 20),
('2025-09-15', 3, 20),

-- Partecipazioni alla sessione 22 (Corso 3, sessione 8)
('2025-09-19', 2, 22),
('2025-09-19', 7, 22),
('2025-09-19', 10, 22),

-- Partecipazioni alla sessione 24 (Corso 3, sessione 10)
('2025-09-23', 1, 24),
('2025-09-23', 6, 24),
('2025-09-23', 10, 24),

-- Partecipazioni alla sessione 26 (Corso 4, sessione 2)
('2025-10-10', 2, 26),
('2025-10-10', 4, 26),
('2025-10-10', 6, 26),
('2025-10-10', 10, 26),

-- Partecipazioni alla sessione 28 (Corso 4, sessione 4)
('2025-12-10', 4, 28),
('2025-12-10', 8, 28),
('2025-12-10', 10, 28),

-- Partecipazioni alla sessione 30 (Corso 5, sessione 2)
('2025-09-22', 3, 30),
('2025-09-22', 5, 30),
('2025-09-22', 6, 30),
('2025-09-22', 7, 30),
('2025-09-22', 8, 30),
('2025-09-22', 9, 30),

-- Partecipazioni alla sessione 32 (Corso 5, sessione 4)
('2025-10-06', 2, 32),
('2025-10-06', 3, 32),
('2025-10-06', 8, 32),

-- Partecipazioni alla sessione 34 (Corso 5, sessione 6)
('2025-10-20', 1, 34),
('2025-10-20', 5, 34),
('2025-10-20', 7, 34),

-- Partecipazioni alla sessione 36 (Corso 5, sessione 8)
('2025-11-03', 2, 36),
('2025-11-03', 6, 36),
('2025-11-03', 9, 36),

-- Partecipazioni alla sessione 38 (Corso 5, sessione 10)
('2025-11-17', 1, 38),
('2025-11-17', 3, 38),
('2025-11-17', 5, 38),
('2025-11-17', 7, 38),

-- Partecipazioni alla sessione 40 (Corso 5, sessione 12)
('2025-12-01', 2, 40),
('2025-12-01', 8, 40),
('2025-12-01', 9, 40),

-- Partecipazioni alla sessione 42 (Corso 6, sessione 2)
('2025-10-04', 3, 42),
('2025-10-04', 5, 42),
('2025-10-04', 10, 42),

-- Partecipazioni alla sessione 44 (Corso 6, sessione 4)
('2025-11-01', 3, 44),
('2025-11-01', 10, 44),

-- Partecipazioni alla sessione 46 (Corso 6, sessione 6)
('2025-11-29', 5, 46),

-- Partecipazioni alla sessione 48 (Corso 7, sessione 2)
('2025-10-08', 1, 48),
('2025-10-08', 2, 48),
('2025-10-08', 5, 48),
('2025-10-08', 9, 48),

-- Partecipazioni alla sessione 50 (Corso 7, sessione 4)
('2025-10-22', 4, 50),
('2025-10-22', 7, 50),

-- Partecipazioni alla sessione 52 (Corso 7, sessione 6)
('2025-11-05', 1, 52),
('2025-11-05', 4, 52),
('2025-11-05', 9, 52),

-- Partecipazioni alla sessione 54 (Corso 7, sessione 8)
('2025-11-19', 2, 54),
('2025-11-19', 5, 54),
('2025-11-19', 7, 54),

-- Partecipazioni alla sessione 56 (Corso 8, sessione 2)
('2025-10-07', 3, 56),
('2025-10-07', 6, 56),
('2025-10-07', 8, 56),

-- Partecipazioni alla sessione 58 (Corso 8, sessione 4)
('2025-10-11', 2, 58),
('2025-10-11', 3, 58);

-- Popolazione tabella ricetta
INSERT INTO ricetta (id_ricetta, nome) VALUES
  (1 ,'Pizza Margherita'),
  (2 ,'Pasta alla carbonara'),
  (3 ,'Risotto allo zafferano'),
  (4 ,'Parmigiana di Melanzane'),
  (5 ,'Insalata Greca'),
  (6 ,'Hummus'),
  (7 ,'Insalata Caprese'),
  (8 ,'Curry di Verdure'),
  (9 ,'Tofu Saltato con Verdure'),
  (11,'Sushi'),
  (12,'Pad Thai'),
  (13,'Ramen Vegetariano'),
  (15,'Pane casereccio'),
  (16,'Focaccia genovese'),
  (17,'Ciabatta'),
  (18,'Challah'),
  (19,'Tiramisù'),
  (20,'Croissant'),
  (21,'Mousse al cioccolato'),
  (22,'Torta della nonna');

-- Popolazione tabella ingrediente
INSERT INTO ingrediente (id_ingrediente, nome) VALUES
  (1 ,'Farina 00'),
  (2 ,'Uova'),
  (3 ,'Latte'),
  (4 ,'Burro'),
  (5 ,'Zucchero'),
  (6 ,'Lievito di birra'),
  (7 ,'Sale'),
  (8 ,'Olio extravergine d''oliva'),
  (9 ,'Pomodori pelati'),
  (10,'Mozzarella'),
  (11,'Basilico'),
  (12,'Riso'),
  (13,'Brodo vegetale'),
  (14,'Parmigiano Reggiano'),
  (15,'Cioccolato fondente'),
  (16,'Panna fresca'),
  (17,'Vaniglia'),
  (18,'Mascarpone'),
  (19,'Caffè'),
  (20,'Salsa di soia'),
  (21,'Cetrioli'),
  (22,'Olive nere'),
  (23,'Feta'),
  (24,'Peperoni'),
  (25,'Ceci'),
  (26,'Tahini'),
  (27,'Limone'),
  (28,'Aglio'),
  (29,'Curry in polvere'),
  (30,'Latte di cocco'),
  (31,'Patate'),
  (32,'Carote'),
  (33,'Noodles di riso'),
  (34,'Germogli di soia'),
  (35,'Arachidi'),
  (36,'Salsa di pesce'),
  (37,'Zenzero'),
  (38,'Semi di sesamo'),
  (39,'Salmone'),
  (40,'Avocado'),
  (41,'Alga nori'),
  (42,'Rucola'),
  (43,'Pomodorini'),
  (44,'Aceto balsamico'),
  (45,'Melanzane'),
  (46,'Zucchine'),
  (47,'Tofu'),
  (48,'Funghi shiitake'),
  (49,'Miele'),
  (50,'Semi di papavero'),
  (51,'Acqua'),
  (52,'Guanciale'),
  (53,'Pecorino Romano'),
  (54,'Zafferano'),
  (55,'Savoiardi'),
  (56,'Cacao amaro'),
  (57,'Aceto di riso'),
  (58,'Pasta di tamarindo'),
  (59,'Lime'),
  (60,'Cipollotto'),
  (61,'Miso'),
  (62,'Kombu'),
  (63,'Spaghetti');

INSERT INTO ingredienti_utilizzati (dose_grammi, id_ricetta, id_ingrediente) VALUES
  -- Ricetta 1: Pizza Margherita
  (250,1,1),   -- Farina 00
  (150,1,51),  -- Acqua
  (10,1,6),   -- Lievito di birra
  (5,1,7),   -- Sale
  (15,1,8),   -- Olio EVO
  (150,1,9),   -- Pomodori pelati
  (100,1,10),  -- Mozzarella
  (5,1,11),  -- Basilico

  -- Ricetta 2: Pasta alla carbonara
  (200,2,63),  -- Spaghetti
  (120,2,2),   -- Uova
  (80,2,52),  -- Guanciale
  (60,2,53),  -- Pecorino Romano
  (20,2,14),  -- Parmigiano Reggiano
  (3 ,2,7),   -- Sale

  -- Ricetta 3: Risotto allo zafferano
  (320,3,12),  -- Riso
  (80,3,4),   -- Burro
  (40,3,14),  -- Parmigiano Reggiano
  (600,3,13),  -- Brodo vegetale
  (1,3,54),  -- Zafferano

  -- Ricetta 4: Parmigiana di Melanzane
  (400,4,45),  -- Melanzane
  (200,4,9),   -- Pomodori pelati
  (150,4,10),  -- Mozzarella
  (50,4,14),  -- Parmigiano Reggiano
  (20,4,11),  -- Basilico
  (30,4,8),   -- Olio EVO

  -- Ricetta 5: Insalata Greca
  (200,5,21),  -- Cetrioli
  (50,5,22),  -- Olive nere
  (120,5,23),  -- Feta
  (100,5,24),  -- Peperoni
  (15,5,8),   -- Olio EVO
  (4,5,7),   -- Sale

  -- Ricetta 6: Hummus
  (250,6,25),  -- Ceci
  (35,6,26),  -- Tahini
  (20,6,27),  -- Limone
  (8 ,6,28),  -- Aglio
  (20,6,8),   -- Olio EVO
  (5,6,7),   -- Sale

  -- Ricetta 7: Insalata Caprese
  (250,7,10),  -- Mozzarella
  (250,7,43),  -- Pomodorini
  (15,7,11),  -- Basilico
  (30,7,8),   -- Olio EVO
  (4,7,7),   -- Sale
  (10,7,44),  -- Aceto balsamico

  -- Ricetta 8: Curry di Verdure
  (200,8,31),  -- Patate
  (150,8,32),  -- Carote
  (200,8,30),  -- Latte di cocco
  (15,8,29),  -- Curry in polvere
  (10,8,37),  -- Zenzero
  (80,8,46),  -- Zucchine
  (5,8,7),   -- Sale

  -- Ricetta 9: Tofu Saltato con Verdure
  (250,9,47),  -- Tofu
  (150,9,46),  -- Zucchine
  (100,9,32),  -- Carote
  (25,9,20),  -- Salsa di soia
  (10,9,38),  -- Semi di sesamo
  (12,9,37),  -- Zenzero
  (5,9,7),   -- Sale

  -- Ricetta 11: Sushi
  (400,11,12), -- Riso
  (30,11,57), -- Aceto di riso
  (10,11,5),  -- Zucchero
  (5,11,7),  -- Sale
  (100,11,39), -- Salmone
  (50,11,40), -- Avocado
  (5,11,41), -- Alga nori

  -- Ricetta 12: Pad Thai
  (300,12,33), -- Noodles di riso
  (100,12,34), -- Germogli di soia
  (50,12,35), -- Arachidi
  (30,12,36), -- Salsa di pesce
  (18,12,20), -- Salsa di soia
  (25,12,58), -- Pasta di tamarindo
  (60,12,2),  -- Uova
  (30,12,60), -- Cipollotto
  (15,12,59), -- Lime
  (8,12,38), -- Semi di sesamo
  (5,12,7),  -- Sale

  -- Ricetta 13: Ramen Vegetariano
  (300,13,33), -- Noodles di riso
  (500,13,13), -- Brodo vegetale
  (100,13,48), -- Funghi shiitake
  (60,13,47), -- Tofu
  (40,13,61), -- Miso
  (4,13,62), -- Kombu
  (18,13,20), -- Salsa di soia
  (10,13,38), -- Semi di sesamo
  (6,13,37), -- Zenzero
  (5,13,7),  -- Sale

  -- Ricetta 15: Pane casereccio
  (500,15,1),  -- Farina 00
  (325,15,51), -- Acqua
  (4,15,6),  -- Lievito di birra
  (12,15,7),  -- Sale
  (25,15,8),  -- Olio EVO

  -- Ricetta 16: Focaccia genovese
  (400,16,1),  -- Farina 00
  (280,16,51), -- Acqua
  (12,16,6),  -- Lievito di birra
  (12,16,7),  -- Sale
  (70,16,8),  -- Olio EVO

  -- Ricetta 17: Ciabatta
  (500,17,1),  -- Farina 00
  (375,17,51), -- Acqua
  (5,17,6),  -- Lievito di birra
  (12,17,7),  -- Sale
  (20,17,8),  -- Olio EVO

  -- Ricetta 18: Challah
  (600,18,1),  -- Farina 00
  (220,18,51), -- Acqua
  (160,18,2),  -- Uova
  (40,18,8),  -- Olio EVO
  (20,18,49), -- Miele
  (10,18,50), -- Semi di papavero
  (10,18,7),  -- Sale
  (12,18,6),  -- Lievito di birra

  -- Ricetta 19: Tiramisù
  (200,19,55), -- Savoiardi
  (180,19,18), -- Mascarpone
  (100,19,2),  -- Uova
  (80,19,5),  -- Zucchero
  (60,19,19), -- Caffè
  (10,19,56), -- Cacao amaro

  -- Ricetta 20: Croissant
  (300,20,1),  -- Farina 00
  (160,20,51), -- Acqua
  (120,20,4),  -- Burro
  (35,20,5),  -- Zucchero
  (8,20,6),  -- Lievito di birra
  (6,20,7),  -- Sale

  -- Ricetta 21: Mousse al cioccolato
  (200,21,15), -- Cioccolato fondente
  (250,21,16), -- Panna fresca
  (90,21,2),  -- Uova
  (60,21,5),  -- Zucchero
  (3,21,17), -- Vaniglia

  -- Ricetta 22: Torta della nonna
  (300,22,1),  -- Farina 00
  (150,22,4),  -- Burro
  (120,22,2),  -- Uova
  (120,22,5),  -- Zucchero
  (2,22,17), -- Vaniglia
  (2,22,7);  -- Sale

-- Popolamento tabella realizzazione_ricetta
-- Corso 1: Cucina Italiana (Ricette 1-4)
INSERT INTO realizzazione_ricetta (id_sessione, id_ricetta) VALUES
(2, 1), -- Sessione 2: Pizza Margherita
(2, 2), -- Sessione 2: Pasta alla carbonara
(4, 3), -- Sessione 4: Risotto allo zafferano
(6, 4), -- Sessione 6: Parmigiana di Melanzane
(8, 1), -- Sessione 8: Pizza Margherita
(8, 3); -- Sessione 8: Risotto allo zafferano

-- Corso 2: Pasticceria (Ricette 19-22)
INSERT INTO realizzazione_ricetta (id_sessione, id_ricetta) VALUES
(10, 19), -- Sessione 10: Tiramisù
(10, 20), -- Sessione 10: Croissant
(12, 21), -- Sessione 12: Mousse al cioccolato
(14, 22); -- Sessione 14: Torta della nonna

-- Corso 3: Cucina Asiatica (Ricette 11-13)
INSERT INTO realizzazione_ricetta (id_sessione, id_ricetta) VALUES
(16, 11), -- Sessione 16: Sushi
(18, 12), -- Sessione 18: Pad Thai
(18, 13), -- Sessione 18: Ramen Vegetariano
(20, 8),  -- Sessione 20: Curry di Verdure
(22, 11), -- Sessione 22: Sushi
(24, 12); -- Sessione 24: Pad Thai

-- Corso 4: Panificazione (Ricette 15-18)
INSERT INTO realizzazione_ricetta (id_sessione, id_ricetta) VALUES
(26, 15), -- Sessione 26: Pane casereccio
(26, 16), -- Sessione 26: Focaccia genovese
(28, 17), -- Sessione 28: Ciabatta
(28, 18); -- Sessione 28: Challah

-- Corso 5: Cucina Vegetariana (Ricette 8-9 e 6)
INSERT INTO realizzazione_ricetta (id_sessione, id_ricetta) VALUES
(30, 8),  -- Sessione 30: Curry di Verdure
(32, 9),  -- Sessione 32: Tofu Saltato con Verdure
(32, 6),  -- Sessione 32: Hummus
(34, 8),  -- Sessione 34: Curry di Verdure
(36, 9),  -- Sessione 36: Tofu Saltato con Verdure
(38, 6),  -- Sessione 38: Hummus
(40, 8),  -- Sessione 40: Curry di Verdure
(40, 9);  -- Sessione 40: Tofu Saltato con Verdure

-- Corso 6: Cucina Mediterranea (Ricette 5-7)
INSERT INTO realizzazione_ricetta (id_sessione, id_ricetta) VALUES
(42, 5), -- Sessione 42: Insalata Greca
(42, 6), -- Sessione 42: Hummus
(44, 7), -- Sessione 44: Insalata Caprese
(46, 5), -- Sessione 46: Insalata Greca
(46, 7); -- Sessione 46: Insalata Caprese

-- Corso 7: Pasticceria (Ricette 19-22)
INSERT INTO realizzazione_ricetta (id_sessione, id_ricetta) VALUES
(48, 19), -- Sessione 48: Tiramisù
(48, 22), -- Sessione 48: Torta della nonna
(50, 20), -- Sessione 50: Croissant
(52, 21), -- Sessione 52: Mousse al cioccolato
(52, 22), -- Sessione 52: Torta della nonna
(54, 19), -- Sessione 54: Tiramisù
(54, 20); -- Sessione 54: Croissant

-- Corso 8: Panificazione (Ricette 15-18)
INSERT INTO realizzazione_ricetta (id_sessione, id_ricetta) VALUES
(56, 15), -- Sessione 56: Pane casereccio
(56, 17), -- Sessione 56: Ciabatta
(58, 16), -- Sessione 58: Focaccia genovese
(58, 18); -- Sessione 58: Challah