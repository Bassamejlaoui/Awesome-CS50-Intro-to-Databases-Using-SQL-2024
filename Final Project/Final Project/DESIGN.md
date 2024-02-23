# Design Document

By Bassam Mejlaoui

Video overview: https://youtu.be/aZ7WCZzZUg0

## Scope

### Purpose of the Database:
The purpose of this database is to serve as a comprehensive repository of information related to various anime series, including details about the anime titles, characters, studios, episodes, genres, and voice actors.

### Included in Scope:
- Anime titles
- Characters (e.g., protagonists, antagonists, supporting characters)
- Studios producing the anime
- Episodes of each anime series
- Genres of anime
- Voice actors providing voices for characters

### Outside the Scope:
- Detailed reviews or ratings of anime
- User-specific data (e.g., user preferences, watch history)
- Licensing or legal information related to anime distribution

## Functional Requirements

### User Capabilities:
Users should be able to:
- Browse and search for anime titles
- View information about characters, studios, episodes, and voice actors
- Filter anime by genre
- Add new anime titles, characters, episodes, etc. to the database
- Update existing information (e.g., descriptions, release years)
- Delete outdated or incorrect data entries

### Beyond Scope:
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

![Entity Relationship Diagram](ERD.png)

**Relationships:**
- One-to-Many relationship between Anime and Episodes (One anime can have multiple episodes)
- One-to-Many relationship between Anime and Characters (One anime can have multiple characters)
- One-to-Many relationship between Characters and Voice_Actors (One character can have multiple voice actors)
- Many-to-Many relationship between Anime and Genres (One anime can belong to multiple genres and vice versa)

## Optimizations

- Indexes on frequently queried columns such as title in the Anime table for faster search operations.
- Views for commonly used queries, such as retrieving all characters for a particular anime.

## Limitations

- The database may not capture all possible anime genres comprehensively.
- It may not represent complex relationships between characters or story arcs within an anime series effectively.
- Limited support for multilingual or internationalized data, such as titles or descriptions in languages other than English.
