SELECT *
FROM console_games
ORDER BY game_rank;

SELECT game_name, left(game_name, 5)
FROM console_games;

SELECT game_name, right(game_name, 10)
FROM console_games;

SELECT game_name, reverse(game_name)
FROM console_games;