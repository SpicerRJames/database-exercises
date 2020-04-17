USE codeup_test_db;

ALTER TABLE albums
    ADD UNIQUE (artist_name, album_title);