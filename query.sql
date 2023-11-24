-- Query 1: Retrieve track information and artist name for tracks in Spotify playlists
SELECT Track.track_name, Artist.artist_name
FROM Track
JOIN Playlist ON Track.track_id = Playlist.track_id
JOIN Artist ON Track.artist_id = Artist.artist_id
WHERE Playlist.in_spotify_playlists > 0;

-- Query 2: Retrieve the total streams for each track
SELECT Track.track_name, SUM(Streams.streams) AS total_streams
FROM Track
JOIN Streams ON Track.track_id = Streams.track_id
GROUP BY Track.track_name;

-- Query 3: Retrieve tracks that are in both Apple and Deezer charts
SELECT Track.track_name
FROM Track
JOIN Charts ON Track.track_id = Charts.track_id
WHERE Charts.in_apple_charts > 0 AND Charts.in_deezer_charts > 0;
