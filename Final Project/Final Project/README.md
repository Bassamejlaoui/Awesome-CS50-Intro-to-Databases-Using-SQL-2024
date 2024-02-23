# AnimeHub README

## Project Overview

AnimeHub is a comprehensive database designed to serve as a centralized repository of information related to various anime series. Created by Bassam Mejlaoui, this project aims to provide users with detailed insights into anime titles, characters, studios, episodes, genres, and voice actors.

For a quick overview, you can watch the video: [AnimeHub Overview](https://youtu.be/aZ7WCZzZUg0).

## Scope

### Purpose of the Database

The primary purpose of AnimeHub is to offer a one-stop solution for anime enthusiasts to explore and gather information about their favorite anime series. It covers essential details such as titles, characters, studios, episodes, genres, and voice actors.

### Included in Scope

- Anime Titles
- Characters (protagonists, antagonists, supporting characters)
- Studios Producing the Anime
- Episodes of Each Anime Series
- Genres of Anime
- Voice Actors Providing Voices for Characters

### Outside the Scope

AnimeHub intentionally does not cover the following areas:

- Detailed reviews or ratings of anime
- User-specific data (preferences, watch history)
- Licensing or legal information related to anime distribution

## Functional Requirements

### User Capabilities

Users can:

- Browse and search for anime titles
- View information about characters, studios, episodes, and voice actors
- Filter anime by genre
- Add new anime titles, characters, episodes, etc., to the database
- Update existing information (descriptions, release years)
- Delete outdated or incorrect data entries

### Beyond Scope

The following features are intentionally excluded:

- User authentication and authorization mechanisms
- E-commerce features for purchasing anime merchandise or subscriptions

## Representation

### Entities

1. **Anime**
   - Attributes: id, title, studio_id, release_year, description
   - Types: VARCHAR for title and description, INT for IDs and release_year
   - Constraints: NOT NULL for title, studio_id, and release_year

2. **Characters**
   - Attributes: id, character_name, anime_id
   - Types: VARCHAR for character_name, INT for IDs
   - Constraints: NOT NULL for character_name and anime_id

3. **Studios**
   - Attributes: id, studio_name
   - Types: VARCHAR for studio_name, INT for IDs
   - Constraints: NOT NULL for studio_name

4. **Episodes**
   - Attributes: id, anime_id, episode_number, title, description
   - Types: VARCHAR for title and description, INT for IDs and episode_number
   - Constraints: NOT NULL for anime_id and episode_number

5. **Genres**
   - Attributes: id, genre_name
   - Types: VARCHAR for genre_name, INT for IDs
   - Constraints: NOT NULL for genre_name

6. **Voice_Actors**
   - Attributes: id, voice_actor_name, character_id
   - Types: VARCHAR for voice_actor_name, INT for IDs and character_id
   - Constraints: NOT NULL for voice_actor_name and character_id

### Relationships

Refer to the included Entity Relationship Diagram (ERD.png) for a visual representation.

**Relationships:**
- One-to-Many relationship between Anime and Episodes (One anime can have multiple episodes)
- One-to-Many relationship between Anime and Characters (One anime can have multiple characters)
- One-to-Many relationship between Characters and Voice_Actors (One character can have multiple voice actors)
- Many-to-Many relationship between Anime and Genres (One anime can belong to multiple genres and vice versa)

## Optimizations

To enhance performance:

- Indexes on frequently queried columns such as title in the Anime table for faster search operations.
- Views for commonly used queries, such as retrieving all characters for a particular anime.

## Limitations

- The database may not capture all possible anime genres comprehensively.
- It may not represent complex relationships between characters or story arcs within an anime series effectively.
- Limited support for multilingual or internationalized data, such as titles or descriptions in languages other than English.

Feel free to contribute to the growth and improvement of AnimeHub!
