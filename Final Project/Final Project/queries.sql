-- Inserting sample data for Anime
INSERT INTO Anime (title, studio_id, release_year, description)
VALUES
('Death Note', 5, 2006, 'A high school student discovers a mysterious notebook that allows him to kill anyone whose name he writes in it.'),
('Demon Slayer', 4, 2019, 'Tanjiro Kamado, a young boy, becomes a demon slayer to avenge his family and cure his sister, who turned into a demon.'),
('Attack on Titan', 2, 2013, 'In a world where humanity resides within enormous walled cities to protect themselves from Titans, gigantic humanoid creatures, a young boy discovers his hidden powers.'),
('Jujutsu Kaisen', 6, 2020, 'A high school student gets involved in the world of sorcery and curses after consuming a cursed object.'),
('Hunter x Hunter', 7, 2011, 'A young boy aspires to become a Hunter, an elite member of society who searches for rare treasures, secret locations, and monsters.'),
('Dragon Ball Z', 8, 1989, 'The adventures of Goku and his friends as they defend Earth and the universe from various threats.'),
('Cowboy Bebop', 9, 1998, 'The adventures of a group of bounty hunters traveling in their spaceship, the Bebop, in the year 2071.'),
('My Hero Academia', 10, 2016, 'A boy born without superpowers in a world where they are common, dreams of becoming a hero.');

-- Inserting sample data for Characters
INSERT INTO Characters (character_name, anime_id)
VALUES
('Light Yagami', (SELECT id FROM Anime WHERE title = 'Death Note')),
('Ryuk', (SELECT id FROM Anime WHERE title = 'Death Note')),
('Tanjiro Kamado', (SELECT id FROM Anime WHERE title = 'Demon Slayer')),
('Nezuko Kamado', (SELECT id FROM Anime WHERE title = 'Demon Slayer')),
('Eren Yeager', (SELECT id FROM Anime WHERE title = 'Attack on Titan')),
('Levi Ackerman', (SELECT id FROM Anime WHERE title = 'Attack on Titan')),
('Yuji Itadori', (SELECT id FROM Anime WHERE title = 'Jujutsu Kaisen')),
('Gon Freecss', (SELECT id FROM Anime WHERE title = 'Hunter x Hunter')),
('Killua Zoldyck', (SELECT id FROM Anime WHERE title = 'Hunter x Hunter')),
('Goku', (SELECT id FROM Anime WHERE title = 'Dragon Ball Z')),
('Vegeta', (SELECT id FROM Anime WHERE title = 'Dragon Ball Z')),
('Spike Spiegel', (SELECT id FROM Anime WHERE title = 'Cowboy Bebop')),
('Izuku Midoriya', (SELECT id FROM Anime WHERE title = 'My Hero Academia'));

-- Query to retrieve all anime titles
SELECT title FROM Anime;

-- Query to retrieve all characters in a specific anime
SELECT character_name FROM Characters WHERE anime_id = (SELECT id FROM Anime WHERE title = 'Demon Slayer');

-- Query to retrieve all anime with a certain genre
SELECT title FROM Anime WHERE id IN (SELECT anime_id FROM Anime_Genres WHERE genre_id = (SELECT id FROM Genres WHERE genre_name = 'Action'));

-- Query to retrieve all episodes of a specific anime
SELECT episode_number, title AS episode_title FROM Episodes WHERE anime_id = (SELECT id FROM Anime WHERE title = 'Attack on Titan');

-- Query to retrieve the voice actors for a specific character
SELECT voice_actor_name FROM Voice_Actors WHERE character_id = (SELECT id FROM Characters WHERE character_name = 'Levi');

-- Query to insert a new anime into the database
INSERT INTO Anime (title, studio_id, release_year, description) VALUES ('Fullmetal Alchemist: Brotherhood', 11, 2009, 'Two brothers search for the Philosopher''s Stone to restore their bodies after a failed alchemy experiment.');

-- Query to update the description of an existing anime
UPDATE Anime SET description = 'A group of high school students form a club to investigate mysterious incidents and occurrences.' WHERE title = 'Persona 5: The Animation';

-- Query to delete a character from the database
DELETE FROM Characters WHERE character_name = 'Mikasa Ackerman';
