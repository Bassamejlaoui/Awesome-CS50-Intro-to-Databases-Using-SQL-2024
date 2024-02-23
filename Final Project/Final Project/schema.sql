-- Table: Anime
CREATE TABLE Anime (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    studio_id INT REFERENCES Studios(id),
    release_year INT,
    description TEXT
);

-- Table: Characters
CREATE TABLE Characters (
    id SERIAL PRIMARY KEY,
    character_name VARCHAR(255) NOT NULL,
    anime_id INT REFERENCES Anime(id)
);

-- Table: Studios
CREATE TABLE Studios (
    id SERIAL PRIMARY KEY,
    studio_name VARCHAR(255) NOT NULL
);

-- Table: Episodes
CREATE TABLE Episodes (
    id SERIAL PRIMARY KEY,
    anime_id INT REFERENCES Anime(id),
    episode_number INT,
    title VARCHAR(255),
    description TEXT
);

-- Table: Genres
CREATE TABLE Genres (
    id SERIAL PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);

-- Table: Anime_Genres (Many-to-Many relationship between Anime and Genres)
CREATE TABLE Anime_Genres (
    id SERIAL PRIMARY KEY,
    anime_id INT REFERENCES Anime(id),
    genre_id INT REFERENCES Genres(id)
);

-- Table: Voice_Actors
CREATE TABLE Voice_Actors (
    id SERIAL PRIMARY KEY,
    voice_actor_name VARCHAR(255) NOT NULL,
    character_id INT REFERENCES Characters(id)
);
